.class public Lcom/hitmedland/newTextMessage/PremiumActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PremiumActivity.java"


# instance fields
.field activity:Landroid/app/Activity;

.field billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/PremiumActivity;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hitmedland/newTextMessage/BillingHelper;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    iput-object p0, p0, Lcom/hitmedland/newTextMessage/PremiumActivity;->context:Landroid/content/Context;

    .line 33
    iput-object p0, p0, Lcom/hitmedland/newTextMessage/PremiumActivity;->activity:Landroid/app/Activity;

    .line 34
    const v8, 0x7f03001a

    invoke-virtual {p0, v8}, Lcom/hitmedland/newTextMessage/PremiumActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/PremiumActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    iget-object v9, p0, Lcom/hitmedland/newTextMessage/PremiumActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 40
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<font color=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/hitmedland/newTextMessage/PremiumActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0064

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f060052

    invoke-virtual {p0, v9}, Lcom/hitmedland/newTextMessage/PremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</font>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    new-instance v8, Lcom/hitmedland/newTextMessage/BillingHelper;

    iget-object v9, p0, Lcom/hitmedland/newTextMessage/PremiumActivity;->activity:Landroid/app/Activity;

    new-instance v10, Lcom/hitmedland/newTextMessage/PremiumActivity$1;

    invoke-direct {v10, p0}, Lcom/hitmedland/newTextMessage/PremiumActivity$1;-><init>(Lcom/hitmedland/newTextMessage/PremiumActivity;)V

    new-instance v11, Lcom/hitmedland/newTextMessage/PremiumActivity$2;

    invoke-direct {v11, p0}, Lcom/hitmedland/newTextMessage/PremiumActivity$2;-><init>(Lcom/hitmedland/newTextMessage/PremiumActivity;)V

    new-instance v12, Lcom/hitmedland/newTextMessage/PremiumActivity$3;

    invoke-direct {v12, p0}, Lcom/hitmedland/newTextMessage/PremiumActivity$3;-><init>(Lcom/hitmedland/newTextMessage/PremiumActivity;)V

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/hitmedland/newTextMessage/BillingHelper;-><init>(Landroid/app/Activity;Lcom/hitmedland/newTextMessage/BillingHelper$RefreshListener;Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;)V

    iput-object v8, p0, Lcom/hitmedland/newTextMessage/PremiumActivity;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    .line 74
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/PremiumActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "Roboto-Medium.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 75
    .local v3, "robotoMedium":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/PremiumActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "Roboto-Regular.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 76
    .local v4, "robotoRegular":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/PremiumActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "Roboto-Thin.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 77
    .local v5, "robotoThin":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/PremiumActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "Roboto-Light.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 81
    .local v2, "robotoLight":Landroid/graphics/Typeface;
    const v8, 0x7f0c007b

    invoke-virtual {p0, v8}, Lcom/hitmedland/newTextMessage/PremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 82
    .local v6, "title_ads":Landroid/widget/TextView;
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    const v8, 0x7f0c007c

    invoke-virtual {p0, v8}, Lcom/hitmedland/newTextMessage/PremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 86
    .local v7, "title_smartwatch":Landroid/widget/TextView;
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    const v8, 0x7f0c007e

    invoke-virtual {p0, v8}, Lcom/hitmedland/newTextMessage/PremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gc/materialdesign/views/ButtonRectangle;

    .line 90
    .local v1, "purchase":Lcom/gc/materialdesign/views/ButtonRectangle;
    new-instance v8, Lcom/hitmedland/newTextMessage/PremiumActivity$4;

    invoke-direct {v8, p0}, Lcom/hitmedland/newTextMessage/PremiumActivity$4;-><init>(Lcom/hitmedland/newTextMessage/PremiumActivity;)V

    invoke-virtual {v1, v8}, Lcom/gc/materialdesign/views/ButtonRectangle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/PremiumActivity;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/PremiumActivity;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/BillingHelper;->onDestroy()V

    .line 112
    :cond_0
    return-void
.end method
