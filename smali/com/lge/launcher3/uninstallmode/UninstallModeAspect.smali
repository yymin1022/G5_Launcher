.class public Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;
.super Ljava/lang/Object;
.source "UninstallModeAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_uninstallmode_UninstallModeAspect"

    sget-object v2, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_uninstallmode_UninstallModeAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.finishBindingItems())"
    .end annotation

    .prologue
    .line 22
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 23
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    .line 24
    if-nez v1, :cond_d

    .line 30
    :goto_c
    return-void

    .line 28
    :cond_d
    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->onBindingFinished(Lcom/android/launcher3/Workspace;)V

    goto :goto_c
.end method

.method public ajc$after$com_lge_launcher3_uninstallmode_UninstallModeAspect$2$b1c5ccab(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "(execution(protected void Launcher.showWorkspace(int, boolean, Runnable)) && within(Launcher))"
    .end annotation

    .prologue
    .line 35
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 36
    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->exitUninstallMode(Lcom/android/launcher3/Launcher;)V

    .line 39
    return-void
.end method

.method public ajc$before$com_lge_launcher3_uninstallmode_UninstallModeAspect$3$37780436(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "execution(public void Launcher.onDestroy())"
    .end annotation

    .prologue
    .line 44
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 45
    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->destroy()V

    .line 48
    return-void
.end method
