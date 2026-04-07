package com.hitmedland.newTextMessage;

import android.app.Activity;
import android.content.Intent;
import com.android.vending.billing.IabBroadcastReceiver;
import com.android.vending.billing.IabHelper;
import com.android.vending.billing.IabResult;
import com.android.vending.billing.Inventory;
import com.android.vending.billing.Purchase;

public class BillingHelper {
    static final int RC_REQUEST = 10001;
    static final String SKU_PREMIUM = "premium_upgrade";

    public interface RefreshListener {
        void onRefresh();
    }

    Activity activity;
    private String developerPayload = "";
    Boolean inventoryQuery = false;
    private boolean isPremium = false;
    IabBroadcastReceiver mBroadcastReceiver;
    IabHelper.OnConsumeFinishedListener mConsumeFinishedListener;
    IabHelper mHelper;
    IabHelper.OnIabPurchaseFinishedListener mPurchaseFinishedListener;
    RefreshListener refreshListener;
    Boolean setupDone = false;

    public BillingHelper(Activity activity, RefreshListener refreshListener, IabHelper.OnIabPurchaseFinishedListener purchaseListener, IabHelper.OnConsumeFinishedListener consumeListener) {
        this.activity = activity;
        this.refreshListener = refreshListener;
        this.mConsumeFinishedListener = consumeListener;
        
        String base64EncodedPublicKey = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh60bV4ttWX4n8LbhJcrhAySYg3PTeQiw/f5QGiIwWx4idIuG+MSNTiZkGuFo1cEo8XNVxEhHY4eGcj3ld6zxStKg3BM87jKEwqTbx2p/zp4AREPBNVrXyioEMWMG79UResU3GMI/9SwBVmihDT2KDBA/CvfOGmkz9U6ixV3aXVXaM3fZpZ0e6jyJsezPyx+EkPpx9bRzvGe1iyXWEsp/b9/ypCeYHDahPxcpT7mv5ZCyjL2VyafDd2M2Rt+zEwXt3ANEE8olhNx3RWS6p5axpuGhid4tSoHjGAT39zT7QBLnz2uftjqxVFbSPgg5nLM8QlMD8Cmtp+xyzdIslgGoIQIDAQAB";
        mHelper = new IabHelper(activity, base64EncodedPublicKey);
        
        this.mPurchaseFinishedListener = new IabHelper.OnIabPurchaseFinishedListener() {
            @Override
            public void onIabPurchaseFinished(IabResult result, Purchase info) {
                if (mHelper == null) return;
                if (result.isFailure()) {
                    return;
                }
                if (info.getSku().equals(SKU_PREMIUM)) {
                    isPremium = true;
                    if (BillingHelper.this.refreshListener != null) {
                        BillingHelper.this.refreshListener.onRefresh();
                    }
                }
                if (purchaseListener != null) {
                    purchaseListener.onIabPurchaseFinished(result, info);
                }
            }
        };

        startSetup();
    }

    public void consumeItem(Purchase item) {
        try {
            mHelper.consumeAsync(item, mConsumeFinishedListener);
        } catch (IabHelper.IabAsyncInProgressException e) {
            System.out.println("Error querying inventory. Another async operation in progress.");
        }
    }

    public boolean isPremium() {
        System.out.println("isPremium called : " + isPremium);
        return isPremium;
    }

    public boolean onActivityResult(int requestCode, int resultCode, Intent data) {
        if (mHelper == null) return true;
        return !mHelper.handleActivityResult(requestCode, resultCode, data);
    }

    public void onDestroy() {
        if (mHelper != null) {
            mHelper.disposeWhenFinished();
        }
        mHelper = null;
    }

    public void purchaseItem(String Sku) {
        if (mHelper != null && setupDone) {
            try {
                mHelper.launchPurchaseFlow(activity, Sku, RC_REQUEST, mPurchaseFinishedListener, developerPayload);
            } catch (IabHelper.IabAsyncInProgressException e) {
                System.out.println("Error querying inventory. Another async operation in progress.");
            }
        }
    }

    public void purchasePremium() {
        purchaseItem(SKU_PREMIUM);
    }

    public void receivedBroadcast() {
        refreshInventory();
    }

    public void refreshInventory() {
        if (mHelper != null) {
            if (setupDone) {
                if (!inventoryQuery) {
                    inventoryQuery = true;
                    try {
                        mHelper.queryInventoryAsync(new IabHelper.QueryInventoryFinishedListener() {
                            @Override
                            public void onQueryInventoryFinished(IabResult result, Inventory inv) {
                                inventoryQuery = false;
                                if (mHelper == null) return;
                                if (result.isFailure()) return;
                                
                                isPremium = inv.hasPurchase(SKU_PREMIUM);
                                if (refreshListener != null) {
                                    refreshListener.onRefresh();
                                }
                            }
                        });
                    } catch (IabHelper.IabAsyncInProgressException e) {
                        System.out.println("Error querying inventory. Another async operation in progress.");
                    }
                }
            } else {
                startSetup();
            }
        }
    }

    public void startSetup() {
        mHelper.startSetup(new IabHelper.OnIabSetupFinishedListener() {
            @Override
            public void onIabSetupFinished(IabResult result) {
                if (mHelper == null) return;
                if (result.isSuccess()) {
                    setupDone = true;
                    refreshInventory();
                }
            }
        });
    }
}
