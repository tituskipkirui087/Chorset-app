.class Lcom/hitmedland/newTextMessage/Alert$1;
.super Ljava/lang/Object;
.source "Alert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/Alert;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hitmedland/newTextMessage/Alert;

.field final synthetic val$edittext:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/hitmedland/newTextMessage/Alert;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hitmedland/newTextMessage/Alert;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/Alert$1;->this$0:Lcom/hitmedland/newTextMessage/Alert;

    iput-object p2, p0, Lcom/hitmedland/newTextMessage/Alert$1;->val$edittext:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/Alert$1;->this$0:Lcom/hitmedland/newTextMessage/Alert;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/Alert;->PositiveButtonListener:Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/Alert$1;->this$0:Lcom/hitmedland/newTextMessage/Alert;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/Alert;->PositiveButtonListener:Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/Alert$1;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;->onPositiveButton(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method
