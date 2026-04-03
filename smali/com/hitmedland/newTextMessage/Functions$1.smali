.class final Lcom/hitmedland/newTextMessage/Functions$1;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/Functions;->SetKeyboardhide_ViewAndChildren(Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/Functions$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/hitmedland/newTextMessage/Functions$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/Functions$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/Functions$1;->val$dialog:Landroid/app/Dialog;

    invoke-static {v0, v1}, Lcom/hitmedland/newTextMessage/Functions;->hideSoftKeyboard(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 41
    const/4 v0, 0x0

    return v0
.end method
