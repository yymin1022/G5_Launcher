.class public Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;
.super Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
.source "ScreenEffectBreeze.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I = null

.field private static final FINAL_PORT_ALPHA_SCROLLRATIO:F = 1.0f

.field private static final FINAL_PORT_ALPHA_VALUE:I = 0x7f

.field private static final FINAL_ROTATE_Y:F = 60.0f

.field private static final FINAL_SCALE:F = 0.5f

.field private static final FIXED_PAGE_GAP_WIDTH_RATIO:F = 0.075f

.field private static final ROTATE_Y_POWER_FACTOR:F = 2.0f

.field private static final START_PORT_ALPHA_SCROLLRATIO:F = 0.5f

.field private static final START_PORT_ALPHA_VALUE:I = 0xff


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I
    .registers 3

    .prologue
    .line 23
    sget-object v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

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
    sput-object v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

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
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;JLcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Z
    .registers 9

    .prologue
    .line 47
    iget-object v1, p4, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    .line 49
    invoke-virtual {p0, p4}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->getPageTransformationMatrix(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 50
    invoke-virtual {p0, p4}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->getProgressivePagePaint(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Paint;

    move-result-object v2

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    move-object v0, v1

    .line 57
    check-cast v0, Lcom/lge/launcher3/screeneffect/IScreenEffectable;

    .line 58
    invoke-interface {v0}, Lcom/lge/launcher3/screeneffect/IScreenEffectable;->getShortcutAndWidgetLayer()I

    move-result v3

    packed-switch v3, :pswitch_data_40

    .line 65
    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lge/launcher3/util/OrientationUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 66
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-interface {v0, v2}, Lcom/lge/launcher3/screeneffect/IScreenEffectable;->setShortcutAndWidgetAlpha(F)V

    .line 68
    :cond_2d
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 72
    :goto_31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 74
    return v0

    .line 60
    :pswitch_35
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/launcher3/screeneffect/IScreenEffectable;->getChildrenDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    invoke-virtual {p0, p1, v0, v2}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->drawChild(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Z

    move-result v0

    goto :goto_31

    .line 58
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_35
    .end packed-switch
.end method

.method protected getPageTransformationMatrix(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Matrix;
    .registers 14

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 82
    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildWidth()I

    move-result v0

    int-to-float v2, v0

    .line 83
    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildHeight()I

    move-result v0

    int-to-float v0, v0

    .line 84
    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollOffsetForPage()I

    move-result v1

    int-to-float v1, v1

    .line 86
    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mPivot:Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getParentPivot(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 87
    iget v4, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v9

    add-float/2addr v0, v4

    iput v0, v3, Landroid/graphics/PointF;->y:F

    .line 89
    const/high16 v0, 0x42700000    # 60.0f

    .line 92
    iget-object v4, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 93
    iget v5, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollRatio:F

    .line 94
    invoke-static {}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I

    move-result-object v6

    invoke-virtual {v4}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_a4

    .line 115
    sget-object v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 134
    :goto_36
    return-object v0

    .line 96
    :pswitch_37
    iget v6, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    add-float/2addr v1, v6

    iput v1, v3, Landroid/graphics/PointF;->x:F

    .line 98
    const/high16 v1, -0x40800000    # -1.0f

    float-to-double v6, v5

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v1, v6

    mul-float/2addr v1, v0

    .line 100
    mul-float v0, v5, v9

    sub-float v0, v8, v0

    .line 118
    :goto_4b
    iget-object v6, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mPageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 120
    iget-object v6, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    .line 121
    iget-object v6, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 122
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mCamera:Landroid/graphics/Camera;

    iget-object v6, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mPageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 123
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 125
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mPageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 127
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mPageMatrix:Landroid/graphics/Matrix;

    iget v1, v3, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget v6, v3, Landroid/graphics/PointF;->y:F

    neg-float v6, v6

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 128
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mPageMatrix:Landroid/graphics/Matrix;

    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 131
    const v0, 0x3d99999a    # 0.075f

    .line 130
    invoke-static {v4, v5, v2, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getFixedChlidGap(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;FFF)F

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mPageMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 134
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mPageMatrix:Landroid/graphics/Matrix;

    goto :goto_36

    .line 104
    :pswitch_8f
    iget v6, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v6

    iput v1, v3, Landroid/graphics/PointF;->x:F

    .line 106
    sub-float v1, v8, v5

    float-to-double v6, v1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v1, v0

    .line 108
    sub-float v0, v8, v5

    mul-float/2addr v0, v9

    sub-float v0, v8, v0

    .line 109
    goto :goto_4b

    .line 94
    nop

    :pswitch_data_a4
    .packed-switch 0x2
        :pswitch_37
        :pswitch_8f
    .end packed-switch
.end method

.method protected getProgressivePagePaint(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Paint;
    .registers 9

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mPagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 144
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/OrientationUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 145
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mPagePaint:Landroid/graphics/Paint;

    .line 161
    :goto_f
    return-object v0

    .line 148
    :cond_10
    iget-object v0, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollDirection:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    .line 149
    iget-object v1, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 150
    iget v2, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollRatio:F

    .line 152
    const/high16 v3, 0x3f000000    # 0.5f

    .line 153
    const/high16 v4, 0x3f800000    # 1.0f

    .line 154
    const/16 v5, 0xff

    .line 155
    const/16 v6, 0x7f

    .line 157
    invoke-static/range {v0 .. v6}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getProgressivePageAlpha(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;FFFII)I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mPagePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 161
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;->mPagePaint:Landroid/graphics/Paint;

    goto :goto_f
.end method
