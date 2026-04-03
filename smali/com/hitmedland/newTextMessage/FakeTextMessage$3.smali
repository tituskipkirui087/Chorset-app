.class Lcom/hitmedland/newTextMessage/FakeTextMessage$3;
.super Ljava/lang/Object;
.source "FakeTextMessage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 208
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$3;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 211
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$3;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->attach_btn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$3;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v1, v1, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    const v2, 0x7f0b0064

    invoke-static {v1, v2}, Lcom/hitmedland/newTextMessage/Functions;->getColorRef(Landroid/app/Activity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 216
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$3;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->attach_btn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$3;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v1, v1, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    const v2, 0x7f0b000d

    invoke-static {v1, v2}, Lcom/hitmedland/newTextMessage/Functions;->getColorRef(Landroid/app/Activity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto :goto_0
.end method
