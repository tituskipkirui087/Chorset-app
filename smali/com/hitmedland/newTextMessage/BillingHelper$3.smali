.class Lcom/hitmedland/newTextMessage/BillingHelper$3;
.super Ljava/lang/Object;
.source "BillingHelper.java"

# interfaces
.implements Lcom/android/vending/billing/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/BillingHelper;->refreshInventory()V
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
    .line 120
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/BillingHelper$3;->this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/android/vending/billing/IabResult;Lcom/android/vending/billing/Inventory;)V
    .locals 5
    .param p1, "result"    # Lcom/android/vending/billing/IabResult;
    .param p2, "inventory"    # Lcom/android/vending/billing/Inventory;

    .prologue
    const/4 v2, 0x0

    .line 123
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Query inventory finished."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper$3;->this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

    iget-object v1, v1, Lcom/hitmedland/newTextMessage/BillingHelper;->mHelper:Lcom/android/vending/billing/IabHelper;

    if-nez v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/billing/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query inventory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Query inventory was successful."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    const-string v1, "premium_upgrade"

    invoke-virtual {p2, v1}, Lcom/android/vending/billing/Inventory;->getPurchase(Ljava/lang/String;)Lcom/android/vending/billing/Purchase;

    move-result-object v0

    .line 147
    .local v0, "premiumPurchase":Lcom/android/vending/billing/Purchase;
    iget-object v3, p0, Lcom/hitmedland/newTextMessage/BillingHelper$3;->this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v3, v1}, Lcom/hitmedland/newTextMessage/BillingHelper;->access$002(Lcom/hitmedland/newTextMessage/BillingHelper;Z)Z

    .line 150
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper$3;->this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

    iget-object v1, v1, Lcom/hitmedland/newTextMessage/BillingHelper;->refreshListener:Lcom/hitmedland/newTextMessage/BillingHelper$RefreshListener;

    iget-object v3, p0, Lcom/hitmedland/newTextMessage/BillingHelper$3;->this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-static {v3}, Lcom/hitmedland/newTextMessage/BillingHelper;->access$000(Lcom/hitmedland/newTextMessage/BillingHelper;)Z

    move-result v3

    invoke-interface {v1, v3, p2}, Lcom/hitmedland/newTextMessage/BillingHelper$RefreshListener;->onRefresh(ZLcom/android/vending/billing/Inventory;)V

    .line 152
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper$3;->this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-static {v1}, Lcom/hitmedland/newTextMessage/BillingHelper;->access$000(Lcom/hitmedland/newTextMessage/BillingHelper;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "PREMIUM"

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Initial inventory query finished; enabling main UI."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/BillingHelper$3;->this$0:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/hitmedland/newTextMessage/BillingHelper;->inventoryQuery:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    move v1, v2

    .line 147
    goto :goto_1

    .line 152
    :cond_3
    const-string v1, "NOT PREMIUM"

    goto :goto_2
.end method
