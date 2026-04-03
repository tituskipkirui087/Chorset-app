.class Lcom/hitmedland/newTextMessage/ContactHelper$1;
.super Ljava/lang/Object;
.source "ContactHelper.java"

# interfaces
.implements Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/ContactHelper;->getContact(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hitmedland/newTextMessage/ContactHelper;


# direct methods
.method constructor <init>(Lcom/hitmedland/newTextMessage/ContactHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hitmedland/newTextMessage/ContactHelper;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/ContactHelper$1;->this$0:Lcom/hitmedland/newTextMessage/ContactHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButton(Ljava/lang/String;)V
    .locals 4
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/ContactHelper$1;->this$0:Lcom/hitmedland/newTextMessage/ContactHelper;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/ContactHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 67
    return-void
.end method
