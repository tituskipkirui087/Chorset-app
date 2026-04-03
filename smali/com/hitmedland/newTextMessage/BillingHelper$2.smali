.class Lcom/hitmedland/newTextMessage/BillingHelper$2;
.super Ljava/lang/Object;
.source "BillingHelper.java"

# interfaces
.implements Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/BillingHelper;->startSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hitmedland/newTextMessage/BillingHelper;


# direct methods
.method constructor <init>(Lcom/hitmedland/newTextMessage/BillingHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hitmedland/newTextMessage/BillingHelper;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/BillingHelper$2;->this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/android/vending/billing/IabResult;)V
    .locals 3
    .param p1, "result"    # Lcom/android/vending/billing/IabResult;

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/android/vending/billing/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem setting up In-app Billing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper$2;->this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/android/vending/billing/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem setting up In-app Billing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper$2;->this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/hitmedland/newTextMessage/BillingHelper;->setupDone:Ljava/lang/Boolean;

    .line 102
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper$2;->this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/BillingHelper;->refreshInventory()V

    goto :goto_0
.end method
