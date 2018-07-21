.class public Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;
.super Ljava/lang/Object;
.source "ScreenEffectPreviewUtils.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I = null

.field private static final OUTLINE_HIDE_START_SCROLL_RATIO:F = 0.8f

.field private static final OUTLINE_MAX_ALPHA:I = 0x80

.field private static final OUTLINE_PAINT:Landroid/graphics/Paint;

.field private static final OUTLINE_SHOW_FINAL_SCROLL_RATIO:F = 0.2f


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I
    .registers 3

    .prologue
    .line 20
    sget-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

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
    sput-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

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

.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 21
    const/4 v0, 0x2

    const v1, -0x35b33330    # -3355444.0f

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/lge/launcher3/util/PaintUtils;->getStrokePaint(IFILandroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->OUTLINE_PAINT:Landroid/graphics/Paint;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final drawBorderLine(Landroid/graphics/Canvas;Landroid/view/View;ILandroid/graphics/Rect;ZZZZ)V
    .registers 16

    .prologue
    .line 122
    if-eqz p3, :cond_8

    .line 123
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 124
    invoke-virtual {p0, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 127
    :cond_8
    sget-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->OUTLINE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->OUTLINE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v6, v0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 132
    if-eqz p4, :cond_2d

    .line 133
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v7

    sget-object v5, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->OUTLINE_PAINT:Landroid/graphics/Paint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 135
    :cond_2d
    if-eqz p5, :cond_39

    .line 136
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v6

    const/4 v4, 0x0

    sget-object v5, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->OUTLINE_PAINT:Landroid/graphics/Paint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 138
    :cond_39
    if-eqz p6, :cond_45

    .line 139
    int-to-float v1, v6

    const/4 v2, 0x0

    int-to-float v3, v6

    int-to-float v4, v7

    sget-object v5, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->OUTLINE_PAINT:Landroid/graphics/Paint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    :cond_45
    if-eqz p7, :cond_51

    .line 142
    const/4 v1, 0x0

    int-to-float v2, v7

    int-to-float v3, v6

    int-to-float v4, v7

    sget-object v5, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->OUTLINE_PAINT:Landroid/graphics/Paint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 145
    :cond_51
    if-eqz p3, :cond_56

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 148
    :cond_56
    return-void
.end method

.method public static final drawOutline(Landroid/graphics/Canvas;Landroid/view/View;ILandroid/graphics/Rect;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 94
    if-eqz p3, :cond_9

    .line 95
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 96
    invoke-virtual {p0, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 99
    :cond_9
    sget-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->OUTLINE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->OUTLINE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v3, v0, v2

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 103
    sget-object v5, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->OUTLINE_PAINT:Landroid/graphics/Paint;

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    if-eqz p3, :cond_2f

    .line 106
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 108
    :cond_2f
    return-void
.end method

.method public static getOutlineAlpha(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)I
    .registers 10

    .prologue
    const/4 v3, 0x1

    const v5, 0x3f4ccccd    # 0.8f

    const v4, 0x3e4ccccd    # 0.2f

    const/16 v6, 0x80

    .line 58
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollDirection:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    .line 59
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 60
    iget v2, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollRatio:F

    .line 68
    cmpg-float v7, v2, v4

    if-gtz v7, :cond_1c

    .line 69
    const/4 v5, 0x0

    move v8, v3

    move v3, v5

    move v5, v8

    .line 82
    :goto_17
    invoke-static/range {v0 .. v6}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getProgressivePageAlpha(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;FFFII)I

    move-result v6

    .line 84
    :cond_1b
    return v6

    .line 73
    :cond_1c
    iget v4, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollRatio:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1b

    .line 75
    const/high16 v4, 0x3f800000    # 1.0f

    move v8, v3

    move v3, v5

    move v5, v6

    move v6, v8

    .line 78
    goto :goto_17
.end method

.method public static final getScrollX(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)I
    .registers 5

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollX:I

    .line 33
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildWidth()I

    move-result v1

    .line 35
    invoke-static {}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I

    move-result-object v2

    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v3}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1e

    .line 50
    :goto_15
    return v0

    .line 37
    :pswitch_16
    mul-int/lit8 v0, v0, -0x1

    .line 38
    goto :goto_15

    .line 41
    :pswitch_19
    mul-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v1

    .line 42
    goto :goto_15

    .line 35
    nop

    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method
