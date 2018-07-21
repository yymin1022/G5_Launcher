.class public Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;
.super Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
.source "ScreenEffectCarousel.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I = null

.field private static final FINAL_PORT_ALPHA_SCROLLRATIO:F = 0.96f

.field private static final FINAL_ROTATE_Y:F = 93.0f

.field private static final OVERSHOOT_TENSION:F = 2.4f

.field private static final START_PORT_ALPHA_SCROLLRATIO:F = 0.86f


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I
    .registers 3

    .prologue
    .line 24
    sget-object v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

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
    sput-object v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

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
    .registers 3

    .prologue
    .line 37
    const v0, 0x4019999a    # 2.4f

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;-><init>(Landroid/content/Context;F)V

    .line 39
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->scaleCameraLocationZ(F)V

    .line 40
    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;JLcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Z
    .registers 9

    .prologue
    .line 46
    iget-object v1, p4, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    .line 48
    invoke-virtual {p0, p4}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->getPageTransformationMatrix(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 49
    invoke-virtual {p0, p4}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->getProgressivePagePaint(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Paint;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    move-object v0, v1

    .line 56
    check-cast v0, Lcom/lge/launcher3/screeneffect/IScreenEffectable;

    .line 57
    invoke-interface {v0}, Lcom/lge/launcher3/screeneffect/IScreenEffectable;->getShortcutAndWidgetLayer()I

    move-result v3

    packed-switch v3, :pswitch_data_40

    .line 64
    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lge/launcher3/util/OrientationUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 65
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-interface {v0, v2}, Lcom/lge/launcher3/screeneffect/IScreenEffectable;->setShortcutAndWidgetAlpha(F)V

    .line 67
    :cond_2d
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 71
    :goto_31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 73
    return v0

    .line 59
    :pswitch_35
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/launcher3/screeneffect/IScreenEffectable;->getChildrenDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    invoke-virtual {p0, p1, v0, v2}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->drawChild(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Z

    move-result v0

    goto :goto_31

    .line 57
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_35
    .end packed-switch
.end method

.method protected getPageTransformationMatrix(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Matrix;
    .registers 12

    .prologue
    const/high16 v9, 0x42ba0000    # 93.0f

    const/4 v1, 0x0

    .line 81
    iget-object v2, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 82
    iget v3, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollRatio:F

    .line 84
    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildWidth()I

    move-result v0

    int-to-float v0, v0

    .line 85
    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildHeight()I

    move-result v4

    int-to-float v4, v4

    .line 86
    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollOffsetForPage()I

    move-result v5

    int-to-float v5, v5

    .line 88
    iget-object v6, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mPivot:Landroid/graphics/PointF;

    invoke-virtual {p1, v6}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getParentPivot(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    .line 89
    iget v7, v6, Landroid/graphics/PointF;->x:F

    sget-boolean v8, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->sIsRtL:Z

    if-eqz v8, :cond_3e

    :goto_22
    add-float/2addr v0, v5

    add-float/2addr v0, v7

    iput v0, v6, Landroid/graphics/PointF;->x:F

    .line 90
    iget v0, v6, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    iput v0, v6, Landroid/graphics/PointF;->y:F

    .line 94
    invoke-static {}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I

    move-result-object v0

    invoke-virtual {v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_86

    .line 107
    sget-object v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 121
    :goto_3d
    return-object v0

    :cond_3e
    move v0, v1

    .line 89
    goto :goto_22

    .line 97
    :pswitch_40
    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr v0, v3

    mul-float/2addr v0, v9

    .line 110
    :goto_44
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mPageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 112
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 113
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 114
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mPageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 115
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 117
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mPageMatrix:Landroid/graphics/Matrix;

    iget v2, v6, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v3, v6, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 118
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mPageMatrix:Landroid/graphics/Matrix;

    iget v2, v6, Landroid/graphics/PointF;->x:F

    iget v3, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 119
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mPageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollDelta()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 121
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mPageMatrix:Landroid/graphics/Matrix;

    goto :goto_3d

    .line 102
    :pswitch_80
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    mul-float/2addr v0, v9

    .line 103
    goto :goto_44

    .line 94
    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_80
        :pswitch_40
        :pswitch_80
        :pswitch_40
    .end packed-switch
.end method

.method protected getProgressivePagePaint(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Paint;
    .registers 9

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mPagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 131
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/OrientationUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 132
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mPagePaint:Landroid/graphics/Paint;

    .line 146
    :goto_f
    return-object v0

    .line 135
    :cond_10
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->TO_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    .line 136
    iget-object v1, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 137
    iget v2, p1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollRatio:F

    .line 139
    const v3, 0x3f5c28f6    # 0.86f

    .line 140
    const v4, 0x3f75c28f    # 0.96f

    .line 143
    const/16 v5, 0xff

    const/4 v6, 0x1

    .line 142
    invoke-static/range {v0 .. v6}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getProgressivePageAlpha(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;FFFII)I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mPagePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->mPagePaint:Landroid/graphics/Paint;

    goto :goto_f
.end method

.method public isOverscrollHandledBySelf()Z
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method
