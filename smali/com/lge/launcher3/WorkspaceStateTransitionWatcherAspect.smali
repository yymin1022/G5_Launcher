.class public Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionWatcherAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_WorkspaceStateTransitionWatcherAspect$1$614e3726proceed(Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/animation/Animator;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_WorkspaceStateTransitionWatcherAspect"

    sget-object v2, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_WorkspaceStateTransitionWatcherAspect$2$37780436(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.onDestroy())"
    .end annotation

    .prologue
    .line 61
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 63
    invoke-static {v0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->destroy()V

    .line 64
    return-void
.end method

.method public ajc$around$com_lge_launcher3_WorkspaceStateTransitionWatcherAspect$1$614e3726(Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/animation/Animator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace$State;",
            "IZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/aspectj/runtime/internal/AroundClosure;",
            "Lorg/aspectj/lang/JoinPoint;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "toState,toPage,animated,hasOverlaySearchBar,layerViews,ajc$aroundClosure"
        value = "(execution(public Animator Workspace.setStateWithAnimation(..)) && args(toState, toPage, animated, hasOverlaySearchBar, layerViews))"
    .end annotation

    .prologue
    .line 31
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 32
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    move-result-object v2

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mState(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->startStateTransition(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V

    .line 36
    invoke-static/range {p1 .. p6}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->ajc$around$com_lge_launcher3_WorkspaceStateTransitionWatcherAspect$1$614e3726proceed(Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/animation/Animator;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_24

    .line 39
    new-instance v2, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect$WorkspaceStateTransitionWatcherAspect$1;

    invoke-direct {v2, p0, v1}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect$WorkspaceStateTransitionWatcherAspect$1;-><init>(Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    :goto_23
    return-object v0

    .line 48
    :cond_24
    invoke-static {v1}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->endStateTransition()V

    goto :goto_23
.end method
