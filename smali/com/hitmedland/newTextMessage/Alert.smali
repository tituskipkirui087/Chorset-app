.class public Lcom/hitmedland/newTextMessage/Alert;
.super Landroid/support/v4/app/DialogFragment;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hitmedland/newTextMessage/Alert$NegativeButtonListener;,
        Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;
    }
.end annotation


# instance fields
.field final EDITTEXT:I

.field NegativeButtonListener:Lcom/hitmedland/newTextMessage/Alert$NegativeButtonListener;

.field PositiveButtonListener:Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;

.field final TEXT:I

.field acceptText:Ljava/lang/String;

.field activity:Landroid/app/Activity;

.field cancelText:Ljava/lang/String;

.field exit:Ljava/lang/Boolean;

.field hint:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field text:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/hitmedland/newTextMessage/Alert;->TEXT:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/hitmedland/newTextMessage/Alert;->EDITTEXT:I

    .line 60
    return-void
.end method


# virtual methods
.method public DisplayEditText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "acceptText"    # Ljava/lang/String;
    .param p5, "cancelText"    # Ljava/lang/String;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/Alert;->title:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/hitmedland/newTextMessage/Alert;->activity:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/hitmedland/newTextMessage/Alert;->text:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/hitmedland/newTextMessage/Alert;->hint:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/hitmedland/newTextMessage/Alert;->type:I

    .line 46
    iput-object p4, p0, Lcom/hitmedland/newTextMessage/Alert;->acceptText:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/hitmedland/newTextMessage/Alert;->cancelText:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public DisplayText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "acceptText"    # Ljava/lang/String;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/Alert;->title:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/hitmedland/newTextMessage/Alert;->text:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/hitmedland/newTextMessage/Alert;->activity:Landroid/app/Activity;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/hitmedland/newTextMessage/Alert;->type:I

    .line 37
    iput-object p3, p0, Lcom/hitmedland/newTextMessage/Alert;->acceptText:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public DisplayText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "acceptText"    # Ljava/lang/String;
    .param p4, "cancelText"    # Ljava/lang/String;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/Alert;->title:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/hitmedland/newTextMessage/Alert;->text:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/hitmedland/newTextMessage/Alert;->activity:Landroid/app/Activity;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/hitmedland/newTextMessage/Alert;->type:I

    .line 28
    iput-object p3, p0, Lcom/hitmedland/newTextMessage/Alert;->acceptText:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/hitmedland/newTextMessage/Alert;->cancelText:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/Alert;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/hitmedland/newTextMessage/Alert;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Alert;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Alert;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Alert;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 75
    iget v2, p0, Lcom/hitmedland/newTextMessage/Alert;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 76
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Alert;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "edittext":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Alert;->hint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 80
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Alert;->acceptText:Ljava/lang/String;

    new-instance v3, Lcom/hitmedland/newTextMessage/Alert$1;

    invoke-direct {v3, p0, v1}, Lcom/hitmedland/newTextMessage/Alert$1;-><init>(Lcom/hitmedland/newTextMessage/Alert;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Alert;->cancelText:Ljava/lang/String;

    new-instance v3, Lcom/hitmedland/newTextMessage/Alert$2;

    invoke-direct {v3, p0, v1}, Lcom/hitmedland/newTextMessage/Alert$2;-><init>(Lcom/hitmedland/newTextMessage/Alert;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    .end local v1    # "edittext":Landroid/widget/EditText;
    :cond_0
    iget v2, p0, Lcom/hitmedland/newTextMessage/Alert;->type:I

    if-nez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Alert;->acceptText:Ljava/lang/String;

    new-instance v3, Lcom/hitmedland/newTextMessage/Alert$3;

    invoke-direct {v3, p0}, Lcom/hitmedland/newTextMessage/Alert$3;-><init>(Lcom/hitmedland/newTextMessage/Alert;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Alert;->cancelText:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Alert;->cancelText:Ljava/lang/String;

    new-instance v3, Lcom/hitmedland/newTextMessage/Alert$4;

    invoke-direct {v3, p0}, Lcom/hitmedland/newTextMessage/Alert$4;-><init>(Lcom/hitmedland/newTextMessage/Alert;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized setNegativeButtonListener(Lcom/hitmedland/newTextMessage/Alert$NegativeButtonListener;)V
    .locals 1
    .param p1, "NegativeButtonListener"    # Lcom/hitmedland/newTextMessage/Alert$NegativeButtonListener;

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/Alert;->NegativeButtonListener:Lcom/hitmedland/newTextMessage/Alert$NegativeButtonListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPositiveButtonListener(Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;)V
    .locals 1
    .param p1, "PositiveButtonListener"    # Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/Alert;->PositiveButtonListener:Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
