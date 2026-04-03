.class Lcom/hitmedland/newTextMessage/Preferences$2;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/Preferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hitmedland/newTextMessage/Preferences;


# direct methods
.method constructor <init>(Lcom/hitmedland/newTextMessage/Preferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hitmedland/newTextMessage/Preferences;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/Preferences$2;->this$0:Lcom/hitmedland/newTextMessage/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 49
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/Preferences$2;->this$0:Lcom/hitmedland/newTextMessage/Preferences;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/Preferences;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.hitmedland.newTextMessage"

    const-string v3, "com.hitmedland.newTextMessage-beta"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 50
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/Preferences$2;->this$0:Lcom/hitmedland/newTextMessage/Preferences;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/Preferences;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.hitmedland.newTextMessage"

    const-string v3, "com.hitmedland.newTextMessage-alpha"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 51
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/Preferences$2;->this$0:Lcom/hitmedland/newTextMessage/Preferences;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/Preferences;->ActionBarActivity:Landroid/support/v7/app/ActionBarActivity;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/Preferences$2;->this$0:Lcom/hitmedland/newTextMessage/Preferences;

    invoke-virtual {v1}, Lcom/hitmedland/newTextMessage/Preferences;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    return-void
.end method
