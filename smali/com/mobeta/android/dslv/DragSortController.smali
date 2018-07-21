.class public Lcom/mobeta/android/dslv/DragSortController;
.super Lcom/mobeta/android/dslv/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static final CLICK_REMOVE:I = 0x0

.field public static final FLING_REMOVE:I = 0x1

.field public static final MISS:I = -0x1

.field public static final ON_DOWN:I = 0x0

.field public static final ON_DRAG:I = 0x1

.field public static final ON_LONG_PRESS:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCanDrag:Z

.field private mClickRemoveHitPos:I

.field private mClickRemoveId:I

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcom/mobeta/android/dslv/DragSortListView;

.field private mFlingHandleId:I

.field private mFlingHitPos:I

.field private mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mIsRemoving:Z

.field private mItemX:I

.field private mItemY:I

.field private mPositionX:I

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/mobeta/android/dslv/DragSortController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobeta/android/dslv/DragSortController;->TAG:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;III)V
    .registers 11

    .prologue
    .line 99
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIII)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;IIII)V
    .registers 13

    .prologue
    .line 103
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V
    .registers 11

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 32
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    .line 47
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    .line 48
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 59
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    .line 60
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    .line 62
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    .line 72
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    .line 74
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingSpeed:F

    .line 452
    new-instance v0, Lcom/mobeta/android/dslv/DragSortController$1;

    invoke-direct {v0, p0}, Lcom/mobeta/android/dslv/DragSortController$1;-><init>(Lcom/mobeta/android/dslv/DragSortController;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 116
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 117
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 118
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    .line 119
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 120
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    .line 121
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    .line 122
    iput p5, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    .line 123
    iput p6, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHandleId:I

    .line 124
    invoke-virtual {p0, p4}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveMode(I)V

    .line 125
    invoke-virtual {p0, p3}, Lcom/mobeta/android/dslv/DragSortController;->setDragInitMode(I)V

    .line 126
    return-void
.end method

.method static synthetic access$0(Lcom/mobeta/android/dslv/DragSortController;)Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/mobeta/android/dslv/DragSortController;)Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    return v0
.end method

.method static synthetic access$2(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mobeta/android/dslv/DragSortController;)F
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingSpeed:F

    return v0
.end method

.method static synthetic access$4(Lcom/mobeta/android/dslv/DragSortController;)I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    return v0
.end method

.method static synthetic access$5(Lcom/mobeta/android/dslv/DragSortController;Z)V
    .registers 2

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    return-void
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .registers 3

    .prologue
    .line 316
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .registers 3

    .prologue
    .line 320
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getDragInitMode()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    return v0
.end method

.method public getRemoveMode()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    return v0
.end method

