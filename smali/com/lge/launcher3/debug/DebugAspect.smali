.class public Lcom/lge/launcher3/debug/DebugAspect;
.super Ljava/lang/Object;
.source "DebugAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/debug/DebugAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/debug/DebugAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/debug/DebugAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_debug_DebugAspect$1$1251388bproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final ajc$if$1$bea17258()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/lge/launcher3/config/LGFeatureConfig;->sDebugLauncherModel:Z

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/debug/DebugAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/debug/DebugAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/debug/DebugAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/DebugAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/debug/DebugAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/debug/DebugAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/DebugAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_debug_DebugAspect"

    sget-object v2, Lcom/lge/launcher3/debug/DebugAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/debug/DebugAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/DebugAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/debug/DebugAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/DebugAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_debug_DebugAspect$1$1251388b(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "(set(boolean LauncherModel.DEBUG_LOADERS) && (within(LauncherModel) && if(void java.lang.Object.if_())))"
    .end annotation

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    .line 11
    return-void
.end method
