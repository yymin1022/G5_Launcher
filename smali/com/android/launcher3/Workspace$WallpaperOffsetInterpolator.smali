.class public Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperOffsetInterpolator"
.end annotation


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private final ANIMATION_DURATION:I

.field private final MIN_PARALLAX_PAGE_SPAN:I

.field mAnimating:Z

.field mAnimationStartOffset:F

.field mAnimationStartTime:J

.field mChoreographer:Landroid/view/Choreographer;

.field mCurrentOffset:F

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field mFinalOffset:F

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mNumScreens:I

.field private mSyncScrollRunnable:Ljava/lang/Runnable;

.field mWaitingForUpdate:Z

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .registers 4

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$interFieldInit$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mExecutorService(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$interFieldInit$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mSyncScrollRunnable(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)V

    .line 1493
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    .line 1494
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1501
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->ANIMATION_DURATION:I

    .line 1503
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->MIN_PARALLAX_PAGE_SPAN:I

    .line 1507
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mChoreographer:Landroid/view/Choreographer;

    .line 1508
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1509
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)F
    .registers 2

    .prologue
    .line 1553
    invoke-direct {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->wallpaperOffsetForCurrentScroll()F

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Z)V
    .registers 2

    .prologue
    .line 1516
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->updateOffset(Z)V

    return-void
.end method

