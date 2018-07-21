.class public Lcom/android/launcher3/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherModel$AppsAvailabilityCheck;,
        Lcom/android/launcher3/LauncherModel$Callbacks;,
        Lcom/android/launcher3/LauncherModel$ItemInfoFilter;,
        Lcom/android/launcher3/LauncherModel$LoaderTask;,
        Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;
    }
.end annotation


# static fields
.field public static DEBUG_LOADERS:Z = false

.field private static final DEBUG_RECEIVER:Z = false

.field private static final INVALID_SCREEN_ID:J = -0x1L

.field private static final ITEMS_CHUNK:I = 0x6

.field public static final LOADER_FLAG_CLEAR_WORKSPACE:I = 0x1

.field public static final LOADER_FLAG_MIGRATE_SHORTCUTS:I = 0x2

.field public static final LOADER_FLAG_NONE:I = 0x0

.field private static final MIGRATE_AUTHORITY:Ljava/lang/String; = "com.android.launcher2.settings"

.field private static final REMOVE_UNRESTORED_ICONS:Z = true

.field static final TAG:Ljava/lang/String; = "Launcher.Model"

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field static final mBindCompleteRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final mDeferredBindRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgFolders:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgLock:Ljava/lang/Object;

.field public static sBgWidgetProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/android/launcher3/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgWorkspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgWorkspaceScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static final sPendingPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static final sWorker:Landroid/os/Handler;

.field static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field mAllAppsLoaded:Z

.field final mApp:Lcom/android/launcher3/LauncherAppState;

.field private mAppFilter:Lcom/android/launcher3/AppFilter;

.field mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

.field mBgWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

.field mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Lcom/android/launcher3/DeferredHandler;

.field mHasLoaderCompletedOnce:Z

.field mIconCache:Lcom/android/launcher3/IconCache;

.field mIsLoaderTaskRunning:Z

.field final mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field final mLock:Ljava/lang/Object;

.field private final mOldContentProviderExists:Z

.field final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

