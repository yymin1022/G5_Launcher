.class public Lcom/android/launcher3/DragView;
.super Landroid/view/View;
.source "DragView.java"


# static fields
.field public static COLOR_CHANGE_DURATION:I

.field static sDragAlpha:F


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCrossFadeBitmap:Landroid/graphics/Bitmap;

.field mCrossFadeProgress:F

.field mCurrentFilter:[F

.field private mDragLayer:Lcom/android/launcher3/DragLayer;

.field private mDragRegion:Landroid/graphics/Rect;

.field private mDragVisualizeOffset:Landroid/graphics/Point;

.field private mFilterAnimator:Landroid/animation/ValueAnimator;

.field private mHasDrawn:Z

.field private mInitialScale:F

.field private mIntrinsicIconScale:F

.field mOffsetX:F

.field mOffsetY:F

.field mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/16 v0, 0x78

    sput v0, Lcom/android/launcher3/DragView;->COLOR_CHANGE_DURATION:I

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/launcher3/DragView;->sDragAlpha:F

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V
    .registers 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object v1, p0, Lcom/android/launcher3/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 53
    iput-object v1, p0, Lcom/android/launcher3/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 54
    iput-object v1, p0, Lcom/android/launcher3/DragView;->mDragLayer:Lcom/android/launcher3/DragLayer;

    .line 55
    iput-boolean v4, p0, Lcom/android/launcher3/DragView;->mHasDrawn:Z

    .line 56
    iput v0, p0, Lcom/android/launcher3/DragView;->mCrossFadeProgress:F

    .line 59
    iput v0, p0, Lcom/android/launcher3/DragView;->mOffsetX:F

    .line 60
    iput v0, p0, Lcom/android/launcher3/DragView;->mOffsetY:F

    .line 61
    iput v2, p0, Lcom/android/launcher3/DragView;->mInitialScale:F

    .line 64
    iput v2, p0, Lcom/android/launcher3/DragView;->mIntrinsicIconScale:F

    .line 84
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DragView;->mDragLayer:Lcom/android/launcher3/DragLayer;

    .line 85
    iput p9, p0, Lcom/android/launcher3/DragView;->mInitialScale:F

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 89
    int-to-float v1, p7

    add-float/2addr v0, v1

    int-to-float v1, p7

    div-float/2addr v0, v1

    .line 92
    invoke-virtual {p0, p9}, Lcom/android/launcher3/DragView;->setScaleX(F)V

    .line 93
    invoke-virtual {p0, p9}, Lcom/android/launcher3/DragView;->setScaleY(F)V

    .line 96
    new-array v1, v5, [F

    fill-array-data v1, :array_8a

    invoke-static {p0, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/DragView;->mAnim:Landroid/animation/ValueAnimator;

    .line 97
    iget-object v1, p0, Lcom/android/launcher3/DragView;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    iget-object v1, p0, Lcom/android/launcher3/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/DragView$1;

    invoke-direct {v2, p0, p9, v0}, Lcom/android/launcher3/DragView$1;-><init>(Lcom/android/launcher3/DragView;FF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    invoke-static {p2, p5, p6, p7, p8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 127
    iput p3, p0, Lcom/android/launcher3/DragView;->mRegistrationX:I

    .line 128
    iput p4, p0, Lcom/android/launcher3/DragView;->mRegistrationY:I

    .line 131
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 132
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/DragView;->measure(II)V

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/DragView;->mPaint:Landroid/graphics/Paint;

    .line 135
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 136
    invoke-virtual {p0}, Lcom/android/launcher3/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragView;->setElevation(F)V

    .line 138
    :cond_89
    return-void

    .line 96
    :array_8a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateFilterTo([F)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mCurrentFilter:[F

    if-nez v0, :cond_4b

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 275
    :goto_d
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/DragView;->mCurrentFilter:[F

    .line 277
    iget-object v1, p0, Lcom/android/launcher3/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1d

    .line 278
    iget-object v1, p0, Lcom/android/launcher3/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 280
    :cond_1d
    new-instance v1, Landroid/animation/FloatArrayEvaluator;

    iget-object v2, p0, Lcom/android/launcher3/DragView;->mCurrentFilter:[F

    invoke-direct {v1, v2}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 281
    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    .line 280
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    sget v1, Lcom/android/launcher3/DragView;->COLOR_CHANGE_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 283
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/DragView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/DragView$3;-><init>(Lcom/android/launcher3/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 292
    return-void

    .line 274
    :cond_4b
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mCurrentFilter:[F

    goto :goto_d
.end method

.method public static setColorScale(ILandroid/graphics/ColorMatrix;)V
    .registers 7

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 360
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 361
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 360
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 362
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher3/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 335
    :cond_11
    return-void
.end method

.method public crossFade(I)V
    .registers 6

    .prologue
    .line 232
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 233
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 234
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    new-instance v1, Lcom/android/launcher3/DragView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/DragView$2;-><init>(Lcom/android/launcher3/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 241
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 242
    return-void

    .line 232
    :array_24
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getDragRegion()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDragRegionHeight()I
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getDragRegionLeft()I
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getDragRegionTop()I
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getDragRegionWidth()I
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDragVisualizeOffset()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getInitialScale()F
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/android/launcher3/DragView;->mInitialScale:F

    return v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/android/launcher3/DragView;->mIntrinsicIconScale:F

    return v0
.end method

.method public getOffsetY()F
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lcom/android/launcher3/DragView;->mOffsetY:F

    return v0
.end method

.method public hasDrawn()Z
    .registers 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/launcher3/DragView;->mHasDrawn:Z

    return v0
.end method

.method move(II)V
    .registers 5

    .prologue
    .line 349
    iget v0, p0, Lcom/android/launcher3/DragView;->mRegistrationX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/launcher3/DragView;->mOffsetX:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragView;->setTranslationX(F)V

    .line 350
    iget v0, p0, Lcom/android/launcher3/DragView;->mRegistrationY:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/launcher3/DragView;->mOffsetY:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragView;->setTranslationY(F)V

    .line 351
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/android/launcher3/DragView;->mHasDrawn:Z

    .line 210
    iget v1, p0, Lcom/android/launcher3/DragView;->mCrossFadeProgress:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_65

    iget-object v1, p0, Lcom/android/launcher3/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_65

    move v1, v0

    .line 211
    :goto_13
    if-eqz v1, :cond_22

    .line 212
    if-eqz v1, :cond_68

    iget v0, p0, Lcom/android/launcher3/DragView;->mCrossFadeProgress:F

    sub-float v0, v4, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 213
    :goto_1d
    iget-object v2, p0, Lcom/android/launcher3/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 215
    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 216
    if-eqz v1, :cond_64

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/DragView;->mCrossFadeProgress:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget-object v1, p0, Lcom/android/launcher3/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 220
    iget-object v1, p0, Lcom/android/launcher3/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/launcher3/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 221
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 225
    :cond_64
    return-void

    .line 210
    :cond_65
    const/4 v0, 0x0

    move v1, v0

    goto :goto_13

    .line 212
    :cond_68
    const/16 v0, 0xff

    goto :goto_1d
.end method

.method protected onMeasure(II)V
    .registers 5

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/DragView;->setMeasuredDimension(II)V

    .line 196
    return-void
.end method

.method remove()V
    .registers 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/launcher3/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 355
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    .line 357
    :cond_b
    return-void
.end method

.method public resetLayoutParams()V
    .registers 2

    .prologue
    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/DragView;->mOffsetY:F

    iput v0, p0, Lcom/android/launcher3/DragView;->mOffsetX:F

    .line 339
    invoke-virtual {p0}, Lcom/android/launcher3/DragView;->requestLayout()V

    .line 340
    return-void
.end method

.method public setAlpha(F)V
    .registers 4

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 301
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher3/DragView;->invalidate()V

    .line 303
    return-void
.end method

.method public setColor(I)V
    .registers 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_c

    .line 246
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/DragView;->mPaint:Landroid/graphics/Paint;

    .line 248
    :cond_c
    if-eqz p1, :cond_3e

    .line 249
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 250
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 252
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 253
    invoke-static {p1, v1}, Lcom/android/launcher3/DragView;->setColorScale(ILandroid/graphics/ColorMatrix;)V

    .line 254
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 256
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 257
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/DragView;->animateFilterTo([F)V

    .line 270
    :goto_2f
    return-void

    .line 259
    :cond_30
    iget-object v1, p0, Lcom/android/launcher3/DragView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 260
    invoke-virtual {p0}, Lcom/android/launcher3/DragView;->invalidate()V

    goto :goto_2f

    .line 263
    :cond_3e
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/launcher3/DragView;->mCurrentFilter:[F

    if-nez v0, :cond_52

    .line 264
    :cond_48
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 265
    invoke-virtual {p0}, Lcom/android/launcher3/DragView;->invalidate()V

    goto :goto_2f

    .line 267
    :cond_52
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/DragView;->animateFilterTo([F)V

    goto :goto_2f
.end method

.method public setCrossFadeBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/launcher3/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    .line 229
    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/launcher3/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 179
    return-void
.end method

.method public setDragVisualizeOffset(Landroid/graphics/Point;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/launcher3/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 171
    return-void
.end method

.method public setIntrinsicIconScaleFactor(F)V
    .registers 2

    .prologue
    .line 142
    iput p1, p0, Lcom/android/launcher3/DragView;->mIntrinsicIconScale:F

    .line 143
    return-void
.end method

.method public show(II)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lcom/android/launcher3/DragView;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragLayer;->addView(Landroid/view/View;)V

    .line 316
    new-instance v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    .line 317
    iget-object v1, p0, Lcom/android/launcher3/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    .line 318
    iget-object v1, p0, Lcom/android/launcher3/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    .line 319
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->customPosition:Z

    .line 320
    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget v0, p0, Lcom/android/launcher3/DragView;->mRegistrationX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragView;->setTranslationX(F)V

    .line 322
    iget v0, p0, Lcom/android/launcher3/DragView;->mRegistrationY:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragView;->setTranslationY(F)V

    .line 324
    new-instance v0, Lcom/android/launcher3/DragView$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/DragView$4;-><init>(Lcom/android/launcher3/DragView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragView;->post(Ljava/lang/Runnable;)Z

    .line 329
    return-void
.end method

.method public updateInitialScaleToCurrentScale()V
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/launcher3/DragView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DragView;->mInitialScale:F

    .line 191
    return-void
.end method
