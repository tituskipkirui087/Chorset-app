.class public final Lcom/gc/materialdesign/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gc/materialdesign/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CustomAttributes:[I

.field public static final CustomAttributes_animate:I = 0xd

.field public static final CustomAttributes_check:I = 0x8

.field public static final CustomAttributes_checkBoxSize:I = 0x9

.field public static final CustomAttributes_clickAfterRipple:I = 0xf

.field public static final CustomAttributes_iconDrawable:I = 0xb

.field public static final CustomAttributes_iconSize:I = 0xc

.field public static final CustomAttributes_max:I = 0x3

.field public static final CustomAttributes_min:I = 0x4

.field public static final CustomAttributes_progress:I = 0x6

.field public static final CustomAttributes_ringWidth:I = 0x7

.field public static final CustomAttributes_rippleBorderRadius:I = 0xe

.field public static final CustomAttributes_rippleColor:I = 0x0

.field public static final CustomAttributes_rippleSpeed:I = 0x1

.field public static final CustomAttributes_showNumberIndicator:I = 0x2

.field public static final CustomAttributes_thumbSize:I = 0xa

.field public static final CustomAttributes_value:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gc/materialdesign/R$styleable;->CustomAttributes:[I

    return-void

    :array_0
    .array-data 4
        0x7f010033
        0x7f010034
        0x7f010035
        0x7f010036
        0x7f010037
        0x7f010038
        0x7f010039
        0x7f01003a
        0x7f01003b
        0x7f01003c
        0x7f01003d
        0x7f01003e
        0x7f01003f
        0x7f010040
        0x7f010041
        0x7f010042
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
