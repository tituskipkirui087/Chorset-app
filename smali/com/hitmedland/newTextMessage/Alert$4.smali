.class Lcom/hitmedland/newTextMessage/Alert$4;
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


# direct methods
.method constructor <init>(Lcom/hitmedland/newTextMessage/Alert;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hitmedland/newTextMessage/Alert;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/Alert$4;->this$0:Lcom/hitmedland/newTextMessage/Alert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/Alert$4;->this$0:Lcom/hitmedland/newTextMessage/Alert;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/Alert;->NegativeButtonListener:Lcom/hitmedland/newTextMessage/Alert$NegativeButtonListener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/Alert$4;->this$0:Lcom/hitmedland/newTextMessage/Alert;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/Alert;->NegativeButtonListener:Lcom/hitmedland/newTextMessage/Alert$NegativeButtonListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/hitmedland/newTextMessage/Alert$NegativeButtonListener;->onNegativeButton(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method
