.class public Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostViewAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAppWidgetHostViewAspect$1$35986fefproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAppWidgetHostViewAspect$2$2ac4f69fproceed(Landroid/graphics/Canvas;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAppWidgetHostViewAspect$3$7f569b26proceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
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

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAppWidgetHostViewAspect$4$9023823aproceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 52
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

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_LauncherAppWidgetHostViewAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAppWidgetHostViewAspect$1$35986fef(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(protected void LauncherAppWidgetHostView.onMeasure(..))"
    .end annotation

    .prologue
    .line 30
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 31
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 32
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 33
    invoke-static {v0, v2, v1}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$onMeasureAround(Lcom/android/launcher3/LauncherAppWidgetHostView;II)V

    .line 34
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAppWidgetHostViewAspect$2$2ac4f69f(Landroid/graphics/Canvas;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "canvas,ajc$aroundClosure"
        value = "(execution(protected void LauncherAppWidgetHostView.dispatchDraw(Canvas)) && args(canvas))"
    .end annotation

    .prologue
    .line 37
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 38
    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$dispatchDrawAround(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/graphics/Canvas;)V

    .line 39
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAppWidgetHostViewAspect$3$7f569b26(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ev,ajc$aroundClosure"
        value = "(execution(boolean LauncherAppWidgetHostView.onInterceptTouchEvent(..)) && args(ev))"
    .end annotation

    .prologue
    .line 43
    invoke-static {p1, p2}, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherAppWidgetHostViewAspect$3$7f569b26proceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v1

    .line 44
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 45
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$get$mContext(Lcom/android/launcher3/LauncherAppWidgetHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAppWidgetHostViewAspect$4$9023823a(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ev,ajc$aroundClosure"
        value = "(execution(boolean LauncherAppWidgetHostView.onTouchEvent(..)) && args(ev))"
    .end annotation

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherAppWidgetHostViewAspect$4$9023823aproceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v1

    .line 54
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 55
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$get$mContext(Lcom/android/launcher3/LauncherAppWidgetHostView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 56
    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$onTouchEventCallSuper(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 58
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c
.end method
