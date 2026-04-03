.class Lcom/hitmedland/newTextMessage/FakeTextMessage$15;
.super Ljava/lang/Object;
.source "FakeTextMessage.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hitmedland/newTextMessage/FakeTextMessage;
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
    .line 558
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$15;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 562
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$15;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->rg1:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 564
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$15;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->rg1:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 565
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$15;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->rg1:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$15;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-static {v1}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->access$100(Lcom/hitmedland/newTextMessage/FakeTextMessage;)Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 567
    :cond_0
    return-void
.end method
