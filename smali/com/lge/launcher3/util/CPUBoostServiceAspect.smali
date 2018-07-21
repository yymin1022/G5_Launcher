.class public Lcom/lge/launcher3/util/CPUBoostServiceAspect;
.super Ljava/lang/Object;
.source "CPUBoostServiceAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/util/CPUBoostServiceAspect;

.field private static sIsInitPowerManager:Z

.field private static sLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->sLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->sIsInitPowerManager:Z

    invoke-static {}, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->ajc$postClinit()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_9
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/util/CPUBoostServiceAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/CPUBoostServiceAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/util/CPUBoostServiceAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/CPUBoostServiceAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_util_CPUBoostServiceAspect"

    sget-object v2, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/CPUBoostServiceAspect;

    return-object v0
.end method

.method public static boostUp(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 45
    sget-boolean v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->sIsInitPowerManager:Z

    if-nez v0, :cond_7

    .line 46
    invoke-static {p0}, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->initLGPowerManager(Landroid/content/Context;)V

    .line 48
    :cond_7
    sget-object v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->sLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-eqz v0, :cond_11

    .line 49
    sget-object v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->sLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/loader/power/ILGPowerManagerLoader;->boost(I)I

    .line 51
    :cond_11
    return-void
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/CPUBoostServiceAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static initLGPowerManager(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->sIsInitPowerManager:Z

    .line 34
    :try_start_4
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 36
    const-string v1, "lgpowermanagerhelper"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Lcom/lge/loader/power/ILGPowerManagerLoader;

    sput-object v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->sLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_13} :catch_18

    .line 42
    :goto_13
    return-void

    .line 38
    :catch_14
    move-exception v0

    sput-object v2, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->sLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    goto :goto_13

    .line 40
    :catch_18
    move-exception v0

    sput-object v2, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->sLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    goto :goto_13
.end method

.method public static scrollboostUp(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 54
    sget-boolean v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->sIsInitPowerManager:Z

    if-nez v0, :cond_7

    .line 55
    invoke-static {p0}, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->initLGPowerManager(Landroid/content/Context;)V

    .line 57
    :cond_7
    sget-object v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->sLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-eqz v0, :cond_12

    .line 58
    sget-object v0, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->sLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/lge/loader/power/ILGPowerManagerLoader;->boost(I)I

    .line 60
    :cond_12
    return-void
.end method


# virtual methods
.method public ajc$before$com_lge_launcher3_util_CPUBoostServiceAspect$1$7097dc15(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "snapToPage()"
    .end annotation

    .prologue
    .line 15
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->scrollboostUp(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public ajc$before$com_lge_launcher3_util_CPUBoostServiceAspect$2$6f1e7bf6(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "v"
        value = "startAppShortcutOrInfoActivity(v)"
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->boostUp(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public ajc$before$com_lge_launcher3_util_CPUBoostServiceAspect$3$92a34dc7(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "initialization(com.android.launcher3.Launcher.new(..))"
    .end annotation

    .prologue
    .line 25
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->boostUp(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method synthetic ajc$pointcut$$onClickAppShortcut$149(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "v"
        value = "(execution(protected void onClickAppShortcut(android.view.View)) && args(v))"
    .end annotation

    .prologue
    .line 11
    return-void
.end method

.method synthetic ajc$pointcut$$snapToPage$f2()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(protected void snapToPage(int, int, int))"
    .end annotation

    .prologue
    .line 10
    return-void
.end method

.method synthetic ajc$pointcut$$startAppShortcutOrInfoActivity$1b4(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "v"
        value = "(execution(* *startAppShortcutOrInfoActivity(android.view.View)) && args(v))"
    .end annotation

    .prologue
    .line 12
    return-void
.end method
