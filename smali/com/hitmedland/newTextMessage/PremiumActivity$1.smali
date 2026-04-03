.class Lcom/hitmedland/newTextMessage/PremiumActivity$1;
.super Ljava/lang/Object;
.source "PremiumActivity.java"

# interfaces
.implements Lcom/hitmedland/newTextMessage/BillingHelper$RefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/PremiumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hitmedland/newTextMessage/PremiumActivity;


# direct methods
.method constructor <init>(Lcom/hitmedland/newTextMessage/PremiumActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hitmedland/newTextMessage/PremiumActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/PremiumActivity$1;->this$0:Lcom/hitmedland/newTextMessage/PremiumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(ZLcom/android/vending/billing/Inventory;)V
    .locals 1
    .param p1, "isPremium"    # Z
    .param p2, "inventory"    # Lcom/android/vending/billing/Inventory;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/PremiumActivity$1;->this$0:Lcom/hitmedland/newTextMessage/PremiumActivity;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/PremiumActivity;->finish()V

    .line 58
    :cond_0
    return-void
.end method
