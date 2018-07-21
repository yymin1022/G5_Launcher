.class public Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;
.super Ljava/lang/Object;
.source "SearchDropTargetBarAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$1$57b5cb54proceed(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
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

.method static synthetic ajc$around$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$4$f58530fdproceed(Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$5$d98e28proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
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

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/SearchDropTargetBar;->ajc$get$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/SearchDropTargetBar;->ajc$get$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)V
    .registers 1

    .prologue
    .line 18
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)V
    .registers 1

    .prologue
    .line 19
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/SearchDropTargetBar;->ajc$set$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/ButtonDropTarget;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/SearchDropTargetBar;->ajc$set$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/ButtonDropTarget;)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$initAdditionalDropTargets(Lcom/android/launcher3/SearchDropTargetBar;)V
    .registers 3

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/launcher3/SearchDropTargetBar;->ajc$get$mDropTargetBar(Lcom/android/launcher3/SearchDropTargetBar;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {p0, v0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 66
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher3/SearchDropTargetBar;)V

    .line 68
    invoke-static {p0}, Lcom/android/launcher3/SearchDropTargetBar;->ajc$get$mDropTargetBar(Lcom/android/launcher3/SearchDropTargetBar;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {p0, v0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 69
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher3/SearchDropTargetBar;)V

    .line 70
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$setupAdditionalDropTargets(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;)V
    .registers 4

    .prologue
    .line 45
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/DragController;->addDragListener(Lcom/android/launcher3/DragController$DragListener;)V

    .line 46
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 47
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setLauncher(Lcom/android/launcher3/Launcher;)V

    .line 49
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/DragController;->addDragListener(Lcom/android/launcher3/DragController$DragListener;)V

    .line 50
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 51
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setLauncher(Lcom/android/launcher3/Launcher;)V

    .line 52
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$initAdditionalDropTargets(Lcom/android/launcher3/SearchDropTargetBar;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/SearchDropTargetBar;->ajc$interMethodDispatch2$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$initAdditionalDropTargets()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$setupAdditionalDropTargets(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/SearchDropTargetBar;->ajc$interMethodDispatch2$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$setupAdditionalDropTargets(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_droptarget_SearchDropTargetBarAspect"

    sget-object v2, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$2$e6100280(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void SearchDropTargetBar.onFinishInflate())"
    .end annotation

    .prologue
    .line 57
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/SearchDropTargetBar;

    .line 59
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$initAdditionalDropTargets(Lcom/android/launcher3/SearchDropTargetBar;)V

    .line 60
    return-void
.end method

.method public ajc$after$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$3$51b4f3b1(ZLorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "enable"
        value = "(execution(public void SearchDropTargetBar.enableAccessibleDrag(boolean)) && args(enable))"
    .end annotation

    .prologue
    .line 77
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/SearchDropTargetBar;

    .line 79
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/ButtonDropTarget;->enableAccessibleDrag(Z)V

    .line 80
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ButtonDropTarget;->enableAccessibleDrag(Z)V

    .line 81
    return-void
.end method

.method public ajc$around$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$1$57b5cb54(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "launcher,dragController,ajc$aroundClosure"
        value = "(execution(public void SearchDropTargetBar.setup(..)) && args(launcher, dragController))"
    .end annotation

    .prologue
    .line 28
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/SearchDropTargetBar;

    .line 29
    invoke-static {p1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isSafeMode(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    .line 30
    if-eqz v1, :cond_d

    .line 37
    :goto_c
    return-void

    .line 34
    :cond_d
    invoke-static {p1, p2, p3}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$around$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$1$57b5cb54proceed(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 36
    invoke-static {v0, p1, p2}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$setupAdditionalDropTargets(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;)V

    goto :goto_c
.end method

.method public ajc$around$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$4$f58530fd(Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "source,info,dragAction,ajc$aroundClosure"
        value = "(execution(public void SearchDropTargetBar.onDragStart(..)) && args(source, info, dragAction))"
    .end annotation

    .prologue
    .line 90
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/SearchDropTargetBar;

    .line 91
    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 98
    :goto_14
    return-void

    .line 97
    :cond_15
    invoke-static {p1, p2, p3, p4}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$around$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$4$f58530fdproceed(Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_14
.end method

.method public ajc$around$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$5$d98e28(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public void SearchDropTargetBar.onDragEnd())"
    .end annotation

    .prologue
    .line 103
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/SearchDropTargetBar;

    .line 104
    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 107
    invoke-static {v0}, Lcom/android/launcher3/SearchDropTargetBar;->ajc$get$mDropTargetBar(Lcom/android/launcher3/SearchDropTargetBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_22

    .line 113
    :goto_21
    return-void

    .line 112
    :cond_22
    invoke-static {p1}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$around$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$5$d98e28proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_21
.end method
