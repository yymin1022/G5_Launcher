.class public Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;
.super Ljava/lang/Object;
.source "LauncherProviderAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final TABLE_SHARING_CONTENTS:Ljava/lang/String; = "sharingContents"

.field public static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    :try_start_0
    const-class v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 50
    :goto_b
    return-void

    .line 49
    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addHideAppsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .prologue
    .line 82
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->TAG:Ljava/lang/String;

    const-string v1, "Create table <hideapps>"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "CREATE TABLE IF NOT EXISTS hideapps (_id INTEGER PRIMARY KEY,componentName TEXT NOT NULL, profileId INTEGER NOT NULL,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private addIconChangeColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .prologue
    .line 161
    const-string v0, "favorites"

    const-string v1, "iconId"

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$hasColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 162
    const-string v0, "ALTER TABLE favorites ADD COLUMN iconId TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    :cond_f
    const-string v0, "favorites"

    const-string v1, "userCustomizedIcon"

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$hasColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 165
    const-string v0, "ALTER TABLE favorites ADD COLUMN userCustomizedIcon BLOB;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    :cond_1e
    return-void
.end method

.method private addSharingContentsTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V
    .registers 5

    .prologue
    .line 98
    const-string v0, "sharingContents"

    invoke-virtual {p0, p1, v0}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$hasTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 99
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->TAG:Ljava/lang/String;

    const-string v1, "Table <sharingContents> is already exist."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_f
    return-void

    .line 103
    :cond_10
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$createSharingContentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$initializeSharingContentTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V

    goto :goto_f
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherProviderAspect$1$80f85147proceed(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;IILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p4, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherProviderAspect$3$9182029cproceed(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addHideAppsTable(Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->addHideAppsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addIconChangeColumn(Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->addIconChangeColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addSharingContentsTable(Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->addSharingContentsTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$checkUpgradeDB(Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->checkUpgradeDB(Landroid/content/Context;)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_android_launcher3_LauncherProvider$DatabaseHelper$getContext(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->ajc$get$mContext(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_android_launcher3_LauncherProvider$DatabaseHelper$getContext(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->ajc$interMethodDispatch2$com_lge_launcher3_nativejoin$getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_LauncherProviderAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;

    return-object v0
.end method

.method private checkUpgradeDB(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 170
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 171
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    const-string v1, "upgrade"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    return-void
.end method

.method private createSharingContentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .prologue
    .line 108
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->TAG:Ljava/lang/String;

    const-string v1, "Create table <sharingContents>"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "CREATE TABLE sharingContents (_id INTEGER PRIMARY KEY,adaptiveTextColor TEXT,wallpaperCommonColor TEXT,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private hasColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_28

    .line 152
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 153
    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    const/4 v0, 0x1

    .line 154
    :cond_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_28
    return v0
.end method

.method private hasTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name LIKE \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_27

    .line 140
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_24

    const/4 v0, 0x1

    .line 141
    :cond_24
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_27
    return v0
.end method

.method private initializeSharingContentTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 116
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->TAG:Ljava/lang/String;

    const-string v1, "Initialize table <sharingContents>"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {p2}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_android_launcher3_LauncherProvider$DatabaseHelper$getContext(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Landroid/content/Context;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->getAdaptiveTextColor(Landroid/content/Context;)I

    move-result v0

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    sget-object v2, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  # AdaptiveTextColor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v2, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  # WallpaperCommonColor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 127
    const-string v3, "_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v3, "adaptiveTextColor"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "wallpaperCommonColor"

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "sharingContents"

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 132
    return-void
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_nativejoin_LauncherProviderAspect$2$6efbbec8(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "dh,db"
        value = "(onCreate(db) && this(dh))"
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p2, p1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addSharingContentsTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addHideAppsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_LauncherProviderAspect$4$4bf52e9d(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;Lorg/aspectj/lang/JoinPoint;)V
    .registers 12
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "db,loader"
        value = "(execution(int DatabaseHelper.loadFavorites(..)) && args(db, loader))"
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 209
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 210
    invoke-static {v0}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_android_launcher3_LauncherProvider$DatabaseHelper$getContext(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Landroid/content/Context;

    move-result-object v0

    .line 211
    if-nez v0, :cond_e

    .line 229
    :cond_d
    :goto_d
    return-void

    .line 215
    :cond_e
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SORT_APPS_BY_NAME_IN_MULTIUSER:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 216
    invoke-static {v0}, Lcom/lge/launcher3/util/UserUtils;->isAdminUser(Landroid/content/Context;)Z

    move-result v1

    .line 217
    invoke-static {v0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasDeviceOwner(Landroid/content/Context;)Z

    move-result v2

    .line 218
    invoke-static {v0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasProfileOwner(Landroid/content/Context;)Z

    move-result v3

    .line 220
    if-nez v1, :cond_d

    if-nez v2, :cond_d

    if-nez v3, :cond_d

    .line 221
    sget-object v4, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->NAME:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    invoke-static {v0, v4, v7}, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->rearrange(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Z)Z

    .line 223
    invoke-static {v0}, Lcom/lge/launcher3/util/UserUtils;->getCurrentUserInfo(Landroid/content/Context;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 224
    sget-object v4, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->TAG:Ljava/lang/String;

    const-string v5, "loadFavorites() : SortAppsByName, UserInfo(%s), isAdminUser(%s), hasDeviceOwner(%s), hasProfileOwner(%s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 226
    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v0

    .line 224
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherProviderAspect$1$80f85147(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;IILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 9
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "dh,db,oldVersion,newVersion,ajc$aroundClosure"
        value = "(onUpgrade(db, oldVersion, newVersion) && this(dh))"
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrade database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_android_launcher3_LauncherProvider$DatabaseHelper$getContext(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Landroid/content/Context;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$checkUpgradeDB(Landroid/content/Context;)V

    .line 64
    packed-switch p3, :pswitch_data_36

    .line 78
    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    :goto_2b
    return-void

    .line 66
    :pswitch_2c
    invoke-virtual {p0, p2, p1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addSharingContentsTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addIconChangeColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    :pswitch_32
    invoke-virtual {p0, p2}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addHideAppsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2b

    .line 64
    :pswitch_data_36
    .packed-switch 0x64
        :pswitch_2c
        :pswitch_32
    .end packed-switch
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherProviderAspect$3$9182029c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/os/Bundle;
    .registers 10
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "method,arg,extras,ajc$aroundClosure"
        value = "onCall(method, arg, extras)"
    .end annotation

    .prologue
    .line 178
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherProvider;

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6c

    .line 204
    :cond_d
    invoke-static {p1, p2, p3, p4}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherProviderAspect$3$9182029cproceed(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/os/Bundle;

    move-result-object v0

    :goto_11
    return-object v0

    .line 179
    :sswitch_12
    const-string v1, "delete_appwidget_ids"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 181
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 182
    const-string v2, "appwidget_ids"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 183
    invoke-static {v0, v2}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$deleteAppWidgetIds(Lcom/android/launcher3/LauncherProvider;[I)V

    move-object v0, v1

    .line 184
    goto :goto_11

    .line 179
    :sswitch_2a
    const-string v1, "get_grid_info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 187
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 189
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 191
    sget-object v3, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_COLUMNS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 190
    invoke-static {v0, v3, v1}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v1

    .line 193
    sget-object v3, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_ROWS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 192
    invoke-static {v0, v3, v2}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v0

    .line 194
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 195
    const/4 v3, 0x0

    aput v1, v2, v3

    .line 196
    const/4 v1, 0x1

    aput v0, v2, v1

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    const-string v1, "GridColumnRow"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_11

    .line 179
    :sswitch_data_6c
    .sparse-switch
        -0x55e70c76 -> :sswitch_12
        0x6afd845e -> :sswitch_2a
    .end sparse-switch
.end method

.method public synthetic ajc$pointcut$$onCall$728(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "method,arg,extras"
        value = "(execution(public android.os.Bundle com.android.launcher3.LauncherProvider.call(java.lang.String, java.lang.String, android.os.Bundle)) && args(method, arg, extras))"
    .end annotation

    .prologue
    .line 47
    return-void
.end method

.method public synthetic ajc$pointcut$$onCreate$56c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "db"
        value = "(execution(public void com.android.launcher3.LauncherProvider$DatabaseHelper.onCreate(android.database.sqlite.SQLiteDatabase)) && args(db))"
    .end annotation

    .prologue
    .line 38
    return-void
.end method

.method public synthetic ajc$pointcut$$onCreateEmptyDb$6c6()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(public void com.android.launcher3.LauncherProvider$DatabaseHelper.createEmptyDB(..))"
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public synthetic ajc$pointcut$$onUpgrade$5f3(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "db,oldVersion,newVersion"
        value = "(execution(public void com.android.launcher3.LauncherProvider$DatabaseHelper.onUpgrade(android.database.sqlite.SQLiteDatabase, int, int)) && args(db, oldVersion, newVersion))"
    .end annotation

    .prologue
    .line 42
    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addHideAppsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->addHideAppsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addIconChangeColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->addIconChangeColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addSharingContentsTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->addSharingContentsTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$checkUpgradeDB(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->checkUpgradeDB(Landroid/content/Context;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$createSharingContentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->createSharingContentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$hasColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->hasColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$hasTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->hasTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$initializeSharingContentTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->initializeSharingContentTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V

    return-void
.end method
