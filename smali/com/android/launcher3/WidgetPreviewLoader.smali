.class public Lcom/android/launcher3/WidgetPreviewLoader;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;,
        Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;,
        Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;,
        Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetPreviewLoader"

.field protected static final WIDGET_PREVIEW_ICON_PADDING_PERCENTAGE:F = 0.25f


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

.field protected final mIconCache:Lcom/android/launcher3/IconCache;

.field private final mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

.field protected final mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field private final mPackageVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field protected final mProfileBadgeMargin:I

.field final mUnusedBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

.field final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/IconCache;)V
    .registers 5

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    .line 73
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 77
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 79
    invoke-static {p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 80
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 81
    new-instance v0, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-direct {v0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    const v1, 0x7f090077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 83
    iput v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mProfileBadgeMargin:I

    .line 85
    return-void
.end method

.method private getObjectKey(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;
    .registers 7

    .prologue
    .line 160
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_14

    .line 161
    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 162
    new-instance v0, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v1, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;Ljava/lang/String;)V

    .line 165
    :goto_13
    return-object v0

    .line 164
    :cond_14
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 165
    new-instance v0, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    .line 166
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v2

    .line 165
    invoke-direct {v0, v1, v2, p2}, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private static final insertWithOnConflict_aroundBody0(Lcom/android/launcher3/WidgetPreviewLoader;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .registers 8

    .prologue
    .line 185
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final insertWithOnConflict_aroundBody1$advice(Lcom/android/launcher3/WidgetPreviewLoader;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;Lorg/aspectj/runtime/internal/AroundClosure;)J
    .registers 12

    .prologue
    .line 14
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/WidgetPreviewLoader;->insertWithOnConflict_aroundBody0(Lcom/android/launcher3/WidgetPreviewLoader;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
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

.method private removePackage(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;J)V
    .registers 12

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    monitor-enter v1

    .line 198
    :try_start_3
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_24

    .line 202
    :try_start_9
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v0}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "shortcut_and_widget_previews"

    .line 203
    const-string v2, "packageName = ? AND profileId = ?"

    .line 204
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 202
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_23} :catch_27

    .line 208
    :goto_23
    return-void

    .line 197
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    .line 205
    :catch_27
    move-exception v0

    .line 206
    const-string v1, "WidgetPreviewLoader"

    const-string v2, "Unable to delete items from DB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method


# virtual methods
.method generatePreview(Lcom/android/launcher3/Launcher;Ljava/lang/Object;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 12

    .prologue
    .line 342
    instance-of v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_11

    move-object v2, p2

    .line 343
    check-cast v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 344
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move-object v4, p3

    .line 343
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/WidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    :goto_10
    return-object v0

    :cond_11
    move-object v2, p2

    .line 347
    check-cast v2, Landroid/content/pm/ResolveInfo;

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move-object v5, p3

    .line 346
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/WidgetPreviewLoader;->generateShortcutPreview(Lcom/android/launcher3/Launcher;Landroid/content/pm/ResolveInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_10
.end method

.method public generateShortcutPreview(Lcom/android/launcher3/Launcher;Landroid/content/pm/ResolveInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 462
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 463
    if-nez p5, :cond_78

    .line 464
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p5

    .line 465
    invoke-virtual {v0, p5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 474
    :goto_12
    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 475
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 478
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 479
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 480
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 481
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 483
    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 484
    const v3, 0x7f090067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 485
    const v4, 0x7f090065

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 486
    const v5, 0x7f090066

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 487
    sub-int v5, p3, v4

    sub-int v2, v5, v2

    .line 489
    add-int v5, v4, v2

    add-int/2addr v2, v3

    .line 488
    invoke-virtual {v1, v4, v3, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 490
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 494
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 496
    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 497
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 498
    invoke-virtual {v1, v6, v6, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 499
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 501
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 502
    return-object p5

    .line 466
    :cond_78
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p3, :cond_84

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p4, :cond_8c

    .line 467
    :cond_84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improperly sized bitmap passed as argument"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_8c
    invoke-virtual {v0, p5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 471
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_12
.end method

.method public generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .registers 27

    .prologue
    .line 354
    if-gez p3, :cond_5

    const p3, 0x7fffffff

    .line 356
    :cond_5
    const/4 v3, 0x0

    .line 357
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    if-eqz v4, :cond_1e2

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 359
    if-eqz v3, :cond_ab

    .line 360
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v8, v3

    .line 367
    :goto_1f
    if-eqz v8, :cond_d8

    const/4 v3, 0x1

    move v4, v3

    .line 368
    :goto_23
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanX(Lcom/android/launcher3/Launcher;)I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_dc

    const/4 v3, 0x1

    move v5, v3

    .line 369
    :goto_30
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanY(Lcom/android/launcher3/Launcher;)I

    move-result v3

    const/4 v6, 0x1

    if-ge v3, v6, :cond_e7

    const/4 v3, 0x1

    move v12, v3

    .line 373
    :goto_3d
    const/4 v3, 0x0

    .line 375
    if-eqz v4, :cond_f2

    .line 376
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 377
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    move-object v11, v3

    move v3, v6

    move v6, v7

    .line 388
    :goto_4b
    const/high16 v7, 0x3f800000    # 1.0f

    .line 389
    if-eqz p5, :cond_52

    .line 390
    const/4 v9, 0x0

    aput v6, p5, v9

    .line 392
    :cond_52
    move/from16 v0, p3

    if-le v6, v0, :cond_1df

    .line 393
    move/from16 v0, p3

    int-to-float v7, v0

    int-to-float v9, v6

    div-float/2addr v7, v9

    move v10, v7

    .line 395
    :goto_5c
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v10, v7

    if-eqz v7, :cond_68

    .line 396
    int-to-float v6, v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    .line 397
    int-to-float v3, v3

    mul-float/2addr v3, v10

    float-to-int v3, v3

    .line 401
    :cond_68
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13}, Landroid/graphics/Canvas;-><init>()V

    .line 402
    if-nez p4, :cond_117

    .line 403
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 404
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 412
    :goto_7a
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v7, v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mProfileBadgeMargin:I

    sub-int/2addr v7, v9

    div-int/lit8 v14, v7, 0x2

    .line 413
    if-eqz v4, :cond_124

    .line 414
    const/4 v4, 0x0

    add-int v5, v14, v6

    invoke-virtual {v8, v14, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 415
    invoke-virtual {v8, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 456
    :goto_91
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mProfileBadgeMargin:I

    add-int/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1, v3}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getBadgeBitmap(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 362
    :cond_ab
    const-string v4, "WidgetPreviewLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t load widget preview drawable 0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 362
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v3

    goto/16 :goto_1f

    .line 367
    :cond_d8
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_23

    .line 368
    :cond_dc
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanX(Lcom/android/launcher3/Launcher;)I

    move-result v3

    move v5, v3

    goto/16 :goto_30

    .line 369
    :cond_e7
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanY(Lcom/android/launcher3/Launcher;)I

    move-result v3

    move v12, v3

    goto/16 :goto_3d

    .line 380
    :cond_f2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 381
    const v6, 0x7f0200e1

    .line 380
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 381
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 382
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int v7, v6, v5

    .line 383
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v6, v12

    move-object v11, v3

    move v3, v6

    move v6, v7

    goto/16 :goto_4b

    .line 407
    :cond_117
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 408
    const/4 v7, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v7, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_7a

    .line 417
    :cond_124
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 418
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 419
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v0, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    move/from16 v16, v0

    .line 422
    new-instance v17, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 424
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v18, v10, v4

    .line 425
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v19, v10, v4

    .line 426
    new-instance v20, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v4, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 428
    int-to-float v7, v14

    .line 429
    const/4 v4, 0x0

    move v8, v4

    move v9, v7

    :goto_165
    if-lt v8, v5, :cond_1c1

    .line 439
    move/from16 v0, v16

    int-to-float v4, v0

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 440
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 441
    int-to-float v5, v5

    mul-int/lit8 v4, v4, 0x2

    add-int v4, v4, v16

    int-to-float v4, v4

    div-float v4, v5, v4

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 444
    :try_start_17e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->loadIcon(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 445
    if-eqz v5, :cond_1bb

    .line 446
    move/from16 v0, v16

    int-to-float v6, v0

    mul-float/2addr v6, v4

    sub-float v6, v18, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v14

    .line 447
    move/from16 v0, v16

    int-to-float v7, v0

    mul-float/2addr v7, v4

    sub-float v7, v19, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    .line 449
    move/from16 v0, v16

    int-to-float v8, v0

    mul-float/2addr v8, v4

    float-to-int v8, v8

    add-int/2addr v8, v6

    .line 450
    move/from16 v0, v16

    int-to-float v9, v0

    mul-float/2addr v4, v9

    float-to-int v4, v4

    add-int/2addr v4, v7

    .line 448
    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 451
    invoke-virtual {v5, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1bb
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17e .. :try_end_1bb} :catch_1dd

    .line 454
    :cond_1bb
    :goto_1bb
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_91

    .line 430
    :cond_1c1
    const/4 v7, 0x0

    .line 431
    const/4 v4, 0x0

    :goto_1c3
    if-lt v4, v12, :cond_1cc

    .line 429
    add-int/lit8 v4, v8, 0x1

    add-float v7, v9, v18

    move v8, v4

    move v9, v7

    goto :goto_165

    .line 432
    :cond_1cc
    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v7}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 433
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v13, v11, v0, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 431
    add-int/lit8 v4, v4, 0x1

    add-float v7, v7, v19

    goto :goto_1c3

    :catch_1dd
    move-exception v4

    goto :goto_1bb

    :cond_1df
    move v10, v7

    goto/16 :goto_5c

    :cond_1e2
    move-object v8, v3

    goto/16 :goto_1f
.end method

.method getPackageVersion(Ljava/lang/String;)[J
    .registers 8

    .prologue
    .line 525
    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    monitor-enter v2

    .line 526
    :try_start_3
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 527
    if-nez v0, :cond_2c

    .line 528
    const/4 v0, 0x2

    new-array v1, v0, [J
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_37

    .line 530
    :try_start_10
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 531
    const/4 v3, 0x0

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v4, v4

    aput-wide v4, v1, v3

    .line 532
    const/4 v3, 0x1

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    aput-wide v4, v1, v3
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_26} :catch_2e
    .catchall {:try_start_10 .. :try_end_26} :catchall_37

    .line 536
    :goto_26
    :try_start_26
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 538
    :cond_2c
    monitor-exit v2

    return-object v0

    .line 533
    :catch_2e
    move-exception v0

    .line 534
    const-string v3, "WidgetPreviewLoader"

    const-string v4, "PackageInfo not found"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 525
    :catchall_37
    move-exception v0

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public getPreview(Ljava/lang/Object;IILcom/lge/launcher3/widgettray/PreviewAppliable;)Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;
    .registers 12

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/WidgetPreviewLoader;->getObjectKey(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    move-result-object v2

    .line 99
    new-instance v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;-><init>(Lcom/android/launcher3/WidgetPreviewLoader;Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Ljava/lang/Object;IILcom/lge/launcher3/widgettray/PreviewAppliable;)V

    .line 100
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    new-instance v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;-><init>(Lcom/android/launcher3/WidgetPreviewLoader;Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)V

    return-object v1
.end method

.method protected mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    new-instance v1, Lcom/android/launcher3/WidgetPreviewLoader$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$1;-><init>(Lcom/android/launcher3/WidgetPreviewLoader;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 512
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_11} :catch_20

    .line 507
    return-object v0

    .line 513
    :catch_12
    move-exception v0

    .line 514
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 515
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 516
    :catch_20
    move-exception v0

    .line 517
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method readFromDb(Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 304
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v0}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 305
    const-string v1, "shortcut_and_widget_previews"

    .line 306
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "preview_bitmap"

    aput-object v4, v2, v3

    .line 307
    const-string v3, "componentName = ? AND profileId = ? AND size = ?"

    .line 308
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 309
    iget-object v6, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 310
    iget-object v6, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v7, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 311
    iget-object v6, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 313
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 304
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_39
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_39} :catch_73
    .catchall {:try_start_1 .. :try_end_39} :catchall_83

    move-result-object v1

    .line 315
    :try_start_3a
    invoke-virtual {p3}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z
    :try_end_3d
    .catch Landroid/database/SQLException; {:try_start_3a .. :try_end_3d} :catch_93
    .catchall {:try_start_3a .. :try_end_3d} :catchall_90

    move-result v0

    if-eqz v0, :cond_47

    .line 333
    if-eqz v1, :cond_45

    .line 334
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_45
    move-object v0, v8

    .line 337
    :cond_46
    :goto_46
    return-object v0

    .line 318
    :cond_47
    :try_start_47
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 319
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 320
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 321
    iput-object p2, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_59
    .catch Landroid/database/SQLException; {:try_start_47 .. :try_end_59} :catch_93
    .catchall {:try_start_47 .. :try_end_59} :catchall_90

    .line 323
    :try_start_59
    invoke-virtual {p3}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_8a

    .line 324
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_64} :catch_6b
    .catch Landroid/database/SQLException; {:try_start_59 .. :try_end_64} :catch_93
    .catchall {:try_start_59 .. :try_end_64} :catchall_90

    move-result-object v0

    .line 333
    if-eqz v1, :cond_46

    .line 334
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_46

    :catch_6b
    move-exception v0

    .line 333
    if-eqz v1, :cond_71

    .line 334
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_71
    move-object v0, v8

    .line 327
    goto :goto_46

    .line 330
    :catch_73
    move-exception v0

    move-object v1, v8

    .line 331
    :goto_75
    :try_start_75
    const-string v2, "WidgetPreviewLoader"

    const-string v3, "Error loading preview from DB"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_90

    .line 333
    if-eqz v1, :cond_81

    .line 334
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_81
    :goto_81
    move-object v0, v8

    .line 337
    goto :goto_46

    .line 332
    :catchall_83
    move-exception v0

    .line 333
    :goto_84
    if-eqz v8, :cond_89

    .line 334
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_89
    throw v0

    .line 333
    :cond_8a
    if-eqz v1, :cond_81

    .line 334
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_81

    .line 332
    :catchall_90
    move-exception v0

    move-object v8, v1

    goto :goto_84

    .line 330
    :catch_93
    move-exception v0

    goto :goto_75
.end method

.method public removeObsoletePreviews(Ljava/util/ArrayList;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Lcom/android/launcher3/Utilities;->assertWorkerThread()V

    .line 219
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6}, Landroid/util/LongSparseArray;-><init>()V

    .line 220
    new-instance v11, Landroid/util/LongSparseArray;

    invoke-direct {v11}, Landroid/util/LongSparseArray;-><init>()V

    .line 222
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 251
    new-instance v12, Landroid/util/LongSparseArray;

    invoke-direct {v12}, Landroid/util/LongSparseArray;-><init>()V

    .line 252
    const/4 v10, 0x0

    .line 254
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v2}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "shortcut_and_widget_previews"

    .line 255
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "profileId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "packageName"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 256
    const-string v6, "lastUpdated"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "version"

    aput-object v6, v4, v5

    .line 257
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 254
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_46
    .catch Landroid/database/SQLException; {:try_start_1d .. :try_end_46} :catch_144
    .catchall {:try_start_1d .. :try_end_46} :catchall_141

    move-result-object v3

    .line 258
    :cond_47
    :goto_47
    :try_start_47
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_b3

    .line 282
    const/4 v2, 0x0

    move v4, v2

    :goto_4f
    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I
    :try_end_52
    .catch Landroid/database/SQLException; {:try_start_47 .. :try_end_52} :catch_fe
    .catchall {:try_start_47 .. :try_end_52} :catchall_13a

    move-result v2

    if-lt v4, v2, :cond_10d

    .line 292
    if-eqz v3, :cond_5a

    .line 293
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_5a
    :goto_5a
    return-void

    .line 222
    :cond_5b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 225
    instance-of v3, v2, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_98

    .line 226
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v3

    .line 227
    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v2

    move-object v2, v3

    move-object/from16 v3, v18

    .line 234
    :goto_72
    invoke-virtual {v6, v2}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v4

    .line 236
    if-gez v4, :cond_ae

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 238
    invoke-virtual {v6, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 243
    :goto_83
    invoke-virtual {v11, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 244
    if-nez v2, :cond_93

    .line 245
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 246
    invoke-virtual {v11, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 248
    :cond_93
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 229
    :cond_98
    check-cast v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v3

    .line 231
    iget-object v2, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    move-object v2, v3

    move-object/from16 v3, v18

    goto :goto_72

    .line 240
    :cond_ae
    invoke-virtual {v6, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    goto :goto_83

    .line 259
    :cond_b3
    const/4 v2, 0x0

    :try_start_b4
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 260
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 261
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 262
    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 264
    invoke-virtual {v11, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 265
    if-eqz v2, :cond_e9

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 266
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/WidgetPreviewLoader;->getPackageVersion(Ljava/lang/String;)[J

    move-result-object v2

    .line 267
    const/4 v7, 0x0

    aget-wide v16, v2, v7

    cmp-long v7, v16, v14

    if-nez v7, :cond_e9

    const/4 v7, 0x1

    aget-wide v14, v2, v7

    cmp-long v2, v14, v8

    if-eqz v2, :cond_47

    .line 274
    :cond_e9
    invoke-virtual {v12, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 275
    if-nez v2, :cond_f9

    .line 276
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 277
    invoke-virtual {v12, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 279
    :cond_f9
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_fc
    .catch Landroid/database/SQLException; {:try_start_b4 .. :try_end_fc} :catch_fe
    .catchall {:try_start_b4 .. :try_end_fc} :catchall_13a

    goto/16 :goto_47

    .line 289
    :catch_fe
    move-exception v2

    .line 290
    :goto_ff
    :try_start_ff
    const-string v4, "WidgetPreviewLoader"

    const-string v5, "Error updatating widget previews"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_106
    .catchall {:try_start_ff .. :try_end_106} :catchall_13a

    .line 292
    if-eqz v3, :cond_5a

    .line 293
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5a

    .line 283
    :cond_10d
    :try_start_10d
    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v5

    .line 285
    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_123
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12e

    .line 282
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_4f

    .line 285
    :cond_12e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 286
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v7}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;J)V
    :try_end_139
    .catch Landroid/database/SQLException; {:try_start_10d .. :try_end_139} :catch_fe
    .catchall {:try_start_10d .. :try_end_139} :catchall_13a

    goto :goto_123

    .line 291
    :catchall_13a
    move-exception v2

    .line 292
    :goto_13b
    if-eqz v3, :cond_140

    .line 293
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_140
    throw v2

    .line 291
    :catchall_141
    move-exception v2

    move-object v3, v10

    goto :goto_13b

    .line 289
    :catch_144
    move-exception v2

    move-object v3, v10

    goto :goto_ff
.end method

.method public removePackage(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 5

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;J)V

    .line 194
    return-void
.end method

.method writeToDb(Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;[JLandroid/graphics/Bitmap;)V
    .registers 12

    .prologue
    .line 172
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    :goto_6
    return-void

    .line 175
    :cond_7
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 176
    const-string v0, "componentName"

    iget-object v1, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "profileId"

    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v2, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    const-string v0, "size"

    iget-object v1, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "packageName"

    iget-object v1, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "version"

    const/4 v1, 0x0

    aget-wide v2, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    const-string v0, "lastUpdated"

    const/4 v1, 0x1

    aget-wide v2, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    const-string v0, "preview_bitmap"

    invoke-static {p3}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 185
    :try_start_5b
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v0}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "shortcut_and_widget_previews"

    const/4 v3, 0x0

    .line 186
    const/4 v5, 0x5

    invoke-static {}, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;->aspectOf()Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/WidgetPreviewLoader;->insertWithOnConflict_aroundBody1$advice(Lcom/android/launcher3/WidgetPreviewLoader;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;Lorg/aspectj/runtime/internal/AroundClosure;)J
    :try_end_6e
    .catch Landroid/database/SQLException; {:try_start_5b .. :try_end_6e} :catch_6f

    goto :goto_6

    .line 187
    :catch_6f
    move-exception v0

    .line 188
    const-string v1, "WidgetPreviewLoader"

    const-string v2, "Error saving image to DB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
