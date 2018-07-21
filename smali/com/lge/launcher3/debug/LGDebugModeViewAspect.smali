.class public Lcom/lge/launcher3/debug/LGDebugModeViewAspect;
.super Ljava/lang/Object;
.source "LGDebugModeViewAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/debug/LGDebugModeViewAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/LGDebugModeViewAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/debug/LGDebugModeViewAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/LGDebugModeViewAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_debug_LGDebugModeViewAspect"

    sget-object v2, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/LGDebugModeViewAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/LGDebugModeViewAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_debug_LGDebugModeViewAspect$1$5026dc28(ILandroid/view/KeyEvent;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "keyCode,event"
        value = "(execution(public boolean Launcher.onKeyDown(..)) && args(keyCode, event))"
    .end annotation

    .prologue
    .line 23
    sget-boolean v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_ENABLE_LGLOG:Z

    if-nez v0, :cond_5

    .line 32
    :cond_4
    :goto_4
    return-void

    .line 27
    :cond_5
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 29
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 30
    invoke-static {v0, p1, p2}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->hiddenMenuRunKeyCondition(Landroid/app/Activity;ILandroid/view/KeyEvent;)V

    goto :goto_4
.end method

.method public ajc$after$com_lge_launcher3_debug_LGDebugModeViewAspect$2$3e137309(Lorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void Launcher.onCreate(..))"
    .end annotation

    .prologue
    .line 37
    sget-boolean v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_ENABLE_LGLOG:Z

    if-nez v0, :cond_5

    .line 56
    :cond_4
    :goto_4
    return-void

    .line 41
    :cond_5
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 42
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    new-instance v2, Lcom/lge/launcher3/debug/LGDebugModeViewAspect$LGDebugModeViewAspect$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/lge/launcher3/debug/LGDebugModeViewAspect$LGDebugModeViewAspect$1;-><init>(Lcom/lge/launcher3/debug/LGDebugModeViewAspect;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragLayer;)V

    .line 54
    const-wide/16 v4, 0x1388

    .line 44
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher3/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method
