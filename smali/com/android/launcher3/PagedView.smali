.class public abstract Lcom/android/launcher3/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/PagedView$LayoutParams;,
        Lcom/android/launcher3/PagedView$PageSwitchListener;,
        Lcom/android/launcher3/PagedView$SavedState;,
        Lcom/android/launcher3/PagedView$ScrollInterpolator;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field private static final ANIM_TAG_KEY:I = 0x64

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = false

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field public static final INVALID_RESTORE_PAGE:I = -0x3e9

.field private static final MAX_SCROLL_PROGRESS:F = 1.0f

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field protected static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x2ee

.field private static REORDERING_DROP_REPOSITION_DURATION:I = 0x0

.field static REORDERING_REORDER_REPOSITION_DURATION:I = 0x0

.field private static REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I = 0x0

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.1f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "PagedView"

.field private static TOUCH_SLOP_INIT_REACTION_DISTANCE:F = 0.0f

.field private static TOUCH_SLOP_MM_PER_INCH:F = 0.0f

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REORDERING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final sTmpIntPoint:[I

.field private static final sTmpInvMatrix:Landroid/graphics/Matrix;

.field private static final sTmpPoint:[F

.field private static final sTmpRect:Landroid/graphics/Rect;

.field public static sTouchSlopRatio:F


# instance fields
.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mCancelTap:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field protected mChildAddedOrRemoved:Z

.field protected mChildCountOnLastLayout:I

.field protected mCurrentPage:I

.field protected mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field protected mDensity:F

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mDragViewBaselineLeft:F

.field protected mDrawVisiblePagesRange:[I

.field private final mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

.field private final mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field protected mFreeScroll:Z

.field protected mFreeScrollMaxScrollX:I

.field protected mFreeScrollMinScrollX:I

.field protected final mInsets:Landroid/graphics/Rect;

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected final mIsRtl:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field protected mNextPage:I

.field private mNormalChildHeight:I

.field public mNormalChildRect:Landroid/graphics/Rect;

.field public mOverviewPageIndicator:Lcom/android/launcher3/PageIndicator;

.field mPageIndicator:Lcom/android/launcher3/PageIndicator;

.field mPageIndicatorViewId:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutWidthGap:I

.field private mPageScrolls:[I

.field mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/launcher3/PagedView$PageSwitchListener;

.field protected mParentDownMotionX:F

.field protected mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field protected mRestorePage:I

.field protected mScroller:Lcom/android/launcher3/LauncherScroller;

.field mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field private mTouchPrediction:Lcom/lge/launcher3/util/TouchPrediction;

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field private mUseMinScale:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field protected mWasInOverscroll:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    invoke-static {}, Lcom/android/launcher3/PagedView;->ajc$preClinit()V

    invoke-static {}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$TOUCH_SLOP_INIT_REACTION_DISTANCE()V

    invoke-static {}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$TOUCH_SLOP_MM_PER_INCH()V

    invoke-static {}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$sTouchSlopRatio()V

    .line 179
    const/16 v0, 0xc8

    sput v0, Lcom/android/launcher3/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 180
    const/16 v0, 0x12c

    sput v0, Lcom/android/launcher3/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 181
    const/16 v0, 0x50

    sput v0, Lcom/android/launcher3/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 199
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    .line 200
    new-array v0, v1, [F

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    .line 201
    new-array v0, v1, [I

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    .line 202
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    .line 2406
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 224
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mTouchPrediction(Lcom/android/launcher3/PagedView;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mNormalChildRect(Lcom/android/launcher3/PagedView;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mOverviewPageIndicator(Lcom/android/launcher3/PagedView;)V

    .line 86
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 87
    iput v3, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    .line 88
    iput v3, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    .line 100
    iput-boolean v4, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 101
    iput-boolean v4, p0, Lcom/android/launcher3/PagedView;->mChildAddedOrRemoved:Z

    .line 105
    const/16 v0, -0x3e9

    iput v0, p0, Lcom/android/launcher3/PagedView;->mRestorePage:I

    .line 108
    iput v3, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 113
    iput v2, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 125
    iput v3, p0, Lcom/android/launcher3/PagedView;->mLastScreenCenter:I

    .line 139
    iput v2, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 140
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mForceScreenScrolled:Z

    .line 148
    iput v2, p0, Lcom/android/launcher3/PagedView;->mCellCountX:I

    .line 149
    iput v2, p0, Lcom/android/launcher3/PagedView;->mCellCountY:I

    .line 151
    iput-boolean v4, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 152
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    .line 153
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mDrawVisiblePagesRange:[I

    .line 158
    iput v3, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 163
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mFadeInAdjacentScreens:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsPageMoving:Z

    .line 167
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 174
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 183
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMinScale:F

    .line 184
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mUseMinScale:Z

    .line 187
    iput v3, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 189
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    .line 194
    iput v5, p0, Lcom/android/launcher3/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 204
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 208
    new-instance v0, Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-direct {v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    .line 209
    new-instance v0, Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-direct {v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    .line 227
    sget-object v0, Lcom/lge/launcher3/R$styleable;->PagedView:[I

    .line 226
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 229
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mPageLayoutWidthGap:I

    .line 231
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mPageLayoutHeightGap:I

    .line 233
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    .line 234
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    .line 238
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->init()V

    .line 239
    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/PagedView;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 2030
    :try_start_6
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_10

    .line 2031
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2033
    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_15} :catch_1d

    .line 2034
    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$5$db176c0f(Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_1d
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$5$db176c0f(Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public static ajc$get$INVALID_PAGE()I
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/launcher3/PagedView;->INVALID_PAGE:I

    return v0
.end method

.method public static ajc$get$MIN_SNAP_VELOCITY()I
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/launcher3/PagedView;->MIN_SNAP_VELOCITY:I

    return v0
.end method

.method public static ajc$get$NANOTIME_DIV()F
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/launcher3/PagedView;->NANOTIME_DIV:F

    return v0
.end method

.method public static ajc$get$PAGE_SNAP_ANIMATION_DURATION()I
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/launcher3/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    return v0
.end method

.method public static ajc$get$TOUCH_SLOP_INIT_REACTION_DISTANCE()F
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/launcher3/PagedView;->TOUCH_SLOP_INIT_REACTION_DISTANCE:F

    return v0
.end method

.method public static ajc$get$TOUCH_SLOP_MM_PER_INCH()F
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/launcher3/PagedView;->TOUCH_SLOP_MM_PER_INCH:F

    return v0
.end method

.method public static ajc$get$TOUCH_STATE_REST()I
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/launcher3/PagedView;->TOUCH_STATE_REST:I

    return v0
.end method

.method public static ajc$get$mAllowOverScroll(Lcom/android/launcher3/PagedView;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    return v0
.end method

.method public static ajc$get$mCurrentPage(Lcom/android/launcher3/PagedView;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return v0
.end method

.method public static ajc$get$mDefaultInterpolator(Lcom/android/launcher3/PagedView;)Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static ajc$get$mDragView(Lcom/android/launcher3/PagedView;)Landroid/view/View;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method public static ajc$get$mForceScreenScrolled(Lcom/android/launcher3/PagedView;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mForceScreenScrolled:Z

    return v0
.end method

.method public static ajc$get$mFreeScroll(Lcom/android/launcher3/PagedView;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    return v0
.end method

.method public static ajc$get$mFreeScrollMaxScrollX(Lcom/android/launcher3/PagedView;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    return v0
.end method

.method public static ajc$get$mFreeScrollMinScrollX(Lcom/android/launcher3/PagedView;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    return v0
.end method

.method public static ajc$get$mIsRtl(Lcom/android/launcher3/PagedView;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    return v0
.end method

.method public static ajc$get$mLastMotionX(Lcom/android/launcher3/PagedView;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    return v0
.end method

.method public static ajc$get$mLastMotionY(Lcom/android/launcher3/PagedView;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    return v0
.end method

.method public static ajc$get$mMaxScrollX(Lcom/android/launcher3/PagedView;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    return v0
.end method

.method public static ajc$get$mMinFlingVelocity(Lcom/android/launcher3/PagedView;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    return v0
.end method

.method public static ajc$get$mNextPage(Lcom/android/launcher3/PagedView;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    return v0
.end method

.method public static ajc$get$mPageIndicator(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/PageIndicator;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    return-object v0
.end method

.method public static ajc$get$mPageSpacing(Lcom/android/launcher3/PagedView;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    return v0
.end method

.method public static ajc$get$mParentDownMotionX(Lcom/android/launcher3/PagedView;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    return v0
.end method

.method public static ajc$get$mParentDownMotionY(Lcom/android/launcher3/PagedView;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    return v0
.end method

.method public static ajc$get$mScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    return-object v0
.end method

.method public static ajc$get$mSmoothingTime(Lcom/android/launcher3/PagedView;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mSmoothingTime:F

    return v0
.end method

.method public static ajc$get$mTempVisiblePagesRange(Lcom/android/launcher3/PagedView;)[I
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    return-object v0
.end method

.method public static ajc$get$mTouchPrediction(Lcom/android/launcher3/PagedView;)Lcom/lge/launcher3/util/TouchPrediction;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTouchPrediction:Lcom/lge/launcher3/util/TouchPrediction;

    return-object v0
.end method

.method public static ajc$get$mTouchSlop(Lcom/android/launcher3/PagedView;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    return v0
.end method

.method public static ajc$get$mTouchState(Lcom/android/launcher3/PagedView;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    return v0
.end method

.method public static ajc$get$mTouchX(Lcom/android/launcher3/PagedView;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchX:F

    return v0
.end method

.method public static ajc$get$mViewport(Lcom/android/launcher3/PagedView;)Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static ajc$get$mWasInOverscroll(Lcom/android/launcher3/PagedView;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    return v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "PagedView.java"

    const-class v2, Lcom/android/launcher3/PagedView;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "field-set"

    const-string v2, "4"

    const-string v3, "mCurrentPage"

    const-string v4, "com.android.launcher3.PagedView"

    const-string v5, "int"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeFieldSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/FieldSignature;

    move-result-object v2

    const/16 v3, 0xf7

    invoke-virtual {v0, v1, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/PagedView;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "init"

    const-string v3, "com.android.launcher3.PagedView"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xf4

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/PagedView;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onAttachedToWindow"

    const-string v3, "com.android.launcher3.PagedView"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x110

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/PagedView;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v1, "field-set"

    const-string v2, "4"

    const-string v3, "mCurrentPage"

    const-string v4, "com.android.launcher3.PagedView"

    const-string v5, "int"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeFieldSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/FieldSignature;

    move-result-object v2

    const/16 v3, 0x1e3

    invoke-virtual {v0, v1, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/PagedView;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v1, "field-set"

    const-string v2, "4"

    const-string v3, "mCurrentPage"

    const-string v4, "com.android.launcher3.PagedView"

    const-string v5, "int"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeFieldSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/FieldSignature;

    move-result-object v2

    const/16 v3, 0x29a

    invoke-virtual {v0, v1, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/PagedView;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "updateMaxScrollX"

    const-string v3, "com.android.launcher3.PagedView"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3d6

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/PagedView;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "getNearestHoverOverPageIndex"

    const-string v3, "com.android.launcher3.PagedView"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x68a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/PagedView;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v1, "field-set"

    const-string v2, "4"

    const-string v3, "mCurrentPage"

    const-string v4, "com.android.launcher3.PagedView"

    const-string v5, "int"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeFieldSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/FieldSignature;

    move-result-object v2

    const/16 v3, 0x741

    invoke-virtual {v0, v1, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/PagedView;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "2"

    const-string v2, "acquireVelocityTrackerAndAddMovement"

    const-string v3, "com.android.launcher3.PagedView"

    const-string v4, "android.view.MotionEvent"

    const-string v5, "ev"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x7ed

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/PagedView;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "snapToPage"

    const-string v3, "com.android.launcher3.PagedView"

    const-string v4, "int:int:int"

    const-string v5, "whichPage:delta:duration"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x887

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/PagedView;->ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$INVALID_PAGE(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/launcher3/PagedView;->INVALID_PAGE:I

    return-void
.end method

.method public static ajc$set$MIN_SNAP_VELOCITY(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/launcher3/PagedView;->MIN_SNAP_VELOCITY:I

    return-void
.end method

.method public static ajc$set$NANOTIME_DIV(F)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/launcher3/PagedView;->NANOTIME_DIV:F

    return-void
.end method

.method public static ajc$set$PAGE_SNAP_ANIMATION_DURATION(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/launcher3/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    return-void
.end method

.method public static ajc$set$TOUCH_SLOP_INIT_REACTION_DISTANCE(F)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/launcher3/PagedView;->TOUCH_SLOP_INIT_REACTION_DISTANCE:F

    return-void
.end method

.method public static ajc$set$TOUCH_SLOP_MM_PER_INCH(F)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/launcher3/PagedView;->TOUCH_SLOP_MM_PER_INCH:F

    return-void
.end method

.method public static ajc$set$TOUCH_STATE_REST(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/launcher3/PagedView;->TOUCH_STATE_REST:I

    return-void
.end method

.method public static ajc$set$mAllowOverScroll(Lcom/android/launcher3/PagedView;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    return-void
.end method

.method public static ajc$set$mCurrentPage(Lcom/android/launcher3/PagedView;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return-void
.end method

.method public static ajc$set$mDefaultInterpolator(Lcom/android/launcher3/PagedView;Landroid/view/animation/Interpolator;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static ajc$set$mDragView(Lcom/android/launcher3/PagedView;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    return-void
.end method

.method public static ajc$set$mForceScreenScrolled(Lcom/android/launcher3/PagedView;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mForceScreenScrolled:Z

    return-void
.end method

.method public static ajc$set$mFreeScroll(Lcom/android/launcher3/PagedView;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    return-void
.end method

.method public static ajc$set$mFreeScrollMaxScrollX(Lcom/android/launcher3/PagedView;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    return-void
.end method

.method public static ajc$set$mFreeScrollMinScrollX(Lcom/android/launcher3/PagedView;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    return-void
.end method

.method public static ajc$set$mIsRtl(Lcom/android/launcher3/PagedView;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    return-void
.end method

.method public static ajc$set$mLastMotionX(Lcom/android/launcher3/PagedView;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    return-void
.end method

.method public static ajc$set$mLastMotionY(Lcom/android/launcher3/PagedView;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    return-void
.end method

.method public static ajc$set$mMaxScrollX(Lcom/android/launcher3/PagedView;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    return-void
.end method

.method public static ajc$set$mMinFlingVelocity(Lcom/android/launcher3/PagedView;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    return-void
.end method

.method public static ajc$set$mNextPage(Lcom/android/launcher3/PagedView;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    return-void
.end method

.method public static ajc$set$mPageIndicator(Lcom/android/launcher3/PagedView;Lcom/android/launcher3/PageIndicator;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    return-void
.end method

.method public static ajc$set$mPageSpacing(Lcom/android/launcher3/PagedView;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    return-void
.end method

.method public static ajc$set$mParentDownMotionX(Lcom/android/launcher3/PagedView;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    return-void
.end method

.method public static ajc$set$mParentDownMotionY(Lcom/android/launcher3/PagedView;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    return-void
.end method

.method public static ajc$set$mScroller(Lcom/android/launcher3/PagedView;Lcom/android/launcher3/LauncherScroller;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    return-void
.end method

.method public static ajc$set$mSmoothingTime(Lcom/android/launcher3/PagedView;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mSmoothingTime:F

    return-void
.end method

.method public static ajc$set$mTempVisiblePagesRange(Lcom/android/launcher3/PagedView;[I)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    return-void
.end method

.method public static ajc$set$mTouchPrediction(Lcom/android/launcher3/PagedView;Lcom/lge/launcher3/util/TouchPrediction;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mTouchPrediction:Lcom/lge/launcher3/util/TouchPrediction;

    return-void
.end method

.method public static ajc$set$mTouchSlop(Lcom/android/launcher3/PagedView;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    return-void
.end method

.method public static ajc$set$mTouchState(Lcom/android/launcher3/PagedView;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    return-void
.end method

.method public static ajc$set$mTouchX(Lcom/android/launcher3/PagedView;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/PagedView;->mTouchX:F

    return-void
.end method

.method public static ajc$set$mViewport(Lcom/android/launcher3/PagedView;Landroid/graphics/Rect;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    return-void
.end method

.method public static ajc$set$mWasInOverscroll(Lcom/android/launcher3/PagedView;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    return-void
.end method

.method private animateDragViewToOriginalPosition()V
    .registers 10

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2292
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_5f

    .line 2293
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2294
    sget v1, Lcom/android/launcher3/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2295
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    .line 2296
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 2297
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    .line 2298
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 2299
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2295
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2300
    new-instance v1, Lcom/android/launcher3/PagedView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/PagedView$3;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2306
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2308
    :cond_5f
    return-void
.end method

.method private static final getNearestHoverOverPageIndex_aroundBody0(Lcom/android/launcher3/PagedView;Lorg/aspectj/lang/JoinPoint;)I
    .registers 8

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_53

    .line 1676
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 1677
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 1676
    add-float/2addr v0, v1

    float-to-int v4, v0

    .line 1678
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1679
    const v2, 0x7fffffff

    .line 1680
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1681
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    :goto_2f
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    if-le v0, v3, :cond_37

    .line 1692
    :goto_36
    return v1

    .line 1682
    :cond_37
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 1683
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    .line 1684
    sub-int v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1685
    if-ge v3, v2, :cond_50

    move v1, v0

    move v2, v3

    .line 1681
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1692
    :cond_53
    const/4 v1, -0x1

    goto :goto_36
.end method

.method private static final getNearestHoverOverPageIndex_aroundBody1$advice(Lcom/android/launcher3/PagedView;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/PagedViewAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Integer;
    .registers 12

    .prologue
    .line 53
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView;

    .line 54
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mDragView(Lcom/android/launcher3/PagedView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 55
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mDragView(Lcom/android/launcher3/PagedView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const v2, 0x3fe66666    # 1.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 56
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mDragView(Lcom/android/launcher3/PagedView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 57
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_30

    .line 58
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mDragView(Lcom/android/launcher3/PagedView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    .line 60
    :cond_30
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mDragView(Lcom/android/launcher3/PagedView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    add-int v5, v2, v1

    .line 61
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mTempVisiblePagesRange(Lcom/android/launcher3/PagedView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->ajc$privMethod$com_lge_launcher3_nativejoin_PagedViewAspect$com_android_launcher3_PagedView$getFreeScrollPageRange([I)V

    .line 62
    const v3, 0x7fffffff

    .line 63
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mDragView(Lcom/android/launcher3/PagedView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 64
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mTempVisiblePagesRange(Lcom/android/launcher3/PagedView;)[I

    move-result-object v1

    const/4 v4, 0x0

    aget v1, v1, v4

    :goto_56
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mTempVisiblePagesRange(Lcom/android/launcher3/PagedView;)[I

    move-result-object v4

    const/4 v6, 0x1

    aget v4, v4, v6

    if-le v1, v4, :cond_64

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 75
    :goto_63
    return-object v0

    .line 65
    :cond_64
    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v6

    .line 67
    sub-int v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 68
    if-ge v4, v3, :cond_7d

    move v2, v1

    move v3, v4

    .line 64
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 75
    :cond_80
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_63
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .registers 8

    .prologue
    .line 1382
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1383
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1382
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1384
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private mapPointFromViewToParent(Landroid/view/View;FF)[F
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 316
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aput p2, v0, v3

    .line 317
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aput p3, v0, v4

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 319
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 320
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 321
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    .line 2045
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 2047
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2048
    iget v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_35

    .line 2052
    if-nez v0, :cond_36

    const/4 v0, 0x1

    .line 2053
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 2054
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 2055
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 2056
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 2057
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_35

    .line 2058
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2061
    :cond_35
    return-void

    .line 2052
    :cond_36
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private releaseVelocityTracker()V
    .registers 2

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    .line 2038
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2039
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2040
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2042
    :cond_11
    return-void
.end method

.method private removeMarkerForView(I)V
    .registers 4

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1031
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/PageIndicator;->removeMarker(IZ)V

    .line 1033
    :cond_11
    return-void
.end method

.method private resetTouchState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1976
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    .line 1977
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->endReordering()V

    .line 1978
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mCancelTap:Z

    .line 1979
    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1980
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1981
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->onRelease()V

    .line 1982
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->onRelease()V

    .line 1983
    return-void
.end method

.method private sendScrollAccessibilityEvent()V
    .registers 3

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 636
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 637
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    if-eq v0, v1, :cond_3e

    .line 639
    const/16 v0, 0x1000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 640
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 641
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 642
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 643
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 644
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 646
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 649
    :cond_3e
    return-void
.end method

.method private setEnableFreeScroll(Z)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1655
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 1657
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v2, :cond_21

    .line 1658
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateFreescrollBounds()V

    .line 1659
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1660
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_27

    .line 1661
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 1667
    :cond_21
    :goto_21
    if-eqz p1, :cond_39

    :goto_23
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableOverscroll(Z)V

    .line 1668
    return-void

    .line 1662
    :cond_27
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-le v2, v3, :cond_21

    .line 1663
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_21

    :cond_39
    move v0, v1

    .line 1667
    goto :goto_23
.end method


# virtual methods
.method protected abortScrollerAnimation(Z)V
    .registers 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->abortAnimation()V

    .line 445
    if-eqz p1, :cond_a

    .line 446
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 448
    :cond_a
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1297
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 1298
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1300
    :cond_15
    const/16 v0, 0x11

    if-ne p2, v0, :cond_29

    .line 1301
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v0, :cond_28

    .line 1302
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1309
    :cond_28
    :goto_28
    return-void

    .line 1304
    :cond_29
    const/16 v0, 0x42

    if-ne p2, v0, :cond_28

    .line 1305
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_28

    .line 1306
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_28
.end method

.method public addFullScreenPage(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->generateDefaultLayoutParams()Lcom/android/launcher3/PagedView$LayoutParams;

    move-result-object v0

    .line 735
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    .line 736
    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 737
    return-void
.end method

.method public afterAttachedToWindow()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$afterAttachedToWindow(Lcom/android/launcher3/PagedView;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_PagedViewItds$setupTouchSlopRatio()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setupTouchSlopRatio(Lcom/android/launcher3/PagedView;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_FolderPagedViewItds$com_android_launcher3_PagedView$onAttachedToWindow()V
    .registers 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onAttachedToWindow()V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPageCount()I
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    return v0
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPageIndicatorDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isPageMoving()Z
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageMoving()Z

    move-result v0

    return v0
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$abortScrollerAnimation(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$cancelCurrentPageLongPress()V
    .registers 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->cancelCurrentPageLongPress()V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$determineScrollingStart(Landroid/view/MotionEvent;F)V
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$distanceInfluenceForSnapDuration(F)F
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    return v0
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$forceFinishScroller()V
    .registers 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->forceFinishScroller()V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$getPageCount()I
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    return v0
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$isReordering(Z)Z
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    return v0
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$mapPointFromParentToView(Landroid/view/View;FF)[F
    .registers 5

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    return-object v0
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$pageBeginMoving()V
    .registers 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginMoving()V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$pageEndMoving()V
    .registers 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndMoving()V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$snapToPage(II)V
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$snapToPage(III)V
    .registers 4

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;->snapToPage(III)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$updateCurrentPageScroll()V
    .registers 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$updateDragViewTranslationDuringDrag()V
    .registers 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_PagedView$validateNewPage(I)I
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    return v0
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_PagedViewAspect$com_android_launcher3_PagedView$getFreeScrollPageRange([I)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_PagedViewAspect$com_android_launcher3_PagedView$updateFreescrollBounds()V
    .registers 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateFreescrollBounds()V

    return-void
.end method

.method public ajc$protectedDispatch$com_android_launcher3_PagedView$getPageIndicatorDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$protectedDispatch$com_android_launcher3_PagedView$isPageMoving()Z
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageMoving()Z

    move-result v0

    return v0
.end method

.method public ajc$superDispatch$com_android_launcher3_PagedView$drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public ajc$superDispatch$com_android_launcher3_PagedView$scrollTo(II)V
    .registers 3

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .registers 2

    .prologue
    .line 1560
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1561
    if-eqz v0, :cond_b

    .line 1562
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1564
    :cond_b
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 730
    instance-of v0, p1, Lcom/android/launcher3/PagedView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScrollHelper()Z

    .line 691
    return-void
.end method

.method protected computeScrollHelper()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 653
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 655
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherScroller;->getCurrX()I

    move-result v3

    if-ne v0, v3, :cond_24

    .line 656
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherScroller;->getCurrY()I

    move-result v3

    if-eq v0, v3, :cond_40

    .line 657
    :cond_24
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v0

    .line 658
    :goto_2c
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherScroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v1, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 659
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 661
    :cond_40
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    move v0, v2

    .line 685
    :goto_44
    return v0

    :cond_45
    move v0, v1

    .line 657
    goto :goto_2c

    .line 663
    :cond_47
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-eq v0, v4, :cond_9c

    .line 664
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->sendScrollAccessibilityEvent()V

    .line 666
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    sget-object v1, Lcom/android/launcher3/PagedView;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, p0, p0, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    :try_start_5e
    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_60} :catch_93

    nop

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$7$ebce283(Lorg/aspectj/lang/JoinPoint;)V

    nop

    .line 667
    iput v4, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 668
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener()V

    .line 672
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-nez v0, :cond_75

    .line 673
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndMoving()V

    .line 676
    :cond_75
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPostReorderingAnimationCompleted()V

    .line 678
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 677
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 679
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 681
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_91
    move v0, v2

    .line 683
    goto :goto_44

    .line 666
    :catch_93
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$7$ebce283(Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 685
    :cond_9c
    const/4 v0, 0x0

    goto :goto_44
.end method

.method protected dampedOverScroll(F)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1619
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v0

    .line 1620
    int-to-float v0, v0

    div-float v0, p1, v0

    .line 1621
    cmpg-float v1, v0, v2

    if-gez v1, :cond_16

    .line 1622
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->onPull(F)V

    .line 1628
    :goto_12
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1629
    :cond_15
    return-void

    .line 1623
    :cond_16
    cmpl-float v1, v0, v2

    if-lez v1, :cond_15

    .line 1624
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->onPull(F)V

    goto :goto_12
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 1519
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1520
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1528
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1529
    const/4 v3, -0x1

    if-ne v0, v3, :cond_c

    .line 1554
    :cond_b
    :goto_b
    return-void

    .line 1532
    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1533
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1534
    float-to-int v4, v3

    float-to-int v0, v0

    invoke-direct {p0, v4, v0}, Lcom/android/launcher3/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1536
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1538
    iget v4, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1539
    if-le v0, v4, :cond_6a

    move v0, v1

    .line 1541
    :goto_30
    if-eqz v0, :cond_b

    .line 1543
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    sub-float/2addr v0, v3

    .line 1544
    iput v1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1545
    iget v1, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    iget v4, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v1, v4

    iput v1, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1546
    iput v3, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1547
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1548
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mTouchX:F

    .line 1549
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v1, v4

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/PagedView;->mSmoothingTime:F

    .line 1550
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    .line 1551
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginMoving()V

    .line 1552
    float-to-int v0, v0

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/PagedView;->scrollBy(II)V

    goto :goto_b

    :cond_6a
    move v0, v2

    .line 1539
    goto :goto_30
.end method

.method public disableFreeScroll()V
    .registers 2

    .prologue
    .line 1640
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    .line 1641
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v12, 0x0

    .line 1146
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    .line 1147
    if-lez v0, :cond_78

    .line 1148
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/PagedView;->mDrawVisiblePagesRange:[I

    .line 1149
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 1150
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    .line 1152
    iget v4, p0, Lcom/android/launcher3/PagedView;->mLastScreenCenter:I

    if-ne v3, v4, :cond_1f

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mForceScreenScrolled:Z

    if-eqz v4, :cond_26

    .line 1155
    :cond_1f
    iput-boolean v12, p0, Lcom/android/launcher3/PagedView;->mForceScreenScrolled:Z

    .line 1156
    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->screenScrolled(I)V

    .line 1157
    iput v3, p0, Lcom/android/launcher3/PagedView;->mLastScreenCenter:I

    .line 1160
    :cond_26
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mDrawVisiblePagesRange:[I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getVisiblePages([I)V

    .line 1161
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mDrawVisiblePagesRange:[I

    aget v4, v3, v12

    .line 1162
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mDrawVisiblePagesRange:[I

    aget v5, v3, v1

    .line 1163
    if-eq v4, v2, :cond_78

    if-eq v5, v2, :cond_78

    .line 1164
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDrawingTime()J

    move-result-wide v6

    .line 1166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1167
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getRight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    .line 1168
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    .line 1167
    invoke-virtual {p1, v3, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1171
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_68
    if-gez v3, :cond_79

    .line 1202
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_73

    .line 1203
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v6, v7}, Lcom/android/launcher3/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1206
    :cond_73
    iput-boolean v12, p0, Lcom/android/launcher3/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 1207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1210
    :cond_78
    return-void

    .line 1172
    :cond_79
    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 1173
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-ne v8, v0, :cond_85

    .line 1171
    :cond_81
    :goto_81
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_68

    .line 1174
    :cond_85
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v0, :cond_93

    .line 1175
    if-gt v4, v3, :cond_81

    if-gt v3, v5, :cond_81

    invoke-virtual {p0, v8}, Lcom/android/launcher3/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1176
    :cond_93
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 1177
    iget-boolean v9, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v9, :cond_e8

    iget-boolean v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isOverviewMode:Z

    if-eqz v0, :cond_e8

    .line 1178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1179
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    .line 1180
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v9

    .line 1181
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getRight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getLeft()I

    move-result v11

    sub-int/2addr v10, v11

    .line 1182
    iget-object v11, p0, Lcom/android/launcher3/PagedView;->mNormalChildRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    .line 1183
    invoke-virtual {p1, v0, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1185
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v0

    iget v9, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    sub-int v9, v0, v9

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_e6

    move v0, v1

    :goto_ce
    mul-int/2addr v0, v9

    invoke-virtual {v8, v0}, Landroid/view/View;->setScrollX(I)V

    .line 1186
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mNormalChildRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v0, v9

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1188
    invoke-virtual {p0, p1, v8, v6, v7}, Lcom/android/launcher3/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_81

    :cond_e6
    move v0, v2

    .line 1185
    goto :goto_ce

    .line 1191
    :cond_e8
    invoke-virtual {v8, v12}, Landroid/view/View;->setScrollX(I)V

    .line 1192
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1194
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mNormalChildRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v0, Landroid/graphics/Rect;->top:I

    .line 1195
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mNormalChildRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v9

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 1197
    invoke-virtual {p0, p1, v8, v6, v7}, Lcom/android/launcher3/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_81
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1280
    const/16 v1, 0x11

    if-ne p2, v1, :cond_15

    .line 1281
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_2f

    .line 1282
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1291
    :goto_14
    return v0

    .line 1285
    :cond_15
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2f

    .line 1286
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2f

    .line 1287
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    goto :goto_14

    .line 1291
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_14
.end method

.method protected distanceInfluenceForSnapDuration(F)F
    .registers 6

    .prologue
    .line 2110
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 2111
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 2112
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1214
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1215
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-lez v0, :cond_b5

    .line 1216
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_58

    .line 1217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1218
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 1219
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1220
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1222
    sget-object v3, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getEdgeVerticalPostion([I)V

    .line 1223
    iget v3, v2, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v4, v4, v6

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1224
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    sget-object v4, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v4, v4, v6

    sget-object v5, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v5, v5, v1

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/util/LauncherEdgeEffect;->setSize(II)V

    .line 1225
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/LauncherEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1226
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->postInvalidateOnAnimation()V

    .line 1228
    :cond_55
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1230
    :cond_58
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b5

    .line 1231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1232
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 1233
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_b6

    move v0, v1

    :goto_6f
    aget v0, v5, v0

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1234
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1236
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getEdgeVerticalPostion([I)V

    .line 1237
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v0, v0, v1

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1238
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    sget-object v4, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v4, v4, v6

    sget-object v5, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v1, v5, v1

    sub-int v1, v4, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/util/LauncherEdgeEffect;->setSize(II)V

    .line 1239
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LauncherEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 1240
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->postInvalidateOnAnimation()V

    .line 1242
    :cond_b2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1245
    :cond_b5
    return-void

    .line 1233
    :cond_b6
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_6f
.end method

.method public enableFreeScroll()V
    .registers 2

    .prologue
    .line 1636
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    .line 1637
    return-void
.end method

.method endReordering()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2377
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    if-nez v0, :cond_6

    .line 2404
    :goto_5
    return-void

    .line 2378
    :cond_6
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    .line 2382
    new-instance v0, Lcom/android/launcher3/PagedView$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/PagedView$4;-><init>(Lcom/android/launcher3/PagedView;)V

    .line 2389
    new-instance v1, Lcom/android/launcher3/PagedView$5;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/PagedView$5;-><init>(Lcom/android/launcher3/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2399
    iget v0, p0, Lcom/android/launcher3/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 2398
    iput v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2401
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 2403
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_5
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1320
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p1

    .line 1323
    :goto_7
    if-ne v0, v1, :cond_d

    .line 1324
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1334
    :cond_c
    return-void

    .line 1327
    :cond_d
    if-eq v0, p0, :cond_c

    .line 1330
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1331
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_c

    .line 1332
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_7
.end method

.method protected forceFinishScroller()V
    .registers 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherScroller;->forceFinished(Z)V

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 455
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->generateDefaultLayoutParams()Lcom/android/launcher3/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/PagedView$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 720
    new-instance v0, Lcom/android/launcher3/PagedView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/PagedView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 725
    new-instance v0, Lcom/android/launcher3/PagedView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/PagedView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/PagedView$LayoutParams;
    .registers 4

    .prologue
    .line 715
    new-instance v0, Lcom/android/launcher3/PagedView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/PagedView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getChildGap()I
    .registers 2

    .prologue
    .line 979
    const/4 v0, 0x0

    return v0
.end method

.method public getChildOffset(I)I
    .registers 4

    .prologue
    .line 1068
    if-ltz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    .line 1072
    :goto_b
    return v0

    .line 1070
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1072
    goto :goto_b
.end method

.method public getChildOffset(Lcom/android/launcher3/CellLayout;)I
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getChildOffset(Lcom/android/launcher3/PagedView;Lcom/android/launcher3/CellLayout;)I

    move-result v0

    return v0
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 403
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2468
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2469
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2468
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPagePublic()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getCurrentPagePublic(Lcom/android/launcher3/PagedView;)I

    move-result v0

    return v0
.end method

.method protected abstract getEdgeVerticalPostion([I)V
.end method

.method protected getFreeScrollPageRange([I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1076
    aput v2, p1, v2

    .line 1077
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p1, v0

    .line 1078
    return-void
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1602
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_c

    if-gez p1, :cond_d

    .line 1614
    :cond_c
    :goto_c
    return v1

    .line 1605
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1608
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 1609
    iget-boolean v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-nez v0, :cond_3b

    .line 1610
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v0

    .line 1613
    :goto_23
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v1

    add-int/2addr v0, v1

    .line 1614
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v1

    int-to-float v0, v0

    sub-float v0, v1, v0

    float-to-int v1, v0

    goto :goto_c

    .line 1610
    :cond_36
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v0

    goto :goto_23

    :cond_3b
    move v0, v1

    goto :goto_23
.end method

.method public getMaxScrollX()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getMaxScrollX(Lcom/android/launcher3/PagedView;)I

    move-result v0

    return v0
.end method

.method protected getNearestHoverOverPageIndex()I
    .registers 4

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/PagedView;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/launcher3/PagedView;->getNearestHoverOverPageIndex_aroundBody1$advice(Lcom/android/launcher3/PagedView;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/PagedViewAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getNextPage()I
    .registers 3

    .prologue
    .line 410
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_7
.end method

.method public getNormalChildHeight()I
    .registers 2

    .prologue
    .line 740
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNormalChildHeight:I

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageAtPublic(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPageAtPublic(Lcom/android/launcher3/PagedView;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getPageCount()I
    .registers 2

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageCountPublic()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPageCountPublic(Lcom/android/launcher3/PagedView;)I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .registers 7

    .prologue
    .line 2241
    const/4 v1, -0x1

    .line 2242
    if-eqz p1, :cond_e

    .line 2243
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2244
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    .line 2245
    const/4 v0, 0x0

    :goto_c
    if-lt v0, v3, :cond_10

    :cond_e
    move v0, v1

    .line 2251
    :cond_f
    return v0

    .line 2246
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v2, v4, :cond_f

    .line 2245
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public getPageIndicator()Lcom/android/launcher3/PageIndicator;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    return-object v0
.end method

.method protected getPageIndicatorClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageIndicatorMarker(I)Lcom/android/launcher3/PageIndicator$PageMarkerResources;
    .registers 3

    .prologue
    .line 385
    new-instance v0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    invoke-direct {v0}, Lcom/android/launcher3/PageIndicator$PageMarkerResources;-><init>()V

    return-object v0
.end method

.method public getPageNearestToCenterOfScreen()I
    .registers 9

    .prologue
    .line 2073
    const v3, 0x7fffffff

    .line 2074
    const/4 v0, -0x1

    .line 2075
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    .line 2076
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v5

    .line 2077
    const/4 v1, 0x0

    :goto_1a
    if-lt v1, v5, :cond_1d

    .line 2088
    return v0

    .line 2078
    :cond_1d
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 2079
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 2080
    div-int/lit8 v2, v2, 0x2

    .line 2081
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v6

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 2082
    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2083
    if-ge v2, v3, :cond_3d

    move v0, v1

    .line 2077
    :goto_39
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_1a

    :cond_3d
    move v2, v3

    goto :goto_39
.end method

.method protected getPageShiftMatrix()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 1136
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getPageSpacing()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPageSpacing(Lcom/android/launcher3/PagedView;)I

    move-result v0

    return v0
.end method

.method public getPredictionX(Landroid/view/MotionEvent;)F
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPredictionX(Lcom/android/launcher3/PagedView;Landroid/view/MotionEvent;)F

    move-result v0

    return v0
.end method

.method getRestorePage()I
    .registers 2

    .prologue
    .line 498
    iget v0, p0, Lcom/android/launcher3/PagedView;->mRestorePage:I

    return v0
.end method

.method public getScrollForPage(I)I
    .registers 3

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_b

    if-gez p1, :cond_d

    .line 1593
    :cond_b
    const/4 v0, 0x0

    .line 1595
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget v0, v0, p1

    goto :goto_c
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .registers 9

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1567
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1569
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    add-int/2addr v0, v1

    sub-int v1, p1, v0

    .line 1570
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    .line 1574
    add-int/lit8 v0, p3, 0x1

    .line 1575
    if-gez v1, :cond_1b

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_21

    :cond_1b
    if-lez v1, :cond_23

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_23

    .line 1576
    :cond_21
    add-int/lit8 v0, p3, -0x1

    .line 1579
    :cond_23
    if-ltz v0, :cond_29

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_40

    .line 1580
    :cond_29
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v0, v2

    .line 1585
    :goto_30
    int-to-float v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float v0, v1, v0

    .line 1586
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1587
    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1588
    return v0

    .line 1582
    :cond_40
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_30
.end method

.method public getScroller()Lcom/android/launcher3/LauncherScroller;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;

    move-result-object v0

    return-object v0
.end method

.method protected getUnboundedScrollX()I
    .registers 2

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getViewport()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getViewport(Lcom/android/launcher3/PagedView;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getViewportHeight()I
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getViewportOffsetX()I
    .registers 3

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .registers 3

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getViewportWidth()I
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 1081
    if-eqz p1, :cond_e

    .line 1082
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDrawVisiblePagesRange:[I

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1133
    :goto_d
    return-void

    .line 1086
    :cond_e
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mDrawVisiblePagesRange:[I

    .line 1087
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mDrawVisiblePagesRange:[I

    .line 1090
    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    .line 1091
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    sget-object v1, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aput v2, v1, v9

    aput v2, v0, v2

    .line 1093
    aput v8, p1, v2

    .line 1094
    aput v8, p1, v9

    .line 1096
    if-lez v3, :cond_6c

    .line 1097
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v4

    move v1, v2

    move v0, v2

    .line 1100
    :goto_2d
    if-lt v1, v3, :cond_32

    .line 1128
    :cond_2f
    aput v0, p1, v9

    goto :goto_d

    .line 1101
    :cond_32
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 1103
    sget-object v6, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aput v2, v6, v2

    .line 1104
    sget-object v6, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    invoke-static {v5, p0, v6, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 1105
    sget-object v6, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v6, v6, v2

    if-le v6, v4, :cond_4c

    .line 1106
    aget v5, p1, v2

    if-ne v5, v8, :cond_2f

    .line 1100
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1113
    :cond_4c
    sget-object v6, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    aput v7, v6, v2

    .line 1114
    sget-object v6, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    invoke-static {v5, p0, v6, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 1115
    sget-object v5, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v5, v5, v2

    if-gez v5, :cond_64

    .line 1116
    aget v5, p1, v2

    if-ne v5, v8, :cond_2f

    goto :goto_49

    .line 1123
    :cond_64
    aget v0, p1, v2

    if-gez v0, :cond_6a

    .line 1124
    aput v1, p1, v2

    :cond_6a
    move v0, v1

    goto :goto_49

    .line 1130
    :cond_6c
    aput v8, p1, v2

    .line 1131
    aput v8, p1, v9

    goto :goto_d
.end method

.method protected hitsNextPage(FF)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1373
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_1a

    .line 1374
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_18

    .line 1376
    :cond_17
    :goto_17
    return v0

    :cond_18
    move v0, v1

    .line 1374
    goto :goto_17

    .line 1376
    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 1377
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1376
    cmpl-float v2, p1, v2

    if-gtz v2, :cond_17

    move v0, v1

    goto :goto_17
.end method

.method protected hitsPreviousPage(FF)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1362
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_1f

    .line 1363
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 1364
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1363
    cmpl-float v2, p1, v2

    if-lez v2, :cond_1d

    .line 1366
    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    .line 1363
    goto :goto_1c

    .line 1366
    :cond_1f
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_1c

    move v0, v1

    goto :goto_1c
.end method

.method public ignoreReorderingUpdatePageIndicator()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$ignoreReorderingUpdatePageIndicator(Lcom/android/launcher3/PagedView;)V

    return-void
.end method

.method protected indexToPage(I)I
    .registers 2

    .prologue
    .line 422
    return p1
.end method

.method protected init()V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/PagedView;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 245
    :try_start_6
    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$before$com_lge_launcher3_nativejoin_PagedViewAspect$1$533d92a8(Lorg/aspectj/lang/JoinPoint;)V

    new-instance v0, Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/LauncherScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 246
    new-instance v0, Lcom/android/launcher3/PagedView$ScrollInterpolator;

    invoke-direct {v0}, Lcom/android/launcher3/PagedView$ScrollInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    .line 247
    const/4 v0, 0x0

    sget-object v2, Lcom/android/launcher3/PagedView;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, p0, p0, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_2a} :catch_8a

    move-result-object v2

    :try_start_2b
    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2d} :catch_81

    nop

    :try_start_2e
    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$7$ebce283(Lorg/aspectj/lang/JoinPoint;)V

    nop

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mCenterPagesVertically:Z

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    .line 252
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    .line 253
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDensity:F

    .line 255
    const/high16 v0, 0x43fa0000    # 500.0f

    iget v2, p0, Lcom/android/launcher3/PagedView;->mDensity:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    .line 256
    const/high16 v0, 0x437a0000    # 250.0f

    iget v2, p0, Lcom/android/launcher3/PagedView;->mDensity:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    .line 257
    const v0, 0x44bb8000    # 1500.0f

    iget v2, p0, Lcom/android/launcher3/PagedView;->mDensity:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    .line 258
    invoke-virtual {p0, p0}, Lcom/android/launcher3/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setWillNotDraw(Z)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_79} :catch_8a

    .line 260
    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$2$533d92a8(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 247
    :catch_81
    move-exception v0

    :try_start_82
    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$7$ebce283(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_8a} :catch_8a

    .line 260
    :catch_8a
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$2$533d92a8(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public isDistZeroChecked(I)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isDistZeroChecked(Lcom/android/launcher3/PagedView;I)Z

    move-result v0

    return v0
.end method

.method protected isPageMoving()Z
    .registers 2

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method protected isReordering(Z)Z
    .registers 5

    .prologue
    .line 2367
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsReordering:Z

    .line 2368
    if-eqz p1, :cond_e

    .line 2369
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    const/4 v0, 0x1

    :goto_a
    and-int/2addr v0, v1

    .line 2371
    :goto_b
    return v0

    .line 2369
    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :cond_e
    move v0, v1

    goto :goto_b
.end method

.method public isScrolling()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isScrolling(Lcom/android/launcher3/PagedView;)Z

    move-result v0

    return v0
.end method

.method public isTouchActive()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isTouchActive(Lcom/android/launcher3/PagedView;)Z

    move-result v0

    return v0
.end method

.method protected mapPointFromParentToView(Landroid/view/View;FF)[F
    .registers 7

    .prologue
    .line 325
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 326
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 328
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 329
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method protected notifyPageSwitchListener()V
    .registers 4

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageSwitchListener:Lcom/android/launcher3/PagedView$PageSwitchListener;

    if-eqz v0, :cond_15

    .line 507
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageSwitchListener:Lcom/android/launcher3/PagedView$PageSwitchListener;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 510
    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 511
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/PagedView;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 273
    :try_start_6
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 276
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 277
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 278
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    if-nez v2, :cond_57

    iget v2, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_57

    .line 279
    iget v2, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PageIndicator;->removeAllMarkers(Z)V

    .line 283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 284
    const/4 v0, 0x0

    :goto_34
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_5f

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/PageIndicator;->addMarkers(Ljava/util/ArrayList;Z)V

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_4b

    .line 292
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/PageIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    :cond_4b
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_57} :catch_69

    .line 297
    :cond_57
    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$3$5cabaaea(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 285
    :cond_5f
    :try_start_5f
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_66} :catch_69

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 297
    :catch_69
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$3$5cabaaea(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 1006
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1007
    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1008
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    .line 1009
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    move-result-object v2

    .line 1008
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/PageIndicator;->addMarker(ILcom/android/launcher3/PageIndicator$PageMarkerResources;Z)V

    .line 1015
    :cond_19
    iput-boolean v3, p0, Lcom/android/launcher3/PagedView;->mForceScreenScrolled:Z

    .line 1016
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateFreescrollBounds()V

    .line 1017
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1018
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mForceScreenScrolled:Z

    .line 1023
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateFreescrollBounds()V

    .line 1024
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1025
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 309
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    .line 312
    return-void
.end method

.method public onEndReordering()V
    .registers 2

    .prologue
    .line 2331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsReordering:Z

    .line 2333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    .line 2334
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/16 v3, 0x9

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 2000
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_14

    .line 2001
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_5c

    .line 2026
    :cond_14
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_18
    return v0

    .line 2006
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_40

    .line 2008
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    move v3, v4

    .line 2013
    :goto_26
    cmpl-float v5, v2, v4

    if-nez v5, :cond_2e

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_14

    .line 2014
    :cond_2e
    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_4e

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_4c

    cmpg-float v2, v3, v4

    if-ltz v2, :cond_4c

    .line 2016
    :cond_3a
    :goto_3a
    if-eqz v1, :cond_58

    .line 2017
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    goto :goto_18

    .line 2010
    :cond_40
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v3, v2

    .line 2011
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    goto :goto_26

    :cond_4c
    move v1, v0

    .line 2014
    goto :goto_3a

    .line 2015
    :cond_4e
    cmpl-float v2, v2, v4

    if-gtz v2, :cond_56

    .line 2014
    cmpl-float v2, v3, v4

    if-lez v2, :cond_3a

    :cond_56
    move v1, v0

    goto :goto_3a

    .line 2019
    :cond_58
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    goto :goto_18

    .line 2001
    :pswitch_data_5c
    .packed-switch 0x8
        :pswitch_19
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 2474
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2441
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2442
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_e

    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2443
    return-void

    .line 2442
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2412
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2413
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-le v2, v0, :cond_44

    :goto_b
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2414
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1f

    .line 2415
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2417
    :cond_1f
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_2a

    .line 2418
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2420
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2425
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2426
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2427
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 2429
    :cond_43
    return-void

    :cond_44
    move v0, v1

    .line 2413
    goto :goto_b
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1394
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1397
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_11

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1515
    :cond_10
    :goto_10
    return v0

    .line 1404
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1411
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_116

    .line 1515
    :cond_1a
    :goto_1a
    :pswitch_1a
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-eqz v0, :cond_112

    move v0, v1

    goto :goto_10

    .line 1413
    :pswitch_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1416
    iget v4, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_55

    move v0, v1

    .line 1417
    :goto_3e
    iget v4, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_57

    move v3, v1

    .line 1419
    :goto_46
    iget v4, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v4, v1, :cond_59

    .line 1421
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1423
    if-nez v0, :cond_51

    if-eqz v3, :cond_10

    .line 1424
    :cond_51
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->cancelCurrentPageLongPress()V

    goto :goto_10

    :cond_55
    move v0, v2

    .line 1416
    goto :goto_3e

    :cond_57
    move v3, v2

    .line 1417
    goto :goto_46

    .line 1434
    :cond_59
    iget v3, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a

    .line 1435
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 1437
    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v3, v1, :cond_1a

    goto :goto_10

    .line 1450
    :pswitch_66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1453
    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 1454
    iput v3, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 1455
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/launcher3/PagedView;->mDownScrollX:F

    .line 1456
    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1457
    iput v3, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1458
    invoke-direct {p0, p0, v0, v3}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1459
    aget v3, v0, v2

    iput v3, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1460
    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1461
    iput v5, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1462
    iput v5, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1463
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1470
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->getFinalX()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherScroller;->getCurrX()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1471
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_d8

    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    div-int/lit8 v0, v0, 0x3

    if-lt v3, v0, :cond_d8

    move v0, v2

    .line 1472
    :goto_b3
    if-eqz v0, :cond_da

    invoke-static {p0, v3}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isDistZeroChecked(Lcom/android/launcher3/PagedView;I)Z

    move-result v0

    if-eqz v0, :cond_da

    move v0, v1

    .line 1474
    :goto_bc
    if-eqz v0, :cond_dc

    .line 1475
    iput v2, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1476
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v0, :cond_1a

    .line 1477
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 1478
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndMoving()V

    goto/16 :goto_1a

    :cond_d8
    move v0, v1

    .line 1471
    goto :goto_b3

    :cond_da
    move v0, v2

    .line 1472
    goto :goto_bc

    .line 1481
    :cond_dc
    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    float-to-int v0, v0

    iget v3, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 1482
    iput v1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    goto/16 :goto_1a

    .line 1484
    :cond_ec
    iput v2, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    goto/16 :goto_1a

    .line 1492
    :pswitch_f0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-eq v0, v1, :cond_f9

    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1a

    .line 1493
    :cond_f9
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1a

    .line 1498
    :pswitch_fe
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v1, :cond_105

    .line 1499
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1502
    :cond_105
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto/16 :goto_1a

    .line 1506
    :pswitch_10a
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1507
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1a

    :cond_112
    move v0, v2

    .line 1515
    goto/16 :goto_10

    .line 1411
    nop

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_66
        :pswitch_f0
        :pswitch_20
        :pswitch_fe
        :pswitch_1a
        :pswitch_1a
        :pswitch_10a
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 20

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 976
    :cond_6
    :goto_6
    return-void

    .line 859
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    .line 861
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v9

    .line 862
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetY()I

    move-result v5

    .line 865
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 867
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_ba

    add-int/lit8 v0, v3, -0x1

    move v1, v0

    .line 868
    :goto_1f
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_be

    const/4 v0, -0x1

    move v2, v0

    .line 869
    :goto_25
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_c1

    const/4 v0, -0x1

    move v4, v0

    .line 871
    :goto_2b
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingBottom()I

    move-result v6

    add-int v10, v0, v6

    .line 873
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 876
    iget-boolean v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v0, :cond_c5

    const/4 v0, 0x0

    :goto_44
    add-int v7, v9, v0

    .line 877
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_4e

    iget v0, p0, Lcom/android/launcher3/PagedView;->mChildCountOnLastLayout:I

    if-eq v3, v0, :cond_52

    .line 878
    :cond_4e
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    :cond_52
    move v8, v1

    .line 881
    :goto_53
    if-ne v8, v2, :cond_cb

    .line 925
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mChildAddedOrRemoved:Z

    if-eqz v0, :cond_6b

    .line 926
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateFreescrollBounds()V

    .line 927
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mChildAddedOrRemoved:Z

    .line 929
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 930
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndMoving()V

    .line 934
    :cond_6b
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 937
    if-eqz v0, :cond_15c

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 938
    new-instance v1, Lcom/android/launcher3/PagedView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/PagedView$1;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 958
    :goto_7f
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-eqz v0, :cond_91

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_91

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ge v0, v3, :cond_91

    .line 959
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 963
    :cond_91
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_ac

    iget v0, p0, Lcom/android/launcher3/PagedView;->mChildCountOnLastLayout:I

    if-eq v0, v3, :cond_ac

    .line 964
    iget v0, p0, Lcom/android/launcher3/PagedView;->mRestorePage:I

    const/16 v1, -0x3e9

    if-eq v0, v1, :cond_161

    .line 965
    iget v0, p0, Lcom/android/launcher3/PagedView;->mRestorePage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 966
    const/16 v0, -0x3e9

    iput v0, p0, Lcom/android/launcher3/PagedView;->mRestorePage:I

    .line 971
    :cond_ac
    :goto_ac
    iput v3, p0, Lcom/android/launcher3/PagedView;->mChildCountOnLastLayout:I

    .line 973
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 974
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    goto/16 :goto_6

    .line 867
    :cond_ba
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_1f

    :cond_be
    move v2, v3

    .line 868
    goto/16 :goto_25

    .line 869
    :cond_c1
    const/4 v0, 0x1

    move v4, v0

    goto/16 :goto_2b

    .line 876
    :cond_c5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v0

    goto/16 :goto_44

    .line 882
    :cond_cb
    invoke-virtual {p0, v8}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 883
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_16c

    .line 884
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 886
    iget-boolean v1, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v1, :cond_124

    move v1, v5

    .line 895
    :cond_e2
    :goto_e2
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 896
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 900
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v7

    add-int/2addr v12, v1

    .line 899
    invoke-virtual {v6, v7, v1, v13, v12}, Landroid/view/View;->layout(IIII)V

    .line 902
    iget-boolean v1, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v1, :cond_14a

    const/4 v1, 0x0

    .line 903
    :goto_f8
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    sub-int v1, v7, v1

    sub-int/2addr v1, v9

    aput v1, v6, v8

    .line 905
    iget v6, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 906
    add-int v1, v8, v4

    .line 907
    if-eq v1, v2, :cond_14f

    .line 908
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 915
    :goto_10f
    iget-boolean v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v0, :cond_151

    .line 916
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v0

    .line 921
    :goto_117
    add-int/2addr v0, v11

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildGap()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    .line 881
    :goto_11e
    add-int v1, v8, v4

    move v8, v1

    move v7, v0

    goto/16 :goto_53

    .line 889
    :cond_124
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v5

    iget-object v11, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v11

    .line 890
    iget-boolean v11, p0, Lcom/android/launcher3/PagedView;->mCenterPagesVertically:Z

    if-eqz v11, :cond_e2

    .line 891
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportHeight()I

    move-result v11

    iget-object v12, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v10

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v1, v11

    goto :goto_e2

    .line 902
    :cond_14a
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    goto :goto_f8

    .line 910
    :cond_14f
    const/4 v1, 0x0

    goto :goto_10f

    .line 917
    :cond_151
    if-eqz v1, :cond_16a

    iget-boolean v0, v1, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v0, :cond_16a

    .line 918
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v0

    goto :goto_117

    .line 955
    :cond_15c
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateMaxScrollX()V

    goto/16 :goto_7f

    .line 968
    :cond_161
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto/16 :goto_ac

    :cond_16a
    move v0, v6

    goto :goto_117

    :cond_16c
    move v0, v7

    goto :goto_11e
.end method

.method protected onMeasure(II)V
    .registers 16

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 746
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 850
    :goto_9
    return-void

    .line 752
    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 753
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 754
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 755
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 758
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 759
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    .line 760
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    .line 759
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 762
    const/high16 v1, 0x40000000    # 2.0f

    int-to-float v3, v0

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 763
    const/high16 v3, 0x40000000    # 2.0f

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 765
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mUseMinScale:Z

    if-eqz v3, :cond_67

    .line 766
    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinScale:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 767
    int-to-float v0, v0

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinScale:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    move v3, v1

    move v1, v0

    .line 772
    :goto_58
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 774
    if-eqz v5, :cond_63

    if-nez v6, :cond_6a

    .line 775
    :cond_63
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_9

    :cond_67
    move v1, v2

    move v3, v4

    .line 770
    goto :goto_58

    .line 780
    :cond_6a
    if-lez v4, :cond_6e

    if-gtz v2, :cond_72

    .line 781
    :cond_6e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_9

    .line 790
    :cond_72
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingBottom()I

    move-result v2

    add-int v9, v0, v2

    .line 791
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v2

    add-int v10, v0, v2

    .line 793
    const/4 v4, 0x0

    .line 801
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v11

    .line 802
    const/4 v0, 0x0

    move v8, v0

    :goto_8d
    if-lt v8, v11, :cond_94

    .line 849
    invoke-virtual {p0, v3, v1}, Lcom/android/launcher3/PagedView;->setMeasuredDimension(II)V

    goto/16 :goto_9

    .line 804
    :cond_94
    invoke-virtual {p0, v8}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v12

    .line 805
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_112

    .line 806
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 813
    iget-boolean v2, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-nez v2, :cond_f5

    .line 814
    iget v2, v0, Lcom/android/launcher3/PagedView$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_ef

    .line 815
    const/high16 v2, -0x80000000

    .line 820
    :goto_b1
    iget v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v0, v5, :cond_f2

    .line 821
    const/high16 v0, -0x80000000

    .line 826
    :goto_b8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v5

    sub-int/2addr v5, v10

    .line 827
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 826
    sub-int/2addr v5, v6

    .line 827
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 826
    sub-int v6, v5, v6

    .line 828
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportHeight()I

    move-result v5

    sub-int/2addr v5, v9

    .line 829
    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 828
    sub-int/2addr v5, v7

    .line 829
    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 828
    sub-int/2addr v5, v7

    .line 830
    iput v5, p0, Lcom/android/launcher3/PagedView;->mNormalChildHeight:I

    move v7, v2

    move v2, v6

    move v6, v0

    .line 838
    :goto_dc
    if-nez v4, :cond_110

    move v0, v2

    .line 843
    :goto_df
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 845
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 846
    invoke-virtual {v12, v2, v4}, Landroid/view/View;->measure(II)V

    .line 802
    :goto_ea
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v4, v0

    goto :goto_8d

    .line 817
    :cond_ef
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_b1

    .line 823
    :cond_f2
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_b8

    .line 832
    :cond_f5
    const/high16 v6, 0x40000000    # 2.0f

    .line 833
    const/high16 v5, 0x40000000    # 2.0f

    .line 835
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v2

    .line 836
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportHeight()I

    move-result v0

    move v7, v6

    move v6, v5

    move v5, v0

    goto :goto_dc

    :cond_110
    move v0, v4

    goto :goto_df

    :cond_112
    move v0, v4

    goto :goto_ea
.end method

.method protected onPageBeginMoving()V
    .registers 1

    .prologue
    .line 542
    return-void
.end method

.method protected onPageEndMoving()V
    .registers 2

    .prologue
    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 547
    return-void
.end method

.method onPostReorderingAnimationCompleted()V
    .registers 2

    .prologue
    .line 2322
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2323
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 2324
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_16

    .line 2325
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2328
    :cond_16
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5

    .prologue
    .line 1265
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 1266
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1270
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1271
    if-eqz v0, :cond_15

    .line 1272
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 1274
    :goto_11
    return v0

    .line 1268
    :cond_12
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_7

    .line 1274
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected onScrollInteractionBegin()V
    .registers 1

    .prologue
    .line 1989
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .registers 1

    .prologue
    .line 1992
    return-void
.end method

.method public onStartReordering()V
    .registers 2

    .prologue
    .line 2312
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 2313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsReordering:Z

    .line 2317
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 2318
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1697
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1700
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_13

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 1972
    :cond_12
    :goto_12
    return v9

    .line 1702
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1704
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1706
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_312

    :pswitch_1f
    goto :goto_12

    .line 1712
    :pswitch_20
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1713
    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1717
    :cond_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 1718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 1719
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownScrollX:F

    .line 1720
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1721
    aget v1, v0, v4

    iput v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1722
    aget v0, v0, v9

    iput v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1723
    iput v2, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1724
    iput v2, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1725
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1727
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v9, :cond_12

    .line 1728
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    .line 1729
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginMoving()V

    goto :goto_12

    .line 1734
    :pswitch_67
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v9, :cond_b3

    .line 1736
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1738
    if-eq v0, v3, :cond_12

    .line 1741
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPredictionX(Lcom/android/launcher3/PagedView;Landroid/view/MotionEvent;)F

    move-result v0

    .line 1742
    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v2, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v0

    .line 1744
    iget v2, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1749
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_ae

    .line 1750
    iget v2, p0, Lcom/android/launcher3/PagedView;->mTouchX:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/PagedView;->mTouchX:F

    .line 1751
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/PagedView;->mSmoothingTime:F

    .line 1752
    float-to-int v2, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/PagedView;->scrollBy(II)V

    .line 1753
    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1754
    float-to-int v0, v1

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_12

    .line 1756
    :cond_ae
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->awakenScrollBars()Z

    goto/16 :goto_12

    .line 1758
    :cond_b3
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v5, :cond_131

    .line 1760
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1765
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1766
    aget v1, v0, v4

    iput v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1767
    aget v0, v0, v9

    iput v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1768
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1771
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1778
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNearestHoverOverPageIndex()I

    move-result v1

    .line 1779
    if-le v1, v3, :cond_128

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v1, v2, :cond_128

    .line 1780
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aput v4, v2, v4

    .line 1781
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v9

    .line 1782
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1783
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-gt v2, v1, :cond_12

    .line 1784
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v9

    if-gt v1, v2, :cond_12

    .line 1785
    iget v2, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    if-eq v1, v2, :cond_12

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1786
    iput v1, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 1787
    new-instance v2, Lcom/android/launcher3/PagedView$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher3/PagedView$2;-><init>(Lcom/android/launcher3/PagedView;II)V

    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1837
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    sget v1, Lcom/android/launcher3/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher3/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_12

    .line 1840
    :cond_128
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1841
    iput v3, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_12

    .line 1844
    :cond_131
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_12

    .line 1849
    :pswitch_136
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v9, :cond_291

    .line 1850
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1851
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1853
    if-eq v1, v3, :cond_12

    .line 1856
    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_14e

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-gez v2, :cond_173

    .line 1857
    :cond_14e
    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-object v3, Lcom/android/launcher3/PagedView;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, p0, p0, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    :try_start_168
    iput v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I
    :try_end_16a
    .catch Ljava/lang/Throwable; {:try_start_168 .. :try_end_16a} :catch_218

    nop

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$7$ebce283(Lorg/aspectj/lang/JoinPoint;)V

    nop

    .line 1859
    :cond_173
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1860
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1861
    const/16 v3, 0x3e8

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1862
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v5, v0

    .line 1863
    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    sub-float v0, v1, v0

    float-to-int v3, v0

    .line 1864
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1865
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v6, v2

    .line 1866
    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    .line 1865
    cmpl-float v0, v0, v6

    if-lez v0, :cond_221

    move v0, v9

    .line 1868
    :goto_1a4
    iget v6, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    iget v7, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v8, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v7, v8

    sub-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v6

    iput v1, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1870
    iget v1, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    const/high16 v6, 0x41c80000    # 25.0f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_223

    .line 1871
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    .line 1870
    if-le v1, v6, :cond_223

    move v1, v9

    .line 1873
    :goto_1c5
    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v6, :cond_25b

    .line 1878
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v7

    cmpl-float v2, v6, v2

    if-lez v2, :cond_30f

    .line 1879
    int-to-float v2, v5

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v6, v3

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_30f

    if-eqz v1, :cond_30f

    move v2, v9

    .line 1887
    :goto_1e8
    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_227

    if-lez v3, :cond_225

    move v3, v9

    .line 1888
    :goto_1ef
    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_22d

    if-lez v5, :cond_1f6

    move v4, v9

    .line 1889
    :cond_1f6
    :goto_1f6
    if-eqz v0, :cond_1fc

    if-nez v3, :cond_1fc

    if-eqz v1, :cond_200

    .line 1890
    :cond_1fc
    if-eqz v1, :cond_236

    if-nez v4, :cond_236

    :cond_200
    iget v6, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v6, :cond_236

    .line 1891
    if-eqz v2, :cond_231

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 1892
    :goto_208
    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)V

    .line 1915
    :goto_20b
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1954
    :cond_20e
    :goto_20e
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1956
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto/16 :goto_12

    .line 1857
    :catch_218
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$7$ebce283(Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    :cond_221
    move v0, v4

    .line 1865
    goto :goto_1a4

    :cond_223
    move v1, v4

    .line 1870
    goto :goto_1c5

    :cond_225
    move v3, v4

    .line 1887
    goto :goto_1ef

    :cond_227
    if-gez v3, :cond_22b

    move v3, v9

    goto :goto_1ef

    :cond_22b
    move v3, v4

    goto :goto_1ef

    .line 1888
    :cond_22d
    if-gez v5, :cond_1f6

    move v4, v9

    goto :goto_1f6

    .line 1891
    :cond_231
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_208

    .line 1893
    :cond_236
    if-eqz v0, :cond_23c

    if-eqz v3, :cond_23c

    if-eqz v1, :cond_240

    .line 1894
    :cond_23c
    if-eqz v1, :cond_257

    if-eqz v4, :cond_257

    .line 1895
    :cond_240
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_257

    .line 1896
    if-eqz v2, :cond_252

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 1897
    :goto_24e
    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_20b

    .line 1896
    :cond_252
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_24e

    .line 1899
    :cond_257
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto :goto_20b

    .line 1902
    :cond_25b
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_266

    .line 1903
    invoke-virtual {p0, v9}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1906
    :cond_266
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v0

    .line 1907
    neg-int v1, v5

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v3, v1

    .line 1908
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 1910
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1911
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 1912
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v2

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v7, v4

    move v8, v4

    .line 1911
    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/LauncherScroller;->fling(IIIIIIII)V

    .line 1913
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    goto/16 :goto_20b

    .line 1916
    :cond_291
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2ac

    .line 1920
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1921
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_2a7

    .line 1922
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    goto/16 :goto_20e

    .line 1924
    :cond_2a7
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto/16 :goto_20e

    .line 1926
    :cond_2ac
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2cd

    .line 1930
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1931
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_2c8

    .line 1932
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    goto/16 :goto_20e

    .line 1934
    :cond_2c8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto/16 :goto_20e

    .line 1936
    :cond_2cd
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v5, :cond_2f2

    .line 1938
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1939
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1943
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1944
    aget v1, v0, v4

    iput v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1945
    aget v0, v0, v9

    iput v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1946
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    goto/16 :goto_20e

    .line 1948
    :cond_2f2
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mCancelTap:Z

    if-nez v0, :cond_20e

    .line 1949
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_20e

    .line 1960
    :pswitch_2fb
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v9, :cond_302

    .line 1961
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1963
    :cond_302
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto/16 :goto_12

    .line 1967
    :pswitch_307
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1968
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_12

    :cond_30f
    move v2, v4

    goto/16 :goto_1e8

    .line 1706
    :pswitch_data_312
    .packed-switch 0x0
        :pswitch_20
        :pswitch_136
        :pswitch_67
        :pswitch_2fb
        :pswitch_1f
        :pswitch_1f
        :pswitch_307
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 1995
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->onClick(Landroid/view/View;)V

    .line 1996
    return-void
.end method

.method protected overScroll(F)V
    .registers 2

    .prologue
    .line 1632
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->dampedOverScroll(F)V

    .line 1633
    return-void
.end method

.method protected pageBeginMoving()V
    .registers 2

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_a

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageMoving:Z

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageBeginMoving()V

    .line 527
    :cond_a
    return-void
.end method

.method protected pageEndMoving()V
    .registers 2

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_a

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageMoving:Z

    .line 532
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageEndMoving()V

    .line 534
    :cond_a
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 2447
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2464
    :goto_7
    return v0

    .line 2450
    :cond_8
    sparse-switch p1, :sswitch_data_28

    .line 2464
    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    .line 2452
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    .line 2453
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    goto :goto_7

    .line 2458
    :sswitch_1d
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_b

    .line 2459
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    goto :goto_7

    .line 2450
    nop

    :sswitch_data_28
    .sparse-switch
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_1d
    .end sparse-switch
.end method

.method public performLongClick()Z
    .registers 2

    .prologue
    .line 2256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mCancelTap:Z

    .line 2257
    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public removeAllViewsInLayout()V
    .registers 3

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    if-eqz v0, :cond_a

    .line 1061
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PageIndicator;->removeAllMarkers(Z)V

    .line 1064
    :cond_a
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1065
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1039
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->removeMarkerForView(I)V

    .line 1040
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1041
    return-void
.end method

.method public removeViewAt(I)V
    .registers 2

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->removeMarkerForView(I)V

    .line 1054
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1055
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->removeMarkerForView(I)V

    .line 1047
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1048
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 2065
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2066
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexToPage(I)I

    move-result v0

    .line 2067
    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 2068
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 2070
    :cond_1c
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexToPage(I)I

    move-result v0

    .line 1255
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1256
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1257
    const/4 v0, 0x1

    .line 1259
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    .prologue
    .line 1344
    if-eqz p1, :cond_16

    .line 1347
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1348
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1350
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 1351
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1352
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1355
    :cond_16
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1356
    return-void
.end method

.method protected screenScrolled(I)V
    .registers 2

    .prologue
    .line 1000
    return-void
.end method

.method public scrollBy(II)V
    .registers 5

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 574
    return-void
.end method

.method public scrollLeft()V
    .registers 2

    .prologue
    .line 2233
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 2234
    :cond_f
    return-void
.end method

.method public scrollRight()V
    .registers 3

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 2238
    :cond_15
    return-void
.end method

.method public scrollTo(II)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 579
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_25

    .line 582
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_19

    .line 583
    iget v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    if-gt p1, v0, :cond_16

    iget v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    if-ge p1, v0, :cond_19

    .line 584
    :cond_16
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->forceFinishScroller()V

    .line 587
    :cond_19
    iget v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 588
    iget v3, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 591
    :cond_25
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_7c

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_7a

    move v0, v1

    .line 592
    :goto_2e
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_84

    if-gez p1, :cond_82

    move v3, v1

    .line 593
    :goto_35
    if-eqz v0, :cond_93

    .line 594
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_8c

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    :goto_3d
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 595
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_52

    .line 596
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 597
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_8e

    .line 598
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    .line 621
    :cond_52
    :goto_52
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchX:F

    .line 622
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v0, v4

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/PagedView;->mSmoothingTime:F

    .line 625
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 626
    iget v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    iget v3, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v0, v3}, Lcom/android/launcher3/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 627
    aget v2, v0, v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 628
    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 629
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 631
    :cond_79
    return-void

    :cond_7a
    move v0, v2

    .line 591
    goto :goto_2e

    :cond_7c
    if-gez p1, :cond_80

    move v0, v1

    goto :goto_2e

    :cond_80
    move v0, v2

    goto :goto_2e

    :cond_82
    move v3, v2

    .line 592
    goto :goto_35

    :cond_84
    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-le p1, v3, :cond_8a

    move v3, v1

    goto :goto_35

    :cond_8a
    move v3, v2

    goto :goto_35

    :cond_8c
    move v0, v2

    .line 594
    goto :goto_3d

    .line 600
    :cond_8e
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    goto :goto_52

    .line 603
    :cond_93
    if-eqz v3, :cond_b8

    .line 604
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_ac

    move v0, v2

    :goto_9a
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 605
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_52

    .line 606
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 607
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_af

    .line 608
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    goto :goto_52

    .line 604
    :cond_ac
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    goto :goto_9a

    .line 610
    :cond_af
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    goto :goto_52

    .line 614
    :cond_b8
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    if-eqz v0, :cond_c2

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    .line 616
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 618
    :cond_c2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_52
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3

    .prologue
    .line 2434
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_7

    .line 2435
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 2437
    :cond_7
    return-void
.end method

.method public setCurrentPage(I)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 474
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 475
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 479
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 488
    :goto_12
    return-void

    .line 482
    :cond_13
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mForceScreenScrolled:Z

    .line 483
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    sget-object v1, Lcom/android/launcher3/PagedView;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p0, p0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    :try_start_23
    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_25} :catch_45

    nop

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$7$ebce283(Lorg/aspectj/lang/JoinPoint;)V

    nop

    .line 484
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 486
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener()V

    .line 487
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    goto :goto_12

    .line 483
    :catch_45
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$7$ebce283(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 4

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 270
    return-void
.end method

.method protected setEdgeGlowColor(I)V
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LauncherEdgeEffect;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LauncherEdgeEffect;->setColor(I)V

    .line 265
    return-void
.end method

.method protected setEnableOverscroll(Z)V
    .registers 2

    .prologue
    .line 1671
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 1672
    return-void
.end method

.method public setFullScreenPage(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setFullScreenPage(Lcom/android/launcher3/PagedView;Landroid/view/View;Z)V

    return-void
.end method

.method public setMinScale(F)V
    .registers 3

    .prologue
    .line 346
    iput p1, p0, Lcom/android/launcher3/PagedView;->mMinScale:F

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mUseMinScale:Z

    .line 348
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    .line 349
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 557
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    .line 558
    const/4 v0, 0x0

    :goto_7
    if-lt v0, v1, :cond_d

    .line 561
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 562
    return-void

    .line 559
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public setPageIndicator(Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setPageIndicator(Lcom/android/launcher3/PagedView;Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;)V

    return-void
.end method

.method public setPageSpacing(I)V
    .registers 2

    .prologue
    .line 993
    iput p1, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 994
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    .line 995
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher3/PagedView$PageSwitchListener;)V
    .registers 5

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mPageSwitchListener:Lcom/android/launcher3/PagedView$PageSwitchListener;

    .line 394
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageSwitchListener:Lcom/android/launcher3/PagedView$PageSwitchListener;

    if-eqz v0, :cond_13

    .line 395
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageSwitchListener:Lcom/android/launcher3/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 397
    :cond_13
    return-void
.end method

.method setRestorePage(I)V
    .registers 2

    .prologue
    .line 495
    iput p1, p0, Lcom/android/launcher3/PagedView;->mRestorePage:I

    .line 496
    return-void
.end method

.method public setScaleX(F)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 353
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 354
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 355
    iget v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 356
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 357
    aget v0, v0, v2

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 358
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 360
    :cond_1e
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1140
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected snapToDestination()V
    .registers 3

    .prologue
    .line 2092
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x2ee

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 2093
    return-void
.end method

.method public snapToPage(I)V
    .registers 3

    .prologue
    .line 2155
    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 2156
    return-void
.end method

.method protected snapToPage(II)V
    .registers 5

    .prologue
    .line 2163
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 2164
    return-void
.end method

.method protected snapToPage(III)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    sget-object v0, Lcom/android/launcher3/PagedView;->ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 2184
    invoke-static {}, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->aspectOf()Lcom/lge/launcher3/util/CPUBoostServiceAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->ajc$before$com_lge_launcher3_util_CPUBoostServiceAspect$1$7097dc15(Lorg/aspectj/lang/JoinPoint;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 2185
    return-void
.end method

.method protected snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 2189
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    .line 2191
    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 2192
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 2193
    if-eqz v1, :cond_1c

    iget v3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v0, v3, :cond_1c

    .line 2194
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v1, v0, :cond_1c

    .line 2195
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 2198
    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginMoving()V

    .line 2199
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->awakenScrollBars(I)Z

    .line 2200
    if-eqz p4, :cond_51

    move v5, v2

    .line 2206
    :goto_25
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_30

    .line 2207
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 2210
    :cond_30
    if-eqz p5, :cond_58

    .line 2211
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0, p5}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2219
    :goto_37
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v1

    move v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherScroller;->startScroll(IIIII)V

    .line 2221
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 2224
    if-eqz p4, :cond_4a

    .line 2225
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    .line 2228
    :cond_4a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mForceScreenScrolled:Z

    .line 2229
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 2230
    return-void

    .line 2202
    :cond_51
    if-nez p3, :cond_60

    .line 2203
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_25

    .line 2213
    :cond_58
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_37

    :cond_60
    move v5, p3

    goto :goto_25
.end method

.method protected snapToPage(IILandroid/animation/TimeInterpolator;)V
    .registers 5

    .prologue
    .line 2167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 2168
    return-void
.end method

.method protected snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .registers 11

    .prologue
    .line 2172
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v1

    .line 2174
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    .line 2175
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v2

    sub-int v2, v0, v2

    .line 2177
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v2

    sub-int v2, v0, v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 2180
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 2181
    return-void
.end method

.method public snapToPageImmediately(I)V
    .registers 5

    .prologue
    .line 2159
    const/16 v0, 0x2ee

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 2160
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .registers 9

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2116
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    .line 2117
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 2119
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    .line 2121
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v3

    sub-int v3, v2, v3

    .line 2123
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2128
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_29

    .line 2131
    const/16 v1, 0x2ee

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 2152
    :goto_28
    return-void

    .line 2139
    :cond_29
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    mul-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2140
    int-to-float v4, v1

    int-to-float v1, v1

    .line 2141
    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v3

    mul-float/2addr v1, v3

    .line 2140
    add-float/2addr v1, v4

    .line 2143
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2144
    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2149
    const/high16 v4, 0x447a0000    # 1000.0f

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 2151
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/PagedView;->snapToPage(III)V

    goto :goto_28
.end method

.method public startReordering(Landroid/view/View;)Z
    .registers 8

    .prologue
    const v5, 0x3f933333    # 1.15f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2337
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 2339
    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-nez v3, :cond_10

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    :cond_10
    move v0, v1

    .line 2363
    :goto_11
    return v0

    .line 2341
    :cond_12
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aput v1, v3, v1

    .line 2342
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v0

    .line 2343
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 2344
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    .line 2347
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-gt v3, v2, :cond_41

    .line 2348
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v0

    if-gt v2, v3, :cond_41

    .line 2349
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v3, :cond_43

    .line 2350
    const-string v0, "PagedView"

    const-string v2, "mDragView is already"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    :cond_41
    move v0, v1

    .line 2363
    goto :goto_11

    .line 2354
    :cond_43
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    .line 2355
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2356
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mDragViewBaselineLeft:F

    .line 2357
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 2358
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->disableFreeScroll()V

    .line 2359
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onStartReordering()V

    goto :goto_11
.end method

.method public superDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$superDrawChild(Lcom/android/launcher3/PagedView;Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public superScrollTo(II)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$superScrollTo(Lcom/android/launcher3/PagedView;II)V

    return-void
.end method

.method protected updateCurrentPageScroll()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 433
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_1f

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 434
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    .line 436
    :goto_13
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 437
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherScroller;->setFinalX(I)V

    .line 438
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->forceFinishScroller()V

    .line 439
    return-void

    :cond_1f
    move v0, v1

    goto :goto_13
.end method

.method protected updateDragViewTranslationDuringDrag()V
    .registers 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 334
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mDownScrollX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 335
    iget v1, p0, Lcom/android/launcher3/PagedView;->mDragViewBaselineLeft:F

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 334
    add-float/2addr v0, v1

    .line 336
    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    iget v2, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    sub-float/2addr v1, v2

    .line 337
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 338
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 343
    :cond_2c
    return-void
.end method

.method updateFreescrollBounds()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1644
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1645
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_20

    .line 1646
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    .line 1647
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    .line 1652
    :goto_1f
    return-void

    .line 1649
    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    .line 1650
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    goto :goto_1f
.end method

.method updateMaxScrollX()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher3/PagedView;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 983
    :try_start_7
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    .line 984
    if-lez v2, :cond_22

    .line 985
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_1f

    .line 986
    :goto_11
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_17} :catch_26

    .line 990
    :goto_17
    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$4$d33fbce8(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 985
    :cond_1f
    add-int/lit8 v0, v2, -0x1

    goto :goto_11

    .line 988
    :cond_22
    const/4 v0, 0x0

    :try_start_23
    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_25} :catch_26

    goto :goto_17

    .line 990
    :catch_26
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$4$d33fbce8(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method protected updatePageIndicator()V
    .registers 3

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    if-eqz v0, :cond_1d

    .line 516
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 518
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PageIndicator;->setActiveMarker(I)V

    .line 521
    :cond_1d
    return-void
.end method

.method protected validateNewPage(I)I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 460
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_1b

    .line 461
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 462
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v3

    .line 463
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 462
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 466
    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 467
    return v0
.end method
