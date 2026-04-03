.class public Lcom/hitmedland/newTextMessage/FakeTextMessage;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FakeTextMessage.java"

# interfaces
.implements Lcom/android/vending/billing/IabBroadcastReceiver$IabBroadcastListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field final APP_CHANGED_TO_DEFAULT:I

.field BackgroundLayout:Landroid/widget/LinearLayout;

.field final CONTACTS_CLOSED:I

.field final PICK_IMAGE:I

.field actionBar:Landroid/support/v7/app/ActionBar;

.field activity:Landroid/support/v7/app/AppCompatActivity;

.field ad:Lcom/google/android/gms/ads/AdView;

.field ad_counter:I

.field advertHelper:Lcom/hitmedland/newTextMessage/AdvertHelper;

.field analyticsHelper:Lcom/hitmedland/newTextMessage/AnalyticsHelper;

.field attach_btn:Landroid/widget/ImageButton;

.field billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

.field contactHelper:Lcom/hitmedland/newTextMessage/ContactHelper;

.field contactId:Ljava/lang/String;

.field data:Landroid/content/Intent;

.field private datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field dateTimeToSend:Ljava/util/Calendar;

.field datebox:Landroid/widget/EditText;

.field defaultSmsApp:Ljava/lang/String;

.field private listener1:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private listener2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field loadImageHelper:Lcom/hitmedland/newTextMessage/LoadImage;

.field private mReturningWithResult:Z

.field mmsBitmap:Landroid/graphics/Bitmap;

.field r0:Landroid/widget/RadioButton;

.field r1:Landroid/widget/RadioButton;

.field r2:Landroid/widget/RadioButton;

.field r3:Landroid/widget/RadioButton;

.field r4:Landroid/widget/RadioButton;

.field requestCode:I

.field resultCode:I

.field rg1:Landroid/widget/RadioGroup;

.field rg2:Landroid/widget/RadioGroup;

.field texttosend:Landroid/widget/EditText;

.field sendername:Landroid/widget/EditText;

.field private timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field timeStampDate:J

.field timebox:Landroid/widget/EditText;

