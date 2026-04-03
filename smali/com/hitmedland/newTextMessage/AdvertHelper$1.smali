.class Lcom/hitmedland/newTextMessage/AdvertHelper$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdvertHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/AdvertHelper;->initialiseInterstitialAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;


# direct methods
.method constructor <init>(Lcom/hitmedland/newTextMessage/AdvertHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hitmedland/newTextMessage/AdvertHelper;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$1;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$1;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    invoke-static {v0}, Lcom/hitmedland/newTextMessage/AdvertHelper;->access$000(Lcom/hitmedland/newTextMessage/AdvertHelper;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$1;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    iget-object v1, v1, Lcom/hitmedland/newTextMessage/AdvertHelper;->adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 90
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$1;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/hitmedland/newTextMessage/AdvertHelper;->ShowingAd:Z

    .line 92
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$1;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/AdvertHelper;->interstitialListener:Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$1;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/AdvertHelper;->interstitialListener:Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;

    invoke-interface {v0}, Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;->onClosed()V

    .line 95
    :cond_0
    return-void
.end method
