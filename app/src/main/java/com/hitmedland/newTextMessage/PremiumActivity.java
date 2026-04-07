package com.hitmedland.newTextMessage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import android.text.Html;
import android.view.View;
import android.widget.TextView;

import com.android.vending.billing.IabHelper;
import com.android.vending.billing.IabResult;
import com.android.vending.billing.Inventory;
import com.android.vending.billing.Purchase;
import com.gc.materialdesign.views.ButtonRectangle;

public class PremiumActivity extends AppCompatActivity {

    Activity activity;
    BillingHelper billingHelper;
    Context context;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        context = this;
        activity = this;
        setContentView(R.layout.activity_premium);

        ActionBar actionBar = getSupportActionBar();
        if (actionBar != null) {
            actionBar.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.blue)));
            actionBar.setDisplayShowHomeEnabled(true);
            actionBar.show();

            String title = "<font color=\"" + getResources().getColor(R.color.white) + "\">" + getString(R.string.app_name) + "</font>";
            actionBar.setTitle(Html.fromHtml(title));
        }

        billingHelper = new BillingHelper(activity, new BillingHelper.RefreshListener() {
            @Override
            public void onRefresh(boolean isPremium, Inventory inventory) {
                if (isPremium) {
                    finish();
                }
            }
        }, new IabHelper.OnIabPurchaseFinishedListener() {
            @Override
            public void onIabPurchaseFinished(IabResult result, Purchase purchase) {
                System.out.println("Purchase successful " + result);
            }
        }, new IabHelper.OnConsumeFinishedListener() {
            @Override
            public void onConsumeFinished(Purchase purchase, IabResult result) {
            }
        });

        Typeface robotoMedium = Typeface.createFromAsset(getAssets(), "Roboto-Medium.ttf");
        Typeface robotoRegular = Typeface.createFromAsset(getAssets(), "Roboto-Regular.ttf");
        Typeface robotoThin = Typeface.createFromAsset(getAssets(), "Roboto-Thin.ttf");
        Typeface robotoLight = Typeface.createFromAsset(getAssets(), "Roboto-Light.ttf");

        TextView title_ads = (TextView) findViewById(R.id.title_ads);
        title_ads.setTypeface(robotoLight);

        TextView title_smartwatch = (TextView) findViewById(R.id.title_smartwatch);
        title_smartwatch.setTypeface(robotoLight);

        ButtonRectangle purchase = (ButtonRectangle) findViewById(R.id.purchase);
        purchase.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                billingHelper.purchasePremium();
            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (!billingHelper.onActivityResult(requestCode, resultCode, data)) {
            super.onActivityResult(requestCode, resultCode, data);
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (billingHelper != null) {
            billingHelper.onDestroy();
        }
    }
}
