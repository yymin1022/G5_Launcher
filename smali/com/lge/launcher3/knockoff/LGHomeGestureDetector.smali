.class public Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;
.super Ljava/lang/Object;
.source "LGHomeGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;,
        Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;,
        Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;,
        Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$SimpleOnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 199
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->LONGPRESS_TIMEOUT:I

    .line 200
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->TAP_TIMEOUT:I

    .line 201
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    sput v0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;)V
    .registers 4

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;-><init>(Landroid/content/Context;Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 6

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_f
    iput-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 353
    if-eqz p3, :cond_2b

    .line 354
    new-instance v0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;-><init>(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    .line 358
    :goto_1a
    iput-object p2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;

    .line 359
    instance-of v0, p2, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_25

    .line 360
    check-cast p2, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->setOnDoubleTapListener(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;)V

    .line 362
    :cond_25
    invoke-direct {p0, p1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->init(Landroid/content/Context;)V

    .line 363
    return-void

    .line 242
    :cond_29
    const/4 v0, 0x0

    goto :goto_f

    .line 356
    :cond_2b
    new-instance v0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;-><init>(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)V

    iput-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_1a
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .registers 5

    .prologue
    .line 382
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;-><init>(Landroid/content/Context;Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 383
    return-void
.end method

.method public constructor <init>(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 315
    invoke-direct {p0, v0, p1, v0}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;-><init>(Landroid/content/Context;Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 316
    return-void
.end method

.method public constructor <init>(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;-><init>(Landroid/content/Context;Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 296
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)Landroid/view/MotionEvent;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)V
    .registers 1

    .prologue
    .line 691
    invoke-direct {p0}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$3(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDoubleTapListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)Z
    .registers 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 651
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 652
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 653
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 656
    iput-boolean v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mIsDoubleTapping:Z

    .line 657
    iput-boolean v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mStillDown:Z

    .line 658
    iput-boolean v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mAlwaysInTapRegion:Z

    .line 659
    iput-boolean v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 660
    iget-boolean v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_29

    .line 661
    iput-boolean v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInLongPress:Z

    .line 663
    :cond_29
    return-void
.end method

.method private cancelTaps()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 666
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 669
    iput-boolean v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mIsDoubleTapping:Z

    .line 670
    iput-boolean v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mAlwaysInTapRegion:Z

    .line 671
    iput-boolean v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 672
    iget-boolean v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_1f

    .line 673
    iput-boolean v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInLongPress:Z

    .line 675
    :cond_1f
    return-void
.end method

.method private dispatchLongPress()V
    .registers 3

    .prologue
    .line 692
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInLongPress:Z

    .line 694
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;

    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 695
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;

    if-nez v0, :cond_c

    .line 387
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mIsLongpressEnabled:Z

    .line 395
    if-nez p1, :cond_31

    .line 397
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    .line 399
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    .line 402
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mMinimumFlingVelocity:I

    .line 403
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mMaximumFlingVelocity:I

    move v2, v0

    .line 420
    :goto_26
    mul-int/2addr v2, v2

    iput v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mTouchSlopSquare:I

    .line 421
    mul-int/2addr v0, v0

    iput v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 422
    mul-int v0, v1, v1

    iput v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDoubleTapSlopSquare:I

    .line 423
    return-void

    .line 405
    :cond_31
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 406
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 407
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v1

    .line 409
    const-string v0, "sys.knockon.knockoff.distance"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 410
    if-nez v0, :cond_5a

    .line 411
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    .line 416
    :goto_4a
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mMinimumFlingVelocity:I

    .line 417
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mMaximumFlingVelocity:I

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_26

    .line 413
    :cond_5a
    invoke-static {p1, v0}, Lcom/lge/launcher3/util/WindowUtils;->getRealMillimeterPixel(Landroid/content/Context;I)I

    move-result v0

    goto :goto_4a
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 678
    iget-boolean v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v1, :cond_6

    .line 688
    :cond_5
    :goto_5
    return v0

    .line 682
    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v1, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 688
    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDoubleTapSlopSquare:I

    if-ge v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private processTouchDown(Landroid/view/MotionEvent;FFZ)Z
    .registers 13

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x3

    const/4 v6, 0x1

    .line 538
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDoubleTapListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_3b

    .line 539
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 540
    if-eqz v0, :cond_14

    .line 541
    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    :cond_14
    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_8e

    if-eqz v0, :cond_8e

    .line 544
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v0, v1, p1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 546
    iput-boolean v6, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mIsDoubleTapping:Z

    .line 548
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDoubleTapListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;

    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, p4

    .line 550
    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDoubleTapListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;

    invoke-interface {v1, p1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int p4, v0, v1

    .line 557
    :cond_3b
    :goto_3b
    iput p2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mLastFocusX:F

    iput p2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDownFocusX:F

    .line 558
    iput p3, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mLastFocusY:F

    iput p3, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDownFocusY:F

    .line 559
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_4c

    .line 560
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 562
    :cond_4c
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 563
    iput-boolean v6, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mAlwaysInTapRegion:Z

    .line 564
    iput-boolean v6, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 565
    iput-boolean v6, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mStillDown:Z

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInLongPress:Z

    .line 568
    iget-boolean v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mIsLongpressEnabled:Z

    if-eqz v0, :cond_77

    .line 569
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 570
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget v1, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->TAP_TIMEOUT:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 571
    sget v1, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 570
    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 573
    :cond_77
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget v1, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->TAP_TIMEOUT:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 574
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, p4

    .line 575
    return v0

    .line 553
    :cond_8e
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3b
.end method

.method private processTouchMove(Landroid/view/MotionEvent;FFZ)Z
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 580
    iget v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mLastFocusX:F

    sub-float/2addr v0, p2

    .line 581
    iget v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mLastFocusY:F

    sub-float/2addr v1, p3

    .line 582
    iget-boolean v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mIsDoubleTapping:Z

    if-eqz v2, :cond_15

    .line 584
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDoubleTapListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr p4, v0

    .line 606
    :cond_14
    :goto_14
    return p4

    .line 585
    :cond_15
    iget-boolean v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v2, :cond_51

    .line 586
    iget v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDownFocusX:F

    sub-float v2, p2, v2

    float-to-int v2, v2

    .line 587
    iget v3, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDownFocusY:F

    sub-float v3, p3, v3

    float-to-int v3, v3

    .line 588
    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v2, v3

    .line 589
    iget v3, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mTouchSlopSquare:I

    if-le v2, v3, :cond_4a

    .line 590
    iget-object v3, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;

    iget-object v4, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4, p1, v0, v1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p4

    .line 591
    iput p2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mLastFocusX:F

    .line 592
    iput p3, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mLastFocusY:F

    .line 593
    iput-boolean v5, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mAlwaysInTapRegion:Z

    .line 594
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 595
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 596
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    :cond_4a
    iget v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDoubleTapTouchSlopSquare:I

    if-le v2, v0, :cond_14

    .line 599
    iput-boolean v5, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto :goto_14

    .line 601
    :cond_51
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-gez v2, :cond_61

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_14

    .line 602
    :cond_61
    iget-object v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;

    iget-object v3, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3, p1, v0, v1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p4

    .line 603
    iput p2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mLastFocusX:F

    .line 604
    iput p3, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mLastFocusY:F

    goto :goto_14
.end method

.method private processTouchUp(Landroid/view/MotionEvent;Z)Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 610
    iput-boolean v5, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mStillDown:Z

    .line 611
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 612
    iget-boolean v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mIsDoubleTapping:Z

    if-eqz v1, :cond_38

    .line 614
    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDoubleTapListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;

    invoke-interface {v1, p1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr p2, v1

    .line 633
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1b

    .line 634
    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 637
    :cond_1b
    iput-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 638
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_29

    .line 641
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 644
    :cond_29
    iput-boolean v5, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mIsDoubleTapping:Z

    .line 645
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 646
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    return p2

    .line 615
    :cond_38
    iget-boolean v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInLongPress:Z

    if-eqz v1, :cond_45

    .line 616
    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 617
    iput-boolean v5, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInLongPress:Z

    goto :goto_12

    .line 618
    :cond_45
    iget-boolean v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v1, :cond_50

    .line 619
    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;

    invoke-interface {v1, p1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p2

    goto :goto_12

    .line 623
    :cond_50
    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 624
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 625
    const/16 v3, 0x3e8

    iget v4, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 626
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    .line 627
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    .line 629
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mMinimumFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_7c

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mMinimumFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_12

    .line 630
    :cond_7c
    iget-object v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;

    iget-object v4, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v4, p1, v1, v3}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p2

    goto :goto_12
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .registers 2

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 463
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_b

    .line 464
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 467
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 469
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_19

    .line 470
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 472
    :cond_19
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 474
    and-int/lit16 v0, v7, 0xff

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4e

    const/4 v0, 0x1

    move v6, v0

    .line 475
    :goto_25
    if-eqz v6, :cond_50

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 480
    :goto_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    move v5, v3

    move v2, v1

    .line 481
    :goto_31
    if-lt v5, v4, :cond_52

    .line 488
    if-eqz v6, :cond_62

    add-int/lit8 v0, v4, -0x1

    .line 489
    :goto_37
    int-to-float v4, v0

    div-float/2addr v2, v4

    .line 490
    int-to-float v0, v0

    div-float v0, v1, v0

    .line 494
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_96

    :pswitch_41
    move v0, v3

    .line 530
    :goto_42
    if-nez v0, :cond_4d

    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4d

    .line 531
    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 533
    :cond_4d
    return v0

    :cond_4e
    move v6, v3

    .line 474
    goto :goto_25

    .line 475
    :cond_50
    const/4 v0, -0x1

    goto :goto_2b

    .line 482
    :cond_52
    if-ne v0, v5, :cond_57

    .line 481
    :goto_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 485
    :cond_57
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v2, v8

    .line 486
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v1, v8

    goto :goto_54

    :cond_62
    move v0, v4

    .line 488
    goto :goto_37

    .line 496
    :pswitch_64
    iput v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mLastFocusX:F

    iput v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDownFocusX:F

    .line 497
    iput v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mLastFocusY:F

    iput v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDownFocusY:F

    .line 499
    invoke-direct {p0}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->cancelTaps()V

    move v0, v3

    .line 500
    goto :goto_42

    .line 503
    :pswitch_71
    iput v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mLastFocusX:F

    iput v2, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDownFocusX:F

    .line 504
    iput v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mLastFocusY:F

    iput v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDownFocusY:F

    move v0, v3

    .line 505
    goto :goto_42

    .line 508
    :pswitch_7b
    invoke-direct {p0, p1, v2, v0, v3}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->processTouchDown(Landroid/view/MotionEvent;FFZ)Z

    move-result v0

    goto :goto_42

    .line 512
    :pswitch_80
    iget-boolean v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mInLongPress:Z

    if-eqz v1, :cond_86

    move v0, v3

    .line 513
    goto :goto_42

    .line 515
    :cond_86
    invoke-direct {p0, p1, v2, v0, v3}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->processTouchMove(Landroid/view/MotionEvent;FFZ)Z

    move-result v0

    goto :goto_42

    .line 519
    :pswitch_8b
    invoke-direct {p0, p1, v3}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->processTouchUp(Landroid/view/MotionEvent;Z)Z

    move-result v0

    goto :goto_42

    .line 523
    :pswitch_90
    invoke-direct {p0}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->cancel()V

    move v0, v3

    .line 524
    goto :goto_42

    .line 494
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_8b
        :pswitch_80
        :pswitch_90
        :pswitch_41
        :pswitch_64
        :pswitch_71
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .registers 2

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mIsLongpressEnabled:Z

    .line 445
    return-void
.end method

.method public setOnDoubleTapListener(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;)V
    .registers 2

    .prologue
    .line 432
    iput-object p1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->mDoubleTapListener:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;

    .line 433
    return-void
.end method
