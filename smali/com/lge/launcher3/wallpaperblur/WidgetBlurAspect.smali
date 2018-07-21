.class public Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;
.super Ljava/lang/Object;
.source "WidgetBlurAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final TRANSITION_NAME:Ljava/lang/String; = "widget_blur_bg"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    :try_start_0
    const-class v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 31
    :goto_b
    return-void

    .line 30
    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$9$58e5c056proceed(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/animation/AnimatorSet;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-virtual {p6, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$mWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$get$mWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$mWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)V
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$mWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$mWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$set$mWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$getWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;
    .registers 2

    .prologue
    .line 112
    invoke-static {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$mWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$hasWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Z
    .registers 2

    .prologue
    .line 105
    invoke-static {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$mWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$getWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getWidgetBlurLayout()Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$hasWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->hasWidgetBlurLayout()Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_wallpaperblur_WidgetBlurAspect"

    sget-object v2, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$1$b65b1a93(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void Launcher.setupViews())"
    .end annotation

    .prologue
    .line 41
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 42
    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->setLauncher(Lcom/android/launcher3/Launcher;)V

    .line 45
    return-void
.end method

.method public ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$2$37780436(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.onDestroy())"
    .end annotation

    .prologue
    .line 50
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 51
    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->destroy()V

    .line 54
    return-void
.end method

.method public ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$3$3331334(ILandroid/appwidget/AppWidgetProviderInfo;Lorg/aspectj/lang/JoinPoint;)V
    .registers 10
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "appWidgetId,info"
        value = "(execution(public void LauncherAppWidgetHostView.setAppWidget(int, AppWidgetProviderInfo)) && args(appWidgetId, info))"
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 72
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 73
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$get$mContext(Lcom/android/launcher3/LauncherAppWidgetHostView;)Landroid/content/Context;

    move-result-object v3

    .line 74
    invoke-static {v3}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;

    move-result-object v4

    .line 77
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 78
    if-nez v5, :cond_16

    .line 99
    :cond_15
    :goto_15
    return-void

    .line 82
    :cond_16
    const/4 v1, 0x0

    .line 83
    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v4, v5}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    move v1, v2

    .line 88
    :cond_24
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$privMethod$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$getDefaultView()Landroid/view/View;

    move-result-object v4

    .line 89
    if-eqz v4, :cond_37

    const-string v5, "widget_blur_bg"

    invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    move v1, v2

    .line 93
    :cond_37
    if-eqz v1, :cond_15

    .line 97
    new-instance v1, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    invoke-direct {v1, v3}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$mWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;)V

    .line 98
    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$mWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->addView(Landroid/view/View;)V

    goto :goto_15
.end method

.method public ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$4$e9f7167d(Lcom/android/launcher3/Launcher;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "launcher"
        value = "(execution(void LauncherAppWidgetInfo.onBindAppWidget(Launcher)) && args(launcher))"
    .end annotation

    .prologue
    .line 127
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 128
    invoke-static {p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v1

    .line 130
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->ajc$get$hostView(Lcom/android/launcher3/LauncherAppWidgetInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableBlurViewIfAddedInCurrentPage(Landroid/view/View;Z)V

    .line 131
    return-void
.end method

.method public ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$5$d25310a2(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void Workspace.onPageBeginMoving())"
    .end annotation

    .prologue
    .line 142
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 143
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 145
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mState(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v1, v3, :cond_2a

    const/4 v1, 0x1

    .line 146
    :goto_13
    invoke-static {v2}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->isStateTransitioning()Z

    move-result v3

    .line 154
    if-eqz v1, :cond_29

    if-nez v3, :cond_29

    .line 155
    new-instance v1, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect$WidgetBlurAspect$1;

    invoke-direct {v1, p0, v2}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect$WidgetBlurAspect$1;-><init>(Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;Landroid/content/Context;)V

    .line 160
    const-wide/16 v2, 0x14

    .line 155
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    :cond_29
    return-void

    .line 145
    :cond_2a
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$6$a81ba8f0(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void Workspace.onPageEndMoving())"
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 167
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 168
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 170
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mState(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v3, :cond_28

    move v0, v1

    .line 171
    :goto_14
    invoke-static {v2}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->isStateTransitioning()Z

    move-result v3

    .line 179
    if-eqz v0, :cond_27

    if-nez v3, :cond_27

    .line 180
    invoke-static {v2}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableBlurViewInCurrentPage(Z)V

    .line 182
    :cond_27
    return-void

    .line 170
    :cond_28
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$8$15e41f19(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void Workspace.onResume())"
    .end annotation

    .prologue
    .line 203
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 204
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->determineToRemovBlurView()V

    .line 207
    return-void
.end method

.method public ajc$around$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$9$58e5c056(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/animation/AnimatorSet;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace$State;",
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
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "fromState,toState,toPage,animated,hasOverlaySearchBar,layerViews,ajc$aroundClosure"
        value = "(execution(public AnimatorSet WorkspaceStateTransitionAnimation.getAnimationToState(..)) && args(fromState, toState, toPage, animated, hasOverlaySearchBar, layerViews))"
    .end annotation

    .prologue
    .line 230
    invoke-interface {p8}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    .line 231
    invoke-static {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mLauncher(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 233
    invoke-static/range {p1 .. p7}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$around$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$9$58e5c056proceed(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_1b

    .line 236
    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getWorkspaceStateAnimationListener(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    .line 238
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    :cond_1b
    return-object v1
.end method

.method public ajc$before$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$10$6b00ed44(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "execution(public void DragLayer.clearAllResizeFrames())"
    .end annotation

    .prologue
    .line 253
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer;

    .line 254
    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 256
    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->ajc$get$mResizeFrames(Lcom/android/launcher3/DragLayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 257
    if-lez v0, :cond_1c

    .line 262
    invoke-static {v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableResizedFrame(Z)V

    .line 264
    :cond_1c
    return-void
.end method

.method public ajc$before$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$7$8bcb6aa5(Landroid/view/View;Landroid/graphics/Point;Lcom/android/launcher3/DragSource;ZLorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "child,relativeTouchPos,source,accessible"
        value = "(execution(public void Workspace.beginDragShared(View, Point, DragSource, boolean)) && args(child, relativeTouchPos, source, accessible))"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 195
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p1, v1, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableBlurView(Landroid/view/View;ZZ)V

    .line 198
    return-void
.end method
