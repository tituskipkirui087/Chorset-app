.class final Lcom/hitmedland/newTextMessage/Functions$3;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/Functions;->SetKeyboardhide_View(Landroid/view/View;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/Functions$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/Functions$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/hitmedland/newTextMessage/Functions;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 99
    const/4 v0, 0x0

    return v0
.end method
