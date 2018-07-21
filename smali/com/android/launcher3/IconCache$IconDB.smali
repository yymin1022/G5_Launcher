.class public final Lcom/android/launcher3/IconCache$IconDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IconDB"
.end annotation


# static fields
.field private static final COLUMN_COMPONENT:Ljava/lang/String; = "componentName"

.field private static final COLUMN_ICON:Ljava/lang/String; = "icon"

.field private static final COLUMN_ICON_LOW_RES:Ljava/lang/String; = "icon_low_res"

.field private static final COLUMN_LABEL:Ljava/lang/String; = "label"

.field private static final COLUMN_LAST_UPDATED:Ljava/lang/String; = "lastUpdated"

.field private static final COLUMN_ROWID:Ljava/lang/String; = "rowid"

.field private static final COLUMN_SYSTEM_STATE:Ljava/lang/String; = "system_state"

.field private static final COLUMN_USER:Ljava/lang/String; = "profileId"

.field private static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field private static final DB_VERSION:I = 0x7

.field private static final TABLE_NAME:Ljava/lang/String; = "icons"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 852
    const-string v0, "app_icons.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 853
    return-void
.end method

.method public static ajc$get$COLUMN_COMPONENT()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/IconCache$IconDB;->COLUMN_COMPONENT:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$COLUMN_USER()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/IconCache$IconDB;->COLUMN_USER:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$TABLE_NAME()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/IconCache$IconDB;->TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$set$COLUMN_COMPONENT(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/IconCache$IconDB;->COLUMN_COMPONENT:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$COLUMN_USER(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/IconCache$IconDB;->COLUMN_USER:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$TABLE_NAME(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/IconCache$IconDB;->TABLE_NAME:Ljava/lang/String;

    return-void
.end method

.method private clearDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .prologue
    .line 885
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 887
    :try_start_3
    const-string v0, "DROP TABLE IF EXISTS icons"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0, p1}, Lcom/android/launcher3/IconCache$IconDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 889
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_e} :catch_12
    .catchall {:try_start_3 .. :try_end_e} :catchall_1e

    .line 893
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 895
    :goto_11
    return-void

    .line 890
    :catch_12
    move-exception v0

    .line 891
    :try_start_13
    const-string v1, "Launcher.IconCache"

    const-string v2, "Icon Cache clear excetion "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1e

    .line 893
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_11

    .line 892
    :catchall_1e
    move-exception v0

    .line 893
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 894
    throw v0
.end method


# virtual methods
.method public ajc$privMethod$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$IconDB$clearDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/IconCache$IconDB;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 857
    const-string v0, "CREATE TABLE IF NOT EXISTS icons (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, icon BLOB, icon_low_res BLOB, label TEXT, system_state TEXT, PRIMARY KEY (componentName, profileId) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .prologue
    .line 879
    if-eq p2, p3, :cond_5

    .line 880
    invoke-direct {p0, p1}, Lcom/android/launcher3/IconCache$IconDB;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 882
    :cond_5
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .prologue
    .line 872
    if-eq p2, p3, :cond_5

    .line 873
    invoke-direct {p0, p1}, Lcom/android/launcher3/IconCache$IconDB;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 875
    :cond_5
    return-void
.end method
