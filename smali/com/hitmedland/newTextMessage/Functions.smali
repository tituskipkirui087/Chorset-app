.class public Lcom/hitmedland/newTextMessage/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetKeyboardhide_View(Landroid/view/View;Landroid/app/Activity;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    instance-of v0, p0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/hitmedland/newTextMessage/Functions$3;

    invoke-direct {v0, p1}, Lcom/hitmedland/newTextMessage/Functions$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    :cond_0
    return-void
.end method

.method public static SetKeyboardhide_ViewAndChildren(Landroid/view/View;Landroid/app/Activity;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    instance-of v2, p0, Landroid/widget/EditText;

    if-nez v2, :cond_0

    instance-of v2, p0, Landroid/widget/ListView;

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Lcom/hitmedland/newTextMessage/Functions$2;

    invoke-direct {v2, p1}, Lcom/hitmedland/newTextMessage/Functions$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    move-object v2, p0

    .line 81
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, "innerView":Landroid/view/View;
    invoke-static {v1, p1}, Lcom/hitmedland/newTextMessage/Functions;->SetKeyboardhide_ViewAndChildren(Landroid/view/View;Landroid/app/Activity;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    .end local v1    # "innerView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public static SetKeyboardhide_ViewAndChildren(Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 34
    instance-of v2, p0, Landroid/widget/EditText;

    if-nez v2, :cond_0

    instance-of v2, p0, Landroid/widget/ListView;

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Lcom/hitmedland/newTextMessage/Functions$1;

    invoke-direct {v2, p1, p2}, Lcom/hitmedland/newTextMessage/Functions$1;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 48
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    move-object v2, p0

    .line 52
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "innerView":Landroid/view/View;
    invoke-static {v1, p1, p2}, Lcom/hitmedland/newTextMessage/Functions;->SetKeyboardhide_ViewAndChildren(Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    .end local v1    # "innerView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public static getColorRef(Landroid/app/Activity;I)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "colorRef"    # I

    .prologue
    .line 130
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static hideSoftKeyboard(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 21
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 22
    return-void
.end method

.method public static hideSoftKeyboard(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 26
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 27
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 28
    return-void
.end method

.method public static load_localpref(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 4
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    .local v0, "hiscores":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 110
    .local v1, "score":I
    return v1
.end method

.method public static save_localpref(ILjava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p0, "pref"    # I
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, "hiscores":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 118
    .local v1, "hiscores_editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method
