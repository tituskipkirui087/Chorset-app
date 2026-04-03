.class public Lcom/hitmedland/newTextMessage/Preferences;
.super Landroid/support/v7/app/ActionBarActivity;
.source "Preferences.java"


# instance fields
.field ActionBarActivity:Landroid/support/v7/app/ActionBarActivity;

.field actionBar:Landroid/support/v7/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 18
    iput-object p0, p0, Lcom/hitmedland/newTextMessage/Preferences;->ActionBarActivity:Landroid/support/v7/app/ActionBarActivity;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v2, 0x7f03002e

    invoke-virtual {p0, v2}, Lcom/hitmedland/newTextMessage/Preferences;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/Preferences;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/hitmedland/newTextMessage/Preferences;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 26
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Preferences;->actionBar:Landroid/support/v7/app/ActionBar;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/Preferences;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Preferences;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 28
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Preferences;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 29
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Preferences;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->show()V

    .line 32
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/Preferences;->actionBar:Landroid/support/v7/app/ActionBar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/Preferences;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0064

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f060079

    invoke-virtual {p0, v4}, Lcom/hitmedland/newTextMessage/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    const v2, 0x7f0c00c3

    invoke-virtual {p0, v2}, Lcom/hitmedland/newTextMessage/Preferences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 36
    .local v0, "icon_1":Landroid/widget/ImageButton;
    new-instance v2, Lcom/hitmedland/newTextMessage/Preferences$1;

    invoke-direct {v2, p0}, Lcom/hitmedland/newTextMessage/Preferences$1;-><init>(Lcom/hitmedland/newTextMessage/Preferences;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v2, 0x7f0c00c4

    invoke-virtual {p0, v2}, Lcom/hitmedland/newTextMessage/Preferences;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 47
    .local v1, "icon_2":Landroid/widget/ImageButton;
    new-instance v2, Lcom/hitmedland/newTextMessage/Preferences$2;

    invoke-direct {v2, p0}, Lcom/hitmedland/newTextMessage/Preferences$2;-><init>(Lcom/hitmedland/newTextMessage/Preferences;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method
