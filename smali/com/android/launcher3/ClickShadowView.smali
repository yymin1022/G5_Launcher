.class public Lcom/android/launcher3/ClickShadowView;
.super Landroid/view/View;
.source "ClickShadowView.java"


# static fields
.field private static final SHADOW_HIGH_ALPHA:I = 0x3c

.field private static final SHADOW_LOW_ALPHA:I = 0x1e

.field private static final SHADOW_SIZE_FACTOR:I = 0x3


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShadowOffset:F

.field private final mShadowPadding:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ClickShadowView;->mShadowOffset:F

    .line 48
    return-void
.end method


# virtual methods
.method public alignWithIconView(Lcom/android/launcher3/BubbleTextView;Landroid/view/ViewGroup;)V
    .registers 12

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 93
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 94
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 95
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getRight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 96
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 97
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 100
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v5

    add-float/2addr v0, v5

    .line 101
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    .line 102
    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v0, v3

    .line 103
    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v3

    sub-float v3, v8, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v0, v2

    .line 104
    iget v2, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    sub-float/2addr v0, v2

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ClickShadowView;->setTranslationX(F)V

    .line 107
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    add-float/2addr v0, v1

    .line 108
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 109
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleY()F

    move-result v2

    sub-float v2, v8, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v7

    add-float/2addr v0, v1

    .line 110
    iget v1, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    sub-float/2addr v0, v1

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ClickShadowView;->setTranslationY(F)V

    .line 112
    return-void
.end method

.method public animateShadow()V
    .registers 5

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ClickShadowView;->setAlpha(F)V

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 83
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 86
    return-void
.end method

.method public getExtraSize()I
    .registers 3

    .prologue
    .line 54
    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher3/ClickShadowView;->mShadowOffset:F

    iget-object v2, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    :cond_23
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Z
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_b

    .line 63
    iput-object p1, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->invalidate()V

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
