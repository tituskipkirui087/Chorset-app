.class public Lcom/gc/materialdesign/views/ButtonRectangle;
.super Lcom/gc/materialdesign/views/Button;
.source "ButtonRectangle.java"


# instance fields
.field height:Ljava/lang/Integer;

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field textButton:Landroid/widget/TextView;

.field width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->setDefaultProperties()V

    .line 26
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v6, 0x40c00000    # 6.0f

    .line 141
    invoke-super {p0, p1}, Lcom/gc/materialdesign/views/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 142
    iget v2, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->x:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 143
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 144
    .local v1, "src":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    .local v0, "dst":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->makeCircle()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 146
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->invalidate()V

    .line 148
    .end local v0    # "dst":Landroid/graphics/Rect;
    .end local v1    # "src":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method protected setAttributes(Landroid/util/AttributeSet;)V
    .locals 14
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const-string v9, "http://schemas.android.com/apk/res/android"

    const-string v10, "background"

    const/4 v11, -0x1

    invoke-interface {p1, v9, v10, v11}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 46
    .local v1, "bacgroundColor":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 47
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/gc/materialdesign/views/ButtonRectangle;->setBackgroundColor(I)V

    .line 57
    :cond_0
    :goto_0
    const-string v9, "http://schemas.android.com/apk/res/android"

    const-string v10, "padding"

    invoke-interface {p1, v9, v10}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 78
    .local v3, "text":Ljava/lang/String;
    const-string v9, "http://schemas.android.com/apk/res/android"

    const-string v10, "text"

    const/4 v11, -0x1

    invoke-interface {p1, v9, v10, v11}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 79
    .local v5, "textResource":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_4

    .line 80
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    :goto_1
    if-eqz v3, :cond_2

    .line 85
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    .line 86
    iget-object v9, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v9, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v9, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 89
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xd

    const/4 v10, -0x1

    invoke-virtual {v2, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 91
    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v9

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v10

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v11

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v12

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    iget-object v9, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v9, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/gc/materialdesign/views/ButtonRectangle;->addView(Landroid/view/View;)V

    .line 99
    const-string v9, "http://schemas.android.com/apk/res/android"

    const-string v10, "textColor"

    const/4 v11, -0x1

    invoke-interface {p1, v9, v10, v11}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 100
    .local v4, "textColor":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_5

    .line 101
    iget-object v9, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    :cond_1
    :goto_2
    const/4 v9, 0x1

    new-array v0, v9, [I

    const/4 v9, 0x0

    const v10, 0x1010095

    aput v10, v0, v9

    .line 110
    .local v0, "array":[I
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 111
    .local v8, "values":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 112
    .local v6, "textSize":F
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v9, v6, v9

    if-eqz v9, :cond_2

    .line 114
    iget-object v9, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 118
    .end local v0    # "array":[I
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "textColor":I
    .end local v6    # "textSize":F
    .end local v8    # "values":Landroid/content/res/TypedArray;
    :cond_2
    const-string v9, "http://schemas.android.com/apk/res-auto"

    const-string v10, "rippleSpeed"

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v11

    int-to-float v11, v11

    invoke-interface {p1, v9, v10, v11}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->rippleSpeed:F

    .line 120
    return-void

    .line 51
    .end local v3    # "text":Ljava/lang/String;
    .end local v5    # "textResource":I
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    const-string v9, "http://schemas.android.com/apk/res/android"

    const-string v10, "background"

    const/4 v11, -0x1

    invoke-interface {p1, v9, v10, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->background:I

    .line 52
    iget v9, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->background:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 53
    iget v9, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->background:I

    invoke-virtual {p0, v9}, Lcom/gc/materialdesign/views/ButtonRectangle;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 82
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v5    # "textResource":I
    .restart local v7    # "value":Ljava/lang/String;
    :cond_4
    const-string v9, "http://schemas.android.com/apk/res/android"

    const-string v10, "text"

    invoke-interface {p1, v9, v10}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 105
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "textColor":I
    :cond_5
    const-string v9, "http://schemas.android.com/apk/res/android"

    const-string v10, "textColor"

    const/4 v11, -0x1

    invoke-interface {p1, v9, v10, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 106
    const/4 v9, -0x1

    if-eq v4, v9, :cond_1

    .line 107
    iget-object v9, p0, Lcom/gc/materialdesign/views/ButtonRectangle;->textButton:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method protected setDefaultProperties()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x50

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->minWidth:I

    .line 34
    const/16 v0, 0x24

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->minHeight:I

    .line 35
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_button_rectangle:I

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->background:I

    .line 36
    invoke-super {p0}, Lcom/gc/materialdesign/views/Button;->setDefaultProperties()V

    .line 37
    return-void
.end method
