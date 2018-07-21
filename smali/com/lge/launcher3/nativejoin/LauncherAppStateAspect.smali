.class public Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;
.super Ljava/lang/Object;
.source "LauncherAppStateAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAppStateAspect$1$452d122aproceed(Lcom/android/launcher3/LauncherProvider;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_LauncherAppStateAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAppStateAspect$1$452d122a(Lcom/android/launcher3/LauncherProvider;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "provider,ajc$aroundClosure"
        value = "(execution(static void LauncherAppState.setLauncherProvider(LauncherProvider)) && args(provider))"
    .end annotation

    .prologue
    .line 9
    invoke-static {p1}, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$setLauncherProviderSafely(Lcom/android/launcher3/LauncherProvider;)V

    .line 10
    return-void
.end method
