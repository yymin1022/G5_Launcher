.class public Lcom/lge/launcher3/util/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSinglineOrNoSpace(Landroid/widget/TextView;III)F
    .registers 10

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 163
    invoke-static {p0}, Lcom/lge/launcher3/util/TextUtils;->getThreshold(Landroid/widget/TextView;)I

    move-result v3

    .line 165
    sub-int v4, v2, p3

    const/4 v5, 0x1

    if-le v4, v5, :cond_33

    sub-int v4, v2, p3

    add-int/lit8 v5, v3, 0x1

    if-gt v4, v5, :cond_33

    .line 167
    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v1, v0, v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    .line 168
    int-to-float v5, p1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_33

    .line 169
    add-int/lit8 p2, p2, 0x1

    .line 170
    add-int/lit8 p3, p3, 0x1

    .line 174
    :cond_33
    sub-int/2addr v2, p3

    if-gt v2, v3, :cond_3c

    .line 175
    const/4 v2, -0x1

    invoke-static {v0, v1, p2, v2}, Lcom/lge/launcher3/util/TextUtils;->getTextViewScaleBySeparator(Ljava/lang/String;Landroid/graphics/Paint;II)F

    move-result v0

    .line 178
    :goto_3b
    return v0

    :cond_3c
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_3b
.end method

