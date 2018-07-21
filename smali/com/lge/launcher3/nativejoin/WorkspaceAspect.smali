.class public Lcom/lge/launcher3/nativejoin/WorkspaceAspect;
.super Ljava/lang/Object;
.source "WorkspaceAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/WorkspaceAspect;


# instance fields
.field public mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    .line 28
    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$13$580cec0aproceed(Ljava/lang/Boolean;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$14$fd5c01f9proceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$15$e72b4e15proceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$16$d25310a2proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$3$1232a8fproceed(Lcom/android/launcher3/CellLayout;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$4$b7183ce3proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$5$27a61b4cproceed(Landroid/view/View;JJIIIILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3, p4}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p5}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p6}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p7}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p8}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p9, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$6$91a9f180proceed([ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$7$4d9cb784proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$8$f64b3838proceed(Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mExecutorService(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->ajc$get$mExecutorService(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mSyncScrollRunnable(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)Ljava/lang/Runnable;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->ajc$get$mSyncScrollRunnable(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mExecutorService(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)V
    .registers 2

    .prologue
    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mExecutorService(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mSyncScrollRunnable(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)V
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mSyncScrollRunnable(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mExecutorService(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->ajc$set$mExecutorService(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mSyncScrollRunnable(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->ajc$set$mSyncScrollRunnable(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$syncWithScrollToExcutor(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)V
    .registers 3

    .prologue
    .line 70
    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mSyncScrollRunnable(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_e

    .line 72
    new-instance v0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator$WorkspaceAspect$1;

    invoke-direct {v0, p0, p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator$WorkspaceAspect$1;-><init>(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mSyncScrollRunnable(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Ljava/lang/Runnable;)V

    .line 86
    :cond_e
    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mExecutorService(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$mSyncScrollRunnable(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$shiftDefaultPage(Lcom/android/launcher3/Workspace;ZZ)V
    .registers 4

    .prologue
    .line 240
    if-eqz p1, :cond_12

    .line 241
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/Workspace;->ajc$set$mOriginalDefaultPage(Lcom/android/launcher3/Workspace;I)V

    .line 245
    :goto_6
    if-eqz p2, :cond_17

    .line 246
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mOriginalDefaultPage(Lcom/android/launcher3/Workspace;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/Workspace;->ajc$set$mDefaultPage(Lcom/android/launcher3/Workspace;I)V

    .line 250
    :goto_11
    return-void

    .line 243
    :cond_12
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/Workspace;->ajc$set$mOriginalDefaultPage(Lcom/android/launcher3/Workspace;I)V

    goto :goto_6

    .line 248
    :cond_17
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mOriginalDefaultPage(Lcom/android/launcher3/Workspace;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/launcher3/Workspace;->ajc$set$mDefaultPage(Lcom/android/launcher3/Workspace;I)V

    goto :goto_11
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$syncWithScrollToExcutor(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->syncWithScrollToExcutor()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$shiftDefaultPage(Lcom/android/launcher3/Workspace;ZZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->shiftDefaultPage(ZZ)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_WorkspaceAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "initialization(Workspace.new(..))"
    .end annotation

    .prologue
    .line 39
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 40
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    if-nez v1, :cond_22

    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_KNOCK_OFF:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 43
    new-instance v1, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    new-instance v2, Lcom/lge/launcher3/knockoff/LGKnockOnListener;

    invoke-direct {v2, v0}, Lcom/lge/launcher3/knockoff/LGKnockOnListener;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;-><init>(Landroid/content/Context;Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    .line 45
    :cond_22
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$10$5bc5b032(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "onDragExit()"
    .end annotation

    .prologue
    .line 146
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 147
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$11$11d79f3d(Lcom/android/launcher3/Launcher;Ljava/lang/Float;Lorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "l,t"
        value = "(execution(public void Workspace.onLauncherTransitionStep(..)) && args(l, t))"
    .end annotation

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 150
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 151
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_14

    .line 152
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->invalidate()V

    .line 161
    :cond_13
    return-void

    .line 153
    :cond_14
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_13

    .line 154
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mState(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne v1, v2, :cond_13

    .line 155
    const/4 v1, 0x0

    move v2, v1

    :goto_27
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_13

    .line 156
    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 157
    invoke-virtual {v1, v3}, Lcom/android/launcher3/CellLayout;->setBackgroundAlpha(F)V

    .line 155
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_27
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$12$b8c65bd8(Landroid/view/View;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;)V
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "parent,child"
        value = "afterChildViewAdded(parent, child)"
    .end annotation

    .prologue
    .line 166
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 167
    check-cast p2, Lcom/android/launcher3/CellLayout;

    .line 168
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mState(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne v1, v2, :cond_15

    .line 169
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Lcom/android/launcher3/CellLayout;->setBackgroundAlpha(F)V

    .line 172
    :cond_15
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/PageIndicator;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    .line 173
    if-eqz v1, :cond_22

    .line 174
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mIndicatorLongClicklistener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setMarkerLongClicklistenr(Landroid/view/View$OnLongClickListener;)V

    .line 176
    :cond_22
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$17$15e41f19(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void Workspace.onResume())"
    .end annotation

    .prologue
    .line 226
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 228
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateScrollToCurrentPageInNormalState(Lcom/android/launcher3/Workspace;)V

    .line 229
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$18$e9542a77(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void Workspace.onAttachedToWindow())"
    .end annotation

    .prologue
    .line 232
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 233
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/PageIndicator;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    .line 234
    if-eqz v1, :cond_17

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mIndicatorLongClicklistener:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_17

    .line 235
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mIndicatorLongClicklistener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setMarkerLongClicklistenr(Landroid/view/View$OnLongClickListener;)V

    .line 237
    :cond_17
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$2$ee225639(JILorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "screenId,insertIndex"
        value = "insertNewWorkspaceScreen(screenId, insertIndex)"
    .end annotation

    .prologue
    .line 48
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 49
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mWorkspaceScreens(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 51
    invoke-static {v1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$createCrossHairsGrid(Lcom/android/launcher3/CellLayout;)V

    .line 53
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 54
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCrosshairAnimation(Lcom/android/launcher3/CellLayout;Z)V

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/android/launcher3/CellLayout;->setBackgroundAlpha(F)V

    .line 57
    :cond_2a
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$9$a21c9555(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "d"
        value = "(execution(public void Workspace.onDragEnter(DragObject)) && args(d))"
    .end annotation

    .prologue
    .line 139
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 140
    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$dragEnterAccessiblity(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 141
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$13$580cec0a(Ljava/lang/Boolean;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "animate,ajc$aroundClosure"
        value = "(execution(void Workspace.moveToDefaultScreen(..)) && args(animate))"
    .end annotation

    .prologue
    .line 181
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 182
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mDefaultPage(Lcom/android/launcher3/Workspace;)I

    move-result v1

    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mCurrentPage(Lcom/android/launcher3/PagedView;)I

    move-result v0

    if-ne v1, v0, :cond_11

    .line 187
    :goto_10
    return-void

    .line 186
    :cond_11
    invoke-static {p1, p2}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$13$580cec0aproceed(Ljava/lang/Boolean;Lorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_10
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$14$fd5c01f9(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ev,ajc$aroundClosure"
        value = "(execution(protected void Workspace.determineScrollingStart(..)) && args(ev))"
    .end annotation

    .prologue
    .line 191
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 193
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->isExtViewMode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 198
    :goto_c
    return-void

    .line 197
    :cond_d
    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$determineScrollingStartModify(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;)V

    goto :goto_c
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$15$e72b4e15(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "event,ajc$aroundClosure"
        value = "(execution(public boolean Workspace.onTouchEvent(MotionEvent)) && args(event))"
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 204
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mState(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v2, :cond_20

    move v0, v1

    .line 205
    :goto_10
    if-eqz v0, :cond_22

    .line 206
    iget-object v0, p0, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v1

    .line 210
    :goto_1f
    return v0

    .line 204
    :cond_20
    const/4 v0, 0x0

    goto :goto_10

    .line 210
    :cond_22
    invoke-static {p1, p2}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$15$e72b4e15proceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_1f
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$16$d25310a2(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 9
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(protected void Workspace.onPageBeginMoving())"
    .end annotation

    .prologue
    const-wide/16 v4, 0x8

    .line 215
    const-wide/16 v0, 0x8

    :try_start_4
    const-string v2, "Workspace.onPageBeginMoving"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 216
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 217
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->clearAllResizeFrames()V

    .line 218
    invoke-static {p1}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$16$d25310a2proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_21

    .line 220
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 222
    return-void

    .line 219
    :catchall_21
    move-exception v0

    .line 220
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 221
    throw v0
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$3$1232a8f(Lcom/android/launcher3/CellLayout;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "layout,ajc$aroundClosure"
        value = "setCurrentDragOverlappingLayout(layout)"
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$4$b7183ce3(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public void WallpaperOffsetInterpolator.syncWithScroll())"
    .end annotation

    .prologue
    .line 90
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    .line 91
    invoke-static {v0}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$syncWithScrollToExcutor(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)V

    .line 92
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$5$27a61b4c(Landroid/view/View;JJIIIILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 16
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "child,container,screenId,x,y,spanX,spanY,ajc$aroundClosure"
        value = "addInScreenFromBind(child, container, screenId, x, y, spanX, spanY)"
    .end annotation

    .prologue
    .line 96
    invoke-interface {p11}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 97
    const-wide/16 v2, -0x64

    cmp-long v1, p2, v2

    if-nez v1, :cond_37

    .line 98
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-nez v1, :cond_37

    .line 99
    const-string v1, "Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Add new child, screenId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cause can\'t found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(J)J

    .line 111
    :cond_37
    invoke-static/range {p1 .. p10}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$5$27a61b4cproceed(Landroid/view/View;JJIIIILorg/aspectj/runtime/internal/AroundClosure;)V

    .line 112
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$6$91a9f180([ILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "range,ajc$aroundClosure"
        value = "(execution(protected void Workspace.getFreeScrollPageRange(..)) && args(range))"
    .end annotation

    .prologue
    .line 115
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 116
    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getScrollModePages(Lcom/android/launcher3/Workspace;[I)V

    .line 117
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$7$4d9cb784(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/String;
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(protected String Workspace.getCurrentPageDescription())"
    .end annotation

    .prologue
    .line 120
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 121
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mNextPage(Lcom/android/launcher3/PagedView;)I

    move-result v1

    invoke-static {}, Lcom/android/launcher3/PagedView;->ajc$get$INVALID_PAGE()I

    move-result v2

    if-eq v1, v2, :cond_21

    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mNextPage(Lcom/android/launcher3/PagedView;)I

    move-result v1

    .line 122
    :goto_14
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v2, v3, :cond_26

    .line 123
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->ajc$privMethod$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$getPageDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_20
    return-object v0

    .line 121
    :cond_21
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mCurrentPage(Lcom/android/launcher3/PagedView;)I

    move-result v1

    goto :goto_14

    .line 124
    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne v2, v3, :cond_4d

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0116

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->ajc$privMethod$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$getPageDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 130
    :cond_4d
    const-string v0, ""

    goto :goto_20
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_WorkspaceAspect$8$f64b3838(Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "(call(public int Workspace.numCustomPages()) && withincode(* *getPageDescription(..)))"
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic ajc$pointcut$$addInScreenFromBind$526(Landroid/view/View;JJIIII)V
    .registers 10
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "child,container,screenId,x,y,spanX,spanY"
        value = "(call(* com.android.launcher3.Workspace.addInScreenFromBind(android.view.View, long, long, int, int, int, int)) && (within(com.android.launcher3.Launcher) && args(child, container, screenId, x, y, spanX, spanY)))"
    .end annotation

    .prologue
    .line 36
    return-void
.end method

.method public synthetic ajc$pointcut$$afterChildViewAdded$1b2e(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "parent,child"
        value = "(execution(* *Workspace.onChildViewAdded(android.view.View, android.view.View)) && args(parent, child))"
    .end annotation

    .prologue
    .line 163
    return-void
.end method

.method public synthetic ajc$pointcut$$insertNewWorkspaceScreen$469(JI)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "screenId,insertIndex"
        value = "(execution(public long com.android.launcher3.Workspace.insertNewWorkspaceScreen(long, int)) && args(screenId, insertIndex))"
    .end annotation

    .prologue
    .line 32
    return-void
.end method

.method public synthetic ajc$pointcut$$onDragExit$1821()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(* *Workspace.onDragExit(..))"
    .end annotation

    .prologue
    .line 143
    return-void
.end method

.method public synthetic ajc$pointcut$$setCurrentDragOverlappingLayout$981(Lcom/android/launcher3/CellLayout;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "layout"
        value = "(execution(void com.android.launcher3.Workspace.setCurrentDragOverlappingLayout(com.android.launcher3.CellLayout)) && args(layout))"
    .end annotation

    .prologue
    .line 60
    return-void
.end method
