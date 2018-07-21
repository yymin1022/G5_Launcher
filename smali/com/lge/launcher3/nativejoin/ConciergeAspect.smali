.class public Lcom/lge/launcher3/nativejoin/ConciergeAspect;
.super Ljava/lang/Object;
.source "ConciergeAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/ConciergeAspect;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_ConciergeAspect$6$7bb04ecaproceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
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

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_ConciergeAspect$7$8c35a8dproceed(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 86
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

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_ConciergeAspect$com_lge_launcher3_nativejoin_ConciergeAspect$TAG(Lcom/lge/launcher3/nativejoin/ConciergeAspect;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_launcher3_nativejoin_ConciergeAspect$com_lge_launcher3_nativejoin_ConciergeAspect$TAG(Lcom/lge/launcher3/nativejoin/ConciergeAspect;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/ConciergeAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_ConciergeAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_nativejoin_ConciergeAspect$1$5850f30e(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "newAppWidgetHost()"
    .end annotation

    .prologue
    .line 30
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;

    .line 31
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->getInstance()Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->initConciergeBoardMngr(Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;)V

    .line 32
    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->initPackageUpdateReceiver()V

    .line 33
    iget-object v0, p0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newAppWidgetHost with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->getInstance()Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_ConciergeAspect$2$63993613(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "newAppWidgetHostView()"
    .end annotation

    .prologue
    .line 40
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    .line 41
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->getInstance()Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->setExtViewHostAdapter(Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;)V

    .line 42
    iget-object v0, p0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newAppWidgetHostView with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->getInstance()Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_ConciergeAspect$4$ce606144(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "laucherSetupViews()"
    .end annotation

    .prologue
    .line 57
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/LauncherExtension;

    .line 58
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mDragLayer(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/DragLayer;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->setupExtLayerForAttach(Landroid/view/ViewGroup;)V

    .line 59
    iget-object v1, p0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "laucherSetupViews "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mDragLayer(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_ConciergeAspect$6$7bb04eca(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ev,ajc$aroundClosure"
        value = "(execution(public boolean DragLayer.onInterceptTouchEvent(MotionEvent)) && args(ev))"
    .end annotation

    .prologue
    .line 74
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer;

    .line 75
    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_Launcher$getState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v1, v2, :cond_38

    .line 76
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->isExtViewMode()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 77
    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_ConciergeAspect$com_lge_launcher3_nativejoin_ConciergeAspect$TAG(Lcom/lge/launcher3/nativejoin/ConciergeAspect;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prevent touch event in case that concierge board is extended "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_Launcher$getState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_37
    return v0

    :cond_38
    invoke-static {p1, p2}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$around$com_lge_launcher3_nativejoin_ConciergeAspect$6$7bb04ecaproceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_37
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_ConciergeAspect$7$8c35a8d(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "child,newInsets,oldInsets,ajc$aroundClosure"
        value = "(execution(public void InsettableFrameLayout.setFrameLayoutChildInsets(View, Rect, Rect)) && args(child, newInsets, oldInsets))"
    .end annotation

    .prologue
    .line 88
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InsettableFrameLayout;

    .line 89
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$getForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 90
    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_ConciergeAspect$com_lge_launcher3_nativejoin_ConciergeAspect$TAG(Lcom/lge/launcher3/nativejoin/ConciergeAspect;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setFrameLayoutChildInsets called by extview"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_15
    return-void

    .line 94
    :cond_16
    invoke-static {p1, p2, p3, p4}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$around$com_lge_launcher3_nativejoin_ConciergeAspect$7$8c35a8dproceed(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_15
.end method

.method public ajc$before$com_lge_launcher3_nativejoin_ConciergeAspect$3$c1fdeb49()V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "launcherBindAppWidget()"
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->isExtViewMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 50
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->cancelExtViewMode()V

    .line 52
    :cond_9
    return-void
.end method

.method public ajc$before$com_lge_launcher3_nativejoin_ConciergeAspect$5$7dc45650(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "launcherSetState()"
    .end annotation

    .prologue
    .line 66
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 67
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_Launcher$getState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v1

    .line 68
    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v1, v2, :cond_2b

    const/4 v1, 0x1

    .line 69
    :goto_f
    invoke-static {v1}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->enableConciergeExtView(Z)V

    .line 70
    iget-object v1, p0, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "launcherSetState "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    .line 68
    :cond_2b
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public ajc$before$com_lge_launcher3_nativejoin_ConciergeAspect$8$7f769170()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "onWidgetHostDestroy()"
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->onDestroyHost()V

    .line 103
    return-void
.end method

.method synthetic ajc$declare_parents_1()V
    .registers 1
    .annotation runtime Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
        isExtends = true
        parentTypes = "com.lge.lgewidgetlib.LgeAppWidgetHost"
        targetTypePattern = "com.android.launcher3.LauncherAppWidgetHost"
    .end annotation

    .prologue
    .line 1
    return-void
.end method

.method synthetic ajc$declare_parents_2()V
    .registers 1
    .annotation runtime Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
        isExtends = true
        parentTypes = "com.lge.lgewidgetlib.LgeAppWidgetHostView"
        targetTypePattern = "com.android.launcher3.LauncherAppWidgetHostView"
    .end annotation

    .prologue
    .line 1
    return-void
.end method

.method synthetic ajc$pointcut$$laucherSetupViews$7d4()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(protected void com.android.launcher3.Launcher.setupViews())"
    .end annotation

    .prologue
    .line 54
    return-void
.end method

.method synthetic ajc$pointcut$$launcherBindAppWidget$6d2()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(public void com.android.launcher3.Launcher.bindAppWidget(..))"
    .end annotation

    .prologue
    .line 46
    return-void
.end method

.method synthetic ajc$pointcut$$launcherSetState$935()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(public void com.android.launcher3.Launcher.setState(com.android.launcher3.Launcher$State))"
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method synthetic ajc$pointcut$$newAppWidgetHost$3af()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "initialization(com.android.launcher3.LauncherAppWidgetHost.new(com.android.launcher3.Launcher, int))"
    .end annotation

    .prologue
    .line 27
    return-void
.end method

.method synthetic ajc$pointcut$$newAppWidgetHostView$54d()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "initialization(com.android.launcher3.LauncherAppWidgetHostView.new(android.content.Context))"
    .end annotation

    .prologue
    .line 37
    return-void
.end method

.method synthetic ajc$pointcut$$onWidgetHostDestroy$f07()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "(call(public void com.android.launcher3.LauncherAppWidgetHost.stopListening()) && withincode(public void com.android.launcher3.Launcher.onDestroy()))"
    .end annotation

    .prologue
    .line 99
    return-void
.end method
