.class Lcom/hitmedland/newTextMessage/BillingHelper$1;
.super Ljava/lang/Object;
.source "BillingHelper.java"

# interfaces
.implements Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/BillingHelper;-><init>(Landroid/app/Activity;Lcom/hitmedland/newTextMessage/BillingHelper$RefreshListener;Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

.field final synthetic val$mPurchaseFinishedListener:Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method constructor <init>(Lcom/hitmedland/newTextMessage/BillingHelper;Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hitmedland/newTextMessage/BillingHelper;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/BillingHelper$1;->this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

    iput-object p2, p0, Lcom/hitmedland/newTextMessage/BillingHelper$1;->val$mPurchaseFinishedListener:Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/android/vending/billing/IabResult;Lcom/android/vending/billing/Purchase;)V
    .locals 3
    .param p1, "result"    # Lcom/android/vending/billing/IabResult;
    .param p2, "purchase"    # Lcom/android/vending/billing/Purchase;

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/vending/billing/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p2}, Lcom/android/vending/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "premium_upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "premium Purchase successful "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper$1;->this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hitmedland/newTextMessage/BillingHelper;->access$002(Lcom/hitmedland/newTextMessage/BillingHelper;Z)Z

    goto :goto_0

    .line 67
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase successful "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper$1;->val$mPurchaseFinishedListener:Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper$1;->val$mPurchaseFinishedListener:Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/vending/billing/IabResult;Lcom/android/vending/billing/Purchase;)V

    goto :goto_0
.end method
