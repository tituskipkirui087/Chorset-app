.class Lcom/hitmedland/newTextMessage/FakeTextMessage$9;
.super Ljava/lang/Object;
.source "FakeTextMessage.java"

# interfaces
.implements Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;


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
    .line 366
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$9;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/android/vending/billing/Purchase;Lcom/android/vending/billing/IabResult;)V
    .locals 0
    .param p1, "purchase"    # Lcom/android/vending/billing/Purchase;
    .param p2, "result"    # Lcom/android/vending/billing/IabResult;

    .prologue
    .line 368
    return-void
.end method
