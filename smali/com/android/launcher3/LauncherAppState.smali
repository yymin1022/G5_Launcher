.class public Lcom/android/launcher3/LauncherAppState;
.super Ljava/lang/Object;
.source "LauncherAppState.java"


# static fields
.field public static final BYPASS_NATIVE_CODES:Z

.field private static INSTANCE:Lcom/android/launcher3/LauncherAppState;

.field private static sContext:Landroid/content/Context;

.field private static sLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field private final mAppFilter:Lcom/android/launcher3/AppFilter;

.field private final mBuildInfo:Lcom/android/launcher3/BuildInfo;

.field private mIconCache:Lcom/android/launcher3/IconCache;

.field private mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

.field final mModel:Lcom/android/launcher3/LauncherModel;

.field private mWallpaperChangedSinceLastCheck:Z

.field private final mWidgetCache:Lcom/android/launcher3/WidgetPreviewLoader;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LauncherAppState inited before app context set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_f
    const-string v0, "Launcher"

    const-string v1, "LauncherAppState inited"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 86
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    const-string v1, "L"

    invoke-static {v0, v1}, Lcom/android/launcher3/MemoryTracker;->startTrackingMe(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    :cond_2c
    new-instance v0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;

    sget-object v1, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 90
    new-instance v0, Lcom/android/launcher3/IconCache;

    sget-object v1, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/IconCache;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 91
    new-instance v0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;

    sget-object v1, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;-><init>(Landroid/content/Context;Lcom/android/launcher3/IconCache;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mWidgetCache:Lcom/android/launcher3/WidgetPreviewLoader;

    .line 93
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/AppFilter;->loadByName(Ljava/lang/String;)Lcom/android/launcher3/AppFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mAppFilter:Lcom/android/launcher3/AppFilter;

    .line 94
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BuildInfo;->loadByName(Ljava/lang/String;)Lcom/android/launcher3/BuildInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mBuildInfo:Lcom/android/launcher3/BuildInfo;

    .line 95
    new-instance v0, Lcom/android/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mAppFilter:Lcom/android/launcher3/AppFilter;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/LauncherModel;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 97
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_RELOAD_CUSTOMCONTENT:Lcom/lge/launcher3/config/IntentConst$Action;

    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "com.lge.launcher2.FORCERELOAD_HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "com.lge.launcher2.ADD_WIDGET_IN_NEWPAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "com.lge.launcher2.LLK_RESTORE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public static ajc$get$mIconCache(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/IconCache;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    return-object v0
.end method

.method public static ajc$get$mInvariantDeviceProfile(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/InvariantDeviceProfile;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    return-object v0
.end method

.method public static ajc$get$mModel(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/LauncherModel;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public static ajc$get$sContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static ajc$get$sLauncherProvider()Ljava/lang/ref/WeakReference;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static ajc$set$mIconCache(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/IconCache;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    return-void
.end method

.method public static ajc$set$mInvariantDeviceProfile(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    return-void
.end method

.method public static ajc$set$mModel(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-void
.end method

.method public static ajc$set$sContext(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static ajc$set$sLauncherProvider(Ljava/lang/ref/WeakReference;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/LauncherAppState;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/android/launcher3/LauncherAppState;

    invoke-direct {v0}, Lcom/android/launcher3/LauncherAppState;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    .line 60
    :cond_b
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    return-object v0
.end method

.method public static getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    return-object v0
.end method

.method public static getLauncherProvider()Lcom/android/launcher3/LauncherProvider;
    .registers 1

    .prologue
    .line 160
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherProvider;

    return-object v0
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 164
    const-string v0, "com.android.launcher3.prefs"

    return-object v0
.end method

.method public static isDisableAllApps()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps_aroundBody3$advice(Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method private static final isDisableAllApps_aroundBody2()Z
    .registers 1

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method private static final isDisableAllApps_aroundBody3$advice(Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 3

    .prologue
    .line 33
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_ALLAPPSLESS:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    return v0
.end method

.method public static isDogfoodBuild()Z
    .registers 1

    .prologue
    .line 186
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mBuildInfo:Lcom/android/launcher3/BuildInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/BuildInfo;->isDogfoodBuild()Z

    move-result v0

    return v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 72
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_24

    .line 73
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setApplicationContext called twice! old="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method static setLauncherProvider(Lcom/android/launcher3/LauncherProvider;)V
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p0, v1}, Lcom/android/launcher3/LauncherAppState;->setLauncherProvider_aroundBody1$advice(Lcom/android/launcher3/LauncherProvider;Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;Lcom/android/launcher3/LauncherProvider;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public static setLauncherProviderSafely(Lcom/android/launcher3/LauncherProvider;)V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$setLauncherProviderSafely(Lcom/android/launcher3/LauncherProvider;)V

    return-void
.end method

.method private static final setLauncherProvider_aroundBody0(Lcom/android/launcher3/LauncherProvider;)V
    .registers 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher3/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    .line 157
    return-void
.end method

.method private static final setLauncherProvider_aroundBody1$advice(Lcom/android/launcher3/LauncherProvider;Lcom/lge/launcher3/nativejoin/LauncherAppStateAspect;Lcom/android/launcher3/LauncherProvider;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4

    .prologue
    .line 9
    invoke-static {p2}, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$setLauncherProviderSafely(Lcom/android/launcher3/LauncherProvider;)V

    .line 10
    return-void
.end method


# virtual methods
.method public clearNReloadWorkspace()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$clearNReloadWorkspace(Lcom/android/launcher3/LauncherAppState;)V

    return-void
.end method

.method public getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 68
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIconCache()Lcom/android/launcher3/IconCache;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    return-object v0
.end method

.method public getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher3/LauncherModel;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mWidgetCache:Lcom/android/launcher3/WidgetPreviewLoader;

    return-object v0
.end method

.method public hasWallpaperChangedSinceLastCheck()Z
    .registers 3

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppState;->mWallpaperChangedSinceLastCheck:Z

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/LauncherAppState;->mWallpaperChangedSinceLastCheck:Z

    .line 178
    return v0
.end method

.method public onTerminate()V
    .registers 3

    .prologue
    .line 120
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 123
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/PackageInstallerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/compat/PackageInstallerCompat;->onStop()V

    .line 124
    return-void
.end method

.method public onWallpaperChanged()V
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppState;->mWallpaperChangedSinceLastCheck:Z

    .line 173
    return-void
.end method

.method public reloadWorkspace()V
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->startLoaderFromBackground()V

    .line 133
    return-void
.end method

.method setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;
    .registers 3

    .prologue
    .line 136
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherProvider;->setLauncherProviderChangeListener(Lcom/android/launcher3/LauncherProviderChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->initialize(Lcom/android/launcher3/LauncherModel$Callbacks;)V

    .line 138
    if-eqz p1, :cond_1e

    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 139
    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-direct {v0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 138
    :goto_19
    iput-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0

    .line 139
    :cond_1e
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public updateValues()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$updateValues(Lcom/android/launcher3/LauncherAppState;)V

    return-void
.end method
