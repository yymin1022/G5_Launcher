.class public Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;
.super Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;
.source "OverscrollScreenEffectSpring.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I = null

.field private static final PRECISION_FLOAT_DIGITS:I = 0x3

.field private static final SPLIT_WIDTH:I = 0x64


# instance fields
.field private mSplitNum:I

.field private mSplitRect:[Landroid/graphics/Rect;

.field private mSplitScaleX:[F

.field private mSplitTranslateX:[F


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I
    .registers 3

    .prologue
    .line 29
    sget-object v0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->values()[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40

    :goto_27
    :try_start_27
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e

    :goto_30
    :try_start_30
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c

    :goto_39
    sput-object v0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

    goto :goto_4

    :catch_3c
    move-exception v1

    goto :goto_39

    :catch_3e
    move-exception v1

    goto :goto_30

    :catch_40
    move-exception v1

    goto :goto_27

    :catch_42
    move-exception v1

    goto :goto_1e

    :catch_44
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v0, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorSpring;

    invoke-direct {v0}, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorSpring;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitNum:I

    .line 34
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    .line 35
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitScaleX:[F

    .line 36
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitTranslateX:[F

    .line 44
    return-void
.end method

.method private computeTrasitionComponents(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)V
    .registers 12

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x3

    .line 165
    iget-object v2, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 167
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->getPageScale(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)F

    move-result v3

    .line 169
    const/4 v1, 0x0

    .line 170
    const/4 v0, 0x0

    :goto_d
    iget v4, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitNum:I

    if-lt v0, v4, :cond_12

    .line 204
    :goto_11
    return-void

    .line 173
    :cond_12
    invoke-static {}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I

    move-result-object v4

    invoke-virtual {v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_66

    :pswitch_1f
    goto :goto_11

    .line 175
    :pswitch_20
    iget-object v4, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitScaleX:[F

    .line 176
    iget v5, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitNum:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v8

    invoke-static {v5, v7}, Lcom/lge/launcher3/util/MathFunctionUtils;->round(FI)F

    move-result v5

    .line 175
    aput v5, v4, v0

    .line 178
    iget-object v4, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitTranslateX:[F

    invoke-static {v1, v7}, Lcom/lge/launcher3/util/MathFunctionUtils;->round(FI)F

    move-result v5

    aput v5, v4, v0

    .line 181
    iget-object v4, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitScaleX:[F

    aget v4, v4, v0

    mul-float/2addr v4, v9

    add-float/2addr v1, v4

    .line 170
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 185
    :pswitch_41
    iget v4, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitNum:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    .line 187
    iget-object v5, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitScaleX:[F

    .line 188
    iget v6, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitNum:I

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v6, v8

    invoke-static {v6, v7}, Lcom/lge/launcher3/util/MathFunctionUtils;->round(FI)F

    move-result v6

    .line 187
    aput v6, v5, v4

    .line 190
    iget-object v5, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitTranslateX:[F

    invoke-static {v1, v7}, Lcom/lge/launcher3/util/MathFunctionUtils;->round(FI)F

    move-result v6

    aput v6, v5, v4

    .line 193
    iget-object v5, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitScaleX:[F

    aget v4, v5, v4

    mul-float/2addr v4, v9

    sub-float/2addr v1, v4

    .line 194
    goto :goto_3e

    .line 173
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_41
    .end packed-switch
.end method

.method private drawInit(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v1, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 88
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mPivot:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getParentPivot(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 90
    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollOffsetForPage()I

    move-result v3

    add-int/2addr v2, v3

    .line 91
    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildTop()I

    move-result v3

    .line 92
    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 93
    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildWidth()I

    move-result v5

    .line 95
    invoke-direct {p0, v5}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->initializeTrasitionComponents(I)V

    .line 98
    div-int/lit8 v6, v5, 0x64

    iput v6, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitNum:I

    .line 103
    invoke-static {}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I

    move-result-object v6

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    aget v1, v6, v1

    packed-switch v1, :pswitch_data_7a

    .line 131
    :goto_32
    :pswitch_32
    return-void

    .line 106
    :cond_33
    mul-int/lit8 v1, v0, 0x64

    add-int/2addr v1, v2

    .line 107
    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v6, v2

    .line 109
    iget-object v7, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    aget-object v7, v7, v0

    invoke-virtual {v7, v1, v3, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    :pswitch_44
    iget v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitNum:I

    if-lt v0, v1, :cond_33

    .line 111
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitNum:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    add-int v1, v2, v5

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 130
    :goto_54
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->computeTrasitionComponents(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)V

    goto :goto_32

    .line 115
    :pswitch_58
    rem-int/lit8 v5, v5, 0x64

    move v1, v0

    .line 116
    :goto_5b
    iget v6, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitNum:I

    if-lt v1, v6, :cond_66

    .line 122
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    aget-object v0, v1, v0

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_54

    .line 117
    :cond_66
    mul-int/lit8 v6, v1, 0x64

    add-int/2addr v6, v2

    add-int/2addr v6, v5

    .line 118
    add-int/lit8 v7, v1, 0x1

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 120
    iget-object v8, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    aget-object v8, v8, v1

    invoke-virtual {v8, v6, v3, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 103
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_44
        :pswitch_32
        :pswitch_32
        :pswitch_58
    .end packed-switch
.end method

.method private getPageScale(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)F
    .registers 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 212
    iget-object v0, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 213
    iget-object v2, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mOverscrollState:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    .line 214
    iget v3, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollRatio:F

    .line 217
    sget-object v4, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    if-ne v0, v4, :cond_21

    .line 218
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->INNER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    if-ne v2, v0, :cond_1a

    .line 219
    sub-float v0, v1, v3

    add-float/2addr v0, v1

    .line 230
    :goto_13
    iget v2, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitNum:I

    invoke-static {v2, v1, v0}, Lcom/lge/launcher3/util/MathFunctionUtils;->getDiffInSumOfArithSeq(IFF)F

    move-result v0

    return v0

    .line 220
    :cond_1a
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->OUTER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    if-ne v2, v0, :cond_35

    .line 221
    sub-float v0, v1, v3

    .line 223
    goto :goto_13

    :cond_21
    sget-object v4, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    if-ne v0, v4, :cond_35

    .line 224
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->INNER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    if-ne v2, v0, :cond_2c

    .line 225
    add-float v0, v1, v3

    .line 226
    goto :goto_13

    :cond_2c
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->OUTER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    if-ne v2, v0, :cond_35

    .line 227
    sub-float v0, v1, v3

    sub-float v0, v1, v0

    goto :goto_13

    :cond_35
    move v0, v1

    goto :goto_13
.end method

.method private initializeTrasitionComponents(I)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 137
    int-to-float v0, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v3, v2

    .line 138
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    array-length v0, v0

    if-ge v0, v3, :cond_47

    const/4 v0, 0x1

    .line 140
    :goto_16
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    if-eqz v2, :cond_1c

    if-eqz v0, :cond_23

    .line 141
    :cond_1c
    new-array v2, v3, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    move v2, v1

    .line 142
    :goto_21
    if-lt v2, v3, :cond_49

    .line 146
    :cond_23
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    array-length v4, v2

    :goto_26
    if-lt v1, v4, :cond_55

    .line 150
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitScaleX:[F

    if-eqz v1, :cond_2e

    if-eqz v0, :cond_32

    .line 151
    :cond_2e
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitScaleX:[F

    .line 153
    :cond_32
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitScaleX:[F

    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 155
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitTranslateX:[F

    if-eqz v1, :cond_3d

    if-eqz v0, :cond_41

    .line 156
    :cond_3d
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitTranslateX:[F

    .line 158
    :cond_41
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitTranslateX:[F

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 159
    return-void

    :cond_47
    move v0, v1

    .line 138
    goto :goto_16

    .line 143
    :cond_49
    iget-object v4, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v4, v2

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 146
    :cond_55
    aget-object v5, v2, v1

    .line 147
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_26
.end method

.method private showClipChildRectsForDebug(Landroid/graphics/Canvas;I)V
    .registers 3

    .prologue
    .line 286
    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;JLcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Z
    .registers 13

    .prologue
    const/4 v7, 0x1

    .line 52
    invoke-direct {p0, p4}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->drawInit(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)V

    .line 54
    const/4 v0, 0x0

    move v6, v0

    move v0, v7

    :goto_7
    iget v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitNum:I

    if-lt v6, v1, :cond_c

    .line 79
    return v0

    .line 55
    :cond_c
    invoke-virtual {p0, p4, v6}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->getPageTransformationMatrix(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;I)Landroid/graphics/Matrix;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 58
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 60
    iget-object v0, p4, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    check-cast v0, Lcom/lge/launcher3/screeneffect/IScreenEffectable;

    .line 61
    invoke-interface {v0}, Lcom/lge/launcher3/screeneffect/IScreenEffectable;->getShortcutAndWidgetLayer()I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    .line 69
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    aget-object v0, v0, v6

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 70
    iget-object v0, p4, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 74
    :goto_2e
    invoke-direct {p0, p1, v6}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->showClipChildRectsForDebug(Landroid/graphics/Canvas;I)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 54
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v0, v1

    goto :goto_7

    .line 63
    :pswitch_39
    invoke-interface {v0, v7}, Lcom/lge/launcher3/screeneffect/IScreenEffectable;->getChildrenDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 64
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    aget-object v3, v0, v6

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    aget-object v4, v0, v6

    .line 65
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->drawChild(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)Z

    move-result v1

    goto :goto_2e

    .line 61
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_39
    .end packed-switch
.end method

.method public getPageTransformationMatrix(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;I)Landroid/graphics/Matrix;
    .registers 10

    .prologue
    .line 239
    iget-object v2, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 241
    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollOffsetForPage()I

    move-result v3

    .line 242
    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildWidth()I

    move-result v0

    int-to-float v4, v0

    .line 244
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mPivot:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getParentPivot(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 246
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 247
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v5, v0

    .line 249
    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollDelta()I

    move-result v0

    int-to-float v0, v0

    .line 250
    iget-object v6, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitTranslateX:[F

    aget v6, v6, p2

    add-float/2addr v0, v6

    .line 252
    invoke-static {}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I

    move-result-object v6

    invoke-virtual {v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v2

    aget v2, v6, v2

    packed-switch v2, :pswitch_data_70

    .line 267
    :pswitch_35
    sget-object v0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 277
    :goto_37
    return-object v0

    .line 254
    :pswitch_38
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    aget-object v2, v2, p2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 270
    :goto_3f
    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mPageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 272
    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mPageMatrix:Landroid/graphics/Matrix;

    neg-float v2, v2

    neg-float v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 273
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mPageMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitScaleX:[F

    aget v3, v3, p2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 274
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mPageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 275
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mPageMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 277
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mPageMatrix:Landroid/graphics/Matrix;

    goto :goto_37

    .line 258
    :pswitch_64
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;->mSplitRect:[Landroid/graphics/Rect;

    aget-object v2, v2, p2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 259
    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 260
    add-float/2addr v0, v4

    .line 261
    goto :goto_3f

    .line 252
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_38
        :pswitch_35
        :pswitch_35
        :pswitch_64
    .end packed-switch
.end method
