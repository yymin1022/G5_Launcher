.class public Lcom/lge/launcher3/LauncherScrollerWatcherAspect;
.super Ljava/lang/Object;
.source "LauncherScrollerWatcherAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/LauncherScrollerWatcherAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_LauncherScrollerWatcherAspect$com_android_launcher3_LauncherScroller$mIsStarted(Lcom/android/launcher3/LauncherScroller;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/LauncherScroller;->ajc$get$mIsStarted(Lcom/android/launcher3/LauncherScroller;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_LauncherScrollerWatcherAspect$com_android_launcher3_LauncherScroller$mIsStarted(Lcom/android/launcher3/LauncherScroller;)V
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_LauncherScrollerWatcherAspect$com_android_launcher3_LauncherScroller$mIsStarted(Lcom/android/launcher3/LauncherScroller;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_LauncherScrollerWatcherAspect$com_android_launcher3_LauncherScroller$mIsStarted(Lcom/android/launcher3/LauncherScroller;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherScroller;->ajc$set$mIsStarted(Lcom/android/launcher3/LauncherScroller;Z)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/LauncherScrollerWatcherAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_LauncherScrollerWatcherAspect"

    sget-object v2, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$1$b2aaf387(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void LauncherScroller.startScroll(int, int, int, int, int))"
    .end annotation

    .prologue
    .line 24
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherScroller;

    .line 27
    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcher;->getInstance()Lcom/lge/launcher3/LauncherScrollerWatcher;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/LauncherScroller;->ajc$get$mStartX(Lcom/android/launcher3/LauncherScroller;)I

    move-result v2

    invoke-static {v0}, Lcom/android/launcher3/LauncherScroller;->ajc$get$mStartY(Lcom/android/launcher3/LauncherScroller;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/launcher3/LauncherScrollerWatcher;->notifyStartListeners(II)V

    .line 29
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_LauncherScrollerWatcherAspect$com_android_launcher3_LauncherScroller$mIsStarted(Lcom/android/launcher3/LauncherScroller;Z)V

    .line 30
    return-void
.end method

.method public ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$2$b6dff906(Lorg/aspectj/lang/JoinPoint;)V
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public boolean LauncherScroller.computeScrollOffset())"
    .end annotation

    .prologue
    .line 35
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherScroller;

    .line 37
    invoke-static {v0}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_LauncherScrollerWatcherAspect$com_android_launcher3_LauncherScroller$mIsStarted(Lcom/android/launcher3/LauncherScroller;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 50
    :cond_c
    :goto_c
    return-void

    .line 41
    :cond_d
    invoke-static {v0}, Lcom/android/launcher3/LauncherScroller;->ajc$get$mFinished(Lcom/android/launcher3/LauncherScroller;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 46
    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcher;->getInstance()Lcom/lge/launcher3/LauncherScrollerWatcher;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/LauncherScroller;->ajc$get$mCurrX(Lcom/android/launcher3/LauncherScroller;)I

    move-result v2

    invoke-static {v0}, Lcom/android/launcher3/LauncherScroller;->ajc$get$mCurrY(Lcom/android/launcher3/LauncherScroller;)I

    move-result v3

    .line 47
    sget-object v4, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;->TIME_EXPIRATION:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    .line 46
    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/launcher3/LauncherScrollerWatcher;->notifyFinishListeners(IILcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;)V

    .line 49
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_LauncherScrollerWatcherAspect$com_android_launcher3_LauncherScroller$mIsStarted(Lcom/android/launcher3/LauncherScroller;Z)V

    goto :goto_c
.end method

.method public ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$3$4c34c911(ZLorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "finished"
        value = "(execution(public final void LauncherScroller.forceFinished(boolean)) && args(finished))"
    .end annotation

    .prologue
    .line 57
    if-nez p1, :cond_3

    .line 68
    :goto_2
    return-void

    .line 61
    :cond_3
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherScroller;

    .line 64
    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcher;->getInstance()Lcom/lge/launcher3/LauncherScrollerWatcher;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/LauncherScroller;->ajc$get$mCurrX(Lcom/android/launcher3/LauncherScroller;)I

    move-result v2

    invoke-static {v0}, Lcom/android/launcher3/LauncherScroller;->ajc$get$mCurrY(Lcom/android/launcher3/LauncherScroller;)I

    move-result v3

    .line 65
    sget-object v4, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;->FORCE_FINISHED:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    .line 64
    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/launcher3/LauncherScrollerWatcher;->notifyFinishListeners(IILcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;)V

    .line 67
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_LauncherScrollerWatcherAspect$com_android_launcher3_LauncherScroller$mIsStarted(Lcom/android/launcher3/LauncherScroller;Z)V

    goto :goto_2
.end method

.method public ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$4$269b725(Lorg/aspectj/lang/JoinPoint;)V
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void LauncherScroller.abortAnimation())"
    .end annotation

    .prologue
    .line 73
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherScroller;

    .line 76
    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcher;->getInstance()Lcom/lge/launcher3/LauncherScrollerWatcher;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/LauncherScroller;->ajc$get$mCurrX(Lcom/android/launcher3/LauncherScroller;)I

    move-result v2

    invoke-static {v0}, Lcom/android/launcher3/LauncherScroller;->ajc$get$mCurrY(Lcom/android/launcher3/LauncherScroller;)I

    move-result v3

    .line 77
    sget-object v4, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;->ABORT_ANIMATION:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    .line 76
    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/launcher3/LauncherScrollerWatcher;->notifyFinishListeners(IILcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;)V

    .line 79
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_LauncherScrollerWatcherAspect$com_android_launcher3_LauncherScroller$mIsStarted(Lcom/android/launcher3/LauncherScroller;Z)V

    .line 80
    return-void
.end method

.method public ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$5$37780436()V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.onDestroy())"
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcher;->getInstance()Lcom/lge/launcher3/LauncherScrollerWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherScrollerWatcher;->destroy()V

    .line 92
    return-void
.end method
