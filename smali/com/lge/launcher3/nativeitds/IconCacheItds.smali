.class public Lcom/lge/launcher3/nativeitds/IconCacheItds;
.super Ljava/lang/Object;
.source "IconCacheItds.aj"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;
    }
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/IconCacheItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    :try_start_0
    const-class v0, Lcom/lge/launcher3/nativeitds/IconCacheItds;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/IconCacheItds;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$mCustomAppIconList(Lcom/android/launcher3/IconCache;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCustomAppIconList:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$mThemeIconPackage(Lcom/android/launcher3/IconCache;)Lcom/lge/launcher3/infos/IThemePackage;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mThemeIconPackage:Lcom/lge/launcher3/infos/IThemePackage;

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$mCustomAppIconList(Lcom/android/launcher3/IconCache;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/IconCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$mCustomAppIconList(Lcom/android/launcher3/IconCache;Ljava/util/HashMap;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$mThemeIconPackage(Lcom/android/launcher3/IconCache;)V
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$mThemeIconPackage(Lcom/android/launcher3/IconCache;Lcom/lge/launcher3/infos/IThemePackage;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$mCustomAppIconList(Lcom/android/launcher3/IconCache;Ljava/util/HashMap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mCustomAppIconList:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$mThemeIconPackage(Lcom/android/launcher3/IconCache;Lcom/lge/launcher3/infos/IThemePackage;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mThemeIconPackage:Lcom/lge/launcher3/infos/IThemePackage;

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$clearIconDB(Lcom/android/launcher3/IconCache;)V
    .registers 3

    .prologue
    .line 35
    sget-object v0, Lcom/lge/launcher3/nativeitds/IconCacheItds;->TAG:Ljava/lang/String;

    const-string v1, "clearIconDB()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Lcom/android/launcher3/IconCache;->ajc$get$mCache(Lcom/android/launcher3/IconCache;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 38
    invoke-static {p0}, Lcom/android/launcher3/IconCache;->ajc$get$mIconDb(Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/IconCache$IconDB;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/IconCache;->ajc$get$mIconDb(Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/IconCache$IconDB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/IconCache$IconDB;->ajc$privMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$IconDB$clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$flush(Lcom/android/launcher3/IconCache;)V
    .registers 2

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/launcher3/IconCache;->ajc$get$mCache(Lcom/android/launcher3/IconCache;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 57
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getContext(Lcom/android/launcher3/IconCache;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 153
    invoke-static {p0}, Lcom/android/launcher3/IconCache;->ajc$get$mContext(Lcom/android/launcher3/IconCache;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getFullResCustomIcon(Lcom/android/launcher3/IconCache;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCustomAppIconList:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;

    .line 114
    if-nez v0, :cond_b

    .line 124
    :goto_a
    return-object p1

    .line 118
    :cond_b
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 119
    iget v0, v0, Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;->mIconResId:I

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_20

    .line 121
    invoke-static {p0}, Lcom/android/launcher3/IconCache;->ajc$get$mContext(Lcom/android/launcher3/IconCache;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_a

    .line 124
    :cond_20
    const/4 p1, 0x0

    goto :goto_a
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getResources(Lcom/android/launcher3/IconCache;Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p0}, Lcom/android/launcher3/IconCache;->ajc$get$mPackageManager(Lcom/android/launcher3/IconCache;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getUpdateIconInfo(Lcom/android/launcher3/IconCache;Landroid/content/ComponentName;Ljava/lang/String;)Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 129
    :try_start_2
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 130
    const-string v2, "iconResName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string v3, "titleResName"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    new-instance v0, Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;-><init>(Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;)V

    .line 134
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-static {p0, v4}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getResources(Lcom/android/launcher3/IconCache;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 136
    const-string v6, "drawable"

    invoke-virtual {v5, v2, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;->mIconResId:I

    .line 137
    const-string v2, "string"

    invoke-virtual {v5, v3, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;->mTitleResId:I

    .line 138
    iget v2, v0, Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;->mIconResId:I

    if-nez v2, :cond_40

    iget v2, v0, Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;->mTitleResId:I
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_3d} :catch_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_3d} :catch_5c

    if-nez v2, :cond_40

    move-object v0, v1

    .line 149
    :cond_40
    :goto_40
    return-object v0

    .line 143
    :catch_41
    move-exception v0

    .line 144
    invoke-static {}, Lcom/android/launcher3/IconCache;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception reading change app icon list: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [I

    invoke-static {v2, v0, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    :goto_5a
    move-object v0, v1

    .line 149
    goto :goto_40

    .line 145
    :catch_5c
    move-exception v0

    .line 146
    invoke-static {}, Lcom/android/launcher3/IconCache;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception reading change app icon list: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [I

    invoke-static {v2, v0, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_5a
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$initCustomAppIconList(Lcom/android/launcher3/IconCache;)V
    .registers 6

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/launcher3/IconCache;->ajc$get$mContext(Lcom/android/launcher3/IconCache;)Landroid/content/Context;

    move-result-object v0

    .line 69
    const-string v1, "customize_appicons_shared_prefs"

    .line 70
    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCustomAppIconList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 73
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_23

    .line 88
    return-void

    .line 75
    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    if-eqz v3, :cond_1c

    .line 82
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 83
    invoke-static {p0, v0, v3}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getUpdateIconInfo(Lcom/android/launcher3/IconCache;Landroid/content/ComponentName;Ljava/lang/String;)Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_1c

    .line 85
    iget-object v4, p0, Lcom/android/launcher3/IconCache;->mCustomAppIconList:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$loadCustomLabel(Lcom/android/launcher3/IconCache;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCustomAppIconList:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;

    .line 96
    if-nez v0, :cond_c

    .line 109
    :goto_b
    return-object p1

    .line 101
    :cond_c
    :try_start_c
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getResources(Lcom/android/launcher3/IconCache;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    iget v0, v0, Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;->mTitleResId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_19} :catch_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_19} :catch_36

    move-result-object p1

    goto :goto_b

    .line 103
    :catch_1b
    move-exception v0

    .line 104
    invoke-static {}, Lcom/android/launcher3/IconCache;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception loading custom label: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [I

    invoke-static {v1, v0, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 109
    :goto_34
    const/4 p1, 0x0

    goto :goto_b

    .line 105
    :catch_36
    move-exception v0

    .line 106
    invoke-static {}, Lcom/android/launcher3/IconCache;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception loading custom label: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [I

    invoke-static {v1, v0, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_34
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$removeIcon(Lcom/android/launcher3/IconCache;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 11

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/IconCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 49
    invoke-static {p0}, Lcom/android/launcher3/IconCache;->ajc$get$mUserManager(Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 50
    invoke-static {p0}, Lcom/android/launcher3/IconCache;->ajc$get$mIconDb(Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/IconCache$IconDB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/IconCache$IconDB;->ajc$get$TABLE_NAME()Ljava/lang/String;

    move-result-object v3

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/IconCache$IconDB;->ajc$get$COLUMN_COMPONENT()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " = ? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher3/IconCache$IconDB;->ajc$get$COLUMN_USER()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 50
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$setChangeIconPackage(Lcom/android/launcher3/IconCache;Lcom/lge/launcher3/infos/IThemePackage;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mThemeIconPackage:Lcom/lge/launcher3/infos/IThemePackage;

    .line 32
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$updateInvariantDeviceProfile(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 3

    .prologue
    .line 42
    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-static {p0, v0}, Lcom/android/launcher3/IconCache;->ajc$set$mIconDpi(Lcom/android/launcher3/IconCache;I)V

    .line 44
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$clearIconDB(Lcom/android/launcher3/IconCache;)V

    .line 45
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$clearIconDB(Lcom/android/launcher3/IconCache;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/IconCache;->clearIconDB()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$flush(Lcom/android/launcher3/IconCache;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/IconCache;->flush()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getContext(Lcom/android/launcher3/IconCache;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/IconCache;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getFullResCustomIcon(Lcom/android/launcher3/IconCache;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/IconCache;->getFullResCustomIcon(Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getResources(Lcom/android/launcher3/IconCache;Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/IconCache;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_IconCacheItds$getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getUpdateIconInfo(Lcom/android/launcher3/IconCache;Landroid/content/ComponentName;Ljava/lang/String;)Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/IconCache;->getUpdateIconInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/lge/launcher3/nativeitds/IconCacheItds$CustomAppIconEntry;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$initCustomAppIconList(Lcom/android/launcher3/IconCache;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/IconCache;->initCustomAppIconList()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$loadCustomLabel(Lcom/android/launcher3/IconCache;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/IconCache;->loadCustomLabel(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$removeIcon(Lcom/android/launcher3/IconCache;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/IconCache;->removeIcon(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$setChangeIconPackage(Lcom/android/launcher3/IconCache;Lcom/lge/launcher3/infos/IThemePackage;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/IconCache;->setChangeIconPackage(Lcom/lge/launcher3/infos/IThemePackage;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$updateInvariantDeviceProfile(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/IconCache;->updateInvariantDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/IconCacheItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/IconCacheItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/IconCacheItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/IconCacheItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_IconCacheItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/IconCacheItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/IconCacheItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