.method public static ajc$get$MIN_PARALLAX_PAGE_SPAN(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->MIN_PARALLAX_PAGE_SPAN:I

    return v0
.end method

.method public static ajc$get$mExecutorService(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static ajc$get$mSyncScrollRunnable(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mSyncScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "Workspace.java"

    const-class v2, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "syncWithScroll"

    const-string v3, "com.android.launcher3.Workspace$WallpaperOffsetInterpolator"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x654

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$MIN_PARALLAX_PAGE_SPAN(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->MIN_PARALLAX_PAGE_SPAN:I

    return-void
.end method

.method public static ajc$set$mExecutorService(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static ajc$set$mSyncScrollRunnable(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mSyncScrollRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private animateToFinal()V
    .registers 3

    .prologue
    .line 1635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    .line 1636
    iget v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    iput v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimationStartOffset:F

    .line 1637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimationStartTime:J

    .line 1638
    return-void
.end method

.method private getNumScreensExcludingEmptyAndCustom()I
    .registers 3

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->numEmptyScreensToIgnore()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1617
    return v0
.end method

.method private numEmptyScreensToIgnore()I
    .registers 3

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1608
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1609
    const/4 v0, 0x1

    .line 1611
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private scheduleUpdate()V
    .registers 2

    .prologue
    .line 1662
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    if-nez v0, :cond_c

    .line 1663
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    .line 1666
    :cond_c
    return-void
.end method

.method private setWallpaperOffsetSteps()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1642
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget v0, v0, Lcom/android/launcher3/Workspace;->mNumPagesForWallpaperParallax:I

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 1643
    iget-object v1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget v1, v1, Lcom/android/launcher3/Workspace;->mLastSetWallpaperOffsetSteps:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1c

    .line 1644
    iget-object v1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 1645
    iget-object v1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iput v0, v1, Lcom/android/launcher3/Workspace;->mLastSetWallpaperOffsetSteps:F

    .line 1647
    :cond_1c
    return-void
.end method

.method private static final syncWithScroll_aroundBody0(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Lorg/aspectj/lang/JoinPoint;)V
    .registers 4

    .prologue
    .line 1621
    invoke-direct {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->wallpaperOffsetForCurrentScroll()F

    move-result v0

    .line 1622
    iget-object v1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 1623
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->updateOffset(Z)V

    .line 1624
    return-void
.end method

.method private static final syncWithScroll_aroundBody1$advice(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6

    .prologue
    .line 90
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    .line 91
    invoke-static {v0}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$syncWithScrollToExcutor(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)V

    .line 92
    return-void
.end method

.method private updateOffset(Z)V
    .registers 6

    .prologue
    .line 1517
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_2d

    .line 1518
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    .line 1519
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v0, :cond_2d

    .line 1521
    :try_start_15
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1522
    iget-object v2, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    .line 1521
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 1523
    invoke-direct {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->setWallpaperOffsetSteps()V
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_2d} :catch_2e

    .line 1529
    :cond_2d
    :goto_2d
    return-void

    .line 1524
    :catch_2e
    move-exception v0

    .line 1525
    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error updating wallpaper offset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .registers 11

    .prologue
    const/4 v8, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1557
    invoke-direct {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v4

    .line 1559
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget-boolean v0, v0, Lcom/android/launcher3/Workspace;->mWallpaperIsLiveWallpaper:Z

    if-eqz v0, :cond_2d

    .line 1560
    add-int/lit8 v0, v4, -0x1

    .line 1564
    :goto_10
    iget-object v1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iput v0, v1, Lcom/android/launcher3/Workspace;->mNumPagesForWallpaperParallax:I

    .line 1566
    iget-object v1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_36

    .line 1567
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget-boolean v0, v0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_34

    .line 1568
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget v0, v0, Lcom/android/launcher3/Workspace;->mNumPagesForWallpaperParallax:I

    int-to-float v0, v0

    div-float v0, v7, v0

    sub-float v0, v7, v0

    .line 1602
    :goto_2c
    return v0

    .line 1562
    :cond_2d
    add-int/lit8 v0, v4, -0x1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_10

    :cond_34
    move v0, v3

    .line 1570
    goto :goto_2c

    .line 1574
    :cond_36
    invoke-direct {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->numEmptyScreensToIgnore()I

    move-result v2

    .line 1575
    iget-object v1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v1

    .line 1577
    iget-object v5, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v2

    .line 1578
    iget-object v5, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget-boolean v5, v5, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v5, :cond_9d

    .line 1584
    :goto_50
    iget-object v5, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v2

    .line 1585
    iget-object v5, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v1

    sub-int/2addr v1, v2

    .line 1586
    if-nez v1, :cond_61

    move v0, v3

    .line 1587
    goto :goto_2c

    .line 1592
    :cond_61
    iget-object v5, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v5

    sub-int v2, v5, v2

    iget-object v5, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v5

    sub-int/2addr v2, v5

    .line 1593
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1594
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1598
    iget-object v2, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget-boolean v2, v2, Lcom/android/launcher3/Workspace;->mWallpaperIsLiveWallpaper:Z

    if-nez v2, :cond_95

    if-ge v4, v8, :cond_95

    .line 1599
    iget-object v2, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher3/Workspace;

    iget-boolean v2, v2, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v2, :cond_95

    .line 1600
    sub-int v2, v0, v4

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_2c

    .line 1602
    :cond_95
    add-int/lit8 v2, v4, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_2c

    :cond_9d
    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_50
.end method


# virtual methods
.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$getNumScreensExcludingEmptyAndCustom()I
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v0

    return v0
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$updateOffset(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->updateOffset(Z)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$wallpaperOffsetForCurrentScroll()F
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->wallpaperOffsetForCurrentScroll()F

    move-result v0

    return v0
.end method

.method public computeScrollOffset()Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v9, 0x33d6bf95    # 1.0E-7f

    .line 1532
    iget v3, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1533
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    if-eqz v0, :cond_4f

    .line 1534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    .line 1535
    long-to-float v0, v4

    const/high16 v6, 0x437a0000    # 250.0f

    div-float/2addr v0, v6

    .line 1536
    iget-object v6, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 1537
    iget v6, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimationStartOffset:F

    .line 1538
    iget v7, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    iget v8, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimationStartOffset:F

    sub-float/2addr v7, v8

    mul-float/2addr v0, v7

    add-float/2addr v0, v6

    .line 1537
    iput v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1539
    const-wide/16 v6, 0xfa

    cmp-long v0, v4, v6

    if-gez v0, :cond_4d

    move v0, v1

    :goto_2e
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    .line 1544
    :goto_30
    iget v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    iget v4, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_40

    .line 1545
    invoke-direct {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->scheduleUpdate()V

    .line 1547
    :cond_40
    iget v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_54

    .line 1550
    :goto_4c
    return v1

    :cond_4d
    move v0, v2

    .line 1539
    goto :goto_2e

    .line 1541
    :cond_4f
    iget v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    iput v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    goto :goto_30

    :cond_54
    move v1, v2

    .line 1550
    goto :goto_4c
.end method

.method public doFrame(J)V
    .registers 4

    .prologue
    .line 1513
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->updateOffset(Z)V

    .line 1514
    return-void
.end method

.method public getCurrX()F
    .registers 2

    .prologue
    .line 1627
    iget v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    return v0
.end method

.method public getFinalX()F
    .registers 2

    .prologue
    .line 1631
    iget v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    return v0
.end method

.method public getMaxOffset()F
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$getMaxOffset(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)F

    move-result v0

    return v0
.end method

.method public jumpToFinal()V
    .registers 2

    .prologue
    .line 1669
    iget v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    iput v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1670
    return-void
.end method

.method public setFinalX(F)V
    .registers 4

    .prologue
    .line 1650
    invoke-direct {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->scheduleUpdate()V

    .line 1651
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    .line 1652
    invoke-direct {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mNumScreens:I

    if-eq v0, v1, :cond_25

    .line 1653
    iget v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mNumScreens:I

    if-lez v0, :cond_1f

    .line 1655
    invoke-direct {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->animateToFinal()V

    .line 1657
    :cond_1f
    invoke-direct {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->mNumScreens:I

    .line 1659
    :cond_25
    return-void
.end method

.method public syncWithScroll()V
    .registers 4

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->syncWithScroll_aroundBody1$advice(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public syncWithScrollToExcutor()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$interMethod$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$syncWithScrollToExcutor(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)V

    return-void
.end method
