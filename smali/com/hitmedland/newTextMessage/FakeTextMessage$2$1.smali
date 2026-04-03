.class Lcom/hitmedland/newTextMessage/FakeTextMessage$2$1;
.super Ljava/lang/Object;
.source "FakeTextMessage.java"

# interfaces
.implements Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hitmedland/newTextMessage/FakeTextMessage$2;


# direct methods
.method constructor <init>(Lcom/hitmedland/newTextMessage/FakeTextMessage$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hitmedland/newTextMessage/FakeTextMessage$2;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2$1;->this$1:Lcom/hitmedland/newTextMessage/FakeTextMessage$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButton(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2$1;->this$1:Lcom/hitmedland/newTextMessage/FakeTextMessage$2;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->openPremiumPage()V

    .line 203
    return-void
.end method
