.class public Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFastScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;
    }
.end annotation


# static fields
.field private static final MAX_TRACK_ALPHA:I = 0x1e

.field private static final SCROLL_BAR_VIS_DURATION:I = 0x96


# instance fields
.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mIsDragging:Z

.field private mPopup:Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;

.field mRv:Lcom/android/launcher3/BaseRecyclerView;

.field private mScrollbarAnimator:Landroid/animation/AnimatorSet;

.field private mThumbActiveColor:I

.field mThumbHeight:I

.field private mThumbInactiveColor:I

.field private mThumbMaxWidth:I

.field private mThumbMinWidth:I

.field mThumbOffset:Landroid/graphics/Point;

.field mThumbPaint:Landroid/graphics/Paint;

.field mThumbWidth:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchInset:I

.field private mTouchOffset:I

.field private mTrackPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseRecyclerView;Landroid/content/res/Resources;)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    .line 73
    new-instance v0, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;-><init>(Lcom/android/launcher3/BaseRecyclerView;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Lcom/android/launcher3/BaseRecyclerView;->getFastScrollerTrackColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 78
    const v0, 0x7f0b000d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/launcher3/BaseRecyclerView;->getFastScrollerThumbInactiveColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    .line 79
    const v0, 0x7f0b000e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    const v0, 0x7f090044

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    .line 83
    const v0, 0x7f090045

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    .line 84
    const v0, 0x7f090046

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    .line 85
    const v0, 0x7f090047

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    .line 86
    return-void
.end method

.method private animateScrollbar(Z)V
    .registers 10

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 207
    :cond_c
    const-string v2, "trackAlpha"

    new-array v3, v6, [I

    .line 208
    if-eqz p1, :cond_73

    const/16 v0, 0x1e

    :goto_14
    aput v0, v3, v1

    .line 207
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 209
    const-string v3, "width"

    new-array v4, v6, [I

    .line 210
    if-eqz p1, :cond_75

    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    :goto_22
    aput v0, v4, v1

    .line 209
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 211
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v5, v7, [Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    if-eqz p1, :cond_78

    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    :goto_3f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    .line 211
    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 213
    new-instance v4, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;-><init>(Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    .line 222
    iget-object v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v1

    aput-object v3, v5, v6

    aput-object v0, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 225
    return-void

    :cond_73
    move v0, v1

    .line 208
    goto :goto_14

    .line 210
    :cond_75
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    goto :goto_22

    .line 212
    :cond_78
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    goto :goto_3f
.end method

.method private isNearPoint(II)Z
    .registers 9

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    .line 232
    iget-object v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    .line 231
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_d

    .line 198
    :cond_c
    :goto_c
    return-void

    .line 190
    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_30

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 193
    :cond_30
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 193
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->draw(Landroid/graphics/Canvas;)V

    goto :goto_c
.end method

.method public getThumbHeight()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    return v0
.end method

.method public getThumbMaxWidth()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    return v0
.end method

.method public getTrackAlpha()I
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;III)V
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 140
    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 144
    packed-switch v3, :pswitch_data_c2

    .line 182
    :cond_18
    :goto_18
    return-void

    .line 146
    :pswitch_19
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->isNearPoint(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, p3, v0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    goto :goto_18

    .line 152
    :pswitch_28
    iget-boolean v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-nez v3, :cond_58

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->isNearPoint(II)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 153
    sub-int v3, v4, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    if-le v3, v2, :cond_58

    .line 154
    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 155
    iput-boolean v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    .line 156
    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    sub-int v3, p4, p3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    .line 157
    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    .line 158
    invoke-direct {p0, v1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->animateScrollbar(Z)V

    .line 160
    :cond_58
    iget-boolean v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-eqz v2, :cond_18

    .line 162
    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 163
    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseRecyclerView;->getHeight()I

    move-result v3

    iget-object v5, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    sub-int/2addr v3, v5

    .line 164
    iget v5, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    .line 165
    iget-object v5, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    int-to-float v6, v2

    sub-float/2addr v4, v6

    .line 166
    sub-int v2, v3, v2

    int-to-float v2, v2

    div-float v2, v4, v2

    .line 165
    invoke-virtual {v5, v2}, Lcom/android/launcher3/BaseRecyclerView;->scrollToPositionAtProgress(F)Ljava/lang/String;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->setSectionName(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ae

    :goto_9c
    invoke-virtual {v3, v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v1, v2, p4}, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->updateFastScrollerBounds(Lcom/android/launcher3/BaseRecyclerView;I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_18

    :cond_ae
    move v0, v1

    .line 168
    goto :goto_9c

    .line 174
    :pswitch_b0
    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    .line 175
    iget-boolean v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-eqz v1, :cond_18

    .line 176
    iput-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    .line 177
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    .line 178
    invoke-direct {p0, v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->animateScrollbar(Z)V

    goto/16 :goto_18

    .line 144
    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_19
        :pswitch_b0
        :pswitch_28
        :pswitch_b0
    .end packed-switch
.end method

.method public isDragging()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    return v0
.end method

.method public setScrollbarThumbOffset(II)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_e

    .line 97
    :goto_d
    return-void

    .line 92
    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseRecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    .line 95
    iget-object v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseRecyclerView;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_d
.end method

.method public setTrackAlpha(I)V
    .registers 7

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseRecyclerView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 117
    return-void
.end method

.method public setWidth(I)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseRecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 102
    iput p1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    .line 104
    iget-object v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseRecyclerView;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 106
    return-void
.end method
