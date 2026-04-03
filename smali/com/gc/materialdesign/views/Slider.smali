.class public Lcom/gc/materialdesign/views/Slider;
.super Lcom/gc/materialdesign/views/CustomView;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gc/materialdesign/views/Slider$Indicator;,
        Lcom/gc/materialdesign/views/Slider$NumberIndicator;,
        Lcom/gc/materialdesign/views/Slider$Ball;,
        Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;
    }
.end annotation


# instance fields
.field backgroundColor:I

.field ball:Lcom/gc/materialdesign/views/Slider$Ball;

.field max:I

.field min:I

.field numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

.field onValueChangedListener:Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;

.field placedBall:Z

.field press:Z

.field showNumberIndicator:Z

.field value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const-string v0, "#4CAF50"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/Slider;->backgroundColor:I

    .line 38
    iput-boolean v1, p0, Lcom/gc/materialdesign/views/Slider;->showNumberIndicator:Z

    .line 39
    iput-boolean v1, p0, Lcom/gc/materialdesign/views/Slider;->press:Z

    .line 41
    iput v1, p0, Lcom/gc/materialdesign/views/Slider;->value:I

    .line 42
    const/16 v0, 0x64

    iput v0, p0, Lcom/gc/materialdesign/views/Slider;->max:I

    .line 43
    iput v1, p0, Lcom/gc/materialdesign/views/Slider;->min:I

    .line 305
    iput-boolean v1, p0, Lcom/gc/materialdesign/views/Slider;->placedBall:Z

    .line 49
    invoke-virtual {p0, p2}, Lcom/gc/materialdesign/views/Slider;->setAttributes(Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method private placeBall()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v2}, Lcom/gc/materialdesign/views/Slider$Ball;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 232
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget-object v1, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v1

    iput v1, v0, Lcom/gc/materialdesign/views/Slider$Ball;->xIni:F

    .line 233
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v2}, Lcom/gc/materialdesign/views/Slider$Ball;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/gc/materialdesign/views/Slider$Ball;->xFin:F

    .line 234
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v2}, Lcom/gc/materialdesign/views/Slider$Ball;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/gc/materialdesign/views/Slider$Ball;->xCen:F

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/Slider;->placedBall:Z

    .line 236
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/gc/materialdesign/views/Slider;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/gc/materialdesign/views/Slider;->min:I

    return v0
.end method

.method public getOnValueChangedListener()Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider;->onValueChangedListener:Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/gc/materialdesign/views/Slider;->value:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v0}, Lcom/gc/materialdesign/views/Slider$Ball;->invalidate()V

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/gc/materialdesign/views/CustomView;->invalidate()V

    .line 100
    return-void
.end method

.method public isShowNumberIndicator()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/Slider;->showNumberIndicator:Z

    return v0
.end method

