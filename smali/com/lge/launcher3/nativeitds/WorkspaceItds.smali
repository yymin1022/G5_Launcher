.class public Lcom/lge/launcher3/nativeitds/WorkspaceItds;
.super Ljava/lang/Object;
.source "WorkspaceItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final ANGLE_DOWN:I = 0x6

.field private static final ANGLE_UP:I = 0x4

.field private static final ANGLE_UPDOWN:I = 0x6

.field private static final BIG_DELTA:I = 0x3

.field private static final MAX_SWIPE_ANGLE_BIG_DELTA:F = 1.0471976f

.field private static final MAX_SWIPE_ANGLE_BIG_THRESHOLD:I = 0x4

.field private static final MAX_SWIPE_ANGLE_DOWN:F = 0.5235988f

.field private static final MAX_SWIPE_ANGLE_FOR_VSCROLL:F = 0.5235988f

.field private static final MAX_SWIPE_ANGLE_UP:F = 0.7853982f

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/WorkspaceItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 47
    :goto_3
    return-void

    .line 37
    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mIndicatorLongClicklistener(Lcom/android/launcher3/Workspace;)Landroid/view/View$OnLongClickListener;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mIndicatorLongClicklistener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;)V
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mIndicatorLongClicklistener(Lcom/android/launcher3/Workspace;)V
    .registers 2

    .prologue
    .line 389
    new-instance v0, Lcom/android/launcher3/Workspace$WorkspaceItds$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$WorkspaceItds$1;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mIndicatorLongClicklistener(Lcom/android/launcher3/Workspace;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/Workspace;->ajc$set$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mIndicatorLongClicklistener(Lcom/android/launcher3/Workspace;Landroid/view/View$OnLongClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mIndicatorLongClicklistener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$getMaxOffset(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)F
    .registers 5

    .prologue
    .line 547
    invoke-static {p0}, Lcom/lge/launcher3/util/ClassUtils;->getOutperClassReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 548
    if-nez v0, :cond_9

    .line 549
    const/high16 v0, 0x3f800000    # 1.0f

    .line 565
    :goto_8
    return v0

    .line 551
    :cond_9
    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 553
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$getNumScreensExcludingEmptyAndCustom()I

    move-result v2

    .line 555
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mWallpaperIsLiveWallpaper(Lcom/android/launcher3/Workspace;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 556
    add-int/lit8 v1, v2, -0x1

    .line 561
    :goto_17
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mWallpaperIsLiveWallpaper(Lcom/android/launcher3/Workspace;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-static {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->ajc$get$MIN_PARALLAX_PAGE_SPAN(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 562
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mIsRtl(Lcom/android/launcher3/PagedView;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 563
    sub-int v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    div-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_8

    .line 558
    :cond_30
    invoke-static {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->ajc$get$MIN_PARALLAX_PAGE_SPAN(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)I

    move-result v1

    add-int/lit8 v3, v2, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_17

    .line 565
    :cond_3b
    add-int/lit8 v0, v2, -0x1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_8
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$changeDefaultPageForDirectv(Lcom/android/launcher3/Workspace;Z)V
    .registers 4

    .prologue
    .line 601
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_DIRECTV_MODE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 609
    :cond_8
    :goto_8
    return-void

    .line 604
    :cond_9
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$hasDirectvWidgetInCellLayout(Lcom/android/launcher3/Workspace;)Z

    move-result v0

    .line 605
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v1

    invoke-static {p0, v1, v0}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$shiftDefaultPage(Lcom/android/launcher3/Workspace;ZZ)V

    .line 606
    if-eqz p1, :cond_8

    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->moveToDefaultScreen(Z)V

    goto :goto_8
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$dampedOverScroll(Lcom/android/launcher3/Workspace;F)V
    .registers 4

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getDampedOverscrollAmount(F)I

    move-result v0

    .line 229
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1c

    .line 230
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollY()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$superScrollTo(Lcom/android/launcher3/PagedView;II)V

    .line 235
    :goto_18
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    .line 236
    return-void

    .line 232
    :cond_1c
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mMaxScrollX(Lcom/android/launcher3/PagedView;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollY()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$superScrollTo(Lcom/android/launcher3/PagedView;II)V

    goto :goto_18
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$determineScrollingStart(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;F)V
    .registers 5

    .prologue
    .line 453
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mState(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_a

    .line 454
    sget p2, Lcom/android/launcher3/PagedView;->sTouchSlopRatio:F

    .line 456
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 457
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$determineScrollingStartModify(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;)V
    .registers 12

    .prologue
    const v3, 0x3f060a92

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mXDown(Lcom/android/launcher3/Workspace;)F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mYDown(Lcom/android/launcher3/Workspace;)F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 407
    const/4 v0, 0x0

    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_27

    .line 439
    :cond_26
    :goto_26
    return-void

    .line 409
    :cond_27
    div-float v0, v6, v5

    .line 410
    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v7, v8

    .line 412
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mTouchSlop(Lcom/android/launcher3/PagedView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_5a

    move v0, v1

    .line 413
    :goto_39
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mTouchSlop(Lcom/android/launcher3/PagedView;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_5c

    move v4, v1

    .line 414
    :goto_43
    if-nez v0, :cond_47

    if-eqz v4, :cond_4a

    .line 415
    :cond_47
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$cancelCurrentPageLongPress()V

    .line 418
    :cond_4a
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$isVerticalScrollPage(Lcom/android/launcher3/Workspace;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 420
    cmpl-float v0, v7, v3

    if-gtz v0, :cond_26

    .line 438
    :cond_54
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$determineScrollingStart(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;F)V

    goto :goto_26

    :cond_5a
    move v0, v2

    .line 412
    goto :goto_39

    :cond_5c
    move v4, v2

    .line 413
    goto :goto_43

    .line 423
    :cond_5e
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->getTouchCompleteListener()Lcom/android/launcher3/DragLayer$TouchCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mYDown(Lcom/android/launcher3/Workspace;)F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_99

    .line 426
    :goto_78
    if-eqz v1, :cond_9b

    move v0, v3

    .line 428
    :goto_7b
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mTouchSlop(Lcom/android/launcher3/PagedView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    cmpl-float v1, v5, v1

    if-gtz v1, :cond_91

    .line 429
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mTouchSlop(Lcom/android/launcher3/PagedView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    cmpl-float v1, v6, v1

    if-lez v1, :cond_94

    .line 430
    :cond_91
    const v0, 0x3f860a92

    .line 433
    :cond_94
    cmpl-float v0, v7, v0

    if-lez v0, :cond_54

    goto :goto_26

    :cond_99
    move v1, v2

    .line 425
    goto :goto_78

    .line 426
    :cond_9b
    const v0, 0x3f490fdb

    goto :goto_7b
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$dragEnterAccessiblity(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 367
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v0, v0, v4

    if-nez v0, :cond_b6

    .line 368
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/TalkBackUtils;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0105

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mCurrentPage(Lcom/android/launcher3/PagedView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    .line 371
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 370
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragViewVisualCenter(Lcom/android/launcher3/Workspace;)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/Workspace;->ajc$set$mDragViewVisualCenter(Lcom/android/launcher3/Workspace;[F)V

    .line 373
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragTargetLayout(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragViewVisualCenter(Lcom/android/launcher3/Workspace;)[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 374
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragViewVisualCenter(Lcom/android/launcher3/Workspace;)[F

    move-result-object v0

    aget v0, v0, v8

    float-to-int v1, v0

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragViewVisualCenter(Lcom/android/launcher3/Workspace;)[F

    move-result-object v0

    aget v0, v0, v3

    float-to-int v2, v0

    .line 375
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragTargetLayout(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mTargetCell(Lcom/android/launcher3/Workspace;)[I

    move-result-object v6

    move-object v0, p0

    move v4, v3

    .line 374
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/Workspace;->ajc$set$mTargetCell(Lcom/android/launcher3/Workspace;[I)V

    .line 376
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0106

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mTargetCell(Lcom/android/launcher3/Workspace;)[I

    move-result-object v4

    aget v4, v4, v8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    .line 378
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mTargetCell(Lcom/android/launcher3/Workspace;)[I

    move-result-object v4

    aget v4, v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 377
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 382
    :cond_b6
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$drawChild(Lcom/android/launcher3/Workspace;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 10

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    move-result-object v0

    .line 352
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 353
    if-nez v0, :cond_1a

    .line 354
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 357
    const v1, -0xffff01

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {p1, p2, v1, v2, v3}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->showChildBounds(Landroid/graphics/Canvas;Landroid/view/View;IIZ)V

    .line 359
    :cond_1a
    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$exitSpringLoadedDragModeOnDrop(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Ljava/lang/Runnable;Z)V
    .registers 15

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 53
    invoke-static {v6}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v7

    .line 56
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->checkToEnterUninstallMode(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)Z

    move-result v1

    .line 58
    if-eqz p6, :cond_25

    if-eqz v1, :cond_25

    if-nez v7, :cond_25

    .line 59
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->enterUninstallMode(Lcom/android/launcher3/Launcher;)V

    .line 62
    :cond_25
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 63
    if-eqz p6, :cond_3f

    if-nez v1, :cond_36

    if-eqz v7, :cond_3f

    .line 64
    :cond_36
    if-eqz p5, :cond_3e

    .line 65
    add-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    invoke-virtual {p0, p5, v0, v1}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    :cond_3e
    :goto_3e
    return-void

    .line 68
    :cond_3f
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, p5}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    goto :goto_3e
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getCurrentWidgetSpanX(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;)I
    .registers 6

    .prologue
    .line 489
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    .line 491
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 492
    if-eqz v1, :cond_1a

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-le v2, v3, :cond_1a

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    iget v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt v2, v3, :cond_1a

    .line 493
    iget v0, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 495
    :cond_1a
    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getCurrentWidgetSpanY(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;)I
    .registers 6

    .prologue
    .line 499
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    .line 501
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 502
    if-eqz v1, :cond_1a

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-le v2, v3, :cond_1a

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    iget v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-gt v2, v3, :cond_1a

    .line 503
    iget v0, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 505
    :cond_1a
    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DragSource;)Lcom/android/launcher3/CellLayout;
    .registers 4

    .prologue
    .line 121
    instance-of v0, p1, Lcom/android/launcher3/widget/WidgetsContainerView;

    .line 122
    if-nez v0, :cond_6

    .line 123
    const/4 v0, 0x0

    .line 126
    :goto_5
    return-object v0

    .line 125
    :cond_6
    invoke-static {}, Lcom/android/launcher3/Workspace;->ajc$get$EXTRA_EMPTY_SCREEN_ID()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;)V

    .line 126
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    goto :goto_5
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getNumScreensExcludingEmptyAndCustom(Lcom/android/launcher3/Workspace;)I
    .registers 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$numExtraEmptyScreen(Lcom/android/launcher3/Workspace;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getScrollModePages(Lcom/android/launcher3/Workspace;[I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isCleanViewState(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    .line 146
    :goto_f
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 147
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v1

    .line 148
    const/4 v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p1, v0

    .line 149
    return-void

    :cond_2d
    move v0, v1

    .line 145
    goto :goto_f
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getWallpaperOffset(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;
    .registers 2

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mWallpaperOffset(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$hasDirectvWidgetInCellLayout(Lcom/android/launcher3/Workspace;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 614
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    .line 615
    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    .line 617
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 618
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 619
    const v3, 0x7f0f0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 622
    if-eqz v0, :cond_25

    .line 623
    invoke-static {v0, v2}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$findAppWidgetByComponentName(Lcom/android/launcher3/CellLayout;Landroid/content/ComponentName;)Z

    move-result v1

    .line 625
    :cond_25
    return v1

    :cond_26
    move v0, v1

    .line 614
    goto :goto_8
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$indexOfChildExcludingEmptyAndCustom(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;)I
    .registers 5

    .prologue
    .line 92
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$indexOfExtraEmptyScreen(Lcom/android/launcher3/Workspace;)I

    move-result v1

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v2

    sub-int/2addr v0, v2

    .line 94
    if-ltz v1, :cond_12

    if-ge v1, v0, :cond_12

    .line 95
    sub-int/2addr v0, v1

    .line 97
    :cond_12
    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$indexOfExtraEmptyScreen(Lcom/android/launcher3/Workspace;)I
    .registers 5

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mWorkspaceScreens(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/Workspace;->ajc$get$EXTRA_EMPTY_SCREEN_ID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->indexOfKey(J)I

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$isVerticalScrollPage(Lcom/android/launcher3/Workspace;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 445
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_QMEMOPLUS_PANEL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mState(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v1, v2, :cond_12

    .line 448
    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v1

    if-nez v1, :cond_11

    :cond_1e
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$numExtraEmptyScreen(Lcom/android/launcher3/Workspace;)I
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$removeWorkspaceScreen(Lcom/android/launcher3/Workspace;JLcom/android/launcher3/CellLayout;)J
    .registers 7

    .prologue
    .line 471
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mWorkspaceScreens(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_25

    .line 472
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Screen id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_25
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 478
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Lcom/android/launcher3/CellLayout;->enableAccessibleDrag(ZI)V

    .line 481
    :cond_3a
    invoke-virtual {p0, p3}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    .line 482
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mScreenOrder(Lcom/android/launcher3/Workspace;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 483
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mWorkspaceScreens(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/android/launcher3/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 485
    return-wide p1
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$resetCellLayoutMetrics(Lcom/android/launcher3/Workspace;)V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 363
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$set$mPortraitCellLayoutMetrics(Landroid/graphics/Rect;)V

    .line 364
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$set$mLandscapeCellLayoutMetrics(Landroid/graphics/Rect;)V

    .line 365
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$scrollBy(Lcom/android/launcher3/Workspace;II)V
    .registers 4

    .prologue
    .line 155
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mUnboundedScrollX(Lcom/android/launcher3/Workspace;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$scrollTo(Lcom/android/launcher3/Workspace;II)V

    .line 156
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$scrollTo(Lcom/android/launcher3/Workspace;II)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 162
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mState(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v3, :cond_c2

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->isStateTransitioning()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c2

    :cond_28
    move v0, v1

    .line 166
    :goto_29
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mFreeScroll(Lcom/android/launcher3/PagedView;)Z

    move-result v3

    if-nez v3, :cond_31

    if-eqz v0, :cond_5d

    .line 169
    :cond_31
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 170
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mFreeScrollMaxScrollX(Lcom/android/launcher3/PagedView;)I

    move-result v0

    if-gt p1, v0, :cond_47

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mFreeScrollMinScrollX(Lcom/android/launcher3/PagedView;)I

    move-result v0

    if-ge p1, v0, :cond_4d

    .line 171
    :cond_47
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$forceFinishScroller()V

    .line 172
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$pageEndMoving()V

    .line 175
    :cond_4d
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mFreeScrollMaxScrollX(Lcom/android/launcher3/PagedView;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 176
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mFreeScrollMinScrollX(Lcom/android/launcher3/PagedView;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 179
    :cond_5d
    invoke-static {p0, p1}, Lcom/android/launcher3/Workspace;->ajc$set$mUnboundedScrollX(Lcom/android/launcher3/Workspace;I)V

    .line 181
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mIsRtl(Lcom/android/launcher3/PagedView;)Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mMaxScrollX(Lcom/android/launcher3/PagedView;)I

    move-result v0

    if-le p1, v0, :cond_c5

    move v0, v2

    .line 182
    :goto_6d
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mIsRtl(Lcom/android/launcher3/PagedView;)Z

    move-result v3

    if-eqz v3, :cond_cf

    if-gez p1, :cond_cd

    move v3, v2

    .line 183
    :goto_76
    if-eqz v0, :cond_de

    .line 184
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mAllowOverScroll(Lcom/android/launcher3/PagedView;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 185
    invoke-static {p0, v2}, Lcom/android/launcher3/PagedView;->ajc$set$mWasInOverscroll(Lcom/android/launcher3/PagedView;Z)V

    .line 186
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mIsRtl(Lcom/android/launcher3/PagedView;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 187
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mMaxScrollX(Lcom/android/launcher3/PagedView;)I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->ajc$protectedDispatch$com_android_launcher3_Workspace$overScroll(F)V

    .line 210
    :cond_91
    :goto_91
    int-to-float v0, p1

    invoke-static {p0, v0}, Lcom/android/launcher3/PagedView;->ajc$set$mTouchX(Lcom/android/launcher3/PagedView;F)V

    .line 211
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v0, v4

    invoke-static {}, Lcom/android/launcher3/PagedView;->ajc$get$NANOTIME_DIV()F

    move-result v3

    div-float/2addr v0, v3

    invoke-static {p0, v0}, Lcom/android/launcher3/PagedView;->ajc$set$mSmoothingTime(Lcom/android/launcher3/PagedView;F)V

    .line 214
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 215
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mParentDownMotionX(Lcom/android/launcher3/PagedView;)F

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mParentDownMotionY(Lcom/android/launcher3/PagedView;)F

    move-result v3

    invoke-virtual {p0, p0, v0, v3}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 216
    aget v1, v0, v1

    invoke-static {p0, v1}, Lcom/android/launcher3/PagedView;->ajc$set$mLastMotionX(Lcom/android/launcher3/PagedView;F)V

    .line 217
    aget v0, v0, v2

    invoke-static {p0, v0}, Lcom/android/launcher3/PagedView;->ajc$set$mLastMotionY(Lcom/android/launcher3/PagedView;F)V

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$updateDragViewTranslationDuringDrag()V

    .line 220
    :cond_c1
    return-void

    :cond_c2
    move v0, v2

    .line 162
    goto/16 :goto_29

    :cond_c5
    move v0, v1

    .line 181
    goto :goto_6d

    :cond_c7
    if-gez p1, :cond_cb

    move v0, v2

    goto :goto_6d

    :cond_cb
    move v0, v1

    goto :goto_6d

    :cond_cd
    move v3, v1

    .line 182
    goto :goto_76

    :cond_cf
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mMaxScrollX(Lcom/android/launcher3/PagedView;)I

    move-result v3

    if-le p1, v3, :cond_d7

    move v3, v2

    goto :goto_76

    :cond_d7
    move v3, v1

    goto :goto_76

    .line 189
    :cond_d9
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->ajc$protectedDispatch$com_android_launcher3_Workspace$overScroll(F)V

    goto :goto_91

    .line 192
    :cond_de
    if-eqz v3, :cond_ff

    .line 193
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mAllowOverScroll(Lcom/android/launcher3/PagedView;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 194
    invoke-static {p0, v2}, Lcom/android/launcher3/PagedView;->ajc$set$mWasInOverscroll(Lcom/android/launcher3/PagedView;Z)V

    .line 195
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mIsRtl(Lcom/android/launcher3/PagedView;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 196
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->ajc$protectedDispatch$com_android_launcher3_Workspace$overScroll(F)V

    goto :goto_91

    .line 198
    :cond_f4
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mMaxScrollX(Lcom/android/launcher3/PagedView;)I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->ajc$protectedDispatch$com_android_launcher3_Workspace$overScroll(F)V

    goto :goto_91

    .line 202
    :cond_ff
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mWasInOverscroll(Lcom/android/launcher3/PagedView;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->ajc$protectedDispatch$com_android_launcher3_Workspace$overScroll(F)V

    .line 204
    invoke-static {p0, v1}, Lcom/android/launcher3/PagedView;->ajc$set$mWasInOverscroll(Lcom/android/launcher3/PagedView;Z)V

    .line 207
    :cond_10c
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$superScrollTo(Lcom/android/launcher3/PagedView;II)V

    goto :goto_91
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$setCellLayoutsBackgroundAlpha(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$State;)V
    .registers 6

    .prologue
    .line 460
    sget-object v0, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne p1, v0, :cond_14

    .line 461
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    move v1, v0

    .line 463
    :goto_b
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    .line 464
    const/4 v0, 0x0

    move v2, v0

    :goto_11
    if-lt v2, v3, :cond_17

    .line 468
    return-void

    .line 462
    :cond_14
    const/4 v0, 0x0

    move v1, v0

    goto :goto_b

    .line 465
    :cond_17
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 466
    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setBackgroundAlpha(F)V

    .line 464
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$setWorkspaceBG(Lcom/android/launcher3/Workspace;Z)V
    .registers 3

    .prologue
    .line 386
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$setWorkspaceBG(Lcom/android/launcher3/Launcher;Z)V

    .line 387
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$showAllCrossHair(Lcom/android/launcher3/Workspace;Z)V
    .registers 4

    .prologue
    .line 509
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_9

    .line 512
    return-void

    .line 510
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCrosshairAnimation(Lcom/android/launcher3/CellLayout;Z)V

    .line 509
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$showWorkspaceForNotFoundCellDrop(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-nez v1, :cond_9

    .line 135
    const/4 v0, 0x0

    .line 141
    :goto_8
    return v0

    .line 138
    :cond_9
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/launcher3/Launcher;->ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Launcher$showWorkspace(IZLjava/lang/Runnable;)V

    .line 140
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;)V

    goto :goto_8
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$snapToPage(Lcom/android/launcher3/Workspace;IIIZLandroid/animation/TimeInterpolator;)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$validateNewPage(I)I

    move-result v0

    .line 313
    invoke-static {p0, v0}, Lcom/android/launcher3/PagedView;->ajc$set$mNextPage(Lcom/android/launcher3/PagedView;I)V

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$pageBeginMoving()V

    .line 316
    invoke-virtual {p0, p3}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$awakenScrollBars(I)Z

    .line 317
    if-eqz p4, :cond_44

    move v5, v2

    .line 323
    :goto_11
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 324
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$abortScrollerAnimation(Z)V

    .line 327
    :cond_1e
    if-eqz p5, :cond_4b

    .line 328
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 333
    :goto_27
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mUnboundedScrollX(Lcom/android/launcher3/Workspace;)I

    move-result v1

    move v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherScroller;->startScroll(IIIII)V

    .line 336
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$ignoreReorderingUpdatePageIndicator(Lcom/android/launcher3/PagedView;)V

    .line 339
    if-eqz p4, :cond_3c

    .line 340
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeScroll()V

    .line 343
    :cond_3c
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/PagedView;->ajc$set$mForceScreenScrolled(Lcom/android/launcher3/PagedView;Z)V

    .line 344
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    .line 345
    return-void

    .line 319
    :cond_44
    if-nez p3, :cond_57

    .line 320
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_11

    .line 330
    :cond_4b
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mDefaultInterpolator(Lcom/android/launcher3/PagedView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_27

    :cond_57
    move v5, p3

    goto :goto_11
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$snapToPage(Lcom/android/launcher3/Workspace;IIZLandroid/animation/TimeInterpolator;)V
    .registers 11

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$validateNewPage(I)I

    move-result v1

    .line 295
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v0

    .line 296
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mUnboundedScrollX(Lcom/android/launcher3/Workspace;)I

    move-result v2

    sub-int v2, v0, v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 298
    invoke-static/range {v0 .. v5}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$snapToPage(Lcom/android/launcher3/Workspace;IIIZLandroid/animation/TimeInterpolator;)V

    .line 299
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$snapToPageWithVelocity(Lcom/android/launcher3/Workspace;II)V
    .registers 10

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 242
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mWasInOverscroll(Lcom/android/launcher3/PagedView;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ajc$protectedDispatch$com_android_launcher3_Workspace$snapToDestination()V

    .line 246
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$validateNewPage(I)I

    move-result v0

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v2

    .line 250
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mUnboundedScrollX(Lcom/android/launcher3/Workspace;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 253
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mMinFlingVelocity(Lcom/android/launcher3/PagedView;)I

    move-result v4

    if-ge v3, v4, :cond_30

    .line 256
    invoke-static {}, Lcom/android/launcher3/PagedView;->ajc$get$PAGE_SNAP_ANIMATION_DURATION()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$snapToPage(II)V

    .line 286
    :goto_2f
    return-void

    .line 264
    :cond_30
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    mul-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 265
    int-to-float v4, v1

    int-to-float v1, v1

    .line 266
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$distanceInfluenceForSnapDuration(F)F

    move-result v3

    mul-float/2addr v1, v3

    .line 265
    add-float/2addr v1, v4

    .line 268
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    move-result-object v3

    .line 269
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mDefaultInterpolator(Lcom/android/launcher3/PagedView;)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 270
    invoke-static {}, Lcom/android/launcher3/PagedView;->ajc$get$MIN_SNAP_VELOCITY()I

    move-result v5

    .line 269
    invoke-virtual {v3, v4, v5}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->adjustMinSnapVelocity(Landroid/view/animation/Interpolator;I)I

    move-result v4

    .line 272
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 273
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 278
    const/high16 v5, 0x447a0000    # 1000.0f

    int-to-float v6, v4

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 279
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mDefaultInterpolator(Lcom/android/launcher3/PagedView;)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->adjustSnapDuration(Landroid/view/animation/Interpolator;I)I

    move-result v1

    .line 281
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mDefaultInterpolator(Lcom/android/launcher3/PagedView;)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v3, v5, v4, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->updateInterpolatorTension(Landroid/view/animation/Interpolator;II)V

    .line 283
    invoke-virtual {v3}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->enableToSwitchInterpolator()V

    .line 285
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$snapToPage(III)V

    goto :goto_2f
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateScrollToCurrentPageInNormalState(Lcom/android/launcher3/Workspace;)V
    .registers 4

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 541
    :cond_6
    :goto_6
    return-void

    .line 519
    :cond_7
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mCurrentPage(Lcom/android/launcher3/PagedView;)I

    move-result v0

    if-ltz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$getPageCount()I

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mCurrentPage(Lcom/android/launcher3/PagedView;)I

    move-result v1

    if-le v0, v1, :cond_6

    .line 522
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mCurrentPage(Lcom/android/launcher3/PagedView;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 525
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 529
    invoke-static {}, Lcom/android/launcher3/Workspace;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateScrollToCurrentPageInNormalState() : mCurrentPage("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mCurrentPage(Lcom/android/launcher3/PagedView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 530
    const-string v2, "), currentPageScrollX("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mCurrentPage(Lcom/android/launcher3/PagedView;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mScrollX("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 531
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$updateCurrentPageScroll()V

    .line 534
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ajc$superDispatch$com_android_launcher3_Workspace$pageEndMoving()V

    .line 536
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mCurrentPage(Lcom/android/launcher3/PagedView;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_6

    instance-of v1, v0, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_6

    .line 538
    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 539
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setShortcutAndWidgetAlpha(F)V

    goto/16 :goto_6
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateUninstallPolicy(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    const/4 v0, 0x1

    new-instance v1, Lcom/android/launcher3/Workspace$WorkspaceItds$3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/Workspace$WorkspaceItds$3;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 598
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateUninstallPolicytoAll(Lcom/android/launcher3/Workspace;)V
    .registers 3

    .prologue
    .line 569
    const/4 v0, 0x1

    new-instance v1, Lcom/android/launcher3/Workspace$WorkspaceItds$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Workspace$WorkspaceItds$2;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 580
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$getMaxOffset(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)F
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->getMaxOffset()F

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$changeDefaultPageForDirectv(Lcom/android/launcher3/Workspace;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->changeDefaultPageForDirectv(Z)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$dampedOverScroll(Lcom/android/launcher3/Workspace;F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->dampedOverScroll(F)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$determineScrollingStart(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;F)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$determineScrollingStartModify(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_WorkspaceItds$determineScrollingStartModify(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$dragEnterAccessiblity(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->dragEnterAccessiblity(Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$drawChild(Lcom/android/launcher3/Workspace;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$exitSpringLoadedDragModeOnDrop(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Ljava/lang/Runnable;Z)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/launcher3/Workspace;->exitSpringLoadedDragModeOnDrop(Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getCurrentWidgetSpanX(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getCurrentWidgetSpanX(Lcom/android/launcher3/ItemInfo;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getCurrentWidgetSpanY(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getCurrentWidgetSpanY(Lcom/android/launcher3/ItemInfo;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DragSource;)Lcom/android/launcher3/CellLayout;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getDropToLayoutForNotFoundCell(Lcom/android/launcher3/DragSource;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getNumScreensExcludingEmptyAndCustom(Lcom/android/launcher3/Workspace;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNumScreensExcludingEmptyAndCustom()I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getScrollModePages(Lcom/android/launcher3/Workspace;[I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getScrollModePages([I)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getWallpaperOffset(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWallpaperOffset()Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$hasDirectvWidgetInCellLayout(Lcom/android/launcher3/Workspace;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasDirectvWidgetInCellLayout()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$indexOfChildExcludingEmptyAndCustom(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->indexOfChildExcludingEmptyAndCustom(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$indexOfExtraEmptyScreen(Lcom/android/launcher3/Workspace;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->indexOfExtraEmptyScreen()I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$isVerticalScrollPage(Lcom/android/launcher3/Workspace;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_WorkspaceItds$isVerticalScrollPage()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$numExtraEmptyScreen(Lcom/android/launcher3/Workspace;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numExtraEmptyScreen()I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$removeWorkspaceScreen(Lcom/android/launcher3/Workspace;JLcom/android/launcher3/CellLayout;)J
    .registers 7

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->removeWorkspaceScreen(JLcom/android/launcher3/CellLayout;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$resetCellLayoutMetrics(Lcom/android/launcher3/Workspace;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->resetCellLayoutMetrics()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$scrollBy(Lcom/android/launcher3/Workspace;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->scrollBy(II)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$scrollTo(Lcom/android/launcher3/Workspace;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->scrollTo(II)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$setCellLayoutsBackgroundAlpha(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setCellLayoutsBackgroundAlpha(Lcom/android/launcher3/Workspace$State;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$setWorkspaceBG(Lcom/android/launcher3/Workspace;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setWorkspaceBG(Z)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$showAllCrossHair(Lcom/android/launcher3/Workspace;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->showAllCrossHair(Z)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$showWorkspaceForNotFoundCellDrop(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->showWorkspaceForNotFoundCellDrop(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$snapToPage(Lcom/android/launcher3/Workspace;IIIZLandroid/animation/TimeInterpolator;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/Workspace;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$snapToPage(Lcom/android/launcher3/Workspace;IIZLandroid/animation/TimeInterpolator;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Workspace;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$snapToPageWithVelocity(Lcom/android/launcher3/Workspace;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->snapToPageWithVelocity(II)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateScrollToCurrentPageInNormalState(Lcom/android/launcher3/Workspace;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateScrollToCurrentPageInNormalState()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateUninstallPolicy(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->updateUninstallPolicy(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateUninstallPolicytoAll(Lcom/android/launcher3/Workspace;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateUninstallPolicytoAll()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/WorkspaceItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/WorkspaceItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/WorkspaceItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/WorkspaceItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_WorkspaceItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/WorkspaceItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/WorkspaceItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
