.class Lcom/hitmedland/newTextMessage/FakeTextMessage$4;
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
    .line 221
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 225
    const/4 v1, 0x0

    .line 227
    .local v1, "error":Ljava/lang/String;
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v2, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->r0:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iput v6, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->type:I

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v2, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->r1:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    const/4 v3, 0x2

    iput v3, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->type:I

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v2, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->r2:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    const/4 v3, 0x3

    iput v3, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->type:I

    .line 233
    :cond_2
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v2, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->r3:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 234
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    const/4 v3, 0x4

    iput v3, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->type:I

    .line 235
    :cond_3
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v2, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->r4:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    const/4 v3, 0x5

    iput v3, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->type:I

    .line 285
    :cond_4
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v3, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v3, v3, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->timeStampDate:J

    .line 287
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v2, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->to:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_5

    .line 288
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v2}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    :cond_5
    if-nez v1, :cond_8

    .line 294
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 295
    .local v0, "currentapiVersion":I
    const/16 v2, 0x13

    if-lt v0, v2, :cond_7

    .line 297
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v2, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v3}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 298
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v2}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->setDefaultSmsApp()V

    .line 311
    .end local v0    # "currentapiVersion":I
    :goto_0
    return-void

    .line 301
    .restart local v0    # "currentapiVersion":I
    :cond_6
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v2}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->sendSMS()V

    goto :goto_0

    .line 305
    :cond_7
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v2}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->sendSMS()V

    goto :goto_0

    .line 308
    .end local v0    # "currentapiVersion":I
    :cond_8
    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$4;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v2, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
