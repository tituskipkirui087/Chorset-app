.class Lcom/hitmedland/newTextMessage/FakeTextMessage$2;
.super Ljava/lang/Object;
.source "FakeTextMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hitmedland/newTextMessage/FakeTextMessage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;


# direct methods
.method constructor <init>(Lcom/hitmedland/newTextMessage/FakeTextMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hitmedland/newTextMessage/FakeTextMessage;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f06004a

    .line 183
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v1, v1, Lcom/hitmedland/newTextMessage/FakeTextMessage;->billingHelper:Lcom/hitmedland/newTextMessage/BillingHelper;

    invoke-virtual {v1}, Lcom/hitmedland/newTextMessage/BillingHelper;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v1, v1, Lcom/hitmedland/newTextMessage/FakeTextMessage;->mmsBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/hitmedland/newTextMessage/FakeTextMessage;->mmsBitmap:Landroid/graphics/Bitmap;

    .line 187
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v1, v1, Lcom/hitmedland/newTextMessage/FakeTextMessage;->attach_btn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v2, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    const v3, 0x7f020046

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v6, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    const-string v2, "Select Picture"

    invoke-static {v6, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 196
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Lcom/hitmedland/newTextMessage/Alert;

    invoke-direct {v0}, Lcom/hitmedland/newTextMessage/Alert;-><init>()V

    .line 197
    .local v0, "alert":Lcom/hitmedland/newTextMessage/Alert;
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v1}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v2}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v3}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v4}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v5, v5, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/hitmedland/newTextMessage/Alert;->DisplayText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 198
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v1, v1, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$2;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v2}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hitmedland/newTextMessage/Alert;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/hitmedland/newTextMessage/FakeTextMessage$2$1;

    invoke-direct {v1, p0}, Lcom/hitmedland/newTextMessage/FakeTextMessage$2$1;-><init>(Lcom/hitmedland/newTextMessage/FakeTextMessage$2;)V

    invoke-virtual {v0, v1}, Lcom/hitmedland/newTextMessage/Alert;->setPositiveButtonListener(Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;)V

    goto :goto_0
.end method
