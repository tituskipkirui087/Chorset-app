.class Lcom/hitmedland/newTextMessage/FakeTextMessage$10;
.super Ljava/lang/Object;
.source "FakeTextMessage.java"

# interfaces
.implements Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/FakeTextMessage;->AskRate()V
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
    .line 456
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$10;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButton(Ljava/lang/String;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$10;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->Rate()V

    .line 461
    const/16 v0, 0x64

    const-string v1, "rate"

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$10;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v2, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0, v1, v2}, Lcom/hitmedland/newTextMessage/Functions;->save_localpref(ILjava/lang/String;Landroid/app/Activity;)V

    .line 462
    return-void
.end method
