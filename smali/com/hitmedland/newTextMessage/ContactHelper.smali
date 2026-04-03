.class public Lcom/hitmedland/newTextMessage/ContactHelper;
.super Ljava/lang/Object;
.source "ContactHelper.java"


# instance fields
.field ContactClosedRequestCode:I

.field final MY_PERMISSIONS_REQUEST_READ_CONTACTS:I

.field activity:Landroid/support/v4/app/FragmentActivity;

.field explanationCancel:Ljava/lang/String;

.field explanationDesc:Ljava/lang/String;

.field explanationOK:Ljava/lang/String;

.field explanationTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x32

    iput v0, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->MY_PERMISSIONS_REQUEST_READ_CONTACTS:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->ContactClosedRequestCode:I

    .line 23
    const-string v0, "Read Contacts Permission"

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->explanationTitle:Ljava/lang/String;

    .line 24
    const-string v0, "The app requires to read the contacts."

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->explanationDesc:Ljava/lang/String;

    .line 25
    const-string v0, "OK"

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->explanationOK:Ljava/lang/String;

    .line 26
    const-string v0, "CANCEL"

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->explanationCancel:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 48
    return-void
.end method


# virtual methods
.method public getContact(I)V
    .locals 6
    .param p1, "ContactClosedRequestCode"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->ContactClosedRequestCode:I

    .line 54
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Lcom/hitmedland/newTextMessage/Alert;

    invoke-direct {v0}, Lcom/hitmedland/newTextMessage/Alert;-><init>()V

    .line 61
    .local v0, "alert":Lcom/hitmedland/newTextMessage/Alert;
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->explanationTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->explanationDesc:Ljava/lang/String;

    iget-object v3, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->explanationOK:Ljava/lang/String;

    iget-object v4, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->explanationCancel:Ljava/lang/String;

    iget-object v5, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/hitmedland/newTextMessage/Alert;->DisplayText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 62
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->explanationTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hitmedland/newTextMessage/Alert;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/hitmedland/newTextMessage/ContactHelper$1;

    invoke-direct {v1, p0}, Lcom/hitmedland/newTextMessage/ContactHelper$1;-><init>(Lcom/hitmedland/newTextMessage/ContactHelper;)V

    invoke-virtual {v0, v1}, Lcom/hitmedland/newTextMessage/Alert;->setPositiveButtonListener(Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;)V

    .line 77
    .end local v0    # "alert":Lcom/hitmedland/newTextMessage/Alert;
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.READ_CONTACTS"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hitmedland/newTextMessage/ContactHelper;->getContactsDirect(I)V

    goto :goto_0
.end method

.method public getContactsDirect(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 82
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 85
    packed-switch p1, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 88
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 91
    iget v0, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->ContactClosedRequestCode:I

    invoke-virtual {p0, v0}, Lcom/hitmedland/newTextMessage/ContactHelper;->getContactsDirect(I)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method

.method public setExplanationCancel(Ljava/lang/String;)V
    .locals 0
    .param p1, "explanationCancel"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->explanationCancel:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setExplanationDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "explanationDesc"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->explanationDesc:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setExplanationOK(Ljava/lang/String;)V
    .locals 0
    .param p1, "explanationOK"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->explanationOK:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setExplanationTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "explanationTitle"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/ContactHelper;->explanationTitle:Ljava/lang/String;

    .line 32
    return-void
.end method
