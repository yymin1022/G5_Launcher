.class public Lcom/lge/launcher3/nativejoin/DragLayerAspect;
.super Ljava/lang/Object;
.source "DragLayerAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/DragLayerAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    :try_start_0
    const-class v0, Lcom/lge/launcher3/nativejoin/DragLayerAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_DragLayerAspect$1$8b0a9b5proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_DragLayerAspect$2$15b7011fproceed(Landroid/view/MotionEvent;ZLorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_DragLayerAspect$3$2b167fb2proceed(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 99
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

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_DragLayerAspect$4$7dea5506proceed(Lcom/android/launcher3/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x5

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

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_launcher3_nativejoin_DragLayerAspect$com_lge_launcher3_nativejoin_DragLayerAspect$blockTouchDown(Lcom/lge/launcher3/nativejoin/DragLayerAspect;Lcom/android/launcher3/Launcher;)Z
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->blockTouchDown(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/DragLayerAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/DragLayerAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/DragLayerAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/DragLayerAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/DragLayerAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_DragLayerAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/DragLayerAspect;

    return-object v0
.end method

.method private blockTouchDown(Lcom/android/launcher3/Launcher;)Z
    .registers 4

    .prologue
    .line 78
    invoke-static {p1}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuideManager;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->isAlreadyShown()Z

    move-result v1

    if-nez v1, :cond_24

    .line 80
    invoke-virtual {v0}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->isReadyToShow()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 81
    invoke-virtual {v0, p1}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->showInitialGuide(Landroid/app/Activity;)Z

    .line 83
    sget-object v0, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->TAG:Ljava/lang/String;

    const-string v1, "blockTouchDown() : Skip touch event until InitialGuide will be shown."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_1a
    const/4 v0, 0x1

    .line 90
    :goto_1b
    return v0

    .line 85
    :cond_1c
    sget-object v0, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->TAG:Ljava/lang/String;

    const-string v1, "blockTouchDown() : Skip touch event until time to be ready to show InitialGuide."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 90
    :cond_24
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/DragLayerAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_nativejoin_DragLayerAspect$1$8b0a9b5(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(void DragLayer.showPageHints())"
    .end annotation

    .prologue
    .line 36
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_DragLayerAspect$2$15b7011f(Landroid/view/MotionEvent;ZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 13
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ev,intercept,ajc$aroundClosure"
        value = "(execution(private boolean DragLayer.handleTouchDown(..)) && args(ev, intercept))"
    .end annotation

    .prologue
    .line 44
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer;

    .line 45
    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_DragLayerAspect$com_lge_launcher3_nativejoin_DragLayerAspect$blockTouchDown(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 48
    const/4 v0, 0x1

    .line 71
    :goto_11
    return v0

    .line 51
    :cond_12
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 54
    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->ajc$get$mResizeFrames(Lcom/android/launcher3/DragLayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_34

    .line 71
    invoke-static {p1, p2, p3}, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->ajc$around$com_lge_launcher3_nativejoin_DragLayerAspect$2$15b7011fproceed(Landroid/view/MotionEvent;ZLorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_11

    .line 54
    :cond_34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 55
    check-cast v0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;

    .line 56
    invoke-virtual {v0, v1}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 58
    invoke-virtual {v0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getLeft()I

    move-result v5

    sub-int v5, v2, v5

    .line 59
    invoke-virtual {v0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getTop()I

    move-result v6

    sub-int v6, v3, v6

    .line 60
    invoke-virtual {v0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getTouchTargetWidth()I

    move-result v7

    if-gt v5, v7, :cond_29

    .line 61
    invoke-virtual {v0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getTouchTargetWidth()I

    move-result v0

    if-ge v6, v0, :cond_29

    .line 63
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_DragLayerAspect$3$2b167fb2(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 12
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "itemInfo,widget,cellLayout,ajc$aroundClosure"
        value = "(execution(public void DragLayer.addResizeFrame(..)) && args(itemInfo, widget, cellLayout))"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 100
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer;

    .line 101
    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->clearAllResizeFrames()V

    .line 105
    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v2, v3, :cond_2c

    .line 107
    invoke-static {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 126
    :goto_2b
    return-void

    .line 111
    :cond_2c
    sget-object v2, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->TAG:Ljava/lang/String;

    const-string v3, "addResizeFrame()"

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v2, Lcom/lge/launcher3/LGAppWidgetResizeFrame;

    invoke-direct {v2, v1, p2, p3, v0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DragLayer;)V

    .line 116
    new-instance v3, Lcom/android/launcher3/DragLayer$LayoutParams;

    invoke-direct {v3, v4, v4}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    .line 117
    iput-boolean v5, v3, Lcom/android/launcher3/DragLayer$LayoutParams;->customPosition:Z

    .line 119
    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->ajc$get$mResizeFrames(Lcom/android/launcher3/DragLayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 123
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->sendAccessibilityEvent(I)V

    .line 125
    invoke-static {v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableResizedFrame(Z)V

    goto :goto_2b
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_DragLayerAspect$4$7dea5506(Lcom/android/launcher3/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 9
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "dragView,child,duration,onFinishAnimationRunnable,anchorView,ajc$aroundClosure"
        value = "(execution(public void DragLayer.animateViewIntoPosition(..)) && args(dragView, child, duration, onFinishAnimationRunnable, anchorView))"
    .end annotation

    .prologue
    .line 131
    if-nez p2, :cond_a

    .line 132
    sget-object v0, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->TAG:Ljava/lang/String;

    const-string v1, "child is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_9
    return-void

    .line 135
    :cond_a
    invoke-static/range {p1 .. p6}, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->ajc$around$com_lge_launcher3_nativejoin_DragLayerAspect$4$7dea5506proceed(Lcom/android/launcher3/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_9
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_DragLayerAspect$com_lge_launcher3_nativejoin_DragLayerAspect$blockTouchDown(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->blockTouchDown(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    return v0
.end method