.method protected makePressColor()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 221
    iget v4, p0, Lcom/gc/materialdesign/views/Slider;->backgroundColor:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v2, v4, 0xff

    .line 222
    .local v2, "r":I
    iget v4, p0, Lcom/gc/materialdesign/views/Slider;->backgroundColor:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v1, v4, 0xff

    .line 223
    .local v1, "g":I
    iget v4, p0, Lcom/gc/materialdesign/views/Slider;->backgroundColor:I

    shr-int/lit8 v4, v4, 0x0

    and-int/lit16 v0, v4, 0xff

    .line 224
    .local v0, "b":I
    add-int/lit8 v4, v2, -0x1e

    if-gez v4, :cond_0

    move v2, v3

    .line 225
    :goto_0
    add-int/lit8 v4, v1, -0x1e

    if-gez v4, :cond_1

    move v1, v3

    .line 226
    :goto_1
    add-int/lit8 v4, v0, -0x1e

    if-gez v4, :cond_2

    move v0, v3

    .line 227
    :goto_2
    const/16 v3, 0x46

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3

    .line 224
    :cond_0
    add-int/lit8 v2, v2, -0x1e

    goto :goto_0

    .line 225
    :cond_1
    add-int/lit8 v1, v1, -0x1e

    goto :goto_1

    .line 226
    :cond_2
    add-int/lit8 v0, v0, -0x1e

    goto :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 104
    invoke-super/range {p0 .. p1}, Lcom/gc/materialdesign/views/CustomView;->onDraw(Landroid/graphics/Canvas;)V

    .line 105
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/gc/materialdesign/views/Slider;->placedBall:Z

    if-nez v2, :cond_0

    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->placeBall()V

    .line 108
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/gc/materialdesign/views/Slider;->value:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/gc/materialdesign/views/Slider;->min:I

    if-ne v2, v3, :cond_2

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 112
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .local v1, "temp":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 114
    .local v6, "paint":Landroid/graphics/Paint;
    const-string v2, "#B0B0B0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 119
    .local v15, "transparentPaint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-static {v2}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v3}, Lcom/gc/materialdesign/views/Slider$Ball;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-static {v3}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v4}, Lcom/gc/materialdesign/views/Slider$Ball;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v4}, Lcom/gc/materialdesign/views/Slider$Ball;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    .end local v1    # "temp":Landroid/graphics/Canvas;
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v15    # "transparentPaint":Landroid/graphics/Paint;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/gc/materialdesign/views/Slider;->press:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/gc/materialdesign/views/Slider;->showNumberIndicator:Z

    if-nez v2, :cond_1

    .line 143
    new-instance v6, Landroid/graphics/Paint;

    .end local v6    # "paint":Landroid/graphics/Paint;
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 144
    .restart local v6    # "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/gc/materialdesign/views/Slider;->backgroundColor:I

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-static {v2}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v3}, Lcom/gc/materialdesign/views/Slider$Ball;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->invalidate()V

    .line 151
    return-void

    .line 129
    .end local v6    # "paint":Landroid/graphics/Paint;
    :cond_2
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 130
    .restart local v6    # "paint":Landroid/graphics/Paint;
    const-string v2, "#B0B0B0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v8, v2

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v9, v2

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v10, v2

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v11, v2

    move-object/from16 v7, p1

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 134
    move-object/from16 v0, p0

    iget v2, v0, Lcom/gc/materialdesign/views/Slider;->backgroundColor:I

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget v2, v2, Lcom/gc/materialdesign/views/Slider$Ball;->xFin:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget v3, v3, Lcom/gc/materialdesign/views/Slider$Ball;->xIni:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/gc/materialdesign/views/Slider;->max:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gc/materialdesign/views/Slider;->min:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v14, v2, v3

    .line 136
    .local v14, "division":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/gc/materialdesign/views/Slider;->value:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/gc/materialdesign/views/Slider;->min:I

    sub-int v16, v2, v3

    .line 137
    .local v16, "value":I
    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v8, v2

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v9, v2

    move/from16 v0, v16

    int-to-float v2, v0

    mul-float/2addr v2, v14

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v10, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v11, v2

    move-object/from16 v7, p1

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    iput-boolean v6, p0, Lcom/gc/materialdesign/views/Slider;->isLastTouch:Z

    .line 156
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    invoke-virtual {v3}, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    invoke-virtual {v3}, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->show()V

    .line 162
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_8

    .line 163
    iput-boolean v6, p0, Lcom/gc/materialdesign/views/Slider;->press:Z

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "newValue":I
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget v3, v3, Lcom/gc/materialdesign/views/Slider$Ball;->xFin:F

    iget-object v4, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget v4, v4, Lcom/gc/materialdesign/views/Slider$Ball;->xIni:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/gc/materialdesign/views/Slider;->max:I

    iget v5, p0, Lcom/gc/materialdesign/views/Slider;->min:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 167
    .local v0, "division":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget v4, v4, Lcom/gc/materialdesign/views/Slider$Ball;->xFin:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 168
    iget v1, p0, Lcom/gc/materialdesign/views/Slider;->max:I

    .line 174
    :goto_0
    iget v3, p0, Lcom/gc/materialdesign/views/Slider;->value:I

    if-eq v3, v1, :cond_2

    .line 175
    iput v1, p0, Lcom/gc/materialdesign/views/Slider;->value:I

    .line 176
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->onValueChangedListener:Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;

    if-eqz v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->onValueChangedListener:Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;

    invoke-interface {v3, v1}, Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;->onValueChanged(I)V

    .line 180
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 181
    .local v2, "x":F
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget v3, v3, Lcom/gc/materialdesign/views/Slider$Ball;->xIni:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget v2, v3, Lcom/gc/materialdesign/views/Slider$Ball;->xIni:F

    .line 182
    :cond_3
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget v3, v3, Lcom/gc/materialdesign/views/Slider$Ball;->xFin:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget v2, v3, Lcom/gc/materialdesign/views/Slider$Ball;->xFin:F

    .line 183
    :cond_4
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-static {v3, v2}, Lcom/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 184
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v3}, Lcom/gc/materialdesign/views/Slider$Ball;->changeBackground()V

    .line 187
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    if-eqz v3, :cond_5

    .line 189
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    iget-object v3, v3, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->indicator:Lcom/gc/materialdesign/views/Slider$Indicator;

    iput v2, v3, Lcom/gc/materialdesign/views/Slider$Indicator;->x:F

    .line 190
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    iget-object v3, v3, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->indicator:Lcom/gc/materialdesign/views/Slider$Indicator;

    invoke-static {p0}, Lcom/gc/materialdesign/utils/Utils;->getRelativeTop(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Lcom/gc/materialdesign/views/Slider$Indicator;->finalY:F

    .line 192
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    iget-object v3, v3, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->indicator:Lcom/gc/materialdesign/views/Slider$Indicator;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iput v4, v3, Lcom/gc/materialdesign/views/Slider$Indicator;->finalSize:F

    .line 193
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    iget-object v3, v3, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->numberIndicator:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .end local v0    # "division":F
    .end local v1    # "newValue":I
    .end local v2    # "x":F
    :cond_5
    :goto_1
    return v6

    .line 169
    .restart local v0    # "division":F
    .restart local v1    # "newValue":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget v4, v4, Lcom/gc/materialdesign/views/Slider$Ball;->xIni:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    .line 170
    iget v1, p0, Lcom/gc/materialdesign/views/Slider;->min:I

    goto :goto_0

    .line 172
    :cond_7
    iget v3, p0, Lcom/gc/materialdesign/views/Slider;->min:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget v5, v5, Lcom/gc/materialdesign/views/Slider$Ball;->xIni:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v0

    float-to-int v4, v4

    add-int v1, v3, v4

    goto/16 :goto_0

    .line 197
    .end local v0    # "division":F
    .end local v1    # "newValue":I
    :cond_8
    iput-boolean v5, p0, Lcom/gc/materialdesign/views/Slider;->press:Z

    .line 198
    iput-boolean v5, p0, Lcom/gc/materialdesign/views/Slider;->isLastTouch:Z

    .line 199
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    if-eqz v3, :cond_5

    .line 200
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    invoke-virtual {v3}, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->dismiss()V

    goto :goto_1

    .line 204
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v6, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 206
    :cond_a
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    if-eqz v3, :cond_b

    .line 207
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    invoke-virtual {v3}, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->dismiss()V

    .line 208
    :cond_b
    iput-boolean v5, p0, Lcom/gc/materialdesign/views/Slider;->isLastTouch:Z

    .line 209
    iput-boolean v5, p0, Lcom/gc/materialdesign/views/Slider;->press:Z

    goto :goto_1
.end method

.method protected setAttributes(Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 55
    sget v3, Lcom/gc/materialdesign/R$drawable;->background_transparent:I

    invoke-virtual {p0, v3}, Lcom/gc/materialdesign/views/Slider;->setBackgroundResource(I)V

    .line 58
    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/gc/materialdesign/views/Slider;->setMinimumHeight(I)V

    .line 59
    const/high16 v3, 0x42a00000    # 80.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/gc/materialdesign/views/Slider;->setMinimumWidth(I)V

    .line 63
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "background"

    invoke-interface {p1, v3, v4, v6}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, "bacgroundColor":I
    if-eq v0, v6, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/gc/materialdesign/views/Slider;->setBackgroundColor(I)V

    .line 74
    :cond_0
    :goto_0
    const-string v3, "http://schemas.android.com/apk/res-auto"

    const-string v4, "showNumberIndicator"

    invoke-interface {p1, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/gc/materialdesign/views/Slider;->showNumberIndicator:Z

    .line 76
    const-string v3, "http://schemas.android.com/apk/res-auto"

    const-string v4, "min"

    invoke-interface {p1, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/gc/materialdesign/views/Slider;->min:I

    .line 77
    const-string v3, "http://schemas.android.com/apk/res-auto"

    const-string v4, "max"

    invoke-interface {p1, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/gc/materialdesign/views/Slider;->max:I

    .line 78
    const-string v3, "http://schemas.android.com/apk/res-auto"

    const-string v4, "value"

    iget v5, p0, Lcom/gc/materialdesign/views/Slider;->min:I

    invoke-interface {p1, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/gc/materialdesign/views/Slider;->value:I

    .line 80
    new-instance v3, Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/gc/materialdesign/views/Slider$Ball;-><init>(Lcom/gc/materialdesign/views/Slider;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    .line 81
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 84
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v3, v2}, Lcom/gc/materialdesign/views/Slider$Ball;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {p0, v3}, Lcom/gc/materialdesign/views/Slider;->addView(Landroid/view/View;)V

    .line 89
    iget-boolean v3, p0, Lcom/gc/materialdesign/views/Slider;->showNumberIndicator:Z

    if-eqz v3, :cond_1

    .line 90
    new-instance v3, Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/gc/materialdesign/views/Slider$NumberIndicator;-><init>(Lcom/gc/materialdesign/views/Slider;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    .line 93
    :cond_1
    return-void

    .line 69
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "background"

    invoke-interface {p1, v3, v4, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 70
    .local v1, "background":I
    if-eq v1, v6, :cond_0

    .line 71
    invoke-virtual {p0, v1}, Lcom/gc/materialdesign/views/Slider;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/gc/materialdesign/views/Slider;->backgroundColor:I

    .line 301
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget v0, p0, Lcom/gc/materialdesign/views/Slider;->backgroundColor:I

    iput v0, p0, Lcom/gc/materialdesign/views/Slider;->beforeBackground:I

    .line 303
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 277
    iput p1, p0, Lcom/gc/materialdesign/views/Slider;->max:I

    .line 278
    return-void
.end method

.method public setMin(I)V
    .locals 0
    .param p1, "min"    # I

    .prologue
    .line 285
    iput p1, p0, Lcom/gc/materialdesign/views/Slider;->min:I

    .line 286
    return-void
.end method

.method public setOnValueChangedListener(Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/gc/materialdesign/views/Slider;->onValueChangedListener:Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;

    .line 247
    return-void
.end method

.method public setShowNumberIndicator(Z)V
    .locals 2
    .param p1, "showNumberIndicator"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/gc/materialdesign/views/Slider;->showNumberIndicator:Z

    .line 294
    if-eqz p1, :cond_0

    new-instance v0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/gc/materialdesign/views/Slider$NumberIndicator;-><init>(Lcom/gc/materialdesign/views/Slider;Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    .line 296
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 254
    iget-boolean v1, p0, Lcom/gc/materialdesign/views/Slider;->placedBall:Z

    if-nez v1, :cond_0

    .line 255
    new-instance v1, Lcom/gc/materialdesign/views/Slider$1;

    invoke-direct {v1, p0, p1}, Lcom/gc/materialdesign/views/Slider$1;-><init>(Lcom/gc/materialdesign/views/Slider;I)V

    invoke-virtual {p0, v1}, Lcom/gc/materialdesign/views/Slider;->post(Ljava/lang/Runnable;)Z

    .line 270
    :goto_0
    return-void

    .line 263
    :cond_0
    iput p1, p0, Lcom/gc/materialdesign/views/Slider;->value:I

    .line 264
    iget-object v1, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget v1, v1, Lcom/gc/materialdesign/views/Slider$Ball;->xFin:F

    iget-object v2, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    iget v2, v2, Lcom/gc/materialdesign/views/Slider$Ball;->xIni:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/gc/materialdesign/views/Slider;->max:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 265
    .local v0, "division":F
    iget-object v1, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    int-to-float v2, p1

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v3}, Lcom/gc/materialdesign/views/Slider$Ball;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 267
    iget-object v1, p0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v1}, Lcom/gc/materialdesign/views/Slider$Ball;->changeBackground()V

    goto :goto_0
.end method
