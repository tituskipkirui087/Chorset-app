.class public Lcom/hitmedland/newTextMessage/About;
.super Landroid/support/v7/app/ActionBarActivity;
.source "About.java"


# instance fields
.field ActionBarActivity:Landroid/support/v7/app/ActionBarActivity;

.field actionBar:Landroid/support/v7/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 16
    iput-object p0, p0, Lcom/hitmedland/newTextMessage/About;->ActionBarActivity:Landroid/support/v7/app/ActionBarActivity;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 19
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v1, 0x7f030019

    invoke-virtual {p0, v1}, Lcom/hitmedland/newTextMessage/About;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/About;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/hitmedland/newTextMessage/About;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 24
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/About;->actionBar:Landroid/support/v7/app/ActionBar;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/About;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/About;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 26
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/About;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 27
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/About;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->show()V

    .line 30
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/About;->actionBar:Landroid/support/v7/app/ActionBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/About;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f060052

    invoke-virtual {p0, v3}, Lcom/hitmedland/newTextMessage/About;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    const v1, 0x7f0c0079

    invoke-virtual {p0, v1}, Lcom/hitmedland/newTextMessage/About;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gc/materialdesign/views/ButtonRectangle;

    .line 34
    .local v0, "report":Lcom/gc/materialdesign/views/ButtonRectangle;
    new-instance v1, Lcom/hitmedland/newTextMessage/About$1;

    invoke-direct {v1, p0}, Lcom/hitmedland/newTextMessage/About$1;-><init>(Lcom/hitmedland/newTextMessage/About;)V

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/ButtonRectangle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method