.field mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->ajc$preClinit()V

    .line 96
    const/4 v0, 0x0

    invoke-static {}, Lcom/lge/launcher3/debug/DebugAspect;->ajc$if$1$bea17258()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-static {}, Lcom/lge/launcher3/debug/DebugAspect;->aspectOf()Lcom/lge/launcher3/debug/DebugAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS_aroundBody1$advice(ZLcom/lge/launcher3/debug/DebugAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V

    :goto_12
    nop

    .line 120
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 122
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 124
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    .line 159
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    sput-object v0, Lcom/android/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 180
    sput-object v0, Lcom/android/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    .line 181
    return-void

    .line 96
    :cond_6e
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS_aroundBody0(Z)V

    goto :goto_12
.end method

.method constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 112
    :try_start_4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    .line 113
    new-instance v1, Lcom/android/launcher3/DeferredHandler;

    invoke-direct {v1}, Lcom/android/launcher3/DeferredHandler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    .line 234
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 236
    const v2, 0x7f0f0018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.launcher2.settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 243
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 245
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Old launcher provider: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-eqz v4, :cond_52

    if-eqz v3, :cond_52

    const/4 v0, 0x1

    :cond_52
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mOldContentProviderExists:Z

    .line 248
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mOldContentProviderExists:Z

    if-eqz v0, :cond_87

    .line 249
    const-string v0, "Launcher.Model"

    const-string v2, "Old launcher provider exists."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_5f
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 255
    new-instance v0, Lcom/android/launcher3/AllAppsList;

    invoke-direct {v0, p2, p3}, Lcom/android/launcher3/AllAppsList;-><init>(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 259
    new-instance v0, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;

    invoke-direct {v0, v1, p2, p3}, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;-><init>(Landroid/content/Context;Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    .line 261
    iput-object p2, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 263
    invoke-static {v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 264
    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 265
    iput-object p3, p0, Lcom/android/launcher3/LauncherModel;->mAppFilter:Lcom/android/launcher3/AppFilter;
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7f} :catch_8f

    .line 266
    invoke-static {}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->aspectOf()Lcom/lge/launcher3/liveicon/LiveIconAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$1$2f7b6933(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V

    return-void

    .line 251
    :cond_87
    :try_start_87
    const-string v0, "Launcher.Model"

    const-string v2, "Old launcher provider does not exist."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8e} :catch_8f

    goto :goto_5f

    .line 266
    :catch_8f
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->aspectOf()Lcom/lge/launcher3/liveicon/LiveIconAspect;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$1$2f7b6933(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V

    throw v0
.end method

.method private static final DEBUG_LOADERS_aroundBody0(Z)V
    .registers 1

    .prologue
    .line 96
    sput-boolean p0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    return-void
.end method

.method private static final DEBUG_LOADERS_aroundBody1$advice(ZLcom/lge/launcher3/debug/DebugAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    .line 11
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/AppFilter;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppFilter:Lcom/android/launcher3/AppFilter;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/Runnable;)V
    .registers 1

    .prologue
    .line 281
    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V
    .registers 14

    .prologue
    .line 1072
    iput-wide p2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 1073
    iput p6, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 1074
    iput p7, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 1077
    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_57

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_57

    .line 1078
    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_57

    move-object v0, p0

    .line 1079
    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/android/launcher3/Hotseat;->getOrderInHotseat(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 1084
    :goto_24
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1085
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1086
    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1088
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider;->generateNewItemId()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/launcher3/ItemInfo;->id:J

    .line 1089
    const-string v2, "_id"

    iget-wide v4, p1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1091
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 1092
    new-instance v3, Lcom/android/launcher3/LauncherModel$9;

    invoke-direct {v3, v1, v0, p1, v2}, Lcom/android/launcher3/LauncherModel$9;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Lcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 1125
    invoke-static {v3}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1126
    return-void

    .line 1081
    :cond_57
    iput-wide p4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    goto :goto_24
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V
    .registers 12

    .prologue
    .line 666
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 668
    invoke-static/range {p0 .. p7}, Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 673
    :goto_b
    return-void

    .line 671
    :cond_c
    invoke-static/range {p0 .. p7}, Lcom/android/launcher3/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    goto :goto_b
.end method

.method public static ajc$get$mApp(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    return-object v0
.end method

.method public static ajc$get$mHandler(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/DeferredHandler;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    return-object v0
.end method

.method public static ajc$get$mIconCache(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/IconCache;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    return-object v0
.end method

.method public static ajc$get$sBgFolders()Lcom/android/launcher3/util/LongArrayMap;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method public static ajc$get$sBgLock()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static ajc$get$sBgWorkspaceItems()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_LauncherModelItds$findLastAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$findLastAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v0

    return v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "LauncherModel.java"

    const-class v2, Lcom/android/launcher3/LauncherModel;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "findSpaceForItem"

    const-string v3, "com.android.launcher3.LauncherModel"

    const-string v4, "android.content.Context:java.util.ArrayList:java.util.ArrayList:int:int"

    const-string v5, "context:workspaceScreens:addedWorkspaceScreensFinal:spanX:spanY"

    const-string v6, ""

    const-string v7, "android.util.Pair"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1d0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherModel;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onPackageRemoved"

    const-string v3, "com.android.launcher3.LauncherModel"

    const-string v4, "java.lang.String:com.android.launcher3.compat.UserHandleCompat"

    const-string v5, "packageName:user"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x553

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherModel;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onPackageAdded"

    const-string v3, "com.android.launcher3.LauncherModel"

    const-string v4, "java.lang.String:com.android.launcher3.compat.UserHandleCompat"

    const-string v5, "packageName:user"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x55a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherModel;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onReceive"

    const-string v3, "com.android.launcher3.LauncherModel"

    const-string v4, "android.content.Context:android.content.Intent"

    const-string v5, "context:intent"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x584

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherModel;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "forceReload"

    const-string v3, "com.android.launcher3.LauncherModel"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5a6

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherModel;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "startLoader"

    const-string v3, "com.android.launcher3.LauncherModel"

    const-string v4, "int:int"

    const-string v5, "synchronousBindPage:loadFlags"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5df

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherModel;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$privMethod$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_android_launcher3_LauncherModel$findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v0

    return v0
.end method

.method public static ajc$privMethod$com_lge_launcher3_dragndrop_FileMannagerIconDropAspect$com_android_launcher3_LauncherModel$findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v0

    return v0
.end method

.method public static ajc$privMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v0

    return v0
.end method

.method public static ajc$set$mApp(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherAppState;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    return-void
.end method

.method public static ajc$set$mHandler(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/DeferredHandler;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    return-void
.end method

.method public static ajc$set$mIconCache(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/IconCache;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    return-void
.end method

.method public static ajc$set$sBgFolders(Lcom/android/launcher3/util/LongArrayMap;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    return-void
.end method

.method public static ajc$set$sBgLock(Ljava/lang/Object;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    return-void
.end method

.method public static ajc$set$sBgWorkspaceItems(Ljava/util/ArrayList;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    return-void
.end method

.method private assertWorkspaceLoaded()V
    .registers 3

    .prologue
    .line 972
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->isLoadingWorkspace()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z

    if-nez v0, :cond_18

    .line 973
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Trying to add shortcut while loader is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_18
    return-void
.end method

.method static checkDuplicatedApplicationLocked(Lcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .registers 10

    .prologue
    .line 721
    if-eqz p0, :cond_a

    instance-of v0, p0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eqz v0, :cond_b

    .line 761
    :cond_a
    return-void

    .line 725
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 726
    if-eqz v2, :cond_a

    .line 730
    const/4 v1, 0x0

    .line 731
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4b

    move-object v0, v1

    .line 752
    :goto_1f
    if-eqz v0, :cond_a

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "item: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " modelItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 754
    const-string v1, " Error: ItemInfo passed to checkItemInfo has been duplicated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 753
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 756
    if-eqz p1, :cond_4a

    .line 757
    invoke-virtual {v1, p1}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 759
    :cond_4a
    throw v1

    .line 731
    :cond_4b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 732
    instance-of v4, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v4, :cond_18

    .line 736
    iget v4, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v4, :cond_a

    .line 740
    invoke-virtual {v0}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 741
    if-eqz v4, :cond_18

    .line 745
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    if-eq p0, v0, :cond_18

    .line 746
    iget-wide v4, p0, Lcom/android/launcher3/ItemInfo;->id:J

    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->id:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v5, v0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_1f
.end method

.method static checkItemInfo(Lcom/android/launcher3/ItemInfo;)V
    .registers 5

    .prologue
    .line 765
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 766
    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 767
    new-instance v1, Lcom/android/launcher3/LauncherModel$6;

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/android/launcher3/LauncherModel$6;-><init>(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 775
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 776
    return-void
.end method

.method static checkItemInfoLocked(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 677
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 678
    if-eqz v0, :cond_92

    if-eq p2, v0, :cond_92

    .line 680
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_93

    instance-of v1, p2, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_93

    move-object v1, v0

    .line 681
    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    move-object v2, p2

    .line 682
    check-cast v2, Lcom/android/launcher3/ShortcutInfo;

    .line 683
    iget-object v3, v1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 684
    iget-object v3, v1, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v4, v2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 685
    iget-wide v4, v1, Lcom/android/launcher3/ShortcutInfo;->id:J

    iget-wide v6, v2, Lcom/android/launcher3/ShortcutInfo;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_93

    .line 686
    iget v3, v1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-ne v3, v4, :cond_93

    .line 687
    iget-wide v4, v1, Lcom/android/launcher3/ShortcutInfo;->container:J

    iget-wide v6, v2, Lcom/android/launcher3/ShortcutInfo;->container:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_93

    .line 688
    iget-wide v4, v1, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    iget-wide v6, v2, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_93

    .line 689
    iget v3, v1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    if-ne v3, v4, :cond_93

    .line 690
    iget v3, v1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    if-ne v3, v4, :cond_93

    .line 691
    iget v3, v1, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    if-ne v3, v4, :cond_93

    .line 692
    iget v3, v1, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    if-ne v3, v4, :cond_93

    .line 693
    iget-object v3, v1, Lcom/android/launcher3/ShortcutInfo;->dropPos:[I

    if-nez v3, :cond_76

    iget-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->dropPos:[I

    if-eqz v3, :cond_92

    .line 694
    :cond_76
    iget-object v3, v1, Lcom/android/launcher3/ShortcutInfo;->dropPos:[I

    if-eqz v3, :cond_93

    .line 695
    iget-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->dropPos:[I

    if-eqz v3, :cond_93

    .line 696
    iget-object v3, v1, Lcom/android/launcher3/ShortcutInfo;->dropPos:[I

    aget v3, v3, v8

    iget-object v4, v2, Lcom/android/launcher3/ShortcutInfo;->dropPos:[I

    aget v4, v4, v8

    if-ne v3, v4, :cond_93

    .line 697
    iget-object v1, v1, Lcom/android/launcher3/ShortcutInfo;->dropPos:[I

    aget v1, v1, v9

    iget-object v2, v2, Lcom/android/launcher3/ShortcutInfo;->dropPos:[I

    aget v2, v2, v9

    if-ne v1, v2, :cond_93

    .line 717
    :cond_92
    :goto_92
    return-void

    .line 706
    :cond_93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "item: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_cc

    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 707
    const-string v2, "modelItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 708
    if-eqz v0, :cond_cf

    invoke-virtual {v0}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 709
    const-string v1, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 711
    if-eqz p3, :cond_c8

    .line 712
    invoke-virtual {v1, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 715
    :cond_c8
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_92

    .line 706
    :cond_cc
    const-string v1, "null"

    goto :goto_a0

    .line 708
    :cond_cf
    const-string v0, "null"

    goto :goto_b0
.end method

.method public static deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher3/FolderInfo;)V
    .registers 4

    .prologue
    .line 1318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1320
    new-instance v1, Lcom/android/launcher3/LauncherModel$15;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/LauncherModel$15;-><init>(Landroid/content/ContentResolver;Lcom/android/launcher3/FolderInfo;)V

    .line 1340
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1341
    return-void
.end method

.method public static deleteHideAppsFromDatabase(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1171
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/launcher3/LauncherModel;->getHideItemsByPackageName(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1172
    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1173
    return-object v0
.end method

.method public static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V
    .registers 3

    .prologue
    .line 1210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1213
    return-void
.end method

.method static deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1221
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1222
    new-instance v1, Lcom/android/launcher3/LauncherModel$13;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/LauncherModel$13;-><init>(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 1257
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1258
    return-void
.end method

.method static deletePackageFromDatabase(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 4

    .prologue
    .line 1153
    invoke-static {p1, p2}, Lcom/android/launcher3/LauncherModel;->getItemsByPackageName(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1154
    return-void
.end method

.method static filterItemInfos(Ljava/lang/Iterable;Lcom/android/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/LauncherModel$ItemInfoFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3895
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3896
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 3896
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 3897
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_32

    .line 3898
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 3899
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 3900
    if-eqz v1, :cond_a

    invoke-interface {p1, v6, v0, v1}, Lcom/android/launcher3/LauncherModel$ItemInfoFilter;->filterItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3901
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 3903
    :cond_32
    instance-of v1, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v1, :cond_74

    .line 3904
    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 3906
    :try_start_38
    iget-object v1, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3e
    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 3907
    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 3908
    if-eqz v5, :cond_3e

    invoke-interface {p1, v0, v1, v5}, Lcom/android/launcher3/LauncherModel$ItemInfoFilter;->filterItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 3909
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/util/ConcurrentModificationException; {:try_start_38 .. :try_end_59} :catch_5a

    goto :goto_3e

    .line 3912
    :catch_5a
    move-exception v0

    .line 3913
    const-string v1, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to filter folder items: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 3915
    :cond_74
    instance-of v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v1, :cond_a

    .line 3916
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 3917
    iget-object v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 3918
    if-eqz v1, :cond_a

    invoke-interface {p1, v6, v0, v1}, Lcom/android/launcher3/LauncherModel$ItemInfoFilter;->filterItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3919
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method public static findNextAvailableIconSpaceInScreen(Landroid/content/Context;J[III)Z
    .registers 7

    .prologue
    .line 1
    invoke-static/range {p0 .. p5}, Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_FileMannagerIconDropAspect$com_android_launcher3_LauncherModel$findNextAvailableIconSpaceInScreen(Landroid/content/Context;J[III)Z

    move-result v0

    return v0
.end method

.method private static findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 443
    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 444
    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 445
    filled-new-array {v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 446
    if-eqz p0, :cond_24

    .line 447
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_24
    move-object v0, p1

    move v1, p2

    move v2, p3

    .line 457
    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0

    .line 447
    :cond_2c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 448
    iget v1, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v2, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    add-int v7, v1, v2

    .line 449
    iget v1, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v2, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    add-int v8, v1, v2

    .line 450
    iget v1, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    move v2, v1

    :goto_41
    if-ltz v2, :cond_1e

    if-ge v2, v7, :cond_1e

    if-ge v2, v3, :cond_1e

    .line 451
    iget v1, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    :goto_49
    if-ltz v1, :cond_4f

    if-ge v1, v8, :cond_4f

    if-lt v1, v4, :cond_53

    .line 450
    :cond_4f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_41

    .line 452
    :cond_53
    aget-object v9, v5, v2

    const/4 v10, 0x1

    aput-boolean v10, v9, v1

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_49
.end method

.method static findOrMakeFolder(Lcom/android/launcher3/util/LongArrayMap;J)Lcom/android/launcher3/FolderInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher3/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 4035
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 4036
    if-nez v0, :cond_10

    .line 4038
    new-instance v0, Lcom/android/launcher3/FolderInfo;

    invoke-direct {v0}, Lcom/android/launcher3/FolderInfo;-><init>()V

    .line 4039
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 4041
    :cond_10
    return-object v0
.end method

.method private static final findSpaceForItem_aroundBody2(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;
    .registers 20

    .prologue
    .line 469
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 472
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->assertWorkspaceLoaded()V

    .line 473
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 474
    :try_start_b
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 473
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_a5

    .line 487
    const-wide/16 v4, 0x0

    .line 488
    const/4 v2, 0x2

    new-array v8, v2, [I

    .line 489
    const/4 v3, 0x0

    .line 491
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 493
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a8

    const/4 v2, 0x0

    .line 494
    :goto_29
    if-ge v2, v9, :cond_43

    .line 495
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 497
    invoke-virtual {v7, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 496
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, v8, v0, v1}, Lcom/android/launcher3/LauncherModel;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v3

    .line 500
    :cond_43
    if-nez v3, :cond_49

    .line 502
    const/4 v2, 0x1

    move v6, v2

    :goto_47
    if-lt v6, v9, :cond_aa

    :cond_49
    move v12, v3

    move-wide v2, v4

    move v4, v12

    .line 513
    :goto_4c
    if-nez v4, :cond_cf

    .line 515
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider;->generateNewScreenId()J

    move-result-wide v4

    .line 518
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual {v7, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 522
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, v8, v0, v1}, Lcom/android/launcher3/LauncherModel;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v2

    .line 523
    if-nez v2, :cond_ce

    .line 524
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t find space to add the item"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    :cond_7e
    :try_start_7e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 475
    iget-wide v8, v2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v3, v8, v10

    if-nez v3, :cond_11

    .line 476
    iget-wide v8, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 477
    if-nez v3, :cond_a0

    .line 478
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 479
    iget-wide v8, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v7, v8, v9, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 481
    :cond_a0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 473
    :catchall_a5
    move-exception v2

    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_7e .. :try_end_a7} :catchall_a5

    throw v2

    .line 493
    :cond_a8
    const/4 v2, 0x1

    goto :goto_29

    .line 503
    :cond_aa
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 505
    invoke-virtual {v7, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 504
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, v8, v0, v1}, Lcom/android/launcher3/LauncherModel;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v2

    .line 505
    if-eqz v2, :cond_c9

    .line 507
    const/4 v2, 0x1

    move v12, v2

    move-wide v2, v4

    move v4, v12

    .line 508
    goto :goto_4c

    .line 502
    :cond_c9
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_47

    :cond_ce
    move-wide v2, v4

    .line 527
    :cond_cf
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static final findSpaceForItem_aroundBody3$advice(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherModelAspect;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;
    .registers 22

    .prologue
    .line 201
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_ADD_NEW_ITEMS_ON_LAST_PAGE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 202
    invoke-interface/range {p14 .. p14}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel;

    move-object v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p12

    .line 203
    invoke-static/range {v0 .. v5}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$findLastSpaceForItem(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;

    move-result-object v0

    .line 205
    :goto_1b
    return-object v0

    :cond_1c
    move-object v0, p0

    move-object v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p12

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/LauncherModel;->findSpaceForItem_aroundBody2(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1b
.end method

.method static final forceReload_aroundBody4(Lcom/android/launcher3/LauncherModel;Lorg/aspectj/lang/JoinPoint;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1447
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    .line 1452
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoaderFromBackground()V

    .line 1453
    return-void
.end method

.method static getCellLayoutChildId(JJIIII)I
    .registers 10

    .prologue
    .line 1133
    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 1134
    long-to-int v1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 1133
    or-int/2addr v0, v1

    .line 1134
    and-int/lit16 v1, p4, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 1133
    or-int/2addr v0, v1

    .line 1134
    and-int/lit16 v1, p5, 0xff

    .line 1133
    or-int/2addr v0, v1

    return v0
.end method

.method private static getHideItemsByPackageName(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1157
    new-instance v0, Lcom/android/launcher3/LauncherModel$11;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$11;-><init>(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 1163
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-static {v1, v0}, Lcom/android/launcher3/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lcom/android/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getItemsByPackageName(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1139
    new-instance v0, Lcom/android/launcher3/LauncherModel$10;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$10;-><init>(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 1145
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-static {v1, v0}, Lcom/android/launcher3/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lcom/android/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getLGFolderInWorkspace(Ljava/lang/String;)Lcom/android/launcher3/FolderInfo;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getLGFolderInWorkspace(Ljava/lang/String;)Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getLastItemInWorkspace()Lcom/android/launcher3/ItemInfo;
    .registers 1

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getLastItemInWorkspace()Lcom/android/launcher3/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method static getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .prologue
    .line 3820
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3821
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 3822
    const-string v2, "market"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 3823
    const-string v2, "details"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 3824
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 3825
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 3821
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 3820
    return-object v0
.end method

.method public static getParentFolder(Lcom/android/launcher3/ShortcutInfo;)Lcom/android/launcher3/FolderInfo;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getParentFolder(Lcom/android/launcher3/ShortcutInfo;)Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;
    .registers 6

    .prologue
    .line 3699
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3700
    :try_start_3
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 3701
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherModel;->getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;

    .line 3703
    :cond_b
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    monitor-exit v1

    return-object v0

    .line 3699
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3650
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3652
    :try_start_5
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_61

    .line 3653
    :try_start_8
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_39

    .line 3655
    :cond_e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3656
    invoke-static {p0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v4

    .line 3659
    invoke-virtual {v4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 3660
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_45

    .line 3666
    invoke-static {}, Lcom/android/launcher3/Launcher;->getCustomAppWidgets()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 3667
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 3674
    sput-object v3, Lcom/android/launcher3/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    .line 3676
    :cond_39
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3677
    monitor-exit v2

    move-object v0, v1

    .line 3689
    :goto_44
    return-object v0

    .line 3660
    :cond_45
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 3661
    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 3662
    invoke-virtual {v4, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v6

    .line 3663
    new-instance v7, Lcom/android/launcher3/util/ComponentKey;

    iget-object v8, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v7, v8, v6}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 3652
    :catchall_5e
    move-exception v0

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_8 .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_61} :catch_61

    .line 3679
    :catch_61
    move-exception v0

    .line 3680
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/TransactionTooLargeException;

    if-eqz v2, :cond_9a

    .line 3685
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3686
    :try_start_6d
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v0, :cond_7a

    .line 3687
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3689
    :cond_7a
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_6d .. :try_end_7b} :catchall_97

    move-object v0, v1

    goto :goto_44

    .line 3667
    :cond_7d
    :try_start_7d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CustomAppWidget;

    .line 3668
    new-instance v6, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-direct {v6, p0, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/CustomAppWidget;)V

    .line 3669
    invoke-virtual {v4, v6}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    .line 3670
    new-instance v7, Lcom/android/launcher3/util/ComponentKey;

    iget-object v8, v6, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v7, v8, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catchall {:try_start_7d .. :try_end_96} :catchall_5e

    goto :goto_31

    .line 3685
    :catchall_97
    move-exception v0

    :try_start_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v0

    .line 3692
    :cond_9a
    throw v0
.end method

.method public static getWorkerLooper()Landroid/os/Looper;
    .registers 1

    .prologue
    .line 4080
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static isPackageDisabled(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 4

    .prologue
    .line 3748
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 3749
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static isValidPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 4

    .prologue
    .line 3766
    if-nez p1, :cond_4

    .line 3767
    const/4 v0, 0x0

    .line 3770
    :goto_3
    return v0

    .line 3769
    :cond_4
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 3770
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v0

    goto :goto_3
.end method

.method public static isValidPackageActivity(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 3754
    if-nez p1, :cond_4

    .line 3761
    :cond_3
    :goto_3
    return v0

    .line 3757
    :cond_4
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v1

    .line 3758
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3761
    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v0

    goto :goto_3
.end method

.method static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .registers 2

    .prologue
    .line 4046
    if-eqz p0, :cond_10

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_10

    .line 4047
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 4046
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1566
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1567
    sget-object v1, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 1571
    const-string v5, "screenRank"

    move-object v3, v2

    move-object v4, v2

    .line 1570
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1572
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    :try_start_14
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1575
    :goto_1a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_47

    move-result v0

    if-nez v0, :cond_24

    .line 1584
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1586
    return-object v2

    .line 1577
    :cond_24
    :try_start_24
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_30
    .catchall {:try_start_24 .. :try_end_2f} :catchall_47

    goto :goto_1a

    .line 1578
    :catch_30
    move-exception v0

    .line 1579
    :try_start_31
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Desktop items loading interrupted - invalid screens: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    .line 1579
    invoke-static {v4, v0, v5}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_46
    .catchall {:try_start_31 .. :try_end_46} :catchall_47

    goto :goto_1a

    .line 1583
    :catchall_47
    move-exception v0

    .line 1584
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1585
    throw v0
.end method

.method public static modifyItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJIIII)V
    .registers 14

    .prologue
    .line 934
    iput-wide p2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 935
    iput p6, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 936
    iput p7, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 937
    iput p8, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 938
    iput p9, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 942
    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_83

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_83

    .line 943
    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_83

    move-object v0, p0

    .line 944
    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/android/launcher3/Hotseat;->getOrderInHotseat(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 949
    :goto_28
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 950
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 951
    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 952
    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 953
    const-string v1, "rank"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    const-string v1, "spanX"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 955
    const-string v1, "spanY"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 956
    const-string v1, "screen"

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 957
    invoke-static {p1, v0}, Lcom/lge/launcher3/nativejoin/ItemInfoAspect;->ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_ItemInfoAspect$com_android_launcher3_ItemInfo$onResizeItemInDatabase(Lcom/android/launcher3/ItemInfo;Landroid/content/ContentValues;)V

    .line 959
    const-string v1, "modifyItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher3/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher3/ItemInfo;Ljava/lang/String;)V

    .line 960
    return-void

    .line 946
    :cond_83
    iput-wide p4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    goto :goto_28
.end method

.method public static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V
    .registers 12

    .prologue
    .line 870
    iput-wide p2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 871
    iput p6, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 872
    iput p7, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 876
    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_66

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_66

    .line 877
    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_66

    move-object v0, p0

    .line 878
    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/android/launcher3/Hotseat;->getOrderInHotseat(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 883
    :goto_24
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 884
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 885
    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 886
    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 887
    const-string v1, "rank"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 888
    const-string v1, "screen"

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 890
    const-string v1, "moveItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher3/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher3/ItemInfo;Ljava/lang/String;)V

    .line 891
    return-void

    .line 880
    :cond_66
    iput-wide p4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    goto :goto_24
.end method

.method static moveItemsInDatabase(Landroid/content/Context;Ljava/util/ArrayList;JI)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 900
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 901
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 903
    const/4 v0, 0x0

    move v2, v0

    :goto_b
    if-lt v2, v4, :cond_13

    .line 926
    const-string v0, "moveItemInDatabase"

    invoke-static {p0, v3, p1, v0}, Lcom/android/launcher3/LauncherModel;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 927
    return-void

    .line 904
    :cond_13
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 905
    iput-wide p2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 909
    instance-of v1, p0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_7c

    if-gez p4, :cond_7c

    .line 910
    const-wide/16 v6, -0x65

    cmp-long v1, p2, v6

    if-nez v1, :cond_7c

    move-object v1, p0

    .line 911
    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    iget v5, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 912
    iget v6, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 911
    invoke-virtual {v1, v5, v6}, Lcom/android/launcher3/Hotseat;->getOrderInHotseat(II)I

    move-result v1

    int-to-long v6, v1

    iput-wide v6, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 917
    :goto_39
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 918
    const-string v5, "container"

    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 919
    const-string v5, "cellX"

    iget v6, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 920
    const-string v5, "cellY"

    iget v6, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 921
    const-string v5, "rank"

    iget v6, v0, Lcom/android/launcher3/ItemInfo;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 922
    const-string v5, "screen"

    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 924
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    .line 914
    :cond_7c
    int-to-long v6, p4

    iput-wide v6, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    goto :goto_39
.end method

.method public static removeDuplicateList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$removeDuplicateList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;IIII)V
    .registers 6

    .prologue
    .line 1
    invoke-static/range {p0 .. p5}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;IIII)V

    return-void
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 282
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 283
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 288
    :goto_f
    return-void

    .line 286
    :cond_10
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method private static final startLoader_aroundBody6(Lcom/android/launcher3/LauncherModel;IILorg/aspectj/lang/JoinPoint;)V
    .registers 7

    .prologue
    .line 1505
    invoke-static {}, Lcom/android/launcher3/InstallShortcutReceiver;->enableInstallQueue()V

    .line 1506
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1509
    :try_start_6
    sget-object v2, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_45

    .line 1510
    :try_start_9
    sget-object v0, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1509
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_42

    .line 1514
    :try_start_f
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 1516
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->stopLoaderLocked()V

    .line 1517
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, p2}, Lcom/android/launcher3/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 1518
    const/16 v0, -0x3e9

    if-eq p1, v0, :cond_48

    .line 1519
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    if-nez v0, :cond_48

    .line 1520
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->runBindSynchronousPage(I)V

    .line 1506
    :cond_40
    :goto_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_f .. :try_end_41} :catchall_45

    .line 1527
    return-void

    .line 1509
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw v0

    .line 1506
    :catchall_45
    move-exception v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_45

    throw v0

    .line 1522
    :cond_48
    :try_start_48
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1523
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_45

    goto :goto_40
.end method

.method private static final startLoader_aroundBody7$advice(Lcom/android/launcher3/LauncherModel;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherModelAspect;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 12

    .prologue
    .line 83
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startLoader("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_54

    .line 86
    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 87
    invoke-interface {p8}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel;

    .line 88
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->ajc$get$mApp(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherModelAspect$com_lge_launcher3_nativejoin_LauncherModelAspect$isExistSprintInstaller(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 89
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    .line 92
    :cond_54
    invoke-static {p5}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p6}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p0, v0, v1, p3}, Lcom/android/launcher3/LauncherModel;->startLoader_aroundBody6(Lcom/android/launcher3/LauncherModel;IILorg/aspectj/lang/JoinPoint;)V

    .line 93
    return-void
.end method

.method private stopLoaderLocked()V
    .registers 2

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 1490
    if-eqz v0, :cond_7

    .line 1491
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->stopLocked()V

    .line 1493
    :cond_7
    return-void
.end method

.method private unbindItemInfosAndClearQueuedBindRunnables()V
    .registers 3

    .prologue
    .line 624
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 625
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected unbindLauncherItemInfos() to be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_14
    sget-object v1, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 631
    :try_start_17
    sget-object v0, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 630
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_26

    .line 635
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/DeferredHandler;->cancelAll()V

    .line 637
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->unbindWorkspaceItemsOnMainThread()V

    .line 638
    return-void

    .line 630
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public static updateFolderItemsRankToBePacked(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 1177
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1178
    new-instance v1, Lcom/android/launcher3/LauncherModel$12;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/LauncherModel$12;-><init>(ILandroid/content/ContentResolver;)V

    .line 1201
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1202
    return-void
.end method

.method static updateItemArrays(Lcom/android/launcher3/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .registers 13

    .prologue
    const-wide/16 v6, -0x64

    const-wide/16 v4, -0x65

    .line 826
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 827
    :try_start_7
    invoke-static {p1, p2, p0, p3}, Lcom/android/launcher3/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 829
    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_46

    .line 830
    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_46

    .line 832
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_46

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "item: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " container being set to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 836
    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", not in the list of folders"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 835
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 837
    const-string v2, "Launcher.Model"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_46
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 845
    if-eqz v0, :cond_74

    .line 846
    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5c

    .line 847
    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_74

    .line 848
    :cond_5c
    iget v2, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_7a

    .line 826
    :cond_61
    :goto_61
    monitor-exit v1

    .line 863
    return-void

    .line 852
    :pswitch_63
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 853
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 826
    :catchall_71
    move-exception v0

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_7 .. :try_end_73} :catchall_71

    throw v0

    .line 860
    :cond_74
    :try_start_74
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_71

    goto :goto_61

    .line 848
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_63
        :pswitch_63
        :pswitch_63
    .end packed-switch
.end method

.method public static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V
    .registers 4

    .prologue
    .line 966
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 967
    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 968
    const-string v1, "updateItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher3/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher3/ItemInfo;Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher3/ItemInfo;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 780
    iget-wide v6, p2, Lcom/android/launcher3/ItemInfo;->id:J

    .line 781
    invoke-static {v6, v7}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 782
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 784
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 785
    new-instance v1, Lcom/android/launcher3/LauncherModel$7;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/LauncherModel$7;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/launcher3/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    .line 791
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 792
    return-void
.end method

.method public static updateItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$updateItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 796
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 798
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 799
    new-instance v2, Lcom/android/launcher3/LauncherModel$8;

    invoke-direct {v2, p2, p1, v1, v0}, Lcom/android/launcher3/LauncherModel$8;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V

    .line 821
    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 822
    return-void
.end method

.method public static updateItemsMap(Lcom/android/launcher3/ItemInfo;)V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$updateItemsMap(Lcom/android/launcher3/ItemInfo;)V

    return-void
.end method

.method public static updateMaxScreenId(Ljava/util/ArrayList;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$updateMaxScreenId(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1265
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1266
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1267
    sget-object v3, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 1269
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1270
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-le v4, v5, :cond_3d

    .line 1271
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sceen ID duplication issue : call by "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1273
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1276
    :cond_3d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1277
    :cond_41
    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_57

    .line 1284
    new-instance v0, Lcom/android/launcher3/LauncherModel$14;

    invoke-direct {v0, v3, v1, v2}, Lcom/android/launcher3/LauncherModel$14;-><init>(Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 1311
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4f} :catch_6b

    .line 1312
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherModelAspect$4$7f7099be(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void

    .line 1278
    :cond_57
    :try_start_57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1279
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_41

    .line 1280
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_6a} :catch_6b

    goto :goto_41

    .line 1312
    :catch_6b
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherModelAspect$4$7f7099be(Landroid/content/Context;Ljava/util/ArrayList;)V

    throw v0
.end method


# virtual methods
.method public addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 536
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 621
    :goto_a
    return-void

    .line 540
    :cond_b
    new-instance v1, Lcom/android/launcher3/LauncherModel$4;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/launcher3/LauncherModel$4;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/LauncherModel$Callbacks;)V

    .line 620
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public addAppsToAllApps(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 416
    if-nez p2, :cond_e

    .line 417
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "allAppsApps must not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 437
    :goto_14
    return-void

    .line 424
    :cond_15
    new-instance v1, Lcom/android/launcher3/LauncherModel$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/launcher3/LauncherModel$3;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 436
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_14
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_backuprestore$findSpaceForItem(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;III)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;III)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 1
    invoke-static/range {p0 .. p6}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$interMethod$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_android_launcher3_LauncherModel$findSpaceForItem(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;III)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds$findLastSpaceForItem(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 1
    invoke-static/range {p0 .. p5}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$findLastSpaceForItem(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_LauncherModelItds$checkQMemoplusPanelPackabe(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$checkQMemoplusPanelPackabe(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_android_launcher3_LauncherModel$assertWorkspaceLoaded()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->assertWorkspaceLoaded()V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$assertWorkspaceLoaded()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->assertWorkspaceLoaded()V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_LauncherModelAspect$com_android_launcher3_LauncherModel$runOnMainThread(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_LauncherModelAspect$com_android_launcher3_LauncherModel$unbindItemInfosAndClearQueuedBindRunnables()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->unbindItemInfosAndClearQueuedBindRunnables()V

    return-void
.end method

.method bindRemainingSynchronousPages()V
    .registers 6

    .prologue
    .line 1531
    sget-object v0, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1533
    sget-object v1, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1534
    :try_start_b
    sget-object v0, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    .line 1535
    sget-object v2, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Runnable;

    .line 1534
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Runnable;

    .line 1536
    sget-object v2, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1533
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_43

    .line 1538
    array-length v2, v0

    const/4 v1, 0x0

    :goto_23
    if-lt v1, v2, :cond_46

    .line 1544
    :cond_25
    sget-object v0, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 1545
    sget-object v1, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1546
    :try_start_30
    sget-object v0, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_50

    .line 1549
    sget-object v0, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1545
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_5a

    .line 1552
    :cond_42
    return-void

    .line 1533
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    .line 1538
    :cond_46
    aget-object v3, v0, v1

    .line 1539
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1538
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1546
    :cond_50
    :try_start_50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1547
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_36

    .line 1545
    :catchall_5a
    move-exception v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method canMigrateFromOldLauncherDb(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mOldContentProviderExists:Z

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isLauncherPreinstalled()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public dumpState()V
    .registers 4

    .prologue
    .line 4051
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCallbacks="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.data"

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4053
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.added"

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4054
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.removed"

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4055
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.modified"

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4056
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    if-eqz v0, :cond_4c

    .line 4057
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->dumpState()V

    .line 4061
    :goto_4b
    return-void

    .line 4059
    :cond_4c
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method

.method enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V
    .registers 3

    .prologue
    .line 3226
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3227
    return-void
.end method

.method public findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/FolderInfo;
    .registers 6

    .prologue
    .line 4071
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4072
    :try_start_3
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    monitor-exit v1

    return-object v0

    .line 4071
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method findSpaceForItem(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherModel;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    invoke-static/range {p4 .. p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static/range {p5 .. p5}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v6

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    move-result-object v7

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object v14, v6

    invoke-static/range {v0 .. v14}, Lcom/android/launcher3/LauncherModel;->findSpaceForItem_aroundBody3$advice(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherModelAspect;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public forceReload()V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/LauncherModel;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 1446
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    new-instance v3, Lcom/android/launcher3/LauncherModel$AjcClosure5;

    invoke-direct {v3, v2}, Lcom/android/launcher3/LauncherModel$AjcClosure5;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v0}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$6$9e6fbcce(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public getAppShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IIZZ)Lcom/android/launcher3/ShortcutInfo;
    .registers 17

    .prologue
    .line 3836
    if-nez p3, :cond_b

    .line 3837
    const-string v0, "Launcher.Model"

    const-string v1, "Null user found in getShortcutInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    const/4 v1, 0x0

    .line 3890
    :cond_a
    :goto_a
    return-object v1

    .line 3841
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 3842
    if-nez v2, :cond_27

    .line 3843
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing component found in getShortcutInfo: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    const/4 v1, 0x0

    goto :goto_a

    .line 3847
    :cond_27
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3848
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3849
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3850
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v1, v0, p3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v3

    .line 3851
    if-nez v3, :cond_59

    if-nez p8, :cond_59

    .line 3852
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing activity found in getShortcutInfo: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    const/4 v1, 0x0

    goto :goto_a

    .line 3856
    :cond_59
    new-instance v1, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v1}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 3857
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    const/4 v5, 0x0

    move-object v4, p3

    move/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/content/ComponentName;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;ZZ)V

    .line 3858
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/ShortcutInfo;->getIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4, p3}, Lcom/android/launcher3/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v0

    if-eqz v0, :cond_86

    if-eqz p5, :cond_86

    .line 3859
    invoke-static {p5, p6, p4}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3860
    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, p3}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_83
    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 3863
    :cond_86
    const-string v0, "iconId"

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutInfo;->setIconId(Ljava/lang/String;)V

    .line 3864
    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutInfo;->getIconId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 3866
    const-string v0, "userCustomizedIcon"

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 3865
    invoke-static {p5, v0, p4}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutInfo;->setUserCustomizedIcon(Landroid/graphics/Bitmap;)V

    .line 3870
    :cond_a6
    if-eqz v3, :cond_b5

    invoke-virtual {v3}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 3871
    const/4 v0, 0x4

    iput v0, v1, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 3875
    :cond_b5
    iget-object v0, v1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c9

    if-eqz p5, :cond_c9

    .line 3876
    invoke-interface {p5, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3880
    :cond_c9
    iget-object v0, v1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_d3

    .line 3881
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3884
    :cond_d3
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 3885
    iput-object p3, v1, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 3886
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v2, v1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 3887
    if-eqz v3, :cond_a

    .line 3888
    invoke-static {v3}, Lcom/android/launcher3/AppInfo;->initFlags(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;)I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/ShortcutInfo;->flags:I

    goto/16 :goto_a
.end method

.method getApplicationItemInfoForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3944
    new-instance v0, Lcom/android/launcher3/LauncherModel$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherModel$20;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3955
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-static {v1, v0}, Lcom/android/launcher3/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lcom/android/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;
    .registers 2

    .prologue
    .line 4064
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method getFolderById(Landroid/content/Context;Lcom/android/launcher3/util/LongArrayMap;J)Lcom/android/launcher3/FolderInfo;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher3/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 1022
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1023
    sget-object v3, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    .line 1024
    const-string v5, "_id=? and (itemType=? or itemType=?)"

    .line 1025
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 1026
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    .line 1023
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1029
    :try_start_20
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 1030
    const-string v2, "itemType"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1031
    const-string v2, "title"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1032
    const-string v2, "container"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1033
    const-string v2, "screen"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1034
    const-string v2, "cellX"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1035
    const-string v2, "cellY"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1036
    const-string v2, "options"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1038
    const/4 v2, 0x0

    .line 1039
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_aa

    .line 1046
    :goto_58
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1047
    move-wide/from16 v0, p3

    iput-wide v0, v2, Lcom/android/launcher3/FolderInfo;->id:J

    .line 1048
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v12, v3

    iput-wide v12, v2, Lcom/android/launcher3/FolderInfo;->container:J

    .line 1049
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, v2, Lcom/android/launcher3/FolderInfo;->screenId:J

    .line 1050
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/FolderInfo;->cellX:I

    .line 1051
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/FolderInfo;->cellY:I

    .line 1052
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/FolderInfo;->options:I

    .line 1054
    invoke-static/range {p1 .. p1}, Lcom/lge/launcher3/util/DDTUtils;->isAdditionalThemeApplied(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_94

    const/4 v3, 0x0

    :goto_89
    iput v3, v2, Lcom/android/launcher3/FolderInfo;->folderColor:I
    :try_end_8b
    .catchall {:try_start_20 .. :try_end_8b} :catchall_9f

    .line 1060
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1063
    :goto_8e
    return-object v2

    .line 1041
    :pswitch_8f
    :try_start_8f
    invoke-static/range {p2 .. p4}, Lcom/android/launcher3/LauncherModel;->findOrMakeFolder(Lcom/android/launcher3/util/LongArrayMap;J)Lcom/android/launcher3/FolderInfo;

    move-result-object v2

    goto :goto_58

    .line 1055
    :cond_94
    const-string v3, "iconType"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_9d
    .catchall {:try_start_8f .. :try_end_9d} :catchall_9f

    move-result v3

    goto :goto_89

    .line 1059
    :catchall_9f
    move-exception v2

    .line 1060
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1061
    throw v2

    .line 1060
    :cond_a4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1063
    const/4 v2, 0x0

    goto :goto_8e

    .line 1039
    nop

    :pswitch_data_aa
    .packed-switch 0x2
        :pswitch_8f
    .end packed-switch
.end method

.method getItemInfoForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3928
    new-instance v0, Lcom/android/launcher3/LauncherModel$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherModel$19;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3938
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-static {v1, v0}, Lcom/android/launcher3/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lcom/android/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4085
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4086
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4087
    :try_start_8
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4088
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 4091
    monitor-exit v2

    return-object v1

    .line 4089
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 4086
    :catchall_20
    move-exception v0

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public getRestoredItemInfo(Landroid/database/Cursor;ILandroid/content/Intent;IILcom/android/launcher3/util/CursorIconInfo;Landroid/content/Context;)Lcom/android/launcher3/ShortcutInfo;
    .registers 12

    .prologue
    .line 3779
    new-instance v1, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v1}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 3780
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 3782
    invoke-virtual {p6, p1, v1, p7}, Lcom/android/launcher3/util/CursorIconInfo;->loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/ShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3784
    if-nez v0, :cond_42

    .line 3785
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v2, v1, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p3, v2, v3}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;Z)V

    .line 3790
    :goto_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    .line 3791
    if-eqz p1, :cond_46

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3792
    :goto_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 3793
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3803
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v2, v1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 3804
    iput p5, v1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 3805
    iput-object p3, v1, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    .line 3806
    iput p4, v1, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 3807
    return-object v1

    .line 3787
    :cond_42
    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_19

    .line 3791
    :cond_46
    const/4 v0, 0x0

    goto :goto_23

    .line 3795
    :cond_48
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_64

    .line 3796
    iget-object v0, v1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3797
    if-eqz p1, :cond_61

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_5e
    iput-object v0, v1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    goto :goto_2f

    :cond_61
    const-string v0, ""

    goto :goto_5e

    .line 3800
    :cond_64
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid restoreType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getRestoredItemIntent(Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5

    .prologue
    .line 3815
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3816
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;ILcom/android/launcher3/util/CursorIconInfo;)Lcom/android/launcher3/ShortcutInfo;
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 3963
    new-instance v1, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v1}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 3965
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 3966
    iput v3, v1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 3970
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3972
    invoke-virtual {p4, p1, v1, p2}, Lcom/android/launcher3/util/CursorIconInfo;->loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/ShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3974
    if-nez v0, :cond_28

    .line 3975
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v2, v1, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3976
    iput-boolean v3, v1, Lcom/android/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    .line 3978
    :cond_28
    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 3979
    return-object v1
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3983
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 3984
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3985
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 3987
    if-nez v0, :cond_20

    .line 3989
    const-string v0, "Launcher.Model"

    const-string v1, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    :goto_1f
    return-object v2

    .line 3994
    :cond_20
    const/4 v4, 0x0

    .line 3997
    instance-of v5, v1, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_62

    .line 3998
    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1, p1}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v4, v1

    move-object v1, v2

    move v2, v3

    .line 4009
    :goto_2e
    new-instance v5, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v5}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 4013
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v7

    iput-object v7, v5, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 4014
    if-nez v4, :cond_45

    .line 4015
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v7, v5, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 4016
    iput-boolean v3, v5, Lcom/android/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    .line 4018
    :cond_45
    invoke-virtual {v5, v4}, Lcom/android/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 4020
    invoke-static {v6}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 4021
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v4, v5, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v6, v5, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v5, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 4022
    iput-object v0, v5, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4023
    iput-boolean v2, v5, Lcom/android/launcher3/ShortcutInfo;->customIcon:Z

    .line 4024
    iput-object v1, v5, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v5

    .line 4026
    goto :goto_1f

    .line 4001
    :cond_62
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 4002
    instance-of v5, v1, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v5, :cond_7a

    .line 4003
    check-cast v1, Landroid/content/Intent$ShortcutIconResource;

    .line 4004
    iget-object v2, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 4005
    iget-object v5, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 4004
    invoke-static {v2, v5, p1}, Lcom/android/launcher3/Utilities;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    move v8, v4

    move-object v4, v2

    move v2, v8

    goto :goto_2e

    :cond_7a
    move-object v1, v2

    move v8, v4

    move-object v4, v2

    move v2, v8

    goto :goto_2e
.end method

.method public initialize(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .registers 4

    .prologue
    .line 1347
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1350
    :try_start_3
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->unbindItemInfosAndClearQueuedBindRunnables()V

    .line 1351
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 1347
    monitor-exit v1

    .line 1353
    return-void

    .line 1347
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public isAllAppsLoaded()Z
    .registers 2

    .prologue
    .line 1590
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method public isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z
    .registers 3

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isLoadingWorkspace()Z
    .registers 3

    .prologue
    .line 1594
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1595
    :try_start_3
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    if-eqz v0, :cond_f

    .line 1596
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->isLoadingWorkspace()Z

    move-result v0

    monitor-exit v1

    .line 1599
    :goto_e
    return v0

    .line 1594
    :cond_f
    monitor-exit v1

    .line 1599
    const/4 v0, 0x0

    goto :goto_e

    .line 1594
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public loadAndBindWidgetsAndShortcuts(Landroid/content/Context;Lcom/android/launcher3/LauncherModel$Callbacks;Z)V
    .registers 5

    .prologue
    .line 3710
    new-instance v0, Lcom/android/launcher3/LauncherModel$18;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/launcher3/LauncherModel$18;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;ZLcom/android/launcher3/LauncherModel$Callbacks;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->runAfterBindCompletes(Ljava/lang/Runnable;)V

    .line 3730
    return-void
.end method

.method public moveFolderItemsToWorkspace(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4097
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 4098
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4160
    :goto_a
    return-void

    .line 4103
    :cond_b
    new-instance v1, Lcom/android/launcher3/LauncherModel$21;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/launcher3/LauncherModel$21;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/ArrayList;Landroid/content/Context;Lcom/android/launcher3/LauncherModel$Callbacks;)V

    .line 4159
    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public moveItemsToFolder(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;",
            "Lcom/android/launcher3/FolderInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4164
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v5

    .line 4165
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4208
    :cond_c
    :goto_c
    return-void

    .line 4169
    :cond_d
    if-eqz p3, :cond_c

    .line 4174
    new-instance v0, Lcom/android/launcher3/LauncherModel$22;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherModel$22;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/FolderInfo;Ljava/util/ArrayList;Landroid/content/Context;Lcom/android/launcher3/LauncherModel$Callbacks;)V

    .line 4207
    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method public onLiveIconUpdated(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$interMethod$com_lge_launcher3_liveicon_LiveIconAspect$com_android_launcher3_LauncherModel$onLiveIconUpdated(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/android/launcher3/LauncherModel;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 1371
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$before$com_lge_launcher3_nativejoin_LauncherModelAspect$3$490627bc(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Lorg/aspectj/lang/JoinPoint;)V

    .line 1372
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1373
    invoke-direct {v0, p0, v3, v1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 1372
    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    .line 1374
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 7

    .prologue
    .line 1357
    const/4 v0, 0x2

    .line 1358
    new-instance v1, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1359
    invoke-direct {v1, p0, v0, v2, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 1358
    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    .line 1360
    return-void
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3174
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v1

    .line 3175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3180
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3181
    :try_start_11
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 3192
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/launcher3/AllAppsList;->updateIconsAndLabels(Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;Ljava/util/ArrayList;)V

    .line 3180
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_7f

    .line 3195
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 3197
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v4, Lcom/android/launcher3/LauncherModel$16;

    invoke-direct {v4, p0, v1, v3, p2}, Lcom/android/launcher3/LauncherModel$16;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3209
    :cond_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 3210
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v3, Lcom/android/launcher3/LauncherModel$17;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/launcher3/LauncherModel$17;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3222
    :cond_43
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->loadAndBindWidgetsAndShortcuts(Landroid/content/Context;Lcom/android/launcher3/LauncherModel$Callbacks;Z)V

    .line 3223
    return-void

    .line 3181
    :cond_4e
    :try_start_4e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 3182
    instance-of v6, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v6, :cond_17

    iget-object v6, v0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {p2, v6}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 3183
    iget v6, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v6, :cond_17

    .line 3184
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 3185
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 3186
    if-eqz v6, :cond_17

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 3187
    iget-object v6, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/ShortcutInfo;->updateIcon(Lcom/android/launcher3/IconCache;)V

    .line 3188
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 3180
    :catchall_7f
    move-exception v0

    monitor-exit v4
    :try_end_81
    .catchall {:try_start_4e .. :try_end_81} :catchall_7f

    throw v0
.end method

.method public onPackageRemoved(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 7

    .prologue
    sget-object v0, Lcom/android/launcher3/LauncherModel;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 1364
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$before$com_lge_launcher3_nativejoin_LauncherModelAspect$2$22416b1c(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Lorg/aspectj/lang/JoinPoint;)V

    const/4 v0, 0x3

    .line 1365
    new-instance v1, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1366
    invoke-direct {v1, p0, v0, v2, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 1365
    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    .line 1367
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Z)V
    .registers 6

    .prologue
    .line 1380
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 1379
    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    .line 1381
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 5

    .prologue
    .line 1395
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    .line 1396
    const/4 v1, 0x5

    .line 1397
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 1395
    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    .line 1398
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Z)V
    .registers 6

    .prologue
    .line 1386
    if-nez p3, :cond_b

    .line 1387
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    .line 1388
    const/4 v1, 0x4

    .line 1389
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 1387
    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    .line 1391
    :cond_b
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 5

    .prologue
    .line 1402
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    .line 1403
    const/4 v1, 0x6

    .line 1404
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 1402
    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    .line 1405
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    sget-object v0, Lcom/android/launcher3/LauncherModel;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 1413
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    :try_start_d
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1416
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1419
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$clearIconDB(Lcom/android/launcher3/IconCache;)V

    .line 1420
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_39} :catch_5b

    .line 1444
    :cond_39
    :goto_39
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherModelAspect$1$1291033d(Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 1421
    :cond_41
    :try_start_41
    const-string v2, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 1422
    const-string v2, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1423
    :cond_51
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 1424
    if-eqz v0, :cond_39

    .line 1425
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindSearchablesChanged()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_5a} :catch_5b

    goto :goto_39

    .line 1444
    :catch_5b
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherModelAspect$1$1291033d(Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 1427
    :cond_64
    :try_start_64
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 1428
    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 1429
    :cond_74
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UserProfiles : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->enableAndResetCache()V

    .line 1432
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    goto :goto_39

    .line 1433
    :cond_9b
    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    .line 1434
    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 1435
    :cond_ab
    invoke-static {p2}, Lcom/android/launcher3/compat/UserHandleCompat;->fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    .line 1436
    if-eqz v0, :cond_39

    .line 1437
    new-instance v2, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    .line 1438
    const/4 v3, 0x7

    .line 1439
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 1437
    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_39

    .line 1441
    :cond_bf
    const-string v2, "com.lge.launcher2.FORCERELOAD_HOME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1442
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_ca} :catch_5b

    goto/16 :goto_39
.end method

.method public removeWorkspaceEmptyScreenModel()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$interMethod$com_lge_launcher3_nativejoin_LauncherModelAspect$com_android_launcher3_LauncherModel$removeWorkspaceEmptyScreenModel(Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method public resetLoadedState(ZZ)V
    .registers 5

    .prologue
    .line 1456
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1459
    :try_start_3
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->stopLoaderLocked()V

    .line 1460
    if-eqz p1, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    .line 1461
    :cond_b
    if-eqz p2, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    .line 1456
    :cond_10
    monitor-exit v1

    .line 1463
    return-void

    .line 1456
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method runAfterBindCompletes(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->isLoadingWorkspace()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z

    if-nez v0, :cond_17

    .line 295
    :cond_a
    sget-object v1, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 296
    :try_start_d
    sget-object v0, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    monitor-exit v1

    .line 301
    :goto_13
    return-void

    .line 295
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0

    .line 299
    :cond_17
    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_13
.end method

.method runOnMainThread(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 271
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 277
    :goto_11
    return-void

    .line 275
    :cond_12
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_11
.end method

.method public setPackageState(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .registers 3

    .prologue
    .line 308
    new-instance v0, Lcom/android/launcher3/LauncherModel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$1;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 359
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method shortcutExists(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 982
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->assertWorkspaceLoaded()V

    .line 984
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 987
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 988
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 989
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 990
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 1000
    :goto_2c
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1001
    :try_start_2f
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1000
    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_94

    move v0, v3

    .line 1015
    :goto_3d
    return v0

    .line 992
    :cond_3e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 993
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 995
    goto :goto_2c

    .line 996
    :cond_52
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_2c

    .line 1001
    :cond_5d
    :try_start_5d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 1002
    instance-of v4, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v4, :cond_35

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v4, :cond_35

    .line 1003
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 1004
    iget-object v4, v0, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-nez v4, :cond_91

    .line 1005
    iget-object v4, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1006
    :goto_73
    if-eqz v4, :cond_35

    iget-object v0, v0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, p3}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1007
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 1008
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8e

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1009
    :cond_8e
    monitor-exit v5

    const/4 v0, 0x1

    goto :goto_3d

    .line 1005
    :cond_91
    iget-object v4, v0, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    goto :goto_73

    .line 1000
    :catchall_94
    move-exception v0

    monitor-exit v5
    :try_end_96
    .catchall {:try_start_5d .. :try_end_96} :catchall_94

    throw v0
.end method

.method public startLoader(I)V
    .registers 3

    .prologue
    .line 1500
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/LauncherModel;->startLoader(II)V

    .line 1501
    return-void
.end method

.method public startLoader(II)V
    .registers 12

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherModel;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    move-result-object v4

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/LauncherModel;->startLoader_aroundBody7$advice(Lcom/android/launcher3/LauncherModel;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherModelAspect;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public startLoaderFromBackground()V
    .registers 3

    .prologue
    .line 1472
    const/4 v0, 0x0

    .line 1473
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v1

    .line 1474
    if-eqz v1, :cond_e

    .line 1476
    invoke-interface {v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1477
    const/4 v0, 0x1

    .line 1480
    :cond_e
    if-eqz v0, :cond_15

    .line 1481
    const/16 v0, -0x3e9

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->startLoader(I)V

    .line 1483
    :cond_15
    return-void
.end method

.method public stopLoader()V
    .registers 3

    .prologue
    .line 1555
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1556
    :try_start_3
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    if-eqz v0, :cond_c

    .line 1557
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->stopLocked()V

    .line 1555
    :cond_c
    monitor-exit v1

    .line 1560
    return-void

    .line 1555
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method unbindWorkspaceItemsOnMainThread()V
    .registers 4

    .prologue
    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 646
    :try_start_8
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 647
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 645
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_1c

    .line 649
    new-instance v1, Lcom/android/launcher3/LauncherModel$5;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/LauncherModel$5;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/ArrayList;)V

    .line 657
    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 658
    return-void

    .line 645
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public updateSessionDisplayInfo(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 366
    new-instance v0, Lcom/android/launcher3/LauncherModel$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$2;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V

    .line 410
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 411
    return-void
.end method

.method updateWidgetsModel(Landroid/content/Context;Z)V
    .registers 7

    .prologue
    .line 3738
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3739
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3740
    invoke-static {p1, p2}, Lcom/android/launcher3/LauncherModel;->getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3741
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3742
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3743
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/WidgetsModel;->setWidgetsAndShortcuts(Ljava/util/ArrayList;)V

    .line 3744
    return-void
.end method
