.class public abstract Lcom/android/launcher3/BaseRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "BaseRecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/BaseRecyclerView$ScrollListener;,
        Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;
    }
.end annotation


# static fields
.field private static final SCROLL_DELTA_THRESHOLD_DP:I = 0x4


# instance fields
.field protected mBackgroundPadding:Landroid/graphics/Rect;

.field private mDeltaThreshold:F

.field private mDownX:I

.field private mDownY:I

.field mDy:I

.field private mLastY:I

.field protected mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mDy:I

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mDeltaThreshold:F

    .line 77
    new-instance v0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;-><init>(Lcom/android/launcher3/BaseRecyclerView;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    .line 79
    new-instance v0, Lcom/android/launcher3/BaseRecyclerView$ScrollListener;

    invoke-direct {v0, p0}, Lcom/android/launcher3/BaseRecyclerView$ScrollListener;-><init>(Lcom/android/launcher3/BaseRecyclerView;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 81
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 126
    packed-switch v0, :pswitch_data_50

    .line 146
    :goto_11
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->isDragging()Z

    move-result v0

    return v0

    .line 129
    :pswitch_18
    iput v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownX:I

    .line 130
    iput v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mLastY:I

    iput v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownY:I

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->shouldStopScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->stopScroll()V

    .line 134
    :cond_27
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownX:I

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownY:I

    iget v3, p0, Lcom/android/launcher3/BaseRecyclerView;->mLastY:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_11

    .line 137
    :pswitch_33
    iput v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mLastY:I

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownX:I

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownY:I

    iget v3, p0, Lcom/android/launcher3/BaseRecyclerView;->mLastY:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_11

    .line 142
    :pswitch_41
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->onFastScrollCompleted()V

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownX:I

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownY:I

    iget v3, p0, Lcom/android/launcher3/BaseRecyclerView;->mLastY:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_11

    .line 126
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_18
        :pswitch_41
        :pswitch_33
        :pswitch_41
    .end packed-switch
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->onUpdateScrollbar()V

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->draw(Landroid/graphics/Canvas;)V

    .line 227
    return-void
.end method

.method protected getAvailableScrollBarHeight()I
    .registers 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 204
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->getThumbHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 205
    return v0
.end method

.method protected getAvailableScrollHeight(III)I
    .registers 7

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p3

    mul-int v2, p1, p2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 194
    sub-int v0, v1, v0

    .line 195
    return v0
.end method

.method public getBackgroundPadding()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFastScrollerThumbInactiveColor(I)I
    .registers 2

    .prologue
    .line 219
    return p1
.end method

.method public getFastScrollerTrackColor(I)I
    .registers 2

    .prologue
    .line 212
    return p1
.end method

.method public getMaxScrollbarWidth()I
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->getThumbMaxWidth()I

    move-result v0

    return v0
.end method

.method public onFastScrollCompleted()V
    .registers 1

    .prologue
    .line 284
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onFinishInflate()V

    .line 101
    invoke-virtual {p0, p0}, Lcom/android/launcher3/BaseRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 102
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 110
    invoke-direct {p0, p2}, Lcom/android/launcher3/BaseRecyclerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .prologue
    .line 151
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 115
    invoke-direct {p0, p2}, Lcom/android/launcher3/BaseRecyclerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 116
    return-void
.end method

.method public abstract onUpdateScrollbar()V
.end method

.method public abstract scrollToPositionAtProgress(F)Ljava/lang/String;
.end method

.method protected shouldStopScroll(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1b

    .line 158
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mDy:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mDeltaThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1b

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 162
    const/4 v0, 0x1

    .line 165
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method protected synchronizeScrollBarThumbOffsetToViewScroll(Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;II)V
    .registers 9

    .prologue
    const/4 v2, -0x1

    .line 241
    iget v0, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    invoke-virtual {p0, p2, v0, p3}, Lcom/android/launcher3/BaseRecyclerView;->getAvailableScrollHeight(III)I

    move-result v0

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result v1

    .line 246
    if-gtz v0, :cond_13

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setScrollbarThumbOffset(II)V

    .line 267
    :goto_12
    return-void

    .line 254
    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, p3

    .line 255
    iget v3, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    iget v4, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    mul-int/2addr v3, v4

    .line 254
    add-int/2addr v2, v3

    .line 255
    iget v3, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 254
    sub-int/2addr v2, v3

    .line 256
    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 257
    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 256
    add-int v1, v3, v0

    .line 261
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 266
    :goto_3c
    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setScrollbarThumbOffset(II)V

    goto :goto_12

    .line 264
    :cond_42
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_3c
.end method

.method public updateBackgroundPadding(Landroid/graphics/Rect;)V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 170
    return-void
.end method
