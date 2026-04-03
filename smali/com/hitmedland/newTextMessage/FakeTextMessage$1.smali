.class Lcom/hitmedland/newTextMessage/FakeTextMessage$1;
.super Ljava/lang/Object;
.source "FakeTextMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 170
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$1;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$1;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->contactHelper:Lcom/hitmedland/newTextMessage/ContactHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hitmedland/newTextMessage/ContactHelper;->getContact(I)V

    .line 176
    return-void
.end method
