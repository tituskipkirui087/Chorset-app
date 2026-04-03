.class Lcom/hitmedland/newTextMessage/AdvertHelper$2;
.super Ljava/lang/Object;
.source "AdvertHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/AdvertHelper;->openInterstitialAd(Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

.field final synthetic val$listener:Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;


# direct methods
.method constructor <init>(Lcom/hitmedland/newTextMessage/AdvertHelper;Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hitmedland/newTextMessage/AdvertHelper;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$2;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    iput-object p2, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$2;->val$listener:Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$2;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$2;->val$listener:Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;

    iput-object v1, v0, Lcom/hitmedland/newTextMessage/AdvertHelper;->interstitialListener:Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;

    .line 113
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$2;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    invoke-static {v0}, Lcom/hitmedland/newTextMessage/AdvertHelper;->access$000(Lcom/hitmedland/newTextMessage/AdvertHelper;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$2;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    invoke-static {v0}, Lcom/hitmedland/newTextMessage/AdvertHelper;->access$000(Lcom/hitmedland/newTextMessage/AdvertHelper;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 127
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$2;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/AdvertHelper;->interstitialListener:Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$2;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/AdvertHelper;->interstitialListener:Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;

    invoke-interface {v0}, Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;->onNotLoaded()V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$2;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/hitmedland/newTextMessage/AdvertHelper;->ShowingAd:Z

    .line 124
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$2;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    invoke-static {v0}, Lcom/hitmedland/newTextMessage/AdvertHelper;->access$000(Lcom/hitmedland/newTextMessage/AdvertHelper;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$2;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    iget-object v1, v1, Lcom/hitmedland/newTextMessage/AdvertHelper;->adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0
.end method
