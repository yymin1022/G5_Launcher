.class public Lcom/lge/launcher3/liveicon/LiveIconAspect;
.super Ljava/lang/Object;
.source "LiveIconAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/liveicon/LiveIconAspect;


# instance fields
.field private mLauncherListener:Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;

.field private mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1;-><init>(Lcom/lge/launcher3/liveicon/LiveIconAspect;)V

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->mLauncherListener:Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/liveicon/LiveIconAspect;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_liveicon_LiveIconAspect$6$d28085ffproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_liveicon_LiveIconAspect$7$d6c58fcproceed(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3, p4}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_launcher3_liveicon_LiveIconAspect$com_lge_launcher3_liveicon_LiveIconAspect$mLiveIconManager(Lcom/lge/launcher3/liveicon/LiveIconAspect;)Lcom/lge/launcher3/liveicon/LiveIconManager;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_launcher3_liveicon_LiveIconAspect$com_lge_launcher3_liveicon_LiveIconAspect$mLiveIconManager(Lcom/lge/launcher3/liveicon/LiveIconAspect;Lcom/lge/launcher3/liveicon/LiveIconManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_liveicon_LiveIconAspect$com_android_launcher3_LauncherModel$onLiveIconUpdated(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 9

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v1

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->ajc$get$sBgLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 112
    :try_start_e
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 111
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_61

    .line 125
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 127
    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->ajc$get$mHandler(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/DeferredHandler;

    move-result-object v0

    new-instance v3, Lcom/android/launcher3/LauncherModel$LiveIconAspect$1;

    invoke-direct {v3, p0, v1, v2, p2}, Lcom/android/launcher3/LauncherModel$LiveIconAspect$1;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 138
    :cond_2d
    return-void

    .line 112
    :cond_2e
    :try_start_2e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 113
    instance-of v5, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v5, :cond_14

    iget-object v5, v0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {p2, v5}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 114
    iget v5, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v5, :cond_14

    .line 115
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 116
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 117
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 118
    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->ajc$get$mIconCache(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/IconCache;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/launcher3/ShortcutInfo;->updateIcon(Lcom/android/launcher3/IconCache;)V

    .line 119
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 111
    :catchall_61
    move-exception v0

    monitor-exit v3
    :try_end_63
    .catchall {:try_start_2e .. :try_end_63} :catchall_61

    throw v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_liveicon_LiveIconAspect$com_android_launcher3_LauncherModel$onLiveIconUpdated(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->onLiveIconUpdated(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/liveicon/LiveIconAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/liveicon/LiveIconAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/liveicon/LiveIconAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/liveicon/LiveIconAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/liveicon/LiveIconAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_liveicon_LiveIconAspect"

    sget-object v2, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/liveicon/LiveIconAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/liveicon/LiveIconAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$1$2f7b6933(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "app,iconCache,appFilter"
        value = "(initialization(LauncherModel.new(LauncherAppState, IconCache, AppFilter)) && args(app, iconCache, appFilter))"
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/lge/launcher3/liveicon/LiveIconManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/liveicon/LiveIconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->mWorkerHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method public ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$2$119b79fc()V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "onCreate()"
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    iget-object v1, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->mLauncherListener:Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/liveicon/LiveIconManager;->registerOnLiveIconUpdateListener(Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;)V

    .line 59
    return-void
.end method

.method public ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$3$911698ed()V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "onResume()"
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIconManager;->start()V

    .line 63
    return-void
.end method

.method public ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$4$19154e45()V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "onScreenOff()"
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIconManager;->stop()V

    .line 67
    return-void
.end method

.method public ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$5$7495cb5c()V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "onDestroy()"
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIconManager;->stop()V

    .line 71
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    iget-object v1, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect;->mLauncherListener:Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/liveicon/LiveIconManager;->unregisterOnLiveIconUpdateListener(Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;)V

    .line 72
    return-void
.end method

.method public ajc$around$com_lge_launcher3_liveicon_LiveIconAspect$6$d28085ff(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(Drawable LauncherActivityInfoCompatVL.getBadgedIcon(..))"
    .end annotation

    .prologue
    .line 76
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    .line 75
    check-cast v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;

    .line 78
    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->getUser()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    .line 79
    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-static {p0}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_liveicon_LiveIconAspect$com_lge_launcher3_liveicon_LiveIconAspect$mLiveIconManager(Lcom/lge/launcher3/liveicon/LiveIconAspect;)Lcom/lge/launcher3/liveicon/LiveIconManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/launcher3/liveicon/LiveIconManager;->hasLiveIcon(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 83
    invoke-static {p0}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_liveicon_LiveIconAspect$com_lge_launcher3_liveicon_LiveIconAspect$mLiveIconManager(Lcom/lge/launcher3/liveicon/LiveIconAspect;)Lcom/lge/launcher3/liveicon/LiveIconManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/lge/launcher3/liveicon/LiveIconManager;->getBadgedIcon(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    :cond_21
    if-nez v0, :cond_27

    .line 87
    invoke-static {p1}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$around$com_lge_launcher3_liveicon_LiveIconAspect$6$d28085ffproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    :cond_27
    return-object v0
.end method

.method public ajc$around$com_lge_launcher3_liveicon_LiveIconAspect$7$d6c58fc(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 9
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "values,key,info,userSerial,ajc$aroundClosure"
        value = "(execution(void IconCache.addIconToDB(ContentValues, ComponentName, PackageInfo, long)) && args(values, key, info, userSerial))"
    .end annotation

    .prologue
    .line 96
    invoke-static {p0}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_liveicon_LiveIconAspect$com_lge_launcher3_liveicon_LiveIconAspect$mLiveIconManager(Lcom/lge/launcher3/liveicon/LiveIconAspect;)Lcom/lge/launcher3/liveicon/LiveIconManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/launcher3/liveicon/LiveIconManager;->hasLiveIcon(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 97
    invoke-static/range {p1 .. p6}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$around$com_lge_launcher3_liveicon_LiveIconAspect$7$d6c58fcproceed(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JLorg/aspectj/runtime/internal/AroundClosure;)V

    .line 99
    :cond_d
    return-void
.end method
