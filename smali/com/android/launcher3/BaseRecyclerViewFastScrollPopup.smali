.class public Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFastScrollPopup.java"


# static fields
.field private static final FAST_SCROLL_OVERLAY_Y_OFFSET_FACTOR:F = 1.5f


# instance fields
.field private mAlpha:F

.field private mAlphaAnimator:Landroid/animation/Animator;

.field private mBg:Landroid/graphics/drawable/Drawable;

.field private mBgBounds:Landroid/graphics/Rect;

.field private mBgOriginalSize:I

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mRes:Landroid/content/res/Resources;

.field private mRv:Lcom/android/launcher3/BaseRecyclerView;

.field private mSectionName:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseRecyclerView;Landroid/content/res/Resources;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    .line 54
    iput-object p2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mRes:Landroid/content/res/Resources;

    .line 55
    iput-object p1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    .line 56
    const v0, 0x7f090048

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    .line 57
    const v0, 0x7f02001d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f090049

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    return-void
.end method


# virtual methods
.method public animateVisibility(Z)V
    .registers 6

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mVisible:Z

    if-eq v0, p1, :cond_30

    .line 116
    iput-boolean p1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mVisible:Z

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 120
    :cond_f
    const-string v1, "alpha"

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_31

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_19
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    .line 121
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_33

    const/16 v0, 0xc8

    :goto_27
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 124
    :cond_30
    return-void

    .line 120
    :cond_31
    const/4 v0, 0x0

    goto :goto_19

    .line 121
    :cond_33
    const/16 v0, 0x96

    goto :goto_27
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    .line 141
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 146
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 147
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 148
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 149
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 150
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 152
    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 153
    iget-object v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    .line 151
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 154
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 156
    :cond_76
    return-void
.end method

.method public getAlpha()F
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    return v0
.end method

.method public isVisible()Z
    .registers 3

    .prologue
    .line 159
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setAlpha(F)V
    .registers 4

    .prologue
    .line 128
    iput p1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 130
    return-void
.end method

.method public setSectionName(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 70
    iput-object p1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 75
    :cond_27
    return-void
.end method

.method public updateFastScrollerBounds(Lcom/android/launcher3/BaseRecyclerView;I)Landroid/graphics/Rect;
    .registers 9

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 86
    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->getMaxScrollbarWidth()I

    move-result v0

    .line 87
    iget v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 88
    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    .line 89
    iget v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    iget-object v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 90
    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mRes:Landroid/content/res/Resources;

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 91
    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->getMaxScrollbarWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 92
    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 98
    :goto_4f
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    const/high16 v3, 0x3fc00000    # 1.5f

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 99
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    .line 100
    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 99
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 107
    :goto_79
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    return-object v0

    .line 94
    :cond_83
    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 95
    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->getMaxScrollbarWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 94
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 96
    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v1

    iput v1, v3, Landroid/graphics/Rect;->left:I

    goto :goto_4f

    .line 103
    :cond_a4
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_79
.end method
