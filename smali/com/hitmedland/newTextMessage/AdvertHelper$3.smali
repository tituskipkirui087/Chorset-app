.class Lcom/hitmedland/newTextMessage/AdvertHelper$3;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdvertHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/AdvertHelper;->showBanner(ZLandroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

.field final synthetic val$bannerListener:Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;

.field final synthetic val$inLayout:Z

.field final synthetic val$layout:Landroid/widget/RelativeLayout;

.field final synthetic val$linear_layout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/hitmedland/newTextMessage/AdvertHelper;Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/hitmedland/newTextMessage/AdvertHelper;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    iput-object p2, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$bannerListener:Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;

    iput-object p3, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$layout:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$linear_layout:Landroid/widget/LinearLayout;

    iput-boolean p5, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$inLayout:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$bannerListener:Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$bannerListener:Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;

    invoke-interface {v1}, Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;->onLoaded()V

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    invoke-static {v1}, Lcom/hitmedland/newTextMessage/AdvertHelper;->access$100(Lcom/hitmedland/newTextMessage/AdvertHelper;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 184
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 185
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$linear_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    iget-boolean v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$inLayout:Z

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$layout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    invoke-static {v2}, Lcom/hitmedland/newTextMessage/AdvertHelper;->access$100(Lcom/hitmedland/newTextMessage/AdvertHelper;)Lcom/google/android/gms/ads/AdView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$bannerListener:Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$bannerListener:Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;

    invoke-interface {v1}, Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;->onRefreshScreenRequired()V

    .line 205
    :cond_1
    :goto_1
    return-void

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$linear_layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    invoke-static {v2}, Lcom/hitmedland/newTextMessage/AdvertHelper;->access$100(Lcom/hitmedland/newTextMessage/AdvertHelper;)Lcom/google/android/gms/ads/AdView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 197
    :cond_3
    iget-boolean v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$inLayout:Z

    if-eqz v1, :cond_4

    .line 198
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$layout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    invoke-static {v2}, Lcom/hitmedland/newTextMessage/AdvertHelper;->access$100(Lcom/hitmedland/newTextMessage/AdvertHelper;)Lcom/google/android/gms/ads/AdView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 202
    :goto_2
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$bannerListener:Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$bannerListener:Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;

    invoke-interface {v1}, Lcom/hitmedland/newTextMessage/AdvertHelper$BannerListener;->onRefreshScreenRequired()V

    goto :goto_1

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->val$linear_layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/AdvertHelper$3;->this$0:Lcom/hitmedland/newTextMessage/AdvertHelper;

    invoke-static {v2}, Lcom/hitmedland/newTextMessage/AdvertHelper;->access$100(Lcom/hitmedland/newTextMessage/AdvertHelper;)Lcom/google/android/gms/ads/AdView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method
