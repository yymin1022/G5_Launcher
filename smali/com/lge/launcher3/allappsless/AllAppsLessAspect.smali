.class public Lcom/lge/launcher3/allappsless/AllAppsLessAspect;
.super Ljava/lang/Object;
.source "AllAppsLessAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/allappsless/AllAppsLessAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$1$650ba8d8proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$10$e0d65fdcproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$11$1b3ee850proceed(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$12$28357c48proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$13$5f4c6934proceed(Lcom/android/launcher3/DragSource;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$2$5ed56e5cproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$3$a30e7b07proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$4$fe66d088proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$5$4b0d9d5cproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$6$781537d1proceed(Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 75
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

.method static synthetic ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$7$2093b5aaproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$8$bc9a504bproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$9$aad49d37proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_allappsless_AllAppsLessAspect$com_android_launcher3_Hotseat$removeAllViewsInContent(Lcom/android/launcher3/Hotseat;)V
    .registers 2

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/launcher3/Hotseat;->ajc$get$mContent(Lcom/android/launcher3/Hotseat;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->removeAllViewsInLayout()V

    .line 46
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_allappsless_AllAppsLessAspect$com_android_launcher3_Hotseat$removeAllViewsInContent(Lcom/android/launcher3/Hotseat;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->removeAllViewsInContent()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_allappsless_AllAppsLessAspect"

    sget-object v2, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$1$650ba8d8(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public static boolean LauncherAppState.isDisableAllApps())"
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_ALLAPPSLESS:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$10$e0d65fdc(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public void AllAppsContainerView.removeApps(..))"
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-nez v0, :cond_9

    .line 104
    invoke-static {p1}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$10$e0d65fdcproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 106
    :cond_9
    return-void
.end method

.method public ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$11$1b3ee850(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "info,context,ajc$aroundClosure"
        value = "(execution(private void queuePendingShortcutInfo(InstallShortcutReceiver.PendingInstallShortcutInfo, Context)) && args(info, context))"
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->isLuncherActivity()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 116
    :goto_c
    return-void

    .line 115
    :cond_d
    invoke-static {p1, p2, p3}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$11$1b3ee850proceed(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;Lorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_c
.end method

.method public ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$12$28357c48(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "(set(AllAppsContainerView Launcher.mAppsView) && withincode(* *Launcher.setupViews()))"
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-nez v0, :cond_26

    .line 120
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 121
    const v1, 0x7f0e005a

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 122
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->ajc$set$mAppsView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AllAppsContainerView;)V

    .line 123
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mAppsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 125
    :cond_26
    return-void
.end method

.method public ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$13$5f4c6934(Lcom/android/launcher3/DragSource;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "source,info,ajc$aroundClosure"
        value = "(execution(protected boolean DeleteDropTarget.supportsDrop(..)) && args(source, info))"
    .end annotation

    .prologue
    .line 129
    invoke-static {p1, p2, p3}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$13$5f4c6934proceed(Lcom/android/launcher3/DragSource;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v1

    .line 131
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 132
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DeleteDropTarget;

    .line 134
    invoke-virtual {v0}, Lcom/android/launcher3/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    invoke-static {v0, p2}, Lcom/lge/launcher3/droptarget/ButtonDropTargetUtils;->isShortcutWithApplicationType(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    .line 135
    if-nez v1, :cond_1e

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    .line 138
    :goto_1d
    return v0

    .line 135
    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d

    :cond_20
    move v0, v1

    goto :goto_1d
.end method

.method public ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$2$5ed56e5c(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public boolean Hotseat.isAllAppsButtonRank(..))"
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_7
    return v0

    :cond_8
    invoke-static {p1}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$2$5ed56e5cproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_7
.end method

.method public ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$3$a30e7b07(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(void Hotseat.resetLayout(..))"
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 50
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Hotseat;

    .line 51
    invoke-static {v0}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$interMethodDispatch1$com_lge_launcher3_allappsless_AllAppsLessAspect$com_android_launcher3_Hotseat$removeAllViewsInContent(Lcom/android/launcher3/Hotseat;)V

    .line 55
    :goto_f
    return-void

    .line 53
    :cond_10
    invoke-static {p1}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$3$a30e7b07proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_f
.end method

.method public ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$4$fe66d088(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "(execution(public boolean supportsFlingToDelete(..)) && (within(Workspace) || within(Folder)))"
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 60
    const/4 v0, 0x0

    .line 62
    :goto_7
    return v0

    :cond_8
    invoke-static {p1}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$4$fe66d088proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_7
.end method

.method public ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$5$4b0d9d5c(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public boolean supportsAppInfoDropTarget(..))"
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_7
    return v0

    :cond_8
    invoke-static {p1}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$5$4b0d9d5cproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_7
.end method

.method public ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$6$781537d1(Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "info,ajc$aroundClosure"
        value = "(execution(public boolean DeleteDropTarget.supportsDrop(Object)) && args(info))"
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 77
    instance-of v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-nez v1, :cond_16

    .line 78
    instance-of v1, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_15

    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    iget v1, p1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-eq v1, v0, :cond_16

    .line 77
    :cond_15
    const/4 v0, 0x0

    .line 80
    :cond_16
    :goto_16
    return v0

    :cond_17
    invoke-static {p1, p2}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$6$781537d1proceed(Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_16
.end method

.method public ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$7$2093b5aa(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public void AllAppsContainerView.setApps(..))"
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-nez v0, :cond_9

    .line 86
    invoke-static {p1}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$7$2093b5aaproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 88
    :cond_9
    return-void
.end method

.method public ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$8$bc9a504b(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public void AllAppsContainerView.addApps(..))"
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-nez v0, :cond_9

    .line 92
    invoke-static {p1}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$8$bc9a504bproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 94
    :cond_9
    return-void
.end method

.method public ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$9$aad49d37(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public void AllAppsContainerView.updateApps(..))"
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-nez v0, :cond_9

    .line 98
    invoke-static {p1}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$around$com_lge_launcher3_allappsless_AllAppsLessAspect$9$aad49d37proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 100
    :cond_9
    return-void
.end method
