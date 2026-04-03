.class public Lcom/hitmedland/newTextMessage/BillingHelper;
.super Ljava/lang/Object;
.source "BillingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hitmedland/newTextMessage/BillingHelper$RefreshListener;
    }
.end annotation


# static fields
.field static final RC_REQUEST:I = 0x2711

.field static final SKU_PREMIUM:Ljava/lang/String; = "premium_upgrade"


# instance fields
.field activity:Landroid/app/Activity;

.field private developerPayload:Ljava/lang/String;

.field inventoryQuery:Ljava/lang/Boolean;

.field private isPremium:Z

.field mBroadcastReceiver:Lcom/android/vending/billing/IabBroadcastReceiver;

.field mConsumeFinishedListener:Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;

.field mHelper:Lcom/android/vending/billing/IabHelper;

.field mPurchaseFinishedListener:Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;

.field refreshListener:Lcom/hitmedland/newTextMessage/BillingHelper$RefreshListener;

.field setupDone:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/hitmedland/newTextMessage/BillingHelper$RefreshListener;Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "refreshListener"    # Lcom/hitmedland/newTextMessage/BillingHelper$RefreshListener;
    .param p3, "mPurchaseFinishedListener"    # Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;
    .param p4, "mConsumeFinishedListener"    # Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->setupDone:Ljava/lang/Boolean;

    .line 21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->inventoryQuery:Ljava/lang/Boolean;

    .line 22
    iput-boolean v2, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->isPremium:Z

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->developerPayload:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->activity:Landroid/app/Activity;

    .line 48
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh60bV4ttWX4n8LbhJcrhAySYg3PTeQiw/f5QGiIwWx4idIuG+MSNTiZkGuFo1cEo8XNVxEhHY4eGcj3ld6zxStKg3BM87jKEwqTbx2p/zp4AREPBNVrXyioEMWMG79UResU3GMI/9SwBVmihDT2KDBA/CvfOGmkz9U6ixV3aXVXaM3fZpZ0e6jyJsezPyx+EkPpx9bRzvGe1iyXWEsp/b9/ypCeYHDahPxcpT7mv5ZCyjL2VyafDd2M2Rt+zEwXt3ANEE8olhNx3RWS6p5axpuGhid4tSoHjGAT39zT7QBLnz2uftjqxVFbSPgg5nLM8QlMD8Cmtp+xyzdIslgGoIQIDAQAB"

    .line 51
    .local v0, "base64EncodedPublicKey":Ljava/lang/String;
    new-instance v1, Lcom/android/vending/billing/IabHelper;

    invoke-direct {v1, p1, v0}, Lcom/android/vending/billing/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    .line 54
    iput-object p2, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->refreshListener:Lcom/hitmedland/newTextMessage/BillingHelper$RefreshListener;

    .line 56
    new-instance v1, Lcom/hitmedland/newTextMessage/BillingHelper$1;

    invoke-direct {v1, p0, p3}, Lcom/hitmedland/newTextMessage/BillingHelper$1;-><init>(Lcom/hitmedland/newTextMessage/BillingHelper;Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;)V

    iput-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mPurchaseFinishedListener:Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 76
    iput-object p4, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mConsumeFinishedListener:Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;

    .line 78
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/BillingHelper;->startSetup()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/hitmedland/newTextMessage/BillingHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hitmedland/newTextMessage/BillingHelper;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->isPremium:Z

    return v0
.end method

.method static synthetic access$002(Lcom/hitmedland/newTextMessage/BillingHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hitmedland/newTextMessage/BillingHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->isPremium:Z

    return p1
.end method


# virtual methods
.method public consumeItem(Lcom/android/vending/billing/Purchase;)V
    .locals 3
    .param p1, "item"    # Lcom/android/vending/billing/Purchase;

    .prologue
    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mConsumeFinishedListener:Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v1, p1, v2}, Lcom/android/vending/billing/IabHelper;->consumeAsync(Lcom/android/vending/billing/Purchase;Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;)V
    :try_end_0
    .catch Lcom/android/vending/billing/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lcom/android/vending/billing/IabHelper$IabAsyncInProgressException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Error querying inventory. Another async operation in progress."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPremium()Z
    .locals 3

    .prologue
    .line 208
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPremium called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->isPremium:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    iget-boolean v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->isPremium:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/vending/billing/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/IabHelper;->disposeWhenFinished()V

    .line 217
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    .line 218
    return-void
.end method

.method public purchaseItem(Ljava/lang/String;)V
    .locals 7
    .param p1, "Sku"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->setupDone:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->activity:Landroid/app/Activity;

    const/16 v3, 0x2711

    iget-object v4, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mPurchaseFinishedListener:Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;

    iget-object v5, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->developerPayload:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/vending/billing/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v6

    .line 186
    .local v6, "e":Lcom/android/vending/billing/IabHelper$IabAsyncInProgressException;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Error querying inventory. Another async operation in progress."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public purchasePremium()V
    .locals 7

    .prologue
    .line 168
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->setupDone:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->activity:Landroid/app/Activity;

    const-string v2, "premium_upgrade"

    const/16 v3, 0x2711

    iget-object v4, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mPurchaseFinishedListener:Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;

    iget-object v5, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->developerPayload:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/vending/billing/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v6

    .line 173
    .local v6, "e":Lcom/android/vending/billing/IabHelper$IabAsyncInProgressException;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Error querying inventory. Another async operation in progress."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public receivedBroadcast()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/BillingHelper;->refreshInventory()V

    .line 112
    return-void
.end method

.method public refreshInventory()V
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->setupDone:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->inventoryQuery:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->inventoryQuery:Ljava/lang/Boolean;

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    new-instance v2, Lcom/hitmedland/newTextMessage/BillingHelper$3;

    invoke-direct {v2, p0}, Lcom/hitmedland/newTextMessage/BillingHelper$3;-><init>(Lcom/hitmedland/newTextMessage/BillingHelper;)V

    invoke-virtual {v1, v2}, Lcom/android/vending/billing/IabHelper;->queryInventoryAsync(Lcom/android/vending/billing/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Lcom/android/vending/billing/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Lcom/android/vending/billing/IabHelper$IabAsyncInProgressException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Error querying inventory. Another async operation in progress."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v0    # "e":Lcom/android/vending/billing/IabHelper$IabAsyncInProgressException;
    :cond_1
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/BillingHelper;->startSetup()V

    goto :goto_0
.end method

.method public startSetup()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    new-instance v1, Lcom/hitmedland/newTextMessage/BillingHelper$2;

    invoke-direct {v1, p0}, Lcom/hitmedland/newTextMessage/BillingHelper$2;-><init>(Lcom/hitmedland/newTextMessage/BillingHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/IabHelper;->startSetup(Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;)V

    .line 107
    return-void
.end method
