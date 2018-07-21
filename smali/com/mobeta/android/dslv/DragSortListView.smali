.class public Lcom/mobeta/android/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;,
        Lcom/mobeta/android/dslv/DragSortListView$DragListener;,
        Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;,
        Lcom/mobeta/android/dslv/DragSortListView$DragScroller;,
        Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;,
        Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;,
        Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$DropListener;,
        Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;,
        Lcom/mobeta/android/dslv/DragSortListView$HeightCache;,
        Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;,
        Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

.field protected mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

.field protected mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field protected mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

.field protected mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field protected mDragUpScrollStartFrac:F

.field protected mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field protected mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field protected mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field protected mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field protected mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field protected mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field protected mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field protected mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field protected mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 17

    .prologue
    .line 440
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 74
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 95
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 96
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 195
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 217
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 229
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 236
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 260
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 268
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$1;

    invoke-direct {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView$1;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 375
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 428
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;-><init>(Lcom/mobeta/android/dslv/DragSortListView;I)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    .line 437
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 2071
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 442
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-direct {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    .line 443
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 444
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 443
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 447
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$2;

    invoke-direct {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView$2;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 464
    return-void
.end method

.method static synthetic access$0(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .registers 4

    .prologue
    .line 1778
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/mobeta/android/dslv/DragSortListView;)I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return v0
.end method

.method static synthetic access$10(Lcom/mobeta/android/dslv/DragSortListView;I)V
    .registers 2

    .prologue
    .line 188
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return-void
.end method

.method static synthetic access$11(Lcom/mobeta/android/dslv/DragSortListView;)I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic access$12(Lcom/mobeta/android/dslv/DragSortListView;)V
    .registers 1

    .prologue
    .line 1389
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$13(Lcom/mobeta/android/dslv/DragSortListView;)I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    return v0
.end method

.method static synthetic access$14(Lcom/mobeta/android/dslv/DragSortListView;)I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    return v0
.end method

.method static synthetic access$15(Lcom/mobeta/android/dslv/DragSortListView;)Z
    .registers 2

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    return v0
.end method

.method static synthetic access$16(Lcom/mobeta/android/dslv/DragSortListView;)F
    .registers 2

    .prologue
    .line 437
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$17(Lcom/mobeta/android/dslv/DragSortListView;F)V
    .registers 2

    .prologue
    .line 437
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    return-void
.end method

.method static synthetic access$18(Lcom/mobeta/android/dslv/DragSortListView;)V
    .registers 1

    .prologue
    .line 2302
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$19(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I
    .registers 5

    .prologue
    .line 1868
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/mobeta/android/dslv/DragSortListView;)I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$20(Lcom/mobeta/android/dslv/DragSortListView;)V
    .registers 1

    .prologue
    .line 1413
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$21(Lcom/mobeta/android/dslv/DragSortListView;)I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$22(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$23(Lcom/mobeta/android/dslv/DragSortListView;)F
    .registers 2

    .prologue
    .line 244
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$24(Lcom/mobeta/android/dslv/DragSortListView;)F
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$25(Lcom/mobeta/android/dslv/DragSortListView;)F
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$26(Lcom/mobeta/android/dslv/DragSortListView;)F
    .registers 2

    .prologue
    .line 254
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$27(Lcom/mobeta/android/dslv/DragSortListView;Z)V
    .registers 2

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return-void
.end method

.method static synthetic access$28(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .registers 4

    .prologue
    .line 2211
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$29(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .registers 3

    .prologue
    .line 728
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/mobeta/android/dslv/DragSortListView;)I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic access$30(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .registers 3

    .prologue
    .line 1817
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$31(Lcom/mobeta/android/dslv/DragSortListView;)I
    .registers 2

    .prologue
    .line 293
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    return v0
.end method

.method static synthetic access$32(Lcom/mobeta/android/dslv/DragSortListView;II)I
    .registers 4

    .prologue
    .line 809
    invoke-direct {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/mobeta/android/dslv/DragSortListView;I)V
    .registers 2

    .prologue
    .line 138
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return-void
.end method

.method static synthetic access$5(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mobeta/android/dslv/DragSortListView;)I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    return v0
.end method

.method static synthetic access$7(Lcom/mobeta/android/dslv/DragSortListView;Z)V
    .registers 2

    .prologue
    .line 2200
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/mobeta/android/dslv/DragSortListView;)I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    return v0
.end method

.method static synthetic access$9(Lcom/mobeta/android/dslv/DragSortListView;)I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    return v0
.end method

.method private adjustAllItems()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1752
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1753
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    .line 1755
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1756
    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1758
    :goto_23
    if-le v0, v2, :cond_26

    .line 1764
    return-void

    .line 1759
    :cond_26
    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1760
    if-eqz v3, :cond_31

    .line 1761
    add-int v4, v1, v0

    invoke-direct {p0, v4, v3, v5}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1758
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_23
.end method

.method private adjustItem(I)V
    .registers 4

    .prologue
    .line 1767
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1769
    if-eqz v0, :cond_10

    .line 1770
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1772
    :cond_10
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .registers 7

    .prologue
    .line 1781
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1783
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v0, :cond_42

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v0, :cond_42

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v0, :cond_42

    .line 1784
    const/4 v0, -0x2

    .line 1789
    :goto_11
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_1a

    .line 1790
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1791
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1795
    :cond_1a
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v0, :cond_22

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v0, :cond_2e

    .line 1796
    :cond_22
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, v0, :cond_47

    move-object v0, p2

    .line 1797
    check-cast v0, Lcom/mobeta/android/dslv/DragSortItemView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    .line 1805
    :cond_2e
    :goto_2e
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 1806
    const/4 v0, 0x0

    .line 1808
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v2, :cond_3c

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v2, :cond_3c

    .line 1809
    const/4 v0, 0x4

    .line 1812
    :cond_3c
    if-eq v0, v1, :cond_41

    .line 1813
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1815
    :cond_41
    return-void

    .line 1786
    :cond_42
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    goto :goto_11

    .line 1798
    :cond_47
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v0, :cond_2e

    move-object v0, p2

    .line 1799
    check-cast v0, Lcom/mobeta/android/dslv/DragSortItemView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_2e
.end method

.method private adjustOnReorder()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1444
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1446
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge v2, v1, :cond_1d

    .line 1449
    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1451
    if-eqz v2, :cond_13

    .line 1452
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1455
    :cond_13
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 1457
    :cond_1d
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .registers 13

    .prologue
    .line 1949
    const/4 v4, 0x0

    .line 1951
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    .line 1953
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1954
    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    .line 1958
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v2, :cond_55

    .line 1959
    sub-int v2, v3, v0

    .line 1960
    sub-int v0, v1, v0

    .line 1963
    :goto_15
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 1964
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v6, v7, :cond_26

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v6, v7, :cond_26

    .line 1965
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v5, v6

    .line 1968
    :cond_26
    if-gt p1, p3, :cond_30

    .line 1969
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-le p1, v1, :cond_53

    .line 1970
    sub-int v0, v5, v0

    add-int/2addr v0, v4

    .line 1988
    :goto_2f
    return v0

    .line 1972
    :cond_30
    if-ne p1, p4, :cond_45

    .line 1973
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v0, :cond_3a

    .line 1974
    sub-int v0, v2, v5

    add-int/2addr v0, v4

    .line 1975
    goto :goto_2f

    :cond_3a
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v0, :cond_42

    .line 1976
    sub-int v0, v3, v1

    add-int/2addr v0, v4

    .line 1977
    goto :goto_2f

    .line 1978
    :cond_42
    add-int v0, v4, v2

    .line 1980
    goto :goto_2f

    .line 1981
    :cond_45
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v1, :cond_4c

    .line 1982
    sub-int v0, v4, v5

    .line 1983
    goto :goto_2f

    :cond_4c
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_53

    .line 1984
    sub-int v0, v4, v0

    goto :goto_2f

    :cond_53
    move v0, v4

    goto :goto_2f

    :cond_55
    move v0, v1

    move v2, v3

    goto :goto_15
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 2596
    invoke-static {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .line 2597
    const/4 v0, -0x1

    if-ne v2, v0, :cond_9

    .line 2638
    :goto_8
    return v4

    .line 2600
    :cond_9
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 2602
    add-int/lit8 v0, v1, 0x1

    .line 2603
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    :goto_12
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_1e

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    if-lt v5, p2, :cond_3e

    .line 2617
    :cond_1e
    if-ne v0, p2, :cond_21

    move v0, p1

    .line 2624
    :cond_21
    aput v1, p3, v3

    .line 2625
    aput v0, p4, v3

    .line 2626
    add-int/lit8 v0, v3, 0x1

    .line 2628
    const/4 v1, 0x1

    if-le v0, v1, :cond_3c

    .line 2629
    aget v1, p3, v4

    if-ne v1, p1, :cond_3c

    add-int/lit8 v1, v0, -0x1

    aget v1, p4, v1

    if-ne v1, p1, :cond_3c

    .line 2634
    add-int/lit8 v1, v0, -0x1

    aget v1, p3, v1

    aput v1, p3, v4

    .line 2635
    add-int/lit8 v0, v0, -0x1

    :cond_3c
    move v4, v0

    .line 2638
    goto :goto_8

    .line 2604
    :cond_3e
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_47

    .line 2603
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 2606
    :cond_47
    if-ne v5, v0, :cond_4c

    .line 2607
    add-int/lit8 v0, v0, 0x1

    .line 2608
    goto :goto_44

    .line 2609
    :cond_4c
    aput v1, p3, v3

    .line 2610
    aput v0, p4, v3

    .line 2611
    add-int/lit8 v3, v3, 0x1

    .line 2613
    add-int/lit8 v0, v5, 0x1

    move v1, v5

    goto :goto_44
.end method

.method private calcItemHeight(II)I
    .registers 7

    .prologue
    .line 1904
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    .line 1906
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v0, v1, :cond_29

    const/4 v0, 0x1

    .line 1907
    :goto_e
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v1, v2

    .line 1908
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1912
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_3c

    .line 1913
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v1, v3, :cond_2e

    .line 1914
    if-eqz v0, :cond_2b

    .line 1915
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    add-int p2, v2, v0

    .line 1938
    :cond_28
    :goto_28
    return p2

    .line 1906
    :cond_29
    const/4 v0, 0x0

    goto :goto_e

    .line 1917
    :cond_2b
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    goto :goto_28

    .line 1919
    :cond_2e
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v0, v1, :cond_39

    .line 1921
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int p2, v0, v2

    .line 1922
    goto :goto_28

    .line 1923
    :cond_39
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    goto :goto_28

    .line 1925
    :cond_3c
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v3, :cond_46

    .line 1926
    if-eqz v0, :cond_44

    .line 1927
    add-int/2addr p2, v2

    .line 1928
    goto :goto_28

    .line 1929
    :cond_44
    add-int/2addr p2, v1

    .line 1931
    goto :goto_28

    :cond_46
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v0, :cond_28

    .line 1933
    add-int v0, p2, v1

    sub-int p2, v0, v2

    .line 1934
    goto :goto_28
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .registers 5

    .prologue
    .line 1899
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 1383
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 1384
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1385
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1386
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1387
    return-void
.end method

.method private continueDrag(II)V
    .registers 9

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1687
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1688
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1690
    invoke-direct {p0, v4}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1692
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1693
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1696
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v2

    .line 1698
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    if-le v0, v3, :cond_44

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v0, v3, :cond_44

    if-eq v2, v4, :cond_44

    .line 1702
    if-eq v2, v5, :cond_3e

    .line 1704
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v0, v4}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1708
    :cond_3e
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v0, v4}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    .line 1728
    :cond_43
    :goto_43
    return-void

    .line 1709
    :cond_44
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_5c

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_5c

    if-eqz v2, :cond_5c

    .line 1713
    if-eq v2, v5, :cond_55

    .line 1715
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v0, v4}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1719
    :cond_55
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_43

    .line 1721
    :cond_5c
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v2, :cond_43

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v0, v1, :cond_43

    .line 1722
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1726
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v0, v4}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_43
.end method

.method private destroyFloatView()V
    .registers 3

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 2304
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2305
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_16

    .line 2306
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2308
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2309
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->invalidate()V

    .line 2311
    :cond_1c
    return-void
.end method

.method private doActionUpOrCancel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1559
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 1560
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1561
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 1562
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1564
    :cond_c
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1565
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1566
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->clear()V

    .line 1567
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .registers 7

    .prologue
    .line 2212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2214
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateFloatView()V

    .line 2216
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2217
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2219
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updatePositions()Z

    move-result v2

    .line 2221
    if-eqz v2, :cond_27

    .line 2222
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 2223
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v0

    .line 2226
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2227
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    .line 2230
    :cond_27
    if-nez v2, :cond_2b

    if-eqz p3, :cond_2e

    .line 2231
    :cond_2b
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->invalidate()V

    .line 2234
    :cond_2e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2235
    return-void
.end method

.method private doDragFloatView(Z)V
    .registers 4

    .prologue
    .line 2201
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2202
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2204
    if-nez v1, :cond_18

    .line 2209
    :goto_17
    return-void

    .line 2208
    :cond_18
    invoke-direct {p0, v0, v1, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_17
.end method

.method private doRemoveItem()V
    .registers 3

    .prologue
    .line 1414
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem(I)V

    .line 1415
    return-void
.end method

.method private doRemoveItem(I)V
    .registers 3

    .prologue
    .line 1423
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1426
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_c

    .line 1427
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1430
    :cond_c
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1432
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1433
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1436
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1d

    .line 1437
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1441
    :goto_1c
    return-void

    .line 1439
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_1c
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .registers 10

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 648
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 651
    if-eqz v2, :cond_4b

    if-eqz v3, :cond_4b

    .line 653
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    .line 652
    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 654
    if-eqz v0, :cond_4b

    .line 655
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v4

    .line 656
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    .line 660
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 662
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v6, :cond_4c

    .line 663
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v1, v0

    .line 664
    add-int v0, v1, v3

    .line 672
    :goto_3c
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 673
    invoke-virtual {p2, v4, v1, v5, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 674
    invoke-virtual {v2, v4, v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 675
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 676
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 679
    :cond_4b
    return-void

    .line 666
    :cond_4c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    sub-int/2addr v0, v1

    .line 667
    sub-int v1, v0, v3

    goto :goto_3c
.end method

.method private dropFloatView()V
    .registers 5

    .prologue
    .line 1392
    const/4 v0, 0x2

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1394
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    if-ltz v0, :cond_23

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 1395
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1396
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    sub-int v0, v3, v0

    invoke-interface {v1, v2, v0}, Lcom/mobeta/android/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1399
    :cond_23
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1401
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1402
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1403
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1406
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_37

    .line 1407
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1411
    :goto_36
    return-void

    .line 1409
    :cond_37
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_36
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .registers 6

    .prologue
    .line 2654
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2655
    invoke-static {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .line 2656
    :goto_8
    if-ge v0, v1, :cond_16

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_16

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2658
    :cond_16
    if-eq v0, v1, :cond_1e

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-lt v1, p2, :cond_1f

    .line 2659
    :cond_1e
    const/4 v0, -0x1

    .line 2660
    :cond_1f
    return v0

    .line 2657
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private getChildHeight(I)I
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1818
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v1, :cond_7

    .line 1864
    :cond_6
    :goto_6
    return v0

    .line 1822
    :cond_7
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1824
    if-eqz v1, :cond_18

    .line 1827
    invoke-direct {p0, p1, v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    goto :goto_6

    .line 1831
    :cond_18
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v0

    .line 1832
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 1837
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1838
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 1841
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 1842
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_36

    .line 1843
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1846
    :cond_36
    if-ltz v1, :cond_5a

    .line 1847
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v2, v2, v1

    if-nez v2, :cond_51

    .line 1848
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1849
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v0, v2, v1

    .line 1859
    :goto_46
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    .line 1862
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v1, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->add(II)V

    goto :goto_6

    .line 1851
    :cond_51
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v1, v2, v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_46

    .line 1855
    :cond_5a
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_46
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1869
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v1, :cond_6

    .line 1895
    :cond_5
    :goto_5
    return v0

    .line 1874
    :cond_6
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_17

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_24

    .line 1880
    :cond_17
    :goto_17
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1882
    if-eqz v0, :cond_2b

    .line 1883
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_2b

    .line 1884
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    .line 1877
    :cond_24
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    goto :goto_17

    .line 1888
    :cond_2b
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1890
    if-eqz v0, :cond_33

    if-eqz p3, :cond_5

    .line 1891
    :cond_33
    invoke-direct {p0, p2}, Lcom/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1892
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_5
.end method

.method private getItemHeight(I)I
    .registers 3

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_11

    .line 733
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 737
    :goto_10
    return v0

    :cond_11
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v0

    goto :goto_10
.end method

.method private getShuffleEdge(II)I
    .registers 9

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 812
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v1

    .line 818
    if-le p1, v0, :cond_11

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_13

    :cond_11
    move v0, p2

    .line 865
    :goto_12
    return v0

    .line 822
    :cond_13
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 826
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v1, v2

    .line 827
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v2

    .line 828
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v3

    .line 833
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v4, v5, :cond_60

    .line 836
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_56

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v4, v5, :cond_56

    .line 837
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_51

    .line 838
    add-int v1, p2, v3

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int p2, v1, v3

    .line 859
    :cond_3e
    :goto_3e
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v1, :cond_78

    .line 860
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v0, v1, v0

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 861
    goto :goto_12

    .line 840
    :cond_51
    sub-int/2addr v3, v2

    .line 841
    add-int/2addr v3, p2

    sub-int p2, v3, v1

    .line 843
    goto :goto_3e

    :cond_56
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-le p1, v3, :cond_3e

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v3, :cond_3e

    .line 844
    sub-int/2addr p2, v1

    .line 847
    goto :goto_3e

    .line 850
    :cond_60
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_6a

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v4, :cond_6a

    .line 851
    add-int/2addr p2, v1

    .line 852
    goto :goto_3e

    :cond_6a
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_3e

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v1, v4, :cond_3e

    .line 853
    sub-int v1, v3, v2

    .line 854
    add-int/2addr p2, v1

    goto :goto_3e

    .line 862
    :cond_78
    sub-int v0, v2, v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_12
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .registers 6

    .prologue
    .line 2664
    const/4 v1, 0x0

    .line 2665
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    move v2, v1

    .line 2666
    :goto_6
    sub-int v1, v0, v2

    if-gtz v1, :cond_b

    .line 2673
    return v2

    .line 2667
    :cond_b
    add-int v1, v2, v0

    shr-int/lit8 v1, v1, 0x1

    .line 2668
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_19

    .line 2669
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_6

    :cond_19
    move v0, v1

    .line 2671
    goto :goto_6
.end method

.method private invalidateFloatView()V
    .registers 2

    .prologue
    .line 2074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 2075
    return-void
.end method

.method private measureFloatView()V
    .registers 2

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 2010
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2011
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2012
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 2014
    :cond_17
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1992
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1993
    if-nez v0, :cond_11

    .line 1994
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1995
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1997
    :cond_11
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v2

    .line 1998
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1997
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2000
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_32

    .line 2001
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2005
    :goto_2e
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2006
    return-void

    .line 2003
    :cond_32
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2e
.end method

.method private printPosData()V
    .registers 4

    .prologue
    .line 742
    const-string v0, "mobeta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSrcPos="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSecondExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 743
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 742
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return-void
.end method

.method private static rotate(IIII)I
    .registers 6

    .prologue
    .line 2642
    sub-int v1, p3, p2

    .line 2644
    add-int v0, p0, p1

    .line 2645
    if-ge v0, p2, :cond_8

    .line 2646
    add-int/2addr v0, v1

    .line 2650
    :cond_7
    :goto_7
    return v0

    .line 2647
    :cond_8
    if-lt v0, p3, :cond_7

    .line 2648
    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .registers 4

    .prologue
    .line 1570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1571
    if-eqz v0, :cond_10

    .line 1572
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastX:I

    .line 1573
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1575
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    .line 1576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    .line 1577
    if-nez v0, :cond_28

    .line 1578
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastX:I

    .line 1579
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1581
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mOffsetX:I

    .line 1582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mOffsetY:I

    .line 1583
    return-void
.end method

.method private updateFloatView()V
    .registers 8

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_18

    .line 2244
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2245
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v0, v1, v2, v3}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2248
    :cond_18
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 2249
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 2252
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    .line 2253
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_b6

    if-le v0, v1, :cond_b6

    .line 2254
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2260
    :cond_30
    :goto_30
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    .line 2261
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 2262
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    .line 2263
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v5

    .line 2267
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 2268
    if-ge v4, v1, :cond_52

    .line 2269
    sub-int v0, v1, v4

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2271
    :cond_52
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6b

    .line 2272
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v4, v1, :cond_6b

    .line 2273
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2278
    :cond_6b
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 2279
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_8d

    .line 2280
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2282
    :cond_8d
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_a6

    .line 2283
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-lt v5, v3, :cond_a6

    .line 2284
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2292
    :cond_a6
    if-ge v2, v0, :cond_c4

    .line 2293
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 2299
    :cond_ac
    :goto_ac
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    .line 2300
    return-void

    .line 2255
    :cond_b6
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_30

    if-ge v0, v1, :cond_30

    .line 2256
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_30

    .line 2294
    :cond_c4
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v0, v2

    if-le v0, v1, :cond_ac

    .line 2295
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_ac
.end method

.method private updatePositions()Z
    .registers 16

    .prologue
    const/4 v5, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    .line 870
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 871
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 872
    sub-int v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 874
    if-nez v0, :cond_1f

    .line 875
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int v1, v2, v0

    .line 876
    sub-int v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 878
    :cond_1f
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 880
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 882
    invoke-direct {p0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v0

    .line 885
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v6

    .line 891
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v4, v0, :cond_b8

    move v3, v2

    move v2, v0

    move v14, v0

    move v0, v1

    move v1, v14

    .line 894
    :goto_38
    if-gez v0, :cond_a0

    .line 938
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    .line 939
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 941
    const/4 v4, 0x0

    .line 943
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 944
    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 945
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 947
    iget-boolean v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    if-eqz v10, :cond_105

    .line 948
    sub-int v10, v2, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 951
    iget v11, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v11, v2, :cond_e4

    .line 960
    :goto_57
    iget v11, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    mul-float/2addr v11, v13

    int-to-float v10, v10

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 961
    int-to-float v11, v10

    .line 962
    add-int/2addr v1, v10

    .line 963
    sub-int v10, v2, v10

    .line 966
    iget v12, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v12, v1, :cond_e9

    .line 967
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 968
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 969
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v13

    div-float/2addr v1, v11

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 990
    :goto_73
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ge v1, v3, :cond_10b

    .line 992
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 993
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    move v0, v3

    .line 1000
    :cond_7c
    :goto_7c
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v1, v7, :cond_8a

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v1, v8, :cond_8a

    .line 1001
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_124

    :cond_8a
    move v1, v5

    .line 1005
    :goto_8b
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    if-eq v0, v2, :cond_121

    .line 1006
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    if-eqz v1, :cond_9d

    .line 1007
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v2, v3

    sub-int v3, v0, v3

    invoke-interface {v1, v2, v3}, Lcom/mobeta/android/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1010
    :cond_9d
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1014
    :goto_9f
    return v5

    .line 895
    :cond_a0
    add-int/lit8 v0, v0, -0x1

    .line 896
    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v2

    .line 898
    if-nez v0, :cond_ac

    .line 899
    sub-int/2addr v3, v6

    sub-int v2, v3, v2

    .line 900
    goto :goto_3a

    .line 903
    :cond_ac
    add-int/2addr v2, v6

    sub-int/2addr v3, v2

    .line 904
    invoke-direct {p0, v0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v2

    .line 907
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v4, v2, :cond_3a

    move v1, v2

    .line 911
    goto :goto_38

    .line 916
    :cond_b8
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v7

    move v4, v3

    move v3, v2

    move v2, v0

    move v14, v0

    move v0, v1

    move v1, v14

    .line 917
    :goto_c2
    if-ge v0, v7, :cond_3a

    .line 918
    add-int/lit8 v2, v7, -0x1

    if-ne v0, v2, :cond_cd

    .line 919
    add-int v2, v3, v6

    add-int/2addr v2, v4

    .line 920
    goto/16 :goto_3a

    .line 923
    :cond_cd
    add-int v2, v6, v4

    add-int/2addr v3, v2

    .line 924
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v4

    .line 925
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v2

    .line 929
    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-lt v8, v2, :cond_3a

    .line 934
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_c2

    :cond_e4
    move v14, v1

    move v1, v2

    move v2, v14

    .line 956
    goto/16 :goto_57

    .line 972
    :cond_e9
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v1, v10, :cond_f2

    .line 973
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 974
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto :goto_73

    .line 976
    :cond_f2
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 977
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 978
    const/high16 v1, 0x3f800000    # 1.0f

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    sub-int/2addr v2, v10

    int-to-float v2, v2

    .line 979
    div-float/2addr v2, v11

    add-float/2addr v1, v2

    mul-float/2addr v1, v13

    .line 978
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    goto/16 :goto_73

    .line 985
    :cond_105
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 986
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_73

    .line 994
    :cond_10b
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v6

    if-lt v1, v2, :cond_7c

    .line 995
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    .line 996
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 997
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_7c

    :cond_121
    move v5, v1

    goto/16 :goto_9f

    :cond_124
    move v1, v4

    goto/16 :goto_8b
.end method

.method private updateScrollStarts()V
    .registers 7

    .prologue
    .line 1731
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 1732
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1733
    int-to-float v2, v1

    .line 1735
    int-to-float v3, v0

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 1736
    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 1738
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    float-to-int v2, v2

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    .line 1739
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v2, v2

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    .line 1741
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    .line 1742
    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    .line 1743
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .registers 3

    .prologue
    .line 1368
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    .line 1369
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1370
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1371
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1372
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1374
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1c

    .line 1375
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1380
    :cond_1b
    :goto_1b
    return-void

    .line 1377
    :cond_1c
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_1b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 683
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 685
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_25

    .line 687
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_14

    .line 688
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 690
    :cond_14
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_25

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_25

    .line 691
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 695
    :cond_25
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_76

    .line 697
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 698
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 700
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 702
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v3

    .line 703
    if-gez v0, :cond_40

    .line 704
    neg-int v0, v0

    .line 706
    :cond_40
    if-ge v0, v3, :cond_77

    .line 707
    sub-int v0, v3, v0

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 708
    mul-float/2addr v0, v0

    .line 713
    :goto_48
    const/high16 v3, 0x437f0000    # 255.0f

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    mul-float/2addr v3, v5

    mul-float/2addr v0, v3

    float-to-int v5, v0

    .line 715
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 717
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 718
    invoke-virtual {p1, v6, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 721
    int-to-float v3, v2

    int-to-float v4, v4

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 722
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 723
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 724
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 726
    :cond_76
    return-void

    :cond_77
    move v0, v1

    .line 710
    goto :goto_48
.end method

.method public getFloatAlpha()F
    .registers 2

    .prologue
    .line 476
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_6

    .line 530
    const/4 v0, 0x0

    .line 532
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_5
.end method

.method public isDragEnabled()Z
    .registers 2

    .prologue
    .line 2389
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2031
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2033
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 2034
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_17

    .line 2038
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2040
    :cond_17
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2041
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2043
    :cond_2a
    return-void
.end method

.method public listViewIntercepted()Z
    .registers 2

    .prologue
    .line 1586
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveCheckState(II)V
    .registers 13

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2526
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 2529
    if-ge p2, p1, :cond_50

    move v0, p1

    move v1, p2

    .line 2533
    :goto_b
    add-int/lit8 v4, v0, 0x1

    .line 2535
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v5, v0, [I

    .line 2536
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v6, v0, [I

    .line 2537
    invoke-static {v3, v1, v4, v5, v6}, Lcom/mobeta/android/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v3

    .line 2538
    if-ne v3, v8, :cond_26

    aget v0, v5, v2

    aget v7, v6, v2

    if-ne v0, v7, :cond_26

    .line 2556
    :cond_25
    return-void

    .line 2544
    :cond_26
    if-ge p1, p2, :cond_40

    move v0, v2

    .line 2545
    :goto_29
    if-eq v0, v3, :cond_25

    .line 2546
    aget v7, v5, v0

    invoke-static {v7, v9, v1, v4}, Lcom/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v8}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2547
    aget v7, v6, v0

    invoke-static {v7, v9, v1, v4}, Lcom/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2545
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_40
    move v0, v2

    .line 2551
    :goto_41
    if-eq v0, v3, :cond_25

    .line 2552
    aget v1, v5, v0

    invoke-virtual {p0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2553
    aget v1, v6, v0

    invoke-virtual {p0, v1, v8}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2551
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_50
    move v0, p2

    move v1, p1

    goto :goto_b
.end method

.method public moveItem(II)V
    .registers 4

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_19

    .line 1356
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1357
    if-ltz p1, :cond_19

    if-ge p1, v0, :cond_19

    if-ltz p2, :cond_19

    if-ge p2, v0, :cond_19

    .line 1358
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-interface {v0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1361
    :cond_19
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    const/4 v1, 0x4

    .line 2047
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 2049
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_38

    .line 2068
    :goto_10
    const/4 v0, 0x1

    return v0

    .line 2051
    :pswitch_12
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v0, v1, :cond_19

    .line 2052
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->cancelDrag()V

    .line 2054
    :cond_19
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_10

    .line 2058
    :pswitch_1d
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v0, v1, :cond_25

    .line 2059
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(Z)Z

    .line 2061
    :cond_25
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_10

    .line 2064
    :pswitch_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_10

    .line 2049
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_29
        :pswitch_12
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 1019
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1021
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_c

    .line 1022
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->appendState()V

    .line 1024
    :cond_c
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1593
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v1, :cond_b

    .line 1594
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1641
    :goto_a
    return v0

    .line 1597
    :cond_b
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1598
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v3, v1, 0xff

    .line 1602
    if-nez v3, :cond_21

    .line 1603
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v1, :cond_1f

    .line 1605
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    goto :goto_a

    .line 1608
    :cond_1f
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1614
    :cond_21
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_2f

    move v1, v0

    .line 1637
    :goto_26
    if-eq v3, v0, :cond_2b

    const/4 v0, 0x3

    if-ne v3, v0, :cond_2d

    .line 1638
    :cond_2b
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    :cond_2d
    move v0, v1

    .line 1641
    goto :goto_a

    .line 1618
    :cond_2f
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1619
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    move v1, v0

    .line 1623
    :goto_38
    packed-switch v3, :pswitch_data_4a

    .line 1629
    :pswitch_3b
    if-eqz v1, :cond_44

    .line 1630
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_26

    .line 1626
    :pswitch_40
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_26

    .line 1632
    :cond_44
    const/4 v4, 0x2

    iput v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_26

    :cond_48
    move v1, v2

    goto :goto_38

    .line 1623
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3b
        :pswitch_40
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 4

    .prologue
    .line 2018
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2020
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 2021
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2022
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2024
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2026
    :cond_15
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 2027
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .prologue
    .line 1747
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1748
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    .line 1749
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1508
    iget-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v2, :cond_9

    .line 1509
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 1555
    :cond_8
    :goto_8
    return v0

    .line 1513
    :cond_9
    iget-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v2, :cond_12

    .line 1514
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_8

    .line 1519
    :cond_12
    iget-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1520
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1522
    if-nez v2, :cond_1b

    .line 1523
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1527
    :cond_1b
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_25

    .line 1528
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 1530
    goto :goto_8

    .line 1535
    :cond_25
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v2, :cond_30

    .line 1536
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_30

    move v0, v1

    .line 1541
    :cond_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1543
    packed-switch v2, :pswitch_data_42

    .line 1549
    :pswitch_39
    if-eqz v0, :cond_8

    .line 1550
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_8

    .line 1546
    :pswitch_3e
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_8

    .line 1543
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_39
        :pswitch_3e
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v8, -0x1

    .line 2572
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2574
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_d

    .line 2590
    :cond_c
    return-void

    .line 2576
    :cond_d
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 2577
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 2579
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 2580
    invoke-static {v0, p1, v4, v2, v3}, Lcom/mobeta/android/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v5

    move v0, v1

    .line 2581
    :goto_2a
    if-eq v0, v5, :cond_c

    .line 2582
    aget v6, v2, v0

    if-eq v6, p1, :cond_44

    aget v6, v3, v0

    aget v7, v2, v0

    if-ge v6, v7, :cond_3a

    aget v6, v3, v0

    if-gt v6, p1, :cond_44

    .line 2586
    :cond_3a
    aget v6, v2, v0

    invoke-static {v6, v8, p1, v4}, Lcom/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2588
    :cond_44
    aget v6, v3, v0

    invoke-static {v6, v8, p1, v4}, Lcom/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2581
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a
.end method

.method public removeItem(I)V
    .registers 3

    .prologue
    .line 1297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1298
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(IF)V

    .line 1299
    return-void
.end method

.method public removeItem(IF)V
    .registers 6

    .prologue
    const/4 v2, 0x4

    .line 1309
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v0, v2, :cond_47

    .line 1311
    :cond_9
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v0, :cond_30

    .line 1313
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 1314
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1315
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1316
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1317
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1318
    if-eqz v0, :cond_30

    .line 1319
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1323
    :cond_30
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1324
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1326
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_3e

    .line 1327
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v0, :pswitch_data_58

    .line 1337
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    if-eqz v0, :cond_54

    .line 1338
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->start()V

    .line 1343
    :cond_47
    :goto_47
    return-void

    .line 1329
    :pswitch_48
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3e

    .line 1332
    :pswitch_4e
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3e

    .line 1340
    :cond_54
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem(I)V

    goto :goto_47

    .line 1327
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_48
        :pswitch_4e
    .end packed-switch
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1943
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_7

    .line 1944
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 1946
    :cond_7
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    .prologue
    .line 501
    if-eqz p1, :cond_31

    .line 502
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    .line 503
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 505
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_18

    move-object v0, p1

    .line 506
    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 508
    :cond_18
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_22

    move-object v0, p1

    .line 509
    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V

    .line 511
    :cond_22
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2b

    .line 512
    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 518
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 519
    return-void

    .line 515
    :cond_31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    goto :goto_2b
.end method

.method public setDragEnabled(Z)V
    .registers 2

    .prologue
    .line 2385
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 2386
    return-void
.end method

.method public setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V
    .registers 2

    .prologue
    .line 2371
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    .line 2372
    return-void
.end method

.method public setDragScrollProfile(Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;)V
    .registers 2

    .prologue
    .line 2468
    if-eqz p1, :cond_4

    .line 2469
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .line 2471
    :cond_4
    return-void
.end method

.method public setDragScrollStart(F)V
    .registers 2

    .prologue
    .line 1653
    invoke-virtual {p0, p1, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragScrollStarts(FF)V

    .line 1654
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .registers 5

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1667
    cmpl-float v0, p2, v1

    if-lez v0, :cond_18

    .line 1668
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 1673
    :goto_8
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1b

    .line 1674
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1679
    :goto_e
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_17

    .line 1680
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    .line 1682
    :cond_17
    return-void

    .line 1670
    :cond_18
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_8

    .line 1676
    :cond_1b
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_e
.end method

.method public setDragSortListener(Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;)V
    .registers 2

    .prologue
    .line 2455
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 2456
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V

    .line 2457
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 2458
    return-void
.end method

.method public setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V
    .registers 2

    .prologue
    .line 2405
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    .line 2406
    return-void
.end method

.method public setFloatAlpha(F)V
    .registers 2

    .prologue
    .line 472
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 473
    return-void
.end method

.method public setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V
    .registers 2

    .prologue
    .line 2367
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 2368
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .registers 2

    .prologue
    .line 486
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 487
    return-void
.end method

.method public setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V
    .registers 2

    .prologue
    .line 2419
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    .line 2420
    return-void
.end method

.method public startDrag(IIII)Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 2101
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-nez v1, :cond_a

    .line 2110
    :cond_9
    :goto_9
    return v0

    .line 2105
    :cond_a
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2107
    if-eqz v2, :cond_9

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2110
    invoke-virtual/range {v0 .. v5}, Lcom/mobeta/android/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_9
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .registers 11

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2138
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v2, :cond_15

    if-eqz p2, :cond_15

    .line 2139
    iget-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v2, :cond_17

    :cond_15
    move v0, v1

    .line 2197
    :cond_16
    :goto_16
    return v0

    .line 2143
    :cond_17
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 2144
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2147
    :cond_24
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    .line 2148
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2149
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2150
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 2151
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 2154
    iput v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 2155
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 2156
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr v1, p3

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 2158
    iput-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2159
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2161
    iput p4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    .line 2162
    iput p5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    .line 2163
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragStartY:I

    .line 2166
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 2167
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 2170
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2172
    if-eqz v1, :cond_69

    .line 2173
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2176
    :cond_69
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_72

    .line 2177
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2182
    :cond_72
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_90

    .line 2191
    :goto_77
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->requestLayout()V

    .line 2193
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

    if-eqz v1, :cond_16

    .line 2194
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->start()V

    goto :goto_16

    .line 2184
    :pswitch_84
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_77

    .line 2187
    :pswitch_8a
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_77

    .line 2182
    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_84
        :pswitch_8a
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .registers 3

    .prologue
    .line 1471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1472
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1482
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_2e

    .line 1483
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1485
    if-eqz p1, :cond_20

    .line 1486
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(IF)V

    .line 1495
    :goto_16
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_1f

    .line 1496
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    .line 1502
    :cond_1f
    :goto_1f
    return v0

    .line 1488
    :cond_20
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    if-eqz v1, :cond_2a

    .line 1489
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->start()V

    goto :goto_16

    .line 1491
    :cond_2a
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    goto :goto_16

    .line 1502
    :cond_2e
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public stopDragWithVelocity(ZF)Z
    .registers 4

    .prologue
    .line 1477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1478
    invoke-virtual {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
