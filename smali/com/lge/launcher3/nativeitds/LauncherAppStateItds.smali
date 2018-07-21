.class public Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;
.super Ljava/lang/Object;
.source "LauncherAppStateItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$clearNReloadWorkspace(Lcom/android/launcher3/LauncherAppState;)V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 24
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->ajc$get$mModel(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    .line 25
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->ajc$get$mModel(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    const/16 v1, -0x3e9

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->startLoader(II)V

    .line 26
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$setLauncherProviderSafely(Lcom/android/launcher3/LauncherProvider;)V
    .registers 4

    .prologue
    .line 29
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->ajc$get$sLauncherProvider()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->ajc$get$sLauncherProvider()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    .line 30
    :cond_10
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->ajc$set$sLauncherProvider(Ljava/lang/ref/WeakReference;)V

    .line 34
    :goto_18
    return-void

    .line 32
    :cond_19
    sget-object v0, Lcom/lge/launcher3/util/LGLog;->stack:Lcom/lge/launcher3/util/LGLog$StackLogger;

    invoke-static {}, Lcom/android/launcher3/Launcher;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Skip setting launcher provider"

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog$StackLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$updateValues(Lcom/android/launcher3/LauncherAppState;)V
    .registers 3

    .prologue
    .line 16
    new-instance v0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->ajc$get$sContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherAppState;->ajc$set$mInvariantDeviceProfile(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 18
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->ajc$get$mIconCache(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/IconCache;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 19
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->ajc$get$mIconCache(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/IconCache;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->ajc$get$mInvariantDeviceProfile(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$updateInvariantDeviceProfile(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 21
    :cond_1d
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$clearNReloadWorkspace(Lcom/android/launcher3/LauncherAppState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->clearNReloadWorkspace()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$setLauncherProviderSafely(Lcom/android/launcher3/LauncherProvider;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->setLauncherProviderSafely(Lcom/android/launcher3/LauncherProvider;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$updateValues(Lcom/android/launcher3/LauncherAppState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->updateValues()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_LauncherAppStateItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
