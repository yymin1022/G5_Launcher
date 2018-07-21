.class Lcom/android/launcher3/PreloadIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PreloadIconDrawable.java"


# static fields
.field private static final ANIMATION_PROGRESS_COMPLETED:F = 1.0f

.field private static final ANIMATION_PROGRESS_STARTED:F = 0.0f

.field private static final ANIMATION_PROGRESS_STOPPED:F = -1.0f

.field private static final DEFAULT_COLOR:I = -0xff6978

.field private static final ICON_SCALE_FACTOR:F = 0.5f

.field private static final MIN_LIGHTNESS:F = 0.6f

.field private static final MIN_SATUNATION:F = 0.2f

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAnimationProgress:F

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field final mIcon:Landroid/graphics/drawable/Drawable;

.field private mIndicatorColor:I

.field private final mIndicatorRect:Landroid/graphics/RectF;

.field private mIndicatorRectDirty:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mRingOutset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    .line 39
    iput v2, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    .line 45
    iput v2, p0, Lcom/android/launcher3/PreloadIconDrawable;->mProgress:I

    .line 47
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PreloadIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/launcher3/PreloadIconDrawable;->applyPreloaderTheme(Landroid/content/res/Resources$Theme;)V

    .line 59
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PreloadIconDrawable;->onLevelChange(I)Z

    .line 60
    return-void
.end method

.method private getIndicatorColor()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const v3, -0xff6978

    .line 229
    iget v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    if-eqz v0, :cond_b

    .line 230
    iget v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    .line 248
    :goto_a
    return v0

    .line 232
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/launcher3/FastBitmapDrawable;

    if-nez v0, :cond_16

    .line 233
    iput v3, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    .line 234
    iget v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    goto :goto_a

    .line 237
    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x14

    .line 236
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    .line 240
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 241
    iget v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 242
    const/4 v1, 0x1

    aget v1, v0, v1

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3d

    .line 243
    iput v3, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    .line 244
    iget v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    goto :goto_a

    .line 246
    :cond_3d
    const v1, 0x3f19999a    # 0.6f

    aget v2, v0, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v4

    .line 247
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    .line 248
    iget v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    goto :goto_a
.end method

.method private initIndicatorRect()V
    .registers 9

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 96
    sget-object v2, Lcom/android/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 98
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 99
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 100
    iget-object v3, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    .line 101
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 102
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sget-object v6, Lcom/android/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    .line 103
    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sget-object v7, Lcom/android/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sub-float v2, v6, v2

    .line 104
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sget-object v6, Lcom/android/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v0, v6

    sub-float v0, v1, v0

    .line 100
    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 107
    iget-object v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorRectDirty:Z

    .line 109
    return-void
.end method


# virtual methods
.method public applyPreloaderTheme(Landroid/content/res/Resources$Theme;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    sget-object v0, Lcom/lge/launcher3/R$styleable;->PreloadIconDrawable:[I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 66
    iget-object v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mRingOutset:I

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher3/PreloadIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PreloadIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/PreloadIconDrawable;->invalidateSelf()V

    .line 71
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    const/16 v3, 0xff

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 113
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/PreloadIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 114
    sget-object v1, Lcom/android/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Lcom/android/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-static {v1, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 150
    :goto_1f
    return-void

    .line 118
    :cond_20
    iget-boolean v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorRectDirty:Z

    if-eqz v1, :cond_27

    .line 119
    invoke-direct {p0}, Lcom/android/launcher3/PreloadIconDrawable;->initIndicatorRect()V

    .line 123
    :cond_27
    iget v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_72

    .line 124
    iget v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_72

    .line 125
    iget-object v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 130
    iget v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    mul-float/2addr v0, v6

    add-float/2addr v0, v6

    .line 146
    :cond_5b
    :goto_5b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 147
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1f

    .line 131
    :cond_72
    iget v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5b

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    iget v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mProgress:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_98

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move v0, v6

    .line 139
    goto :goto_5b

    :cond_98
    iget v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mProgress:I

    if-lez v0, :cond_b0

    .line 140
    iget-object v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mProgress:I

    int-to-float v0, v0

    const v3, 0x40666666    # 3.6f

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move v0, v6

    .line 142
    goto :goto_5b

    :cond_b0
    move v0, v6

    goto :goto_5b
.end method

.method public getAnimationProgress()F
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 154
    const/4 v0, -0x3

    return v0
.end method

.method public getOutset()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mRingOutset:I

    return v0
.end method

.method public maybePerformFinishedAnimation()V
    .registers 3

    .prologue
    .line 195
    iget v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 205
    :goto_8
    return-void

    .line 198
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_12

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 201
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PreloadIconDrawable;->setAnimationProgress(F)V

    .line 202
    const-string v0, "animationProgress"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2a

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_8

    .line 202
    :array_2a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    .line 77
    sget-object v0, Lcom/android/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 78
    sget-object v0, Lcom/android/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mRingOutset:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/launcher3/PreloadIconDrawable;->mRingOutset:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/android/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 81
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIndicatorRectDirty:Z

    .line 82
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 4

    .prologue
    .line 169
    iput p1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mProgress:I

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_e

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 176
    :cond_e
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    .line 177
    if-lez p1, :cond_1d

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/launcher3/PreloadIconDrawable;->getIndicatorColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    :cond_1d
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/launcher3/FastBitmapDrawable;

    if-eqz v0, :cond_2e

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/FastBitmapDrawable;

    if-gtz p1, :cond_33

    .line 184
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable$State;->DISABLED:Lcom/android/launcher3/FastBitmapDrawable$State;

    .line 183
    :goto_2b
    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->setState(Lcom/android/launcher3/FastBitmapDrawable$State;)Z

    .line 187
    :cond_2e
    invoke-virtual {p0}, Lcom/android/launcher3/PreloadIconDrawable;->invalidateSelf()V

    .line 188
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_33
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable$State;->NORMAL:Lcom/android/launcher3/FastBitmapDrawable$State;

    goto :goto_2b
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 160
    return-void
.end method

.method public setAnimationProgress(F)V
    .registers 3

    .prologue
    .line 208
    iget v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 209
    iput p1, p0, Lcom/android/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/PreloadIconDrawable;->invalidateSelf()V

    .line 212
    :cond_b
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 165
    return-void
.end method
