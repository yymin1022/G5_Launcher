.class public Lcom/lge/launcher3/debug/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Event"

.field private static final VERBOSE:Z

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/debug/EventLogger;

.field public static sElapsedForLauncherBinding:Ljava/lang/String;

.field public static sElapsedForLauncherCreation:Ljava/lang/String;

.field public static sPackageVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    :try_start_0
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lcom/lge/launcher3/debug/EventLogger;->VERBOSE:Z

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/debug/EventLogger;->sPackageVersion:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/debug/EventLogger;->sElapsedForLauncherCreation:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/debug/EventLogger;->sElapsedForLauncherBinding:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/debug/EventLogger;->ajc$postClinit()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1c

    :goto_19
    return-void

    .line 21
    :cond_1a
    const/4 v0, 0x1

    goto :goto_b

    .line 25
    :catch_1c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/debug/EventLogger;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_19
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final ajc$if$2$3fb90562()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/lge/launcher3/debug/EventLogger;->VERBOSE:Z

    return v0
.end method

.method public static final ajc$if$4$3fb90562()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/lge/launcher3/debug/EventLogger;->VERBOSE:Z

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/debug/EventLogger;

    invoke-direct {v0}, Lcom/lge/launcher3/debug/EventLogger;-><init>()V

    sput-object v0, Lcom/lge/launcher3/debug/EventLogger;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/EventLogger;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/debug/EventLogger;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/debug/EventLogger;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/EventLogger;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_debug_EventLogger"

    sget-object v2, Lcom/lge/launcher3/debug/EventLogger;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/debug/EventLogger;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/EventLogger;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/debug/EventLogger;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/EventLogger;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private initPackageVersion(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 41
    sget-object v0, Lcom/lge/launcher3/debug/EventLogger;->sPackageVersion:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 60
    :goto_4
    return-void

    .line 45
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/launcher3/debug/EventLogger$EventLogger$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/launcher3/debug/EventLogger$EventLogger$1;-><init>(Lcom/lge/launcher3/debug/EventLogger;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method private initStaticValues()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/lge/launcher3/debug/EventLogger;->sElapsedForLauncherCreation:Ljava/lang/String;

    .line 37
    sput-object v0, Lcom/lge/launcher3/debug/EventLogger;->sElapsedForLauncherBinding:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_debug_EventLogger$2$15b3fa0d()V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "(onCreate() && if(void java.lang.Object.if_()))"
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lge/launcher3/util/SystemClockUtils;->endElapsedTime(I)J

    move-result-wide v0

    .line 64
    const-string v2, "Event"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Elapsed time for Launcher.onCreate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/debug/EventLogger;->sElapsedForLauncherCreation:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public ajc$after$com_lge_launcher3_debug_EventLogger$4$73cbf6f6()V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "(execution(public void bindAppWidget(..)) && if(void java.lang.Object.if_()))"
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/lge/launcher3/debug/EventLogger;->sElapsedForLauncherBinding:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 74
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lge/launcher3/util/SystemClockUtils;->endElapsedTime(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/debug/EventLogger;->sElapsedForLauncherBinding:Ljava/lang/String;

    .line 76
    :cond_f
    return-void
.end method

.method public ajc$before$com_lge_launcher3_debug_EventLogger$1$119b79fc(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "onCreate()"
    .end annotation

    .prologue
    .line 28
    const-string v0, "Event"

    const-string v1, "Launcher.onCreate"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lge/launcher3/util/SystemClockUtils;->startElapsedTime(I)J

    .line 30
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lge/launcher3/util/SystemClockUtils;->startElapsedTime(I)J

    .line 31
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/debug/EventLogger;->ajc$privMethod$com_lge_launcher3_debug_EventLogger$com_lge_launcher3_debug_EventLogger$initPackageVersion(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/EventLogger;->ajc$privMethod$com_lge_launcher3_debug_EventLogger$com_lge_launcher3_debug_EventLogger$initStaticValues()V

    .line 33
    return-void
.end method

.method public ajc$before$com_lge_launcher3_debug_EventLogger$3$911698ed(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "onResume()"
    .end annotation

    .prologue
    .line 69
    const-string v0, "Event"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launcher.onResume // "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lge/launcher3/debug/EventLogger;->sPackageVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public ajc$before$com_lge_launcher3_debug_EventLogger$5$fee89f71()V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "onCreateEmptyDb()"
    .end annotation

    .prologue
    .line 79
    const-string v0, "Event"

    const-string v1, "Create empty database"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method synthetic ajc$pointcut$$onCreate$24c()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(void com.lge.launcher3.LauncherExtension.onCreate(..))"
    .end annotation

    .prologue
    .line 18
    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_debug_EventLogger$com_lge_launcher3_debug_EventLogger$initPackageVersion(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/lge/launcher3/debug/EventLogger;->initPackageVersion(Landroid/content/Context;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_debug_EventLogger$com_lge_launcher3_debug_EventLogger$initStaticValues()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/lge/launcher3/debug/EventLogger;->initStaticValues()V

    return-void
.end method
