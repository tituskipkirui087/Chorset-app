.class Lcom/hitmedland/newTextMessage/FakeTextMessage$7;
.super Ljava/lang/Object;
.source "FakeTextMessage.java"

# interfaces
.implements Lcom/hitmedland/newTextMessage/BillingHelper$RefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/FakeTextMessage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;


# direct methods
.method constructor <init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hitmedland/newTextMessage/FakeTextMessage;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$7;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(ZLcom/android/vending/billing/Inventory;)V
    .locals 2
    .param p1, "isPremium"    # Z
    .param p2, "inventory"    # Lcom/android/vending/billing/Inventory;

    .prologue
    .line 347
    if-eqz p1, :cond_2

    .line 349
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$7;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$7;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$7;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->BackgroundLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$7;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->BackgroundLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$7;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v1, v1, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$7;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->invalidateOptionsMenu()V

    .line 357
    :cond_2
    return-void
.end method
