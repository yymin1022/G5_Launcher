.class public Lcom/lge/launcher3/nativejoin/LauncherAspect;
.super Ljava/lang/Object;
.source "LauncherAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAspect;


# instance fields
.field mAddAnimationflag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    :try_start_0
    const-class v0, Lcom/lge/launcher3/nativejoin/LauncherAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherAspect;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/nativejoin/LauncherAspect;->mAddAnimationflag:Z

    .line 72
    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$11$ac0e18beproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/widget/WidgetsContainerView;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetsContainerView;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$13$febb3bd2proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$14$90652159proceed(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$15$3c740420proceed(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$18$cb16dd96proceed(Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$19$2cd9acbcproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$20$4387941dproceed(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 376
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

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$21$7a986bb9proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$7$ab2bbcb0proceed(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$8$6560860dproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherAspect;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$mAddAnimationflag(Lcom/lge/launcher3/nativejoin/LauncherAspect;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/lge/launcher3/nativejoin/LauncherAspect;->mAddAnimationflag:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/launcher3/nativejoin/LauncherAspect;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$mAddAnimationflag(Lcom/lge/launcher3/nativejoin/LauncherAspect;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/lge/launcher3/nativejoin/LauncherAspect;->mAddAnimationflag:Z

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativejoin_LauncherAspect$com_android_launcher3_Launcher$removeWorkspaceEmptyScreen(Lcom/android/launcher3/Launcher;)V
    .registers 6

    .prologue
    .line 418
    const/16 v0, 0x7d0

    .line 419
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 420
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_LauncherAspect$com_android_launcher3_Launcher$removeWorkspaceEmptyScreen(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->removeWorkspaceEmptyScreen()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/LauncherAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/LauncherAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_LauncherAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$1$36fdc4a3(Lcom/android/launcher3/CellLayout;JJIILorg/aspectj/lang/JoinPoint;)V
    .registers 14
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "layout,container,screenId,cellX,cellY"
        value = "addFolder(layout, container, screenId, cellX, cellY)"
    .end annotation

    .prologue
    .line 98
    invoke-interface {p8}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 99
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 100
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 102
    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f0f010b

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 105
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 107
    :cond_2f
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$10$3220629d(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(void Launcher.showOverviewMode(..))"
    .end annotation

    .prologue
    .line 241
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 243
    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 252
    :goto_10
    return-void

    .line 247
    :cond_11
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mDynamicGridPanelView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1c

    .line 248
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mDynamicGridPanelView:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 251
    :cond_1c
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Home_OverviewMode"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$12$149129d0(Lcom/android/launcher3/model/WidgetsModel;Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "model"
        value = "(execution(public void Launcher.bindAllPackages(WidgetsModel)) && args(model))"
    .end annotation

    .prologue
    .line 270
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 272
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    if-nez v1, :cond_11

    if-eqz p1, :cond_11

    .line 273
    invoke-static {v0, p1}, Lcom/android/launcher3/Launcher;->ajc$set$mWidgetsModel(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/WidgetsModel;)V

    .line 275
    :cond_11
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$16$b4b1e481(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "(set(Drawable Launcher.mWorkspaceBackgroundDrawable) && withincode(* *Launcher.setupViews()))"
    .end annotation

    .prologue
    .line 310
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 311
    invoke-static {v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->getAdaptiveTextColor(Landroid/content/Context;)I

    move-result v1

    .line 312
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 313
    if-ne v1, v2, :cond_1c

    const/4 v1, 0x1

    :goto_18
    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$setWorkspaceBG(Lcom/android/launcher3/Launcher;Z)V

    .line 314
    return-void

    .line 313
    :cond_1c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$17$adaa56a3(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(void Launcher.showWidgetsView(..))"
    .end annotation

    .prologue
    .line 318
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 319
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/PageIndicator;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_13

    .line 321
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_13
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    .line 325
    if-eqz v1, :cond_1e

    .line 326
    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->resetMode()V

    .line 328
    :cond_1e
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->lockScreenOrientation()V

    .line 329
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Home_ShowWidgetList"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$2$c0e7b202(ILorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "visibility"
        value = "onWindowVisibilityChanged(visibility)"
    .end annotation

    .prologue
    .line 110
    if-nez p1, :cond_17

    .line 111
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->isLiveWallpaperMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 112
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->runAdaptiveColor(Landroid/content/Context;)V

    .line 115
    :cond_17
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$23$19154e45(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "onScreenOff()"
    .end annotation

    .prologue
    .line 409
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 410
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 412
    if-eqz v0, :cond_d

    .line 413
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateScrollToCurrentPageInNormalState(Lcom/android/launcher3/Workspace;)V

    .line 415
    :cond_d
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$4$119b79fc(Lorg/aspectj/lang/JoinPoint;)V
    .registers 9
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "onCreate()"
    .end annotation

    .prologue
    .line 135
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 137
    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature;->getInstance()Lcom/lge/launcher3/util/LGHomeFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature;->useTheme()Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_ICONCHANGE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 138
    :cond_18
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mLGThemeChange(Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/theme/LGThemeChange;)V

    .line 139
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mLGThemeChange(Lcom/android/launcher3/Launcher;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/theme/LGThemeChange;->validateCurrentTheme()V

    .line 140
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mIconCache(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/IconCache;

    move-result-object v1

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mLGThemeChange(Lcom/android/launcher3/Launcher;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$setChangeIconPackage(Lcom/android/launcher3/IconCache;Lcom/lge/launcher3/infos/IThemePackage;)V

    .line 142
    :cond_35
    sget-boolean v1, Lcom/lge/launcher3/config/LGFeatureConfig;->sDebugMemoryTracking:Z

    if-eqz v1, :cond_68

    .line 143
    new-instance v1, Lcom/android/launcher3/WeightWatcher;

    invoke-direct {v1, v0}, Lcom/android/launcher3/WeightWatcher;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->ajc$set$mWeightWatcher(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    .line 144
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWeightWatcher(Lcom/android/launcher3/Launcher;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 145
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mLauncherView(Lcom/android/launcher3/Launcher;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWeightWatcher(Lcom/android/launcher3/Launcher;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 146
    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 145
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWeightWatcher(Lcom/android/launcher3/Launcher;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :cond_68
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SKT_PHONE_MODE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 150
    new-instance v1, Lcom/lge/launcher3/receiver/TPhoneModeObserver;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/lge/launcher3/receiver/TPhoneModeObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/launcher3/Launcher;->mTPMO:Lcom/lge/launcher3/receiver/TPhoneModeObserver;

    .line 151
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mTPMO:Lcom/lge/launcher3/receiver/TPhoneModeObserver;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->registerObserver(Landroid/content/Context;)V

    .line 152
    new-instance v1, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;

    invoke-direct {v1}, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;-><init>()V

    iput-object v1, v0, Lcom/android/launcher3/Launcher;->mTPMR:Lcom/lge/launcher3/receiver/TPhoneModeReceiver;

    .line 153
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mTPMR:Lcom/lge/launcher3/receiver/TPhoneModeReceiver;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->registerReceiver(Landroid/content/Context;)V

    .line 155
    :cond_99
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$5$7495cb5c(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "onDestroy()"
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 159
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SKT_PHONE_MODE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 160
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mTPMO:Lcom/lge/launcher3/receiver/TPhoneModeObserver;

    if-eqz v1, :cond_1e

    .line 161
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mTPMO:Lcom/lge/launcher3/receiver/TPhoneModeObserver;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->unregisterObserver(Landroid/content/Context;)V

    .line 162
    iput-object v3, v0, Lcom/android/launcher3/Launcher;->mTPMO:Lcom/lge/launcher3/receiver/TPhoneModeObserver;

    .line 164
    :cond_1e
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mTPMR:Lcom/lge/launcher3/receiver/TPhoneModeReceiver;

    if-eqz v1, :cond_2d

    .line 165
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mTPMR:Lcom/lge/launcher3/receiver/TPhoneModeReceiver;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->unregisterReceiver(Landroid/content/Context;)V

    .line 166
    iput-object v3, v0, Lcom/android/launcher3/Launcher;->mTPMR:Lcom/lge/launcher3/receiver/TPhoneModeReceiver;

    .line 169
    :cond_2d
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mLGThemeChange(Lcom/android/launcher3/Launcher;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 170
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mLGThemeChange(Lcom/android/launcher3/Launcher;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/theme/LGThemeChange;->onDestroy()V

    .line 171
    invoke-static {v0, v3}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mLGThemeChange(Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/theme/LGThemeChange;)V

    .line 172
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mIconCache(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/IconCache;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$setChangeIconPackage(Lcom/android/launcher3/IconCache;Lcom/lge/launcher3/infos/IThemePackage;)V

    .line 174
    :cond_44
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$6$625fa02f(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "(onResume() && within(com.android.launcher3.Launcher))"
    .end annotation

    .prologue
    .line 177
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 178
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_28

    .line 179
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 180
    if-eqz v1, :cond_28

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-nez v0, :cond_28

    .line 181
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCrosshairsVisibility(Lcom/android/launcher3/CellLayout;F)V

    .line 184
    :cond_28
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$11$ac0e18be(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/widget/WidgetsContainerView;
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public WidgetsContainerView Launcher.getWidgetsView())"
    .end annotation

    .prologue
    .line 255
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 257
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    if-nez v1, :cond_26

    .line 258
    const v1, 0x7f0e0058

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 259
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->ajc$set$mWidgetsView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/WidgetsContainerView;)V

    .line 260
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/WidgetsContainerView;->setVisibility(I)V

    .line 262
    :cond_26
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsModel(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/model/WidgetsModel;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 263
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsModel(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/model/WidgetsModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/WidgetsContainerView;->addWidgets(Lcom/android/launcher3/model/WidgetsModel;)V

    .line 264
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->ajc$set$mWidgetsModel(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/WidgetsModel;)V

    .line 266
    :cond_41
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$13$febb3bd2(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "(call(boolean Launcher.isOnCustomContent()) && withincode(public boolean onPrepareOptionsMenu(..)))"
    .end annotation

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$14$90652159(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "v,ajc$aroundClosure"
        value = "(execution(void Launcher.startAppShortcutOrInfoActivity(View)) && args(v))"
    .end annotation

    .prologue
    .line 284
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 285
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 287
    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$checkActionCallSelfPermission(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 288
    if-eqz v1, :cond_13

    .line 289
    invoke-static {v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateScrollToCurrentPageInNormalState(Lcom/android/launcher3/Workspace;)V

    .line 292
    :cond_13
    invoke-static {p1, p2}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$14$90652159proceed(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 294
    :cond_16
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$15$3c740420(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "v,ajc$aroundClosure"
        value = "(execution(protected void Launcher.onClickWallpaperPicker(..)) && args(v))"
    .end annotation

    .prologue
    .line 297
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 299
    :try_start_6
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_WALLPAPER_LIST_ACTIVITY:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/android/launcher3/Launcher;->ajc$get$REQUEST_PICK_WALLPAPER()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_18} :catch_26

    .line 304
    :goto_18
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mLauncherCallbacks(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherCallbacks;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 305
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mLauncherCallbacks(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onClickWallpaperPicker(Landroid/view/View;)V

    .line 307
    :cond_25
    return-void

    .line 301
    :catch_26
    move-exception v1

    .line 302
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityNotFoundException - "

    invoke-static {v2, v3, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_18
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$18$cb16dd96(Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 12
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "componentName,flags,user,ajc$aroundClosure"
        value = "(execution(boolean Launcher.startApplicationUninstallActivity(ComponentName, int, UserHandleCompat)) && args(componentName, flags, user))"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 336
    invoke-static {v0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasDeviceOwner(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasProfileOwner(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 337
    :cond_13
    invoke-static {p1, p2, p3, p4}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$18$cb16dd96proceed(Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    .line 362
    :goto_17
    return v0

    .line 340
    :cond_18
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_28

    .line 343
    const v2, 0x7f0f003b

    .line 344
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 345
    goto :goto_17

    .line 347
    :cond_28
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 349
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_DELETE_DIALOG:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "package"

    invoke-static {v5, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 350
    const v1, 0x10808000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    if-eqz p3, :cond_52

    .line 353
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {p3, v3, v1}, Lcom/android/launcher3/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 356
    :cond_52
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne v1, v2, :cond_66

    .line 357
    const-string v1, "startedBy"

    const-string v2, "Widgets"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    :goto_61
    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 362
    const/4 v0, 0x1

    goto :goto_17

    .line 359
    :cond_66
    const-string v1, "startedBy"

    const-string v2, "Workspace"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_61
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$19$2cd9acbc(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "(call(public void Workspace.showOutlinesTemporarily()) && withincode(public void Launcher.onBackPressed()))"
    .end annotation

    .prologue
    .line 370
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$20$4387941d(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "v,ajc$aroundClosure"
        value = "(execution(public boolean Launcher.onLongClick(..)) && args(v))"
    .end annotation

    .prologue
    .line 377
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 379
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 380
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Memory is full. so onLongClick() is canceled."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    .line 384
    :goto_17
    return v0

    :cond_18
    invoke-static {p1, p2}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$20$4387941dproceed(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_17
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$21$7a986bb9(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "call(boolean canRunNewAppsAnimation())"
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->wasNewDbCreated()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 392
    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$mAddAnimationflag(Lcom/lge/launcher3/nativejoin/LauncherAspect;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    .line 395
    :goto_13
    invoke-static {p0, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$inlineAccessFieldSet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$mAddAnimationflag(Lcom/lge/launcher3/nativejoin/LauncherAspect;Z)V

    .line 397
    :goto_16
    if-eqz v0, :cond_1f

    invoke-static {p1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$21$7a986bb9proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :goto_1e
    return v2

    :cond_1f
    move v2, v1

    goto :goto_1e

    :cond_21
    move v0, v2

    goto :goto_13

    :cond_23
    move v0, v2

    goto :goto_16
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$7$ab2bbcb0(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 13
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "v,intent,tag,ajc$aroundClosure"
        value = "(execution(boolean Launcher.startActivitySafely(..)) && args(v, intent, tag))"
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 189
    const-string v0, "com.android.settings.Settings"

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 190
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v0, "LGHome"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "com.android.settings: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/high16 v0, 0x10200000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    :cond_37
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 198
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mIsSafeModeEnabled(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-static {v0, p2}, Lcom/android/launcher3/Utilities;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherAspect$com_android_launcher3_Utilities$isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 199
    const v1, 0x7f0f0020

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    :goto_53
    return v2

    .line 203
    :cond_54
    :try_start_54
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherAspect$com_android_launcher3_Launcher$startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_57
    .catch Landroid/content/ActivityNotFoundException; {:try_start_54 .. :try_end_57} :catch_5a

    move-result v0

    :goto_58
    move v2, v0

    .line 215
    goto :goto_53

    .line 204
    :catch_5a
    move-exception v3

    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 206
    if-nez v1, :cond_6f

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_6f

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_6f
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 210
    const/4 v6, 0x0

    .line 209
    invoke-virtual {v4, v5, v1, v6}, Lcom/lge/mdm/LGMDMManagerInternal;->checkStartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_88

    .line 211
    const v1, 0x7f0f001e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    :cond_88
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unable to launch. tag="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " intent="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_58
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAspect$8$6560860d(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "(set(WidgetsContainerView Launcher.mWidgetsView) && withincode(* *Launcher.setupViews()))"
    .end annotation

    .prologue
    .line 219
    return-void
.end method

.method public ajc$before$com_lge_launcher3_nativejoin_LauncherAspect$22$7730e5ab(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "execution(public void Launcher.closeFolder(..))"
    .end annotation

    .prologue
    .line 403
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 404
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_FINISH_FOLDERPLUS:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    return-void
.end method

.method public ajc$before$com_lge_launcher3_nativejoin_LauncherAspect$3$119b79fc(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "onCreate()"
    .end annotation

    .prologue
    .line 118
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 119
    invoke-static {v0}, Lcom/lge/launcher3/util/LGHomeFeature;->init(Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature;->getInstance()Lcom/lge/launcher3/util/LGHomeFeature;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->reLoadingFeature(Ljava/lang/Object;Lcom/lge/launcher3/util/LGHomeFeature;)V

    .line 121
    sget-boolean v1, Lcom/lge/launcher3/config/LGFeatureConfig;->sDebugPorfileStatup:Z

    if-eqz v1, :cond_46

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/startupTrace"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x6400000

    invoke-static {v0, v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 123
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    .line 124
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 125
    new-instance v1, Lcom/lge/launcher3/nativejoin/LauncherAspect$LauncherAspect$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/nativejoin/LauncherAspect$LauncherAspect$1;-><init>(Lcom/lge/launcher3/nativejoin/LauncherAspect;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 132
    :cond_46
    return-void
.end method

.method public ajc$before$com_lge_launcher3_nativejoin_LauncherAspect$9$3220629d(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "execution(void Launcher.showOverviewMode(..))"
    .end annotation

    .prologue
    .line 223
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 225
    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 238
    :cond_10
    :goto_10
    return-void

    .line 229
    :cond_11
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    if-nez v1, :cond_31

    .line 230
    const v1, 0x7f0e0058

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 231
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->ajc$set$mWidgetsView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/WidgetsContainerView;)V

    .line 232
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/WidgetsContainerView;->setVisibility(I)V

    .line 234
    :cond_31
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsModel(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/model/WidgetsModel;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 235
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsModel(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/model/WidgetsModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/WidgetsContainerView;->addWidgets(Lcom/android/launcher3/model/WidgetsModel;)V

    .line 236
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->ajc$set$mWidgetsModel(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/WidgetsModel;)V

    goto :goto_10
.end method

.method public synthetic ajc$pointcut$$addFolder$f2c(Lcom/android/launcher3/CellLayout;JJII)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "layout,container,screenId,cellX,cellY"
        value = "(execution(* *Launcher.addFolder(com.android.launcher3.CellLayout, long, long, int, int)) && args(layout, container, screenId, cellX, cellY))"
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method public synthetic ajc$pointcut$$getSpanForWidget$e0e(Landroid/content/ComponentName;II)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "component,minWidth,minHeight"
        value = "(execution(* com.android.launcher3.Launcher.getSpanForWidget(android.content.ComponentName, int, int)) && args(component, minWidth, minHeight))"
    .end annotation

    .prologue
    .line 89
    return-void
.end method

.method public synthetic ajc$pointcut$$onCreate$b44()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(protected void com.android.launcher3.Launcher.onCreate(..))"
    .end annotation

    .prologue
    .line 74
    return-void
.end method

.method public synthetic ajc$pointcut$$onDestroy$c3b()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(public void com.android.launcher3.Launcher.onDestroy(..))"
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method public synthetic ajc$pointcut$$onKeyDownAllParam$c8d(ILandroid/view/KeyEvent;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "keyCode,event"
        value = "(execution(* *Launcher.onKeyDown(int, android.view.KeyEvent)) && args(keyCode, event))"
    .end annotation

    .prologue
    .line 82
    return-void
.end method

.method public synthetic ajc$pointcut$$onPause$bea()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(protected void com.android.launcher3.Launcher.onPause(..))"
    .end annotation

    .prologue
    .line 78
    return-void
.end method

.method public synthetic ajc$pointcut$$onResume$b97()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(protected void com.android.launcher3.Launcher.onResume(..))"
    .end annotation

    .prologue
    .line 76
    return-void
.end method

.method public synthetic ajc$pointcut$$onScreenOff$ed6()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(public void com.android.launcher3.Launcher.onScreenOff(..))"
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method public synthetic ajc$pointcut$$onWindowVisibilityChanged$d70(I)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "visibility"
        value = "(execution(public void com.android.launcher3.Launcher.onWindowVisibilityChanged(int)) && args(visibility))"
    .end annotation

    .prologue
    .line 87
    return-void
.end method

.method public synthetic ajc$pointcut$$setupViews$d1d()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(private void com.android.launcher3.Launcher.setupViews())"
    .end annotation

    .prologue
    .line 84
    return-void
.end method
