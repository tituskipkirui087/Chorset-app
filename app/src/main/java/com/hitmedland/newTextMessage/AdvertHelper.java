package com.hitmedland.newTextMessage;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;

public class AdvertHelper {
    public interface BannerListener {
        void onBannerAdClosed();
        void onBannerAdFailedToLoad();
        void onBannerAdLoaded();
    }

    public interface InterstitialListener {
        void onInterstitialAdClosed();
        void onInterstitialAdFailedToLoad();
        void onInterstitialAdLoaded();
    }

    String BannerAd_unit_id;
    String InterstitialAd_unit_id;
    boolean ShowingAd = false;
    Activity activity;
    AdRequest adRequest;
    private AdView adView;
    public BannerListener bannerListener;
    private InterstitialAd interstitial;
    public InterstitialListener interstitialListener;

    public AdvertHelper(Activity activity, String InterstitialAd_unit_id, String BannerAd_unit_id) {
        this.activity = activity;
        this.InterstitialAd_unit_id = InterstitialAd_unit_id;
        this.BannerAd_unit_id = BannerAd_unit_id;
    }

    public void initialiseInterstitialAd() {
        if (InterstitialAd_unit_id.length() > 0) {
            interstitial = new InterstitialAd(activity);
            interstitial.setAdUnitId(InterstitialAd_unit_id);
            
            adRequest = new AdRequest.Builder()
                    .addTestDevice(AdRequest.DEVICE_ID_EMULATOR)
                    .addTestDevice("275D94C2B5B93B3C4014933E75F92565")
                    .addTestDevice("91608B19766D984A3F929C31EC6AB947")
                    .addTestDevice("6316D285813B01C56412DAF4D3D80B40")
                    .addTestDevice("8C416F4CAF490509A1DA82E62168AE08")
                    .addTestDevice("7B4C6D080C02BA40EF746C4900BABAD7")
                    .addTestDevice("5F0321BA219D26B16ADBF3B27F5CEC30")
                    .build();
            
            interstitial.loadAd(adRequest);
            interstitial.setAdListener(new AdListener() {
                @Override
                public void onAdClosed() {
                    initialiseInterstitialAd();
                    if (interstitialListener != null) {
                        interstitialListener.onInterstitialAdClosed();
                    }
                }
                @Override
                public void onAdFailedToLoad(int errorCode) {
                    if (interstitialListener != null) {
                        interstitialListener.onInterstitialAdFailedToLoad();
                    }
                }
                @Override
                public void onAdLoaded() {
                    if (interstitialListener != null) {
                        interstitialListener.onInterstitialAdLoaded();
                    }
                }
            });
        }
    }

    protected void onDestroy() {
        if (adView != null) {
            adView.destroy();
        }
    }

    protected void onPause() {
        if (adView != null) {
            adView.pause();
        }
    }

    protected void onResume() {
        if (adView != null) {
            adView.resume();
        }
    }

    public void openInterstitialAd(final InterstitialListener listener) {
        if (InterstitialAd_unit_id.length() > 0) {
            ShowingAd = true;
            activity.runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    interstitialListener = listener;
                    if (interstitial != null && interstitial.isLoaded()) {
                        interstitial.show();
                    } else {
                        if (interstitialListener != null) {
                            interstitialListener.onInterstitialAdFailedToLoad();
                        }
                    }
                }
            });
        }
    }

    public void showBanner(final boolean inLayout, final LinearLayout linear_layout, final RelativeLayout layout, final BannerListener bannerListener) {
        if (BannerAd_unit_id.length() > 0) {
            adView = new AdView(activity);
            adView.setAdSize(AdSize.SMART_BANNER);
            adView.setAdUnitId(BannerAd_unit_id);

            if (inLayout) {
                RelativeLayout.LayoutParams params1 = new RelativeLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                params1.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
                params1.addRule(RelativeLayout.CENTER_HORIZONTAL);
                adView.setLayoutParams(params1);
            } else {
                LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                params.gravity = 80;
                params.weight = 0;
                adView.setLayoutParams(params);
            }

            AdRequest adRequest = new AdRequest.Builder()
                    .addTestDevice(AdRequest.DEVICE_ID_EMULATOR)
                    .addTestDevice("275D94C2B5B93B3C4014933E75F92565")
                    .addTestDevice("91608B19766D984A3F929C31EC6AB947")
                    .addTestDevice("6316D285813B01C56412DAF4D3D80B40")
                    .addTestDevice("8C416F4CAF490509A1DA82E62168AE08")
                    .addTestDevice("EA8AA9C3AA2BD16A954F592C6F935628")
                    .addTestDevice("7B4C6D080C02BA40EF746C4900BABAD7")
                    .build();

            adView.loadAd(adRequest);
            adView.setAdListener(new AdListener() {
                @Override
                public void onAdLoaded() {
                    if (bannerListener != null) bannerListener.onBannerAdLoaded();
                    if (inLayout) {
                        if (layout != null) layout.addView(adView);
                    } else {
                        if (linear_layout != null) linear_layout.addView(adView);
                    }
                }
                @Override
                public void onAdFailedToLoad(int errorCode) {
                    if (bannerListener != null) bannerListener.onBannerAdFailedToLoad();
                }
                @Override
                public void onAdClosed() {
                    if (bannerListener != null) bannerListener.onBannerAdClosed();
                }
            });
        }
    }
}