.method public isRemoveEnabled()Z
    .registers 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method public isSortEnabled()Z
    .registers 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 363
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_12

    .line 364
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 367
    :cond_12
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    .line 368
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_36

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-nez v0, :cond_36

    .line 369
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    .line 372
    :cond_36
    iput-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 373
    iput-boolean v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mCanDrag:Z

    .line 374
    iput v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    .line 375
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    .line 377
    return v5
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v0, :cond_c

    .line 280
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    .line 282
    :cond_c
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 6

    .prologue
    .line 422
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 423
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->performHapticFeedback(I)Z

    .line 424
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrX:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrY:I

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    .line 426
    :cond_1f
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 15

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 383
    if-eqz p1, :cond_7

    if-nez p2, :cond_26

    .line 384
    :cond_7
    sget-object v0, Lcom/mobeta/android/dslv/DragSortController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScroll() MotionEvent is null e1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " e2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_25
    :goto_25
    return v8

    .line 388
    :cond_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 390
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 392
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int v4, v2, v4

    .line 393
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int v5, v3, v5

    .line 395
    iget-boolean v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mCanDrag:Z

    if-eqz v6, :cond_25

    iget-boolean v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    if-nez v6, :cond_25

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    if-ne v6, v7, :cond_52

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_25

    .line 396
    :cond_52
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    if-eq v6, v7, :cond_88

    .line 397
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-ne v6, v9, :cond_6e

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le v1, v3, :cond_6e

    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v1, :cond_6e

    .line 398
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    goto :goto_25

    .line 400
    :cond_6e
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-eqz v1, :cond_25

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le v0, v1, :cond_25

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_25

    .line 402
    iput-boolean v9, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 403
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    goto :goto_25

    .line 405
    :cond_88
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_25

    .line 406
    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le v0, v2, :cond_a2

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_a2

    .line 407
    iput-boolean v9, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 408
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    goto :goto_25

    .line 409
    :cond_a2
    sub-int v0, v3, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le v0, v1, :cond_25

    .line 410
    iput-boolean v8, p0, Lcom/mobeta/android/dslv/DragSortController;->mCanDrag:Z

    goto/16 :goto_25
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    .prologue
    .line 449
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_1b

    .line 438
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 439
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(I)V

    .line 442
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView;->isDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView;->listViewIntercepted()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 270
    :cond_12
    :goto_12
    return v2

    .line 245
    :cond_13
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 246
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-ne v0, v3, :cond_29

    .line 247
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 250
    :cond_29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 251
    packed-switch v0, :pswitch_data_6a

    :pswitch_32
    goto :goto_12

    .line 253
    :pswitch_33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrX:I

    .line 254
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrY:I

    goto :goto_12

    .line 257
    :pswitch_42
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_60

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v0, :cond_60

    .line 258
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    if-ltz v0, :cond_65

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    .line 259
    :goto_50
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 260
    if-le v0, v1, :cond_60

    .line 261
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/mobeta/android/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 265
    :cond_60
    :pswitch_60
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 266
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    goto :goto_12

    .line 258
    :cond_65
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    neg-int v0, v0

    goto :goto_50

    .line 251
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_33
        :pswitch_42
        :pswitch_32
        :pswitch_60
    .end packed-switch
.end method

.method public setClickRemoveId(I)V
    .registers 2

    .prologue
    .line 209
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    .line 210
    return-void
.end method

.method public setDragHandleId(I)V
    .registers 2

    .prologue
    .line 189
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    .line 190
    return-void
.end method

.method public setDragInitMode(I)V
    .registers 2

    .prologue
    .line 140
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    .line 141
    return-void
.end method

.method public setFlingHandleId(I)V
    .registers 2

    .prologue
    .line 199
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHandleId:I

    .line 200
    return-void
.end method

.method public setRemoveEnabled(Z)V
    .registers 2

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    .line 176
    return-void
.end method

.method public setRemoveMode(I)V
    .registers 2

    .prologue
    .line 164
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    .line 165
    return-void
.end method

.method public setSortEnabled(Z)V
    .registers 2

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    .line 152
    return-void
.end method

.method public startDrag(III)Z
    .registers 7

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-nez v1, :cond_b

    .line 227
    const/16 v0, 0xc

    .line 229
    :cond_b
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_17

    .line 230
    or-int/lit8 v0, v0, 0x1

    .line 231
    or-int/lit8 v0, v0, 0x2

    .line 234
    :cond_17
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->startDrag(IIII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    .line 236
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    return v0
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .registers 3

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .registers 4

    .prologue
    .line 302
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_9
    return v0

    :cond_a
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, -0x1

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 327
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3, v0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->pointToPosition(II)I

    move-result v0

    .line 329
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    .line 330
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 331
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v4

    .line 336
    if-eq v0, v1, :cond_83

    if-lt v0, v2, :cond_83

    .line 337
    sub-int v2, v4, v3

    if-ge v0, v2, :cond_83

    .line 338
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v4, v2

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v5, v2

    .line 342
    if-nez p2, :cond_7e

    move-object v2, v3

    .line 343
    :goto_48
    if-eqz v2, :cond_83

    .line 344
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    invoke-virtual {v2, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 346
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    aget v6, v6, v7

    if-le v4, v6, :cond_83

    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    aget v6, v6, v8

    if-le v5, v6, :cond_83

    .line 347
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    aget v6, v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_83

    .line 348
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    aget v4, v4, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v5, v2, :cond_83

    .line 350
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    .line 351
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    .line 358
    :goto_7d
    return v0

    .line 342
    :cond_7e
    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_48

    :cond_83
    move v0, v1

    .line 358
    goto :goto_7d
.end method
