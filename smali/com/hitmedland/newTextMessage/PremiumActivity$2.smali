.class Lcom/hitmedland/newTextMessage/PremiumActivity$2;
.super Ljava/lang/Object;
.source "PremiumActivity.java"

# interfaces
.implements Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;


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
    .line 60
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/PremiumActivity$2;->this$0:Lcom/hitmedland/newTextMessage/PremiumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/android/vending/billing/IabResult;Lcom/android/vending/billing/Purchase;)V
    .locals 3
    .param p1, "result"    # Lcom/android/vending/billing/IabResult;
    .param p2, "purchase"    # Lcom/android/vending/billing/Purchase;

    .prologue
    .line 62
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

    .line 65
    return-void
.end method
