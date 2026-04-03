.class Lcom/hitmedland/newTextMessage/FakeTextMessage$12;
.super Ljava/lang/Object;
.source "FakeTextMessage.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


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
    .line 514
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$12;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "selectedHour"    # I
    .param p3, "selectedMinute"    # I

    .prologue
    .line 516
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$12;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 518
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$12;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v0, v0, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 519
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ampm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$12;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    iget-object v2, v2, Lcom/hitmedland/newTextMessage/FakeTextMessage;->dateTimeToSend:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/FakeTextMessage$12;->this$0:Lcom/hitmedland/newTextMessage/FakeTextMessage;

    invoke-virtual {v0}, Lcom/hitmedland/newTextMessage/FakeTextMessage;->viewdatetime()V

    .line 522
    return-void
.end method
