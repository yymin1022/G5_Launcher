.class public Lcom/android/launcher3/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/IconCache$CacheEntry;,
        Lcom/android/launcher3/IconCache$IconDB;,
        Lcom/android/launcher3/IconCache$IconLoadRequest;,
        Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_CLASS_NAME:Ljava/lang/String; = "."

.field static final ICON_UPDATE_TOKEN:Ljava/lang/Object;

.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field private static final LOW_RES_SCALE_FACTOR:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Launcher.IconCache"


# instance fields
.field private final mActivityBgColor:I

.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/android/launcher3/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field public mCustomAppIconList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceDpi:I

.field final mIconDb:Lcom/android/launcher3/IconCache$IconDB;

.field private mIconDpi:I

.field private final mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private mLowResBitmap:Landroid/graphics/Bitmap;

.field private mLowResCanvas:Landroid/graphics/Canvas;

.field private final mLowResOptions:Landroid/graphics/BitmapFactory$Options;

.field private mLowResPaint:Landroid/graphics/Paint;

.field final mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

.field private final mPackageBgColor:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mSystemState:Ljava/lang/String;

.field public mThemeIconPackage:Lcom/lge/launcher3/infos/IThemePackage;

.field final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

.field final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 5

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$mThemeIconPackage(Lcom/android/launcher3/IconCache;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$mCustomAppIconList(Lcom/android/launcher3/IconCache;)V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    .line 93
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    .line 122
    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 126
    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iput v0, p0, Lcom/android/launcher3/IconCache;->mIconDpi:I

    .line 127
    new-instance v0, Lcom/android/launcher3/IconCache$IconDB;

    invoke-direct {v0, p1}, Lcom/android/launcher3/IconCache$IconDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/IconCache;->mActivityBgColor:I

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/IconCache;->mPackageBgColor:I

    .line 133
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 137
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->updateSystemStateString()V

    .line 139
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 140
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 143
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/android/launcher3/IconCache;->mDeviceDpi:I

    .line 144
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$initCustomAppIconList(Lcom/android/launcher3/IconCache;)V

    .line 145
    return-void
.end method

.method private addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V
    .registers 20

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->aspectOf()Lcom/lge/launcher3/liveicon/LiveIconAspect;

    move-result-object v6

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    invoke-static/range {v0 .. v12}, Lcom/android/launcher3/IconCache;->addIconToDB_aroundBody3$advice(Lcom/android/launcher3/IconCache;Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JLcom/lge/launcher3/liveicon/LiveIconAspect;Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JLorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method private static final addIconToDB_aroundBody2(Lcom/android/launcher3/IconCache;Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V
    .registers 14

    .prologue
    const/4 v3, 0x0

    .line 398
    const-string v0, "componentName"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v0, "profileId"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 400
    const-string v0, "lastUpdated"

    iget-wide v4, p3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 401
    const-string v0, "version"

    iget v1, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "icons"

    .line 403
    const/4 v5, 0x5

    invoke-static {}, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;->aspectOf()Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;

    move-result-object v6

    move-object v0, p0

    move-object v4, p1

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/IconCache;->insertWithOnConflict_aroundBody1$advice(Lcom/android/launcher3/IconCache;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;Lorg/aspectj/runtime/internal/AroundClosure;)J

    .line 404
    return-void
.end method

.method private static final addIconToDB_aroundBody3$advice(Lcom/android/launcher3/IconCache;Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JLcom/lge/launcher3/liveicon/LiveIconAspect;Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 19

    .prologue
    .line 96
    invoke-static {p6}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_liveicon_LiveIconAspect$com_lge_launcher3_liveicon_LiveIconAspect$mLiveIconManager(Lcom/lge/launcher3/liveicon/LiveIconAspect;)Lcom/lge/launcher3/liveicon/LiveIconManager;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/lge/launcher3/liveicon/LiveIconManager;->hasLiveIcon(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_13

    move-object v0, p0

    move-object v1, p7

    move-object v2, p8

    move-object v3, p9

    move-wide/from16 v4, p10

    .line 97
    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/IconCache;->addIconToDB_aroundBody2(Lcom/android/launcher3/IconCache;Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V

    .line 99
    :cond_13
    return-void
.end method

.method public static ajc$get$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/IconCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$mCache(Lcom/android/launcher3/IconCache;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static ajc$get$mContext(Lcom/android/launcher3/IconCache;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static ajc$get$mIconDb(Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/IconCache$IconDB;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    return-object v0
.end method

.method public static ajc$get$mIconDpi(Lcom/android/launcher3/IconCache;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/IconCache;->mIconDpi:I

    return v0
.end method

.method public static ajc$get$mPackageManager(Lcom/android/launcher3/IconCache;)Landroid/content/pm/PackageManager;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public static ajc$get$mUserManager(Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/compat/UserManagerCompat;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    return-object v0
.end method

.method public static ajc$set$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/IconCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$mCache(Lcom/android/launcher3/IconCache;Ljava/util/HashMap;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    return-void
.end method

.method public static ajc$set$mContext(Lcom/android/launcher3/IconCache;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static ajc$set$mIconDb(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/IconCache$IconDB;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    return-void
.end method

.method public static ajc$set$mIconDpi(Lcom/android/launcher3/IconCache;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/IconCache;->mIconDpi:I

    return-void
.end method

.method public static ajc$set$mPackageManager(Lcom/android/launcher3/IconCache;Landroid/content/pm/PackageManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static ajc$set$mUserManager(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/compat/UserManagerCompat;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;ZZ)Lcom/android/launcher3/IconCache$CacheEntry;
    .registers 9

    .prologue
    .line 583
    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v1, p1, p3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 584
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/IconCache$CacheEntry;

    .line 585
    if-eqz v0, :cond_15

    iget-boolean v2, v0, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    if-eqz v2, :cond_79

    if-nez p5, :cond_79

    .line 586
    :cond_15
    new-instance v0, Lcom/android/launcher3/IconCache$CacheEntry;

    invoke-direct {v0}, Lcom/android/launcher3/IconCache$CacheEntry;-><init>()V

    .line 587
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-direct {p0, p1, p3, v0, p5}, Lcom/android/launcher3/IconCache;->getEntryFromDB(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/IconCache$CacheEntry;Z)Z

    move-result v1

    if-nez v1, :cond_43

    .line 591
    if-eqz p2, :cond_7a

    .line 592
    iget v1, p0, Lcom/android/launcher3/IconCache;->mIconDpi:I

    invoke-virtual {p2, v1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 612
    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mThemeIconPackage:Lcom/lge/launcher3/infos/IThemePackage;

    if-eqz v1, :cond_43

    .line 613
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mThemeIconPackage:Lcom/lge/launcher3/infos/IThemePackage;

    iget-object v2, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-interface {v1, p1, v2}, Lcom/lge/launcher3/infos/IThemePackage;->changeIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 618
    :cond_43
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5d

    if-eqz p2, :cond_5d

    .line 619
    invoke-virtual {p2}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 620
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v2, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, p3}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 624
    :cond_5d
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mCustomAppIconList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 625
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$loadCustomLabel(Lcom/android/launcher3/IconCache;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 626
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-static {p0, v1, p1}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getFullResCustomIcon(Lcom/android/launcher3/IconCache;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 631
    :cond_79
    return-object v0

    .line 594
    :cond_7a
    if-eqz p4, :cond_93

    .line 596
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 595
    invoke-direct {p0, v1, p3, v2}, Lcom/android/launcher3/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Z)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object v1

    .line 597
    if-eqz v1, :cond_93

    .line 600
    iget-object v2, v1, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 601
    iget-object v2, v1, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 602
    iget-object v1, v1, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 605
    :cond_93
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_35

    .line 608
    invoke-virtual {p0, p3}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_35
.end method

.method private getEntryForPackageLocked(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Z)Lcom/android/launcher3/IconCache$CacheEntry;
    .registers 14

    .prologue
    const/4 v8, 0x0

    .line 658
    new-instance v2, Landroid/content/ComponentName;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    new-instance v9, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v9, v2, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 660
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/IconCache$CacheEntry;

    .line 662
    if-eqz v0, :cond_2e

    iget-boolean v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    if-eqz v1, :cond_57

    if-nez p3, :cond_57

    .line 663
    :cond_2e
    new-instance v6, Lcom/android/launcher3/IconCache$CacheEntry;

    invoke-direct {v6}, Lcom/android/launcher3/IconCache$CacheEntry;-><init>()V

    .line 664
    const/4 v7, 0x1

    .line 667
    invoke-direct {p0, v2, p2, v6, p3}, Lcom/android/launcher3/IconCache;->getEntryFromDB(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/IconCache$CacheEntry;Z)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 669
    :try_start_3a
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 670
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 671
    if-nez v0, :cond_58

    .line 672
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v1, "ApplicationInfo is null"

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3a .. :try_end_4d} :catch_4d

    .line 689
    :catch_4d
    move-exception v0

    move v0, v8

    .line 694
    :goto_4f
    if-eqz v0, :cond_56

    .line 695
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    move-object v0, v6

    .line 698
    :cond_57
    return-object v0

    .line 674
    :cond_58
    :try_start_58
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 675
    iget-object v4, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 674
    invoke-virtual {v1, v4, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 676
    iget-object v4, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v6, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 677
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 678
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v1, v6, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 679
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    .line 684
    iget-object v0, v6, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v1, v6, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/android/launcher3/IconCache;->mPackageBgColor:I

    invoke-direct {p0, v0, v1, v4}, Lcom/android/launcher3/IconCache;->newContentValues(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 685
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/IconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V
    :try_end_99
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_58 .. :try_end_99} :catch_4d

    move v0, v7

    .line 687
    goto :goto_4f

    :cond_9b
    move v0, v7

    goto :goto_4f
.end method

.method private getEntryFromDB(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/IconCache$CacheEntry;Z)Z
    .registers 15

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 732
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/IconCache$IconDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "icons"

    .line 733
    new-array v2, v4, [Ljava/lang/String;

    if-eqz p4, :cond_5f

    const-string v3, "icon_low_res"

    :goto_12
    aput-object v3, v2, v9

    .line 734
    const-string v3, "label"

    aput-object v3, v2, v8

    .line 735
    const-string v3, "componentName = ? AND profileId = ?"

    .line 736
    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    .line 737
    iget-object v6, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v6, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    .line 732
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 740
    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 741
    const/4 v0, 0x0

    if-eqz p4, :cond_3f

    iget-object v5, p0, Lcom/android/launcher3/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    :cond_3f
    invoke-static {v1, v0, v5}, Lcom/android/launcher3/IconCache;->loadIconNoResize(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 742
    iput-boolean p4, p3, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    .line 743
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 744
    iget-object v0, p3, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_62

    .line 745
    const-string v0, ""

    iput-object v0, p3, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 746
    const-string v0, ""

    iput-object v0, p3, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;
    :try_end_5a
    .catchall {:try_start_34 .. :try_end_5a} :catchall_6d

    .line 753
    :goto_5a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 755
    :goto_5e
    return v0

    .line 733
    :cond_5f
    const-string v3, "icon"

    goto :goto_12

    .line 748
    :cond_62
    :try_start_62
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v2, p3, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p3, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_6d

    goto :goto_5a

    .line 752
    :catchall_6d
    move-exception v0

    .line 753
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 754
    throw v0

    .line 753
    :cond_72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 755
    goto :goto_5e
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 148
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 154
    :try_start_1
    iget v1, p0, Lcom/android/launcher3/IconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_6} :catch_12

    move-result-object v1

    .line 159
    :goto_7
    if-nez v1, :cond_1c

    .line 161
    :try_start_9
    iget v1, p0, Lcom/android/launcher3/IconCache;->mDeviceDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_e} :catch_1a

    move-result-object v0

    .line 166
    :goto_f
    if-eqz v0, :cond_15

    :goto_11
    return-object v0

    .line 156
    :catch_12
    move-exception v1

    move-object v1, v0

    goto :goto_7

    .line 166
    :cond_15
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_11

    .line 163
    :catch_1a
    move-exception v1

    goto :goto_f

    :cond_1c
    move-object v0, v1

    goto :goto_f
.end method

.method private getNonNullIcon(Lcom/android/launcher3/IconCache$CacheEntry;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 473
    iget-object v0, p1, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    invoke-virtual {p0, p2}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p1, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_8
.end method

.method private static final insertWithOnConflict_aroundBody0(Lcom/android/launcher3/IconCache;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .registers 8

    .prologue
    .line 402
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final insertWithOnConflict_aroundBody1$advice(Lcom/android/launcher3/IconCache;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;Lorg/aspectj/runtime/internal/AroundClosure;)J
    .registers 12

    .prologue
    .line 14
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/IconCache;->insertWithOnConflict_aroundBody0(Lcom/android/launcher3/IconCache;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v0

    .line 22
    :goto_4
    return-wide v0

    .line 15
    :catch_5
    move-exception v0

    .line 16
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unable to open database file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 17
    const-string v1, "SQLiteException"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MemoryFull:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_2a
    const-wide/16 v0, 0x0

    goto :goto_4

    .line 19
    :cond_2d
    const-string v1, "SQLiteException"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private static final insertWithOnConflict_aroundBody4(Lcom/android/launcher3/IconCache;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .registers 8

    .prologue
    .line 726
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final insertWithOnConflict_aroundBody5$advice(Lcom/android/launcher3/IconCache;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;Lorg/aspectj/runtime/internal/AroundClosure;)J
    .registers 12

    .prologue
    .line 14
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/IconCache;->insertWithOnConflict_aroundBody4(Lcom/android/launcher3/IconCache;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v0

    .line 22
    :goto_4
    return-wide v0

    .line 15
    :catch_5
    move-exception v0

    .line 16
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unable to open database file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 17
    const-string v1, "SQLiteException"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MemoryFull:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_2a
    const-wide/16 v0, 0x0

    goto :goto_4

    .line 19
    :cond_2d
    const-string v1, "SQLiteException"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private static loadIconNoResize(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 929
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 931
    const/4 v1, 0x0

    :try_start_5
    array-length v2, v0

    invoke-static {v0, v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_b

    move-result-object v0

    .line 933
    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private makeDefaultIcon(Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 217
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 220
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 221
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 219
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 222
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 223
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 224
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    return-object v1
.end method

.method private newContentValues(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/content/ContentValues;
    .registers 12

    .prologue
    .line 899
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 900
    const-string v1, "icon"

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 902
    const-string v1, "label"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v1, "system_state"

    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mSystemState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    if-nez p3, :cond_37

    .line 906
    const-string v1, "icon_low_res"

    .line 908
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    .line 909
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    const/4 v4, 0x1

    .line 907
    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 906
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 925
    :goto_36
    return-object v0

    .line 911
    :cond_37
    monitor-enter p0

    .line 912
    :try_start_38
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_61

    .line 913
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    .line 914
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 913
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    .line 915
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/launcher3/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    .line 916
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/IconCache;->mLowResPaint:Landroid/graphics/Paint;

    .line 918
    :cond_61
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 919
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 920
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher3/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 921
    iget-object v4, p0, Lcom/android/launcher3/IconCache;->mLowResPaint:Landroid/graphics/Paint;

    .line 919
    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 922
    const-string v1, "icon_low_res"

    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 911
    monitor-exit p0

    goto :goto_36

    :catchall_9c
    move-exception v0

    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_38 .. :try_end_9e} :catchall_9c

    throw v0
.end method

.method private removeFromMemCacheLocked(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 7

    .prologue
    .line 240
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_20

    .line 247
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 250
    return-void

    .line 241
    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 242
    iget-object v3, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 243
    iget-object v3, v0, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 244
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 247
    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 248
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method

.method private updateDBIcons(Lcom/android/launcher3/compat/UserHandleCompat;Ljava/util/List;Ljava/util/Set;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/compat/LauncherActivityInfoCompat;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v12

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 311
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 312
    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_e1

    .line 316
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 317
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_ee

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    invoke-virtual {v4}, Lcom/android/launcher3/IconCache$IconDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "icons"

    .line 322
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "rowid"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "componentName"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 323
    const-string v8, "lastUpdated"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "version"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 324
    const-string v8, "system_state"

    aput-object v8, v6, v7

    .line 325
    const-string v7, "profileId = ? "

    .line 326
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 327
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 321
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 329
    const-string v4, "componentName"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 330
    const-string v4, "lastUpdated"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 331
    const-string v4, "version"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 332
    const-string v4, "rowid"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 333
    const-string v4, "system_state"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 335
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 336
    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    .line 338
    :cond_97
    :goto_97
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_fd

    .line 368
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 369
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_bc

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    invoke-virtual {v4}, Lcom/android/launcher3/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "icons"

    .line 371
    const-string v6, "rowid"

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 372
    const/4 v7, 0x0

    .line 370
    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 376
    :cond_bc
    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c8

    invoke-virtual {v10}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e0

    .line 377
    :cond_c8
    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    .line 378
    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 379
    new-instance v4, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;

    move-object/from16 v5, p0

    move-wide v6, v12

    move-object v8, v14

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;-><init>(Lcom/android/launcher3/IconCache;JLjava/util/HashMap;Ljava/util/Stack;Ljava/util/Stack;)V

    .line 380
    invoke-virtual {v4}, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    .line 382
    :cond_e0
    return-void

    .line 312
    :cond_e1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 313
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21

    .line 317
    :cond_ee
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 318
    invoke-virtual {v4}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v15, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_30

    .line 339
    :cond_fd
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 340
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v18

    .line 341
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 342
    if-nez v4, :cond_135

    .line 343
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_97

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/IconCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 345
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    .line 349
    :cond_135
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v19, 0x1000000

    and-int v5, v5, v19

    if-nez v5, :cond_97

    .line 354
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 355
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 356
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 357
    iget v0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_173

    iget-wide v0, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v22, v0

    cmp-long v4, v20, v22

    if-nez v4, :cond_173

    .line 358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/IconCache;->mSystemState:Ljava/lang/String;

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_97

    .line 361
    :cond_173
    if-nez v5, :cond_18d

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/IconCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 363
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    .line 365
    :cond_18d
    invoke-virtual {v10, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97
.end method

.method private updateSystemStateString()V
    .registers 2

    .prologue
    .line 833
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mSystemState:Ljava/lang/String;

    .line 834
    return-void
.end method


# virtual methods
.method addIconToDBAndMemCache(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;J)V
    .registers 12

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/IconCache;->updateCacheAndGetContentValues(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Z)Landroid/content/ContentValues;

    move-result-object v1

    .line 389
    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/IconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V

    .line 390
    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_IconCacheItds$getResources(Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getResources(Lcom/android/launcher3/IconCache;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized cachePackageInstallInfo(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .registers 7

    .prologue
    .line 640
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Z)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object v0

    .line 643
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 644
    iput-object p4, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 646
    :cond_11
    if-eqz p3, :cond_1b

    .line 647
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p3, v1}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 649
    :cond_1b
    monitor-exit p0

    return-void

    .line 640
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearIconDB()V
    .registers 2

    .prologue
    .line 1
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$clearIconDB(Lcom/android/launcher3/IconCache;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2

    .prologue
    .line 1
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$flush(Lcom/android/launcher3/IconCache;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getContext(Lcom/android/launcher3/IconCache;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDefaultIcon(Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 567
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 568
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/launcher3/IconCache;->makeDefaultIcon(Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v0

    .line 567
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFullResCustomIcon(Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getFullResCustomIcon(Lcom/android/launcher3/IconCache;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 188
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 189
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 188
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_8} :catch_33

    move-result-object v1

    .line 193
    :goto_9
    if-eqz v1, :cond_15

    .line 194
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    .line 195
    if-eqz v2, :cond_15

    .line 196
    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    :cond_15
    if-eqz v0, :cond_3f

    .line 202
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    .line 205
    if-eqz v3, :cond_36

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ne v3, v1, :cond_36

    const/4 v1, 0x1

    .line 206
    :goto_28
    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/util/DDTUtils;->needToConvertCushinIcon(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_38

    .line 213
    :goto_32
    return-object v0

    .line 191
    :catch_33
    move-exception v1

    move-object v1, v0

    goto :goto_9

    .line 205
    :cond_36
    const/4 v1, 0x0

    goto :goto_28

    .line 210
    :cond_38
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/lge/launcher3/util/DDTUtils;->convertToCushionIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_32

    .line 213
    :cond_3f
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_32
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_5} :catch_f

    move-result-object v0

    .line 176
    :goto_6
    if-eqz v0, :cond_12

    .line 177
    if-eqz p2, :cond_12

    .line 178
    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    :goto_e
    return-object v0

    .line 174
    :catch_f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6

    .line 181
    :cond_12
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_e
.end method

.method public declared-synchronized getIcon(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    .line 508
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 511
    if-nez v1, :cond_d

    .line 512
    invoke-virtual {p0, p2}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1e

    move-result-object v0

    .line 517
    :goto_b
    monitor-exit p0

    return-object v0

    .line 515
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 516
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;ZZ)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object v0

    .line 517
    iget-object v0, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1e

    goto :goto_b

    .line 508
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/AppInfo;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Z)V
    .registers 10

    .prologue
    .line 481
    monitor-enter p0

    if-nez p2, :cond_27

    :try_start_3
    iget-object v3, p1, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 482
    :goto_5
    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 483
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move v5, p3

    .line 482
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;ZZ)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object v0

    .line 484
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    .line 485
    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/IconCache;->getNonNullIcon(Lcom/android/launcher3/IconCache$CacheEntry;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 486
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/launcher3/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 487
    iget-boolean v0, v0, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v0, p1, Lcom/android/launcher3/AppInfo;->usingLowResIcon:Z
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_2c

    .line 488
    monitor-exit p0

    return-void

    .line 481
    :cond_27
    :try_start_27
    invoke-virtual {p2}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/compat/UserHandleCompat;
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2c

    move-result-object v3

    goto :goto_5

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/content/ComponentName;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;ZZ)V
    .registers 13

    .prologue
    .line 546
    monitor-enter p0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;ZZ)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object v0

    .line 547
    invoke-direct {p0, v0, p4}, Lcom/android/launcher3/IconCache;->getNonNullIcon(Lcom/android/launcher3/IconCache$CacheEntry;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 548
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 549
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p4}, Lcom/android/launcher3/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    .line 550
    iget-boolean v0, v0, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v0, p1, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_28

    .line 551
    monitor-exit p0

    return-void

    .line 546
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;Z)V
    .registers 12

    .prologue
    .line 526
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 529
    if-nez v2, :cond_1a

    .line 530
    invoke-virtual {p0, p3}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 531
    const-string v0, ""

    iput-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_29

    .line 538
    :goto_18
    monitor-exit p0

    return-void

    .line 535
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v3

    .line 536
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/content/ComponentName;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;ZZ)V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_29

    goto :goto_18

    .line 526
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIconForApp(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;ZLcom/android/launcher3/model/PackageItemInfo;)V
    .registers 7

    .prologue
    .line 559
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Z)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object v0

    .line 560
    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/IconCache;->getNonNullIcon(Lcom/android/launcher3/IconCache$CacheEntry;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p4, Lcom/android/launcher3/model/PackageItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 561
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/launcher3/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    .line 562
    iget-boolean v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v1, p4, Lcom/android/launcher3/model/PackageItemInfo;->usingLowResIcon:Z

    .line 563
    iget-object v0, v0, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p4, Lcom/android/launcher3/model/PackageItemInfo;->contentDescription:Ljava/lang/CharSequence;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 564
    monitor-exit p0

    return-void

    .line 559
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUpdateIconInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;
    .registers 4

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getUpdateIconInfo(Lcom/android/launcher3/IconCache;Landroid/content/ComponentName;Ljava/lang/String;)Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;

    move-result-object v0

    return-object v0
.end method

.method public initCustomAppIconList()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$initCustomAppIconList(Lcom/android/launcher3/IconCache;)V

    return-void
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 4

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public loadCustomLabel(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$loadCustomLabel(Lcom/android/launcher3/IconCache;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public preloadIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;ILjava/lang/String;J)V
    .registers 16

    .prologue
    const/4 v3, 0x0

    .line 715
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 716
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_b

    .line 728
    :goto_a
    return-void

    .line 723
    :catch_b
    move-exception v0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p4, v0}, Lcom/android/launcher3/IconCache;->newContentValues(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v4

    .line 724
    const-string v0, "componentName"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v0, "profileId"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 726
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "icons"

    .line 727
    const/4 v5, 0x5

    invoke-static {}, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;->aspectOf()Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;

    move-result-object v6

    move-object v0, p0

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/IconCache;->insertWithOnConflict_aroundBody5$advice(Lcom/android/launcher3/IconCache;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;Lorg/aspectj/runtime/internal/AroundClosure;)J

    goto :goto_a
.end method

.method public declared-synchronized remove(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 5

    .prologue
    .line 233
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 234
    monitor-exit p0

    return-void

    .line 233
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeIcon(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 4

    .prologue
    .line 1
    monitor-enter p0

    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$removeIcon(Lcom/android/launcher3/IconCache;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 12

    .prologue
    .line 274
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 276
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    invoke-virtual {v2}, Lcom/android/launcher3/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "icons"

    .line 277
    const-string v4, "componentName LIKE ? AND profileId = ?"

    .line 278
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 276
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 279
    monitor-exit p0

    return-void

    .line 274
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setChangeIconPackage(Lcom/lge/launcher3/infos/IThemePackage;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$setChangeIconPackage(Lcom/android/launcher3/IconCache;Lcom/lge/launcher3/infos/IThemePackage;)V

    return-void
.end method

.method updateCacheAndGetContentValues(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Z)Landroid/content/ContentValues;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 408
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 410
    if-nez p2, :cond_a7

    .line 411
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/IconCache$CacheEntry;

    .line 413
    if-eqz v0, :cond_22

    iget-boolean v2, v0, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    if-nez v2, :cond_22

    iget-object v2, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_23

    :cond_22
    move-object v0, v1

    .line 417
    :cond_23
    :goto_23
    if-nez v0, :cond_4a

    .line 418
    new-instance v0, Lcom/android/launcher3/IconCache$CacheEntry;

    invoke-direct {v0}, Lcom/android/launcher3/IconCache$CacheEntry;-><init>()V

    .line 419
    iget v1, p0, Lcom/android/launcher3/IconCache;->mIconDpi:I

    invoke-virtual {p1, v1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 420
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mThemeIconPackage:Lcom/lge/launcher3/infos/IThemePackage;

    if-eqz v1, :cond_4a

    .line 421
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mThemeIconPackage:Lcom/lge/launcher3/infos/IThemePackage;

    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v3}, Lcom/lge/launcher3/infos/IThemePackage;->changeIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 424
    :cond_4a
    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 425
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v2, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 428
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mCustomAppIconList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 429
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$loadCustomLabel(Lcom/android/launcher3/IconCache;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 430
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getFullResCustomIcon(Lcom/android/launcher3/IconCache;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 434
    :cond_86
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/IconCache;->mActivityBgColor:I

    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher3/IconCache;->newContentValues(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0

    :cond_a7
    move-object v0, v1

    goto/16 :goto_23
.end method

.method public updateDbIcons(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 285
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->updateSystemStateString()V

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 300
    :cond_1a
    return-void

    .line 286
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/UserHandleCompat;

    .line 288
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v3

    .line 291
    if-eqz v3, :cond_1a

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 297
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    move-object v1, p1

    :goto_3b
    invoke-direct {p0, v0, v3, v1}, Lcom/android/launcher3/IconCache;->updateDBIcons(Lcom/android/launcher3/compat/UserHandleCompat;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_14

    .line 298
    :cond_3f
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_3b
.end method

.method public updateIconInBackground(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/IconCache$IconLoadRequest;
    .registers 6

    .prologue
    .line 444
    new-instance v0, Lcom/android/launcher3/IconCache$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/IconCache$1;-><init>(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/BubbleTextView;)V

    .line 468
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    new-instance v1, Lcom/android/launcher3/IconCache$IconLoadRequest;

    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/IconCache$IconLoadRequest;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-object v1
.end method

.method public declared-synchronized updateIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 8

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/IconCache;->removeIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_37

    .line 258
    :try_start_4
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 259
    const/16 v1, 0x2000

    .line 258
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 260
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v2

    .line 261
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_1f} :catch_2e
    .catchall {:try_start_4 .. :try_end_1f} :catchall_37

    move-result v0

    if-nez v0, :cond_24

    .line 268
    :goto_22
    monitor-exit p0

    return-void

    .line 261
    :cond_24
    :try_start_24
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 262
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/IconCache;->addIconToDBAndMemCache(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;J)V
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_2d} :catch_2e
    .catchall {:try_start_24 .. :try_end_2d} :catchall_37

    goto :goto_1c

    .line 264
    :catch_2e
    move-exception v0

    .line 265
    :try_start_2f
    const-string v1, "Launcher.IconCache"

    const-string v2, "Package not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_37

    goto :goto_22

    .line 256
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateInvariantDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$updateInvariantDeviceProfile(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method public declared-synchronized updateTitleAndIcon(Lcom/android/launcher3/AppInfo;)V
    .registers 8

    .prologue
    .line 494
    monitor-enter p0

    :try_start_1
    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 495
    const/4 v4, 0x0

    iget-boolean v5, p1, Lcom/android/launcher3/AppInfo;->usingLowResIcon:Z

    move-object v0, p0

    .line 494
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;ZZ)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object v0

    .line 496
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_30

    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 497
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    .line 498
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v1, p1, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 499
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/launcher3/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 500
    iget-boolean v0, v0, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v0, p1, Lcom/android/launcher3/AppInfo;->usingLowResIcon:Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 502
    :cond_30
    monitor-exit p0

    return-void

    .line 494
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method
