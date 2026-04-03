.class public final enum Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;
.super Ljava/lang/Enum;
.source "AnalyticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hitmedland/newTextMessage/AnalyticsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackerName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

.field public static final enum APP_TRACKER:Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

.field public static final enum ECOMMERCE_TRACKER:Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

.field public static final enum GLOBAL_TRACKER:Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    const-string v1, "APP_TRACKER"

    invoke-direct {v0, v1, v2}, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;->APP_TRACKER:Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    .line 20
    new-instance v0, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    const-string v1, "GLOBAL_TRACKER"

    invoke-direct {v0, v1, v3}, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;->GLOBAL_TRACKER:Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    .line 21
    new-instance v0, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    const-string v1, "ECOMMERCE_TRACKER"

    invoke-direct {v0, v1, v4}, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;->ECOMMERCE_TRACKER:Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    sget-object v1, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;->APP_TRACKER:Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;->GLOBAL_TRACKER:Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;->ECOMMERCE_TRACKER:Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;->$VALUES:[Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    return-object v0
.end method

.method public static values()[Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;->$VALUES:[Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    invoke-virtual {v0}, [Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    return-object v0
.end method
