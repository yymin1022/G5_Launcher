.class public Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;
.super Ljava/lang/Object;
.source "ScreenEffectAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_screeneffect_ScreenEffectAspect"

    sget-object v2, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$1$1276f481(Landroid/graphics/Canvas;Lorg/aspectj/lang/JoinPoint;)V
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "canvas"
        value = "(execution(protected void ShortcutAndWidgetContainer.dispatchDraw(Canvas)) && args(canvas))"
    .end annotation

    .prologue
    .line 30
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 33
    const/high16 v1, -0x10000

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->showChildBounds(Landroid/graphics/Canvas;Landroid/view/View;IIZ)V

    .line 34
    return-void
.end method

.method public ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$2$ed5e1510(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(void Workspace.setup(DragController))"
    .end annotation

    .prologue
    .line 45
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 47
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->setTargetView(Landroid/view/ViewGroup;)V

    .line 49
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mDefaultInterpolator(Lcom/android/launcher3/PagedView;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->setNativieDefaultScrollInterpolator(Landroid/view/animation/Interpolator;)V

    .line 50
    return-void
.end method

.method public ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$3$157198f5(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Workspace.createCustomContentContainer())"
    .end annotation

    .prologue
    .line 55
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 56
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    move-result-object v1

    .line 58
    const-wide/16 v2, -0x12d

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 59
    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getSlideScreenEffect()Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCustomScreenEffect(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;)V

    .line 60
    return-void
.end method

.method public ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$4$fca092b8(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void Launcher.onResume())"
    .end annotation

    .prologue
    .line 71
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 72
    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->updateSelectedScreenEffectType()V

    .line 75
    return-void
.end method

.method public ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$5$37780436(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.onDestroy())"
    .end annotation

    .prologue
    .line 80
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 81
    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->destroy()V

    .line 84
    return-void
.end method