.method public static getFontScale(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/launcher3/BubbleTextView;I)F
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    .line 34
    if-nez p0, :cond_8

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    :cond_7
    :goto_7
    return v0

    .line 38
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 39
    const v0, 0x7f0c0015

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 42
    sget-object v2, Lcom/lge/launcher3/R$styleable;->BubbleTextView:[I

    invoke-virtual {p0, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 43
    const/4 v3, 0x2

    invoke-virtual {v2, v3, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 44
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    if-ne v3, p3, :cond_7

    .line 49
    const-string v2, "VZW"

    sget-object v3, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 50
    if-eqz v2, :cond_7

    .line 51
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 52
    const v3, 0x7f0c0016

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 54
    cmpg-float v3, v2, v0

    if-ltz v3, :cond_7

    .line 56
    cmpg-float v0, v1, v2

    if-gez v0, :cond_48

    move v0, v1

    .line 58
    goto :goto_7

    :cond_48
    move v0, v2

    .line 59
    goto :goto_7
.end method

.method public static getLineSpacing(Landroid/widget/TextView;)I
    .registers 4

    .prologue
    .line 305
    if-nez p0, :cond_4

    .line 306
    const/4 v0, 0x0

    .line 312
    :goto_3
    return v0

    .line 309
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 310
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 311
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v2, v1

    float-to-int v1, v1

    .line 312
    sub-int/2addr v0, v1

    goto :goto_3
.end method

.method private static getResizeValue(Landroid/widget/TextView;)F
    .registers 15

    .prologue
    const/4 v11, 0x0

    const/16 v13, 0x20

    const/4 v12, 0x1

    const/high16 v0, -0x40800000    # -1.0f

    .line 84
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 85
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 89
    invoke-static {p0, v2, v3}, Lcom/lge/launcher3/util/TextUtils;->resetScale(Landroid/widget/TextView;Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 91
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 92
    int-to-float v6, v1

    invoke-virtual {v3, v2, v12, v6, v11}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v6

    .line 93
    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 94
    int-to-float v8, v1

    cmpg-float v8, v5, v8

    if-ltz v8, :cond_49

    if-lez v6, :cond_49

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_49

    if-lez v7, :cond_4a

    .line 149
    :cond_49
    :goto_49
    return v0

    .line 98
    :cond_4a
    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 99
    invoke-static {p0}, Lcom/lge/launcher3/util/TextUtils;->getThreshold(Landroid/widget/TextView;)I

    move-result v8

    .line 100
    add-int/lit8 v9, v6, -0x1

    .line 106
    sub-int v10, v4, v6

    if-gt v10, v8, :cond_6a

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    invoke-static {v10}, Lcom/lge/launcher3/util/TextUtils;->isHangul(I)Z

    move-result v10

    if-eqz v10, :cond_6a

    .line 107
    int-to-float v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v5

    div-float/2addr v0, v1

    goto :goto_49

    .line 111
    :cond_6a
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    .line 112
    if-eq v5, v12, :cond_72

    if-gez v7, :cond_77

    .line 113
    :cond_72
    invoke-static {p0, v1, v9, v6}, Lcom/lge/launcher3/util/TextUtils;->checkSinglineOrNoSpace(Landroid/widget/TextView;III)F

    move-result v0

    goto :goto_49

    .line 116
    :cond_77
    if-eq v7, v9, :cond_49

    add-int/lit8 v5, v7, 0x1

    if-eq v5, v9, :cond_49

    .line 117
    add-int v5, v9, v8

    if-gt v7, v5, :cond_49

    .line 122
    if-le v7, v9, :cond_88

    .line 123
    invoke-static {v2, v3, v9, v7}, Lcom/lge/launcher3/util/TextUtils;->getTextViewScaleBySeparator(Ljava/lang/String;Landroid/graphics/Paint;II)F

    move-result v0

    goto :goto_49

    .line 126
    :cond_88
    invoke-static {v2, v9, v7}, Lcom/lge/launcher3/util/TextUtils;->getSpaceIndexNearByBreakPos(Ljava/lang/String;II)I

    move-result v5

    .line 128
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 130
    int-to-float v10, v1

    invoke-virtual {v3, v6, v12, v10, v11}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v10

    .line 131
    int-to-float v11, v1

    cmpg-float v7, v7, v11

    if-lez v7, :cond_49

    .line 132
    if-lez v10, :cond_49

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v10, v6, :cond_49

    .line 136
    add-int/lit8 v6, v5, 0x1

    sub-int/2addr v4, v6

    .line 139
    sub-int/2addr v4, v10

    if-gt v4, v8, :cond_b8

    .line 140
    invoke-static {v1, v2, v3, v5, v12}, Lcom/lge/launcher3/util/TextUtils;->setTextViewScaleByNewToken(ILjava/lang/String;Landroid/graphics/Paint;IZ)F

    move-result v0

    goto :goto_49

    .line 144
    :cond_b8
    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v2, v13, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 145
    if-ltz v4, :cond_49

    sub-int v5, v4, v9

    add-int/lit8 v5, v5, -0x1

    if-gt v5, v8, :cond_49

    .line 146
    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/lge/launcher3/util/TextUtils;->setTextViewScaleByNewToken(ILjava/lang/String;Landroid/graphics/Paint;IZ)F

    move-result v0

    goto/16 :goto_49
.end method

.method private static getSpaceIndexNearByBreakPos(Ljava/lang/String;II)I
    .registers 6

    .prologue
    .line 273
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    move v0, p2

    .line 274
    :goto_4
    if-lt v1, p1, :cond_7

    .line 285
    :cond_6
    return v0

    .line 275
    :cond_7
    const/16 v2, 0x20

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 276
    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 280
    if-ge v1, p1, :cond_13

    move v0, v1

    .line 283
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private static getTextViewScaleBySeparator(Ljava/lang/String;Landroid/graphics/Paint;II)F
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-virtual {p1, p0, v2, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 254
    const/4 v0, -0x1

    if-ne p3, v0, :cond_12

    .line 255
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 260
    :goto_c
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    div-float v0, v1, v0

    return v0

    .line 257
    :cond_12
    invoke-virtual {p1, p0, v2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    goto :goto_c
.end method

.method private static getThreshold(Landroid/widget/TextView;)I
    .registers 3

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 198
    const/4 v0, 0x2

    .line 199
    if-eqz v1, :cond_e

    .line 200
    const v0, 0x7f0c0018

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 202
    :cond_e
    return v0
.end method

.method private static isHangul(I)Z
    .registers 2

    .prologue
    .line 186
    const v0, 0xac00

    if-lt p0, v0, :cond_a

    const v0, 0xd7a3

    if-le p0, v0, :cond_12

    :cond_a
    const/16 v0, 0x3131

    if-lt p0, v0, :cond_14

    const/16 v0, 0x318e

    if-gt p0, v0, :cond_14

    .line 187
    :cond_12
    const/4 v0, 0x1

    .line 189
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isRToLLanguage()Z
    .registers 2

    .prologue
    .line 292
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 294
    const-string v1, "ku"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 295
    :cond_28
    const/4 v0, 0x1

    .line 297
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private static resetScale(Landroid/widget/TextView;Ljava/lang/String;Landroid/graphics/Paint;)V
    .registers 5

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 211
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 212
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 213
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 214
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method

.method public static setTextScaleX(Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 69
    if-nez p0, :cond_3

    .line 77
    :cond_2
    :goto_2
    return-void

    .line 73
    :cond_3
    invoke-static {p0}, Lcom/lge/launcher3/util/TextUtils;->getResizeValue(Landroid/widget/TextView;)F

    move-result v0

    .line 74
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 75
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/MathFunctionUtils;->floorDigit(FI)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_2
.end method

.method private static setTextViewScaleByNewToken(ILjava/lang/String;Landroid/graphics/Paint;IZ)F
    .registers 9

    .prologue
    .line 230
    if-eqz p4, :cond_1a

    .line 231
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 236
    :goto_d
    const/4 v1, 0x1

    int-to-float v2, p0

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    .line 237
    const/4 v2, -0x1

    invoke-static {v0, p2, v1, v2}, Lcom/lge/launcher3/util/TextUtils;->getTextViewScaleBySeparator(Ljava/lang/String;Landroid/graphics/Paint;II)F

    move-result v0

    return v0

    .line 233
    :cond_1a
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_d
.end method
