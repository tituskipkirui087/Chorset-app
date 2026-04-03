.class public Lcom/hitmedland/newTextMessage/AdvertHelper;
.super Ljava/lang/Object;
.source "AdvertHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;,
        Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;
    }
.end annotation


# instance fields
.field BannerAd_unit_id:Ljava/lang/String;

.field InterstitialAd_unit_id:Ljava/lang/String;

.field ShowingAd:Z

.field activity:Landroid/app/Activity;

.field adRequest:Lcom/google/android/gms/ads/AdRequest;

.field private adView:Lcom/google/android/gms/ads/AdView;

.field public bannerListener:Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;

.field private interstitial:Lcom/google/android/gms/ads/InterstitialAd;

.field public interstitialListener:Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "InterstitialAd_unit_id"    # Ljava/lang/String;
    .param p3, "BannerAd_unit_id"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->ShowingAd:Z

    .line 35
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->activity:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->InterstitialAd_unit_id:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->BannerAd_unit_id:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/hitmedland/newTextMessage/AdvertHelper;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/hitmedland/newTextMessage/AdvertHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hitmedland/newTextMessage/AdvertHelper;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/hitmedland/newTextMessage/AdvertHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method


# virtual methods
.method public initialiseInterstitialAd()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->InterstitialAd_unit_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 67
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 68
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->InterstitialAd_unit_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "275D94C2B5B93B3C4014933E75F92565"

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "91608B19766D984A3F929C31EC6AB947"

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "6316D285813B01C56412DAF4D3D80B40"

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "8C416F4CAF490509A1DA82E62168AE08"

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "7B4C6D080C02BA40EF746C4900BABAD7"

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "5F0321BA219D26B16ADBF3B27F5CEC30"

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adRequest:Lcom/google/android/gms/ads/AdRequest;

    .line 81
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 82
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/hitmedland/newTextMessage/AdvertHelper$1;

    invoke-direct {v1, p0}, Lcom/hitmedland/newTextMessage/AdvertHelper$1;-><init>(Lcom/hitmedland/newTextMessage/AdvertHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 230
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 223
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 217
    :cond_0
    return-void
.end method

.method public openInterstitialAd(Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->InterstitialAd_unit_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->ShowingAd:Z

    .line 108
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/hitmedland/newTextMessage/AdvertHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/hitmedland/newTextMessage/AdvertHelper$2;-><init>(Lcom/hitmedland/newTextMessage/AdvertHelper;Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    :cond_0
    return-void
.end method

.method public showBanner(ZLandroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;)V
    .locals 10
    .param p1, "inLayout"    # Z
    .param p2, "linear_layout"    # Landroid/widget/LinearLayout;
    .param p3, "layout"    # Landroid/widget/RelativeLayout;
    .param p4, "bannerListener"    # Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 140
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->BannerAd_unit_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    .line 143
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 144
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->BannerAd_unit_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 146
    if-eqz p1, :cond_1

    .line 148
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v8, "params1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    const/16 v0, 0xe

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .end local v8    # "params1":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    .line 164
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "275D94C2B5B93B3C4014933E75F92565"

    .line 165
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "91608B19766D984A3F929C31EC6AB947"

    .line 166
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "6316D285813B01C56412DAF4D3D80B40"

    .line 167
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "8C416F4CAF490509A1DA82E62168AE08"

    .line 168
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "EA8AA9C3AA2BD16A954F592C6F935628"

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "7B4C6D080C02BA40EF746C4900BABAD7"

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v6

    .line 174
    .local v6, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 175
    iget-object v9, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    new-instance v0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/hitmedland/newTextMessage/AdvertHelper$3;-><init>(Lcom/hitmedland/newTextMessage/AdvertHelper;Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Z)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 208
    .end local v6    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    :cond_0
    return-void

    .line 154
    :cond_1
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x50

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 156
    const/4 v0, 0x0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 157
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