.field to:Landroid/widget/EditText;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 57
    iput-object p0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->APP_CHANGED_TO_DEFAULT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->CONTACTS_CLOSED:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->PICK_IMAGE:I

    .line 86
    iput-boolean v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->mReturningWithResult:Z

    .line 90
    iput v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->type:I

    .line 104
    iput v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad_counter:I

    .line 514
    new-instance v0, Lcom/hitmedland/newTextMessage/FakeTextMessage$12;

    invoke-direct {v0, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$12;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 524
    new-instance v0, Lcom/hitmedland/newTextMessage/FakeTextMessage$13;

    invoke-direct {v0, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$13;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 543
    new-instance v0, Lcom/hitmedland/newTextMessage/FakeTextMessage$14;

    invoke-direct {v0, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$14;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->listener1:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 558
    new-instance v0, Lcom/hitmedland/newTextMessage/FakeTextMessage$15;

    invoke-direct {v0, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$15;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->listener2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/hitmedland/newTextMessage/FakeTextMessage;)Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/hitmedland/newTextMessage/FakeTextMessage;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->listener2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hitmedland/newTextMessage/FakeTextMessage;)Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/hitmedland/newTextMessage/FakeTextMessage;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->listener1:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-object v0
.end method


# virtual methods
.method public AskRate()V
    .locals 7

    .prologue
    const v4, 0x7f0a0005

    const v6, 0x7f060071

    .line 449
    const-string v1, "rate"

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v2}, Lcom/hitmedland/newTextMessage/Functions;->load_localpref(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 451
    const-string v1, "rate"

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v2}, Lcom/hitmedland/newTextMessage/Functions;->load_localpref(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "rate"

    iget-object v3, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v2, v3}, Lcom/hitmedland/newTextMessage/Functions;->save_localpref(ILjava/lang/String;Landroid/app/Activity;)V

    .line 452
    const-string v1, "rate"

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v2}, Lcom/hitmedland/newTextMessage/Functions;->load_localpref(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "rate"

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v2}, Lcom/hitmedland/newTextMessage/Functions;->load_localpref(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_1

    .line 453
    :cond_0
    new-instance v0, Lcom/hitmedland/newTextMessage/Alert;

    invoke-direct {v0}, Lcom/hitmedland/newTextMessage/Alert;-><init>()V

    .line 454
    .local v0, "alert":Lcom/hitmedland/newTextMessage/Alert;
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1, v6}, Landroid/support/v7/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    const v3, 0x7f060070

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/hitmedland/newTextMessage/Alert;->DisplayText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 455
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2, v6}, Landroid/support/v7/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hitmedland/newTextMessage/Alert;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 456
    new-instance v1, Lcom/hitmedland/newTextMessage/FakeTextMessage$10;

    invoke-direct {v1, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$10;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    invoke-virtual {v0, v1}, Lcom/hitmedland/newTextMessage/Alert;->setPositiveButtonListener(Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;)V

    .line 464
    new-instance v1, Lcom/hitmedland/newTextMessage/FakeTextMessage$11;

    invoke-direct {v1, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$11;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    invoke-virtual {v0, v1}, Lcom/hitmedland/newTextMessage/Alert;->setNegativeButtonListener(Lcom/hitmedland/newTextMessage/Alert$NegativeButtonListener;)V

    .line 473
    .end local v0    # "alert":Lcom/hitmedland/newTextMessage/Alert;
    :cond_1
    return-void
.end method

.method public Rate()V
    .locals 5

    .prologue
    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 480
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 482
    .local v1, "goToMarket":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 621
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 622
    iput p1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->requestCode:I

    .line 623
    iput p2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->resultCode:I

    .line 624
    iput-object p3, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->data:Landroid/content/Intent;

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->mReturningWithResult:Z

    .line 627
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hitmedland/newTextMessage/BillingHelper;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0c007a

    .line 120
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v6, 0x7f030020

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->setContentView(I)V

    .line 124
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 125
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->actionBar:Landroid/support/v7/app/ActionBar;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    iget-object v8, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v8}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 127
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v6}, Landroid/support/v7/app/ActionBar;->show()V

    .line 130
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->actionBar:Landroid/support/v7/app/ActionBar;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<font color=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v8}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0064

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f060052

    invoke-virtual {p0, v8}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</font>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    const v6, 0x7f0c00a3

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->r0:Landroid/widget/RadioButton;

    .line 134
    const v6, 0x7f0c00a4

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->r1:Landroid/widget/RadioButton;

    .line 135
    const v6, 0x7f0c00a5

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->r2:Landroid/widget/RadioButton;

    .line 136
    const v6, 0x7f0c00a7

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->r3:Landroid/widget/RadioButton;

    .line 137
    const v6, 0x7f0c00a8

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->r4:Landroid/widget/RadioButton;

    .line 141
    const v6, 0x7f0c00ad

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 142
    .local v5, "fake":Landroid/widget/Button;
    const v6, 0x7f0c009b

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->to:Landroid/widget/EditText;

    .line 143
    const v6, 0x7f0c00ac

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->texttosend:Landroid/widget/EditText;

    .line 143
    const v6, 0x7f0c00cd

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->sendername:Landroid/widget/EditText;

    .line 144
    const v6, 0x7f0c009f

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->datebox:Landroid/widget/EditText;

    .line 145
    const v6, 0x7f0c009e

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->timebox:Landroid/widget/EditText;

    .line 146
    const v6, 0x7f0c00a2

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->rg1:Landroid/widget/RadioGroup;

    .line 147
    const v6, 0x7f0c00a6

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->rg2:Landroid/widget/RadioGroup;

    .line 150
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->rg1:Landroid/widget/RadioGroup;

    iget-object v7, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->listener1:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 151
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->rg2:Landroid/widget/RadioGroup;

    iget-object v7, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->listener2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 154
    invoke-virtual {p0, v11}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v6, v7}, Lcom/hitmedland/newTextMessage/Functions;->SetKeyboardhide_ViewAndChildren(Landroid/view/View;Landroid/app/Activity;)V

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 159
    .local v2, "c":Ljava/util/Calendar;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yyyy"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 160
    .local v4, "df":Ljava/text/SimpleDateFormat;
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->datebox:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    new-instance v4, Ljava/text/SimpleDateFormat;

    .end local v4    # "df":Ljava/text/SimpleDateFormat;
    const-string v6, "h:mmaa"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v4    # "df":Ljava/text/SimpleDateFormat;
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->timebox:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    new-instance v6, Lcom/hitmedland/newTextMessage/ContactHelper;

    invoke-direct {v6, p0}, Lcom/hitmedland/newTextMessage/ContactHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->contactHelper:Lcom/hitmedland/newTextMessage/ContactHelper;

    .line 169
    const v6, 0x7f0c009c

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 170
    .local v3, "contacts":Landroid/widget/Button;
    new-instance v6, Lcom/hitmedland/newTextMessage/FakeTextMessage$1;

    invoke-direct {v6, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$1;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v6, 0x7f0c00ab

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->attach_btn:Landroid/widget/ImageButton;

    .line 181
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->attach_btn:Landroid/widget/ImageButton;

    new-instance v7, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;

    invoke-direct {v7, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->attach_btn:Landroid/widget/ImageButton;

    new-instance v7, Lcom/hitmedland/newTextMessage/FakeTextMessage$3;

    invoke-direct {v7, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$3;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    new-instance v6, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;

    invoke-direct {v6, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->datebox:Landroid/widget/EditText;

    new-instance v7, Lcom/hitmedland/newTextMessage/FakeTextMessage$5;

    invoke-direct {v7, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$5;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->timebox:Landroid/widget/EditText;

    new-instance v7, Lcom/hitmedland/newTextMessage/FakeTextMessage$6;

    invoke-direct {v7, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$6;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    new-instance v6, Lcom/hitmedland/newTextMessage/AnalyticsHelper;

    iget-object v7, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v6, v7}, Lcom/hitmedland/newTextMessage/AnalyticsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->analyticsHelper:Lcom/hitmedland/newTextMessage/AnalyticsHelper;

    .line 337
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->analyticsHelper:Lcom/hitmedland/newTextMessage/AnalyticsHelper;

    const-string v7, "UA-53498816-23"

    invoke-virtual {v6, v7}, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->initialiseAnalytics(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    .line 340
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->analyticsHelper:Lcom/hitmedland/newTextMessage/AnalyticsHelper;

    invoke-virtual {v6}, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->AnalyticsView()V

    .line 343
    new-instance v6, Lcom/hitmedland/newTextMessage/BillingHelper;

    iget-object v7, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    new-instance v8, Lcom/hitmedland/newTextMessage/FakeTextMessage$7;

    invoke-direct {v8, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$7;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    new-instance v9, Lcom/hitmedland/newTextMessage/FakeTextMessage$8;

    invoke-direct {v9, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$8;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    new-instance v10, Lcom/hitmedland/newTextMessage/FakeTextMessage$9;

    invoke-direct {v10, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$9;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/hitmedland/newTextMessage/BillingHelper;-><init>(Landroid/app/Activity;Lcom/hitmedland/newTextMessage/BillingHelper$RefreshListener;Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;)V

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    .line 378
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    new-instance v7, Lcom/android/vending/billing/IabBroadcastReceiver;

    invoke-direct {v7, p0}, Lcom/android/vending/billing/IabBroadcastReceiver;-><init>(Lcom/android/vending/billing/IabBroadcastReceiver$IabBroadcastListener;)V

    iput-object v7, v6, Lcom/hitmedland/newTextMessage/BillingHelper;->mBroadcastReceiver:Lcom/android/vending/billing/IabBroadcastReceiver;

    .line 379
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 380
    .local v1, "broadcastFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    iget-object v7, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    iget-object v7, v7, Lcom/hitmedland/newTextMessage/BillingHelper;->mBroadcastReceiver:Lcom/android/vending/billing/IabBroadcastReceiver;

    invoke-virtual {v6, v7, v1}, Landroid/support/v7/app/AppCompatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0, v11}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->BackgroundLayout:Landroid/widget/LinearLayout;

    .line 384
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-virtual {v6}, Lcom/hitmedland/newTextMessage/BillingHelper;->isPremium()Z

    move-result v6

    if-nez v6, :cond_0

    .line 385
    new-instance v6, Lcom/hitmedland/newTextMessage/AdvertHelper;

    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060068

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, p0, v7, v8}, Lcom/hitmedland/newTextMessage/AdvertHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->advertHelper:Lcom/hitmedland/newTextMessage/AdvertHelper;

    .line 386
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->advertHelper:Lcom/hitmedland/newTextMessage/AdvertHelper;

    invoke-virtual {v6}, Lcom/hitmedland/newTextMessage/AdvertHelper;->initialiseInterstitialAd()V

    .line 387
    new-instance v6, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v6}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v7, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    .line 388
    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v6

    const-string v7, "275D94C2B5B93B3C4014933E75F92565"

    .line 389
    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v6

    const-string v7, "91608B19766D984A3F929C31EC6AB947"

    .line 390
    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v6

    const-string v7, "6316D285813B01C56412DAF4D3D80B40"

    .line 391
    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v6

    const-string v7, "8C416F4CAF490509A1DA82E62168AE08"

    .line 392
    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v6

    const-string v7, "7B4C6D080C02BA40EF746C4900BABAD7"

    .line 393
    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v6

    const-string v7, "EA8AA9C3AA2BD16A954F592C6F935628"

    .line 394
    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v6

    .line 395
    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 397
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    const v6, 0x7f0c009a

    invoke-virtual {p0, v6}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/ads/AdView;

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad:Lcom/google/android/gms/ads/AdView;

    .line 398
    iget-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 401
    .end local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    :cond_0
    new-instance v6, Lcom/hitmedland/newTextMessage/LoadImage;

    iget-object v7, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v6, v7}, Lcom/hitmedland/newTextMessage/LoadImage;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    iput-object v6, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->loadImageHelper:Lcom/hitmedland/newTextMessage/LoadImage;

    .line 402
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 502
    packed-switch p1, :pswitch_data_0

    .line 511
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 505
    :pswitch_0
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 507
    :pswitch_1
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 724
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 725
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 793
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 796
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/BillingHelper;->mBroadcastReceiver:Lcom/android/vending/billing/IabBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/BillingHelper;->mBroadcastReceiver:Lcom/android/vending/billing/IabBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/BillingHelper;->onDestroy()V

    .line 801
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 730
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 756
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 733
    :pswitch_0
    :try_start_0
    const-string v3, "com.hitmedland.newTextMessage.About"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 734
    .local v0, "classtostart":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 735
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 736
    .end local v0    # "classtostart":Ljava/lang/Class;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 737
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 742
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :pswitch_1
    :try_start_1
    const-string v3, "com.hitmedland.newTextMessage.Preferences"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 743
    .restart local v0    # "classtostart":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 744
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 745
    .end local v0    # "classtostart":Ljava/lang/Class;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 746
    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 750
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :pswitch_2
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->openPremiumPage()V

    goto :goto_0

    .line 753
    :pswitch_3
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->share()V

    goto :goto_0

    .line 730
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00c9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 779
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 780
    return-void
.end method

.method protected onPostResume()V
    .locals 18

    .prologue
    .line 635
    invoke-super/range {p0 .. p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    .line 636
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->mReturningWithResult:Z

    if-eqz v1, :cond_0

    .line 638
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->requestCode:I

    packed-switch v1, :pswitch_data_0

    .line 709
    :cond_0
    :goto_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->mReturningWithResult:Z

    .line 710
    return-void

    .line 640
    :pswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->resultCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 642
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->data:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 643
    .local v16, "result":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->contactId:Ljava/lang/String;

    .line 644
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->contactId:Ljava/lang/String;

    aput-object v2, v5, v1

    .line 645
    .local v5, "filter":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "contact_id=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 646
    .local v14, "cursor":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 647
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 648
    const-string v1, "data1"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 649
    .local v13, "contactPhoneColumnIndex":I
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 650
    .local v12, "contactPhone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->to:Landroid/widget/EditText;

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 653
    .end local v12    # "contactPhone":Ljava/lang/String;
    .end local v13    # "contactPhoneColumnIndex":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 658
    .end local v5    # "filter":[Ljava/lang/String;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v16    # "result":Landroid/net/Uri;
    :pswitch_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->resultCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->sendSMS()V

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->setDefaultSmsAppBack()V

    .line 662
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_2
    new-instance v6, Lcom/hitmedland/newTextMessage/Alert;

    invoke-direct {v6}, Lcom/hitmedland/newTextMessage/Alert;-><init>()V

    .line 666
    .local v6, "alert":Lcom/hitmedland/newTextMessage/Alert;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    const v2, 0x7f060075

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual/range {v6 .. v11}, Lcom/hitmedland/newTextMessage/Alert;->DisplayText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    const v3, 0x7f06006a

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/hitmedland/newTextMessage/Alert;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 669
    new-instance v1, Lcom/hitmedland/newTextMessage/FakeTextMessage$17;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$17;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    invoke-virtual {v6, v1}, Lcom/hitmedland/newTextMessage/Alert;->setPositiveButtonListener(Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;)V

    .line 675
    new-instance v1, Lcom/hitmedland/newTextMessage/FakeTextMessage$18;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$18;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    invoke-virtual {v6, v1}, Lcom/hitmedland/newTextMessage/Alert;->setNegativeButtonListener(Lcom/hitmedland/newTextMessage/Alert$NegativeButtonListener;)V

    goto/16 :goto_0

    .line 684
    .end local v6    # "alert":Lcom/hitmedland/newTextMessage/Alert;
    :pswitch_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->resultCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->data:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 686
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->data:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 696
    .local v17, "selectedImage":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->loadImageHelper:Lcom/hitmedland/newTextMessage/LoadImage;

    const/16 v2, 0x64

    const/16 v3, 0x64

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v2, v3}, Lcom/hitmedland/newTextMessage/LoadImage;->decodeSampledBitmapFromResource(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 697
    .local v15, "image":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_0

    .line 698
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->mmsBitmap:Landroid/graphics/Bitmap;

    .line 699
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->attach_btn:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->mmsBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 715
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 716
    const v0, 0x7f0c00ca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/BillingHelper;->isPremium()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 717
    return v1

    .line 716
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 761
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->contactHelper:Lcom/hitmedland/newTextMessage/ContactHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/hitmedland/newTextMessage/ContactHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 762
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->loadImageHelper:Lcom/hitmedland/newTextMessage/LoadImage;

    invoke-virtual {v1, p1, p2, p3}, Lcom/hitmedland/newTextMessage/LoadImage;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 763
    .local v0, "image":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 764
    iput-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->mmsBitmap:Landroid/graphics/Bitmap;

    .line 765
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->attach_btn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->mmsBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 767
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 784
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 785
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 786
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/BillingHelper;->refreshInventory()V

    .line 788
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 771
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 773
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->analyticsHelper:Lcom/hitmedland/newTextMessage/AnalyticsHelper;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->onStart()V

    .line 774
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 805
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 808
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->analyticsHelper:Lcom/hitmedland/newTextMessage/AnalyticsHelper;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->onStop()V

    .line 809
    return-void
.end method

.method public openInterstitial()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 575
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-virtual {v1}, Lcom/hitmedland/newTextMessage/BillingHelper;->isPremium()Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    const-string v1, "ad_counter"

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v2}, Lcom/hitmedland/newTextMessage/Functions;->load_localpref(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad_counter:I

    .line 578
    iget v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad_counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad_counter:I

    .line 579
    iget v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad_counter:I

    const-string v2, "ad_counter"

    iget-object v3, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v2, v3}, Lcom/hitmedland/newTextMessage/Functions;->save_localpref(ILjava/lang/String;Landroid/app/Activity;)V

    .line 580
    iget v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad_counter:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 581
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->advertHelper:Lcom/hitmedland/newTextMessage/AdvertHelper;

    new-instance v2, Lcom/hitmedland/newTextMessage/FakeTextMessage$16;

    invoke-direct {v2, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$16;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V

    invoke-virtual {v1, v2}, Lcom/hitmedland/newTextMessage/AdvertHelper;->openInterstitialAd(Lcom/hitmedland/newTextMessage/AdvertHelper$InterstitialListener;)V

    .line 591
    iput v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad_counter:I

    .line 592
    iget v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->ad_counter:I

    const-string v1, "ad_counter"

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0, v1, v2}, Lcom/hitmedland/newTextMessage/Functions;->save_localpref(ILjava/lang/String;Landroid/app/Activity;)V

    .line 593
    const/4 v0, 0x1

    .line 596
    :cond_0
    return v0
.end method

.method public openPremiumPage()V
    .locals 4

    .prologue
    .line 604
    :try_start_0
    const-string v3, "com.hitmedland.newTextMessage.PremiumActivity"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 605
    .local v0, "classtostart":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 606
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    .end local v0    # "classtostart":Ljava/lang/Class;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public receivedBroadcast()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/BillingHelper;->receivedBroadcast()V

    .line 615
    return-void
.end method

.method sendSMS()V
    .locals 11

    .prologue
    .line 423
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->mmsBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 425
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 426
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->mmsBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 427
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 428
    .local v9, "byteArray":[B
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->to:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->contactId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->timeStampDate:J

    const-string v6, ""

    iget-object v7, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->texttosend:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->type:I

    invoke-static/range {v1 .. v9}, Lcom/hitmedland/newTextMessage/MMS;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I[B)Landroid/net/Uri;

    .line 438
    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "byteArray":[B
    :goto_0
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 440
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->openInterstitial()Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->AskRate()V

    .line 442
    :cond_0
    return-void

    .line 430
    :cond_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 431
    .local v10, "values":Landroid/content/ContentValues;
    const-string v1, "address"

    # Check if sendername is provided, otherwise use phone number
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->sendername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, "senderNameStr":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :use_phone_as_sender

    # Use sendername as sender
    invoke-virtual {v10, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :address_set

    :use_phone_as_sender
    # Use phone number as sender
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->to:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :address_set

    .line 432
    const-string v1, "body"

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->texttosend:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v1, "type"

    iget v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    const-string v1, "date"

    iget-wide v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->timeStampDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 435
    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    # Actually send the SMS to the phone number
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->to:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "phoneNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->texttosend:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "messageBody":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v13

    .local v13, "smsManager":Landroid/telephony/SmsManager;
    invoke-virtual {v13, v11, v12}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method setDefaultSmsApp()V
    .locals 3

    .prologue
    .line 406
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->defaultSmsApp:Ljava/lang/String;

    .line 407
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "package"

    invoke-virtual {p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 410
    return-void
.end method

.method setDefaultSmsAppBack()V
    .locals 3

    .prologue
    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "package"

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->defaultSmsApp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0, v0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->startActivity(Landroid/content/Intent;)V

    .line 417
    return-void
.end method

.method public share()V
    .locals 3

    .prologue
    .line 492
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 493
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "Check out Fake Text Message: https://play.google.com/store/apps/details?id=com.hitmedland.newTextMessage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0, v0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->startActivity(Landroid/content/Intent;)V

    .line 497
    return-void
.end method

.method public viewdatetime()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xa

    .line 533
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->timebox:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 537
    :goto_0
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->datebox:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 538
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->timebox:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
