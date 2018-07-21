.class public Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

.field private mMaxItemId:J

.field private mMaxScreenId:J

.field private mNewDbCreated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .prologue
    const-wide/16 v4, -0x1

    .line 473
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0x66

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 465
    iput-wide v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 466
    iput-wide v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mNewDbCreated:Z

    .line 474
    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 475
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 479
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2c

    .line 480
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 482
    :cond_2c
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3c

    .line 483
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 485
    :cond_3c
    return-void
.end method

.method private addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    .registers 8

    .prologue
    .line 884
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 886
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ALTER TABLE favorites ADD COLUMN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_28} :catch_2d
    .catchall {:try_start_3 .. :try_end_28} :catchall_3c

    .line 893
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 895
    const/4 v0, 0x1

    :goto_2c
    return v0

    .line 889
    :catch_2d
    move-exception v0

    .line 890
    :try_start_2e
    const-string v1, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_3c

    .line 893
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 891
    const/4 v0, 0x0

    goto :goto_2c

    .line 892
    :catchall_3c
    move-exception v0

    .line 893
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 894
    throw v0
.end method

.method private addProfileColumn(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 5

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 879
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    .line 878
    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 880
    const-string v2, "profileId"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method private addScreenIdIfNecessary(J)Z
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 993
    cmp-long v0, p1, v4

    if-ltz v0, :cond_3a

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->hasScreenId(J)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 994
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getMaxScreenRank()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 996
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 997
    const-string v2, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 998
    const-string v2, "screenRank"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 999
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1000
    const-string v2, "workspaceScreens"

    const/4 v3, 0x0

    .line 999
    invoke-static {p0, v0, v2, v3, v1}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1000
    cmp-long v0, v0, v4

    if-gez v0, :cond_3a

    .line 1001
    const/4 v0, 0x0

    .line 1004
    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x1

    goto :goto_39
.end method

.method private addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 563
    const-string v0, "CREATE TABLE workspaceScreens (_id INTEGER PRIMARY KEY,screenRank INTEGER,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public static ajc$get$mAppWidgetHost(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Landroid/appwidget/AppWidgetHost;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method public static ajc$get$mContext(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static ajc$get$mMaxScreenId(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)J
    .registers 3

    .prologue
    .line 1
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    return-wide v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "LauncherProvider.java"

    const-class v2, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "loadFavorites"

    const-string v3, "com.android.launcher3.LauncherProvider$DatabaseHelper"

    const-string v4, "android.database.sqlite.SQLiteDatabase:com.android.launcher3.AutoInstallsLayout"

    const-string v5, "db:loader"

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x40e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mAppWidgetHost(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/appwidget/AppWidgetHost;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-void
.end method

.method public static ajc$set$mContext(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static ajc$set$mMaxScreenId(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;J)V
    .registers 4

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    return-void
.end method

.method private getMaxScreenRank()I
    .registers 4

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1022
    const-string v1, "SELECT MAX(screenRank) FROM workspaceScreens"

    .line 1023
    const/4 v2, 0x0

    .line 1022
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1027
    const/4 v0, -0x1

    .line 1028
    if-eqz v1, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1029
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1031
    :cond_19
    if-eqz v1, :cond_1e

    .line 1032
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_1e
    return v0
.end method

.method private hasScreenId(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1008
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM workspaceScreens WHERE _id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1009
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1011
    if-eqz v1, :cond_25

    .line 1012
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1013
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1014
    if-lez v2, :cond_25

    const/4 v0, 0x1

    .line 1016
    :cond_25
    return v0
.end method

.method private initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 4

    .prologue
    .line 931
    const-string v0, "favorites"

    invoke-static {p1, v0}, Lcom/android/launcher3/LauncherProvider;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 4

    .prologue
    .line 948
    const-string v0, "workspaceScreens"

    invoke-static {p1, v0}, Lcom/android/launcher3/LauncherProvider;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final onUpgrade_aroundBody0(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 616
    packed-switch p2, :pswitch_data_92

    .line 716
    :cond_5
    :goto_5
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Destroying all old data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 718
    :goto_f
    :pswitch_f
    return-void

    .line 622
    :pswitch_10
    iput-wide v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 623
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 626
    :pswitch_15
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 629
    :try_start_18
    const-string v0, "ALTER TABLE favorites ADD COLUMN appWidgetProvider TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catch Landroid/database/SQLException; {:try_start_18 .. :try_end_20} :catch_6a
    .catchall {:try_start_18 .. :try_end_20} :catchall_78

    .line 637
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 641
    :pswitch_23
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 644
    :try_start_26
    const-string v0, "ALTER TABLE favorites ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 646
    const-string v0, "ALTER TABLE workspaceScreens ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_33
    .catch Landroid/database/SQLException; {:try_start_26 .. :try_end_33} :catch_7d
    .catchall {:try_start_26 .. :try_end_33} :catchall_8c

    .line 654
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 658
    :pswitch_36
    const-string v0, "restored"

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 669
    :pswitch_3e
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherClings;->synchonouslyMarkFirstRunClingDismissed(Landroid/content/Context;)V

    .line 679
    :pswitch_43
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->removeOrphanedItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 683
    :pswitch_46
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addProfileColumn(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 689
    :pswitch_4c
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 694
    :pswitch_53
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->recreateWorkspaceTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 698
    :pswitch_59
    const-string v0, "options"

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 706
    :pswitch_61
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->markExistingUsersForNoFolderCreation(Landroid/content/Context;)V

    .line 708
    :pswitch_66
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->convertShortcutsToLauncherActivities(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_f

    .line 632
    :catch_6a
    move-exception v0

    .line 633
    :try_start_6b
    const-string v1, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_78

    .line 637
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    .line 636
    :catchall_78
    move-exception v0

    .line 637
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 638
    throw v0

    .line 649
    :catch_7d
    move-exception v0

    .line 650
    :try_start_7e
    const-string v1, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_8c

    .line 654
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_5

    .line 653
    :catchall_8c
    move-exception v0

    .line 654
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 655
    throw v0

    .line 616
    nop

    :pswitch_data_92
    .packed-switch 0xc
        :pswitch_10
        :pswitch_15
        :pswitch_23
        :pswitch_36
        :pswitch_3e
        :pswitch_43
        :pswitch_43
        :pswitch_46
        :pswitch_4c
        :pswitch_53
        :pswitch_59
        :pswitch_61
        :pswitch_61
        :pswitch_66
        :pswitch_f
    .end packed-switch
.end method

.method private static final onUpgrade_aroundBody1$advice(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;IILcom/lge/launcher3/nativejoin/LauncherProviderAspect;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;IILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 13

    .prologue
    .line 59
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrade database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p5}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_android_launcher3_LauncherProvider$DatabaseHelper$getContext(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Landroid/content/Context;

    move-result-object v0

    .line 62
    invoke-virtual {p4, v0}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$checkUpgradeDB(Landroid/content/Context;)V

    .line 64
    packed-switch p7, :pswitch_data_36

    .line 78
    invoke-virtual {p5, p6}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    :goto_2b
    return-void

    .line 66
    :pswitch_2c
    invoke-virtual {p4, p6, p5}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addSharingContentsTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V

    .line 67
    invoke-virtual {p4, p6}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addIconChangeColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    :pswitch_32
    invoke-virtual {p4, p6}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_lge_launcher3_nativejoin_LauncherProviderAspect$addHideAppsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2b

    .line 64
    :pswitch_data_36
    .packed-switch 0x64
        :pswitch_2c
        :pswitch_32
    .end packed-switch
.end method

.method private removeOrphanedItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 574
    const-string v0, "DELETE FROM favorites WHERE screen NOT IN (SELECT _id FROM workspaceScreens) AND container = -100"

    .line 581
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 586
    const-string v0, "DELETE FROM favorites WHERE container <> -100 AND container <> -101 AND container NOT IN (SELECT _id FROM favorites WHERE itemType = 2)"

    .line 598
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method private setFlagEmptyDbCreated()V
    .registers 4

    .prologue
    .line 608
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 610
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EMPTY_DATABASE_CREATED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 611
    return-void
.end method

.method private setFlagJustLoadedOldDb()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 602
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 604
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EMPTY_DATABASE_CREATED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 605
    return-void
.end method


# virtual methods
.method public ajc$interMethodDispatch2$com_lge_launcher3_nativejoin$getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$interMethod$com_lge_launcher3_nativejoin_LauncherProviderAspect$com_android_launcher3_LauncherProvider$DatabaseHelper$getContext(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public checkId(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 7

    .prologue
    .line 922
    const-string v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 923
    const-string v2, "workspaceScreens"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 924
    iget-wide v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 928
    :cond_1a
    :goto_1a
    return-void

    .line 925
    :cond_1b
    const-string v2, "favorites"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 926
    iget-wide v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    goto :goto_1a
.end method

.method convertShortcutsToLauncherActivities(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 742
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 748
    :try_start_4
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 749
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 750
    const-string v1, "favorites"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 751
    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    .line 752
    const-string v3, "intent"

    aput-object v3, v2, v0

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "itemType=1 AND profileId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 754
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 750
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_38
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_38} :catch_b6
    .catchall {:try_start_4 .. :try_end_38} :catchall_ad

    move-result-object v2

    .line 756
    :try_start_39
    const-string v0, "UPDATE favorites SET itemType=0 WHERE _id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_3e
    .catch Landroid/database/SQLException; {:try_start_39 .. :try_end_3e} :catch_b9
    .catchall {:try_start_39 .. :try_end_3e} :catchall_b0

    move-result-object v1

    .line 759
    :try_start_3f
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 760
    const-string v3, "intent"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 762
    :cond_4b
    :goto_4b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_62

    .line 780
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_54
    .catch Landroid/database/SQLException; {:try_start_3f .. :try_end_54} :catch_7d
    .catchall {:try_start_3f .. :try_end_54} :catchall_9d

    .line 784
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 785
    if-eqz v2, :cond_5c

    .line 786
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 788
    :cond_5c
    if-eqz v1, :cond_61

    .line 789
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 792
    :cond_61
    :goto_61
    return-void

    .line 763
    :cond_62
    :try_start_62
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_65
    .catch Landroid/database/SQLException; {:try_start_62 .. :try_end_65} :catch_7d
    .catchall {:try_start_62 .. :try_end_65} :catchall_9d

    move-result-object v4

    .line 766
    const/4 v5, 0x0

    :try_start_67
    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6a
    .catch Ljava/net/URISyntaxException; {:try_start_67 .. :try_end_6a} :catch_94
    .catch Landroid/database/SQLException; {:try_start_67 .. :try_end_6a} :catch_7d
    .catchall {:try_start_67 .. :try_end_6a} :catchall_9d

    move-result-object v4

    .line 772
    :try_start_6b
    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 776
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 777
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 778
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_7c
    .catch Landroid/database/SQLException; {:try_start_6b .. :try_end_7c} :catch_7d
    .catchall {:try_start_6b .. :try_end_7c} :catchall_9d

    goto :goto_4b

    .line 781
    :catch_7d
    move-exception v0

    move-object v8, v2

    .line 782
    :goto_7f
    :try_start_7f
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Error deduping shortcuts"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_b4

    .line 784
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 785
    if-eqz v8, :cond_8e

    .line 786
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 788
    :cond_8e
    if-eqz v1, :cond_61

    .line 789
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_61

    .line 767
    :catch_94
    move-exception v4

    .line 768
    :try_start_95
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Unable to parse intent"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catch Landroid/database/SQLException; {:try_start_95 .. :try_end_9c} :catch_7d
    .catchall {:try_start_95 .. :try_end_9c} :catchall_9d

    goto :goto_4b

    .line 783
    :catchall_9d
    move-exception v0

    move-object v8, v2

    .line 784
    :goto_9f
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 785
    if-eqz v8, :cond_a7

    .line 786
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 788
    :cond_a7
    if-eqz v1, :cond_ac

    .line 789
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 791
    :cond_ac
    throw v0

    .line 783
    :catchall_ad
    move-exception v0

    move-object v1, v8

    goto :goto_9f

    :catchall_b0
    move-exception v0

    move-object v1, v8

    move-object v8, v2

    goto :goto_9f

    :catchall_b4
    move-exception v0

    goto :goto_9f

    .line 781
    :catch_b6
    move-exception v0

    move-object v1, v8

    goto :goto_7f

    :catch_b9
    move-exception v0

    move-object v1, v8

    move-object v8, v2

    goto :goto_7f
.end method

.method public createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 732
    invoke-static {}, Lcom/lge/launcher3/debug/EventLogger;->aspectOf()Lcom/lge/launcher3/debug/EventLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/EventLogger;->ajc$before$com_lge_launcher3_debug_EventLogger$5$fee89f71()V

    const-string v0, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 733
    const-string v0, "DROP TABLE IF EXISTS workspaceScreens"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 735
    return-void
.end method

.method public generateNewItemId()J
    .registers 5

    .prologue
    .line 905
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 906
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max item id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
    :cond_10
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 909
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    return-wide v0
.end method

.method public generateNewScreenId()J
    .registers 5

    .prologue
    .line 940
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 941
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max screen id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_10
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 944
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    return-wide v0
.end method

.method initializeExternalAdd(Landroid/content/ContentValues;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 953
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v2

    .line 954
    const-string v1, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 958
    const-string v1, "itemType"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 959
    if-eqz v1, :cond_56

    .line 960
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_56

    .line 961
    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 963
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 965
    const-string v2, "appWidgetProvider"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 964
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 967
    if-eqz v2, :cond_4c

    .line 969
    :try_start_37
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 970
    const-string v4, "appWidgetId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
    invoke-virtual {v1, v3, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_49} :catch_4d

    move-result v1

    if-nez v1, :cond_56

    .line 988
    :cond_4c
    :goto_4c
    return v0

    .line 974
    :catch_4d
    move-exception v1

    .line 975
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Failed to initialize external widget"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 984
    :cond_56
    const-string v1, "screen"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 985
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addScreenIdIfNecessary(J)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 988
    const/4 v0, 0x1

    goto :goto_4c
.end method

.method public insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .registers 5

    .prologue
    .line 914
    const-string v0, "favorites"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I
    .registers 13

    .prologue
    sget-object v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    .line 1039
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    invoke-virtual {p2, p1, v1}, Lcom/android/launcher3/AutoInstallsLayout;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    move-result v3

    .line 1044
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1045
    const/4 v0, 0x0

    .line 1046
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1047
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1059
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 1060
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_2f} :catch_63

    .line 1062
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherProviderAspect$4$4bf52e9d(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;Lorg/aspectj/lang/JoinPoint;)V

    return v3

    .line 1047
    :cond_37
    :try_start_37
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1048
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1049
    const-string v6, "_id"

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1050
    const-string v0, "screenRank"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1051
    const-string v0, "workspaceScreens"

    const/4 v6, 0x0

    invoke-static {p0, p1, v0, v6, v4}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_6c

    .line 1052
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed initialize screen tablefrom default layout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_63} :catch_63

    .line 1062
    :catch_63
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v2}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherProviderAspect$4$4bf52e9d(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 1055
    :cond_6c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d
.end method

.method migrateLauncher2Shortcuts(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)V
    .registers 46

    .prologue
    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1067
    const/4 v10, 0x0

    .line 1068
    const/4 v9, 0x0

    .line 1069
    const/4 v8, 0x0

    .line 1072
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_e
    const-string v7, "title ASC"

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_47f

    move-result-object v2

    move-object v10, v2

    .line 1078
    :goto_17
    if-eqz v10, :cond_48b

    .line 1080
    :try_start_19
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_487

    .line 1081
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1083
    const-string v2, "intent"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1085
    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1087
    const-string v2, "iconType"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1089
    const-string v2, "icon"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1091
    const-string v2, "iconPackage"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1093
    const-string v2, "iconResource"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1095
    const-string v2, "container"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1097
    const-string v2, "itemType"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1099
    const-string v2, "screen"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1101
    const-string v2, "cellX"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 1103
    const-string v2, "cellY"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 1105
    const-string v2, "uri"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 1107
    const-string v2, "displayMode"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 1109
    const-string v2, "profileId"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1112
    const/4 v3, 0x0

    .line 1113
    const/4 v4, 0x0

    .line 1115
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    .line 1116
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v25

    .line 1117
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    move/from16 v26, v0

    .line 1118
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    move/from16 v27, v0

    .line 1119
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:F

    float-to-int v0, v2

    move/from16 v28, v0

    .line 1121
    new-instance v29, Ljava/util/HashSet;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 1123
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    new-instance v32, Landroid/util/SparseArray;

    invoke-direct/range {v32 .. v32}, Landroid/util/SparseArray;-><init>()V

    .line 1127
    :cond_b0
    :goto_b0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_14a

    .line 1256
    invoke-virtual/range {v32 .. v32}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 1257
    const/4 v2, 0x0

    move v6, v2

    :goto_bc
    if-lt v6, v7, :cond_399

    .line 1279
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1283
    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1286
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v3

    move v3, v8

    :cond_d3
    :goto_d3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3d9

    .line 1307
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f2

    .line 1308
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_e2
    .catchall {:try_start_19 .. :try_end_e2} :catchall_1a6

    .line 1310
    :try_start_e2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e6
    :goto_e6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_41c

    .line 1319
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ef
    .catchall {:try_start_e2 .. :try_end_ef} :catchall_441

    .line 1321
    :try_start_ef
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_f2
    move v2, v9

    .line 1325
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_f6
    .catchall {:try_start_ef .. :try_end_f6} :catchall_1a6

    .line 1327
    const/4 v4, 0x0

    :goto_f7
    if-le v4, v3, :cond_446

    .line 1336
    :try_start_f9
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_47a

    .line 1338
    :try_start_fc
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1341
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    :try_end_107
    .catchall {:try_start_fc .. :try_end_107} :catchall_1a6

    move/from16 v42, v3

    move v3, v2

    move/from16 v2, v42

    .line 1344
    :goto_10c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1348
    :goto_10f
    const-string v4, "Launcher.LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "migrated "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " icons from Launcher2 into "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1349
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " screens"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1348
    invoke-static {v4, v2, v3}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1352
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->setFlagJustLoadedOldDb()V

    .line 1355
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 1356
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 1358
    :goto_149
    return-void

    .line 1128
    :cond_14a
    :try_start_14a
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1129
    if-eqz v33, :cond_15c

    .line 1130
    const/4 v2, 0x1

    move/from16 v0, v33

    if-eq v0, v2, :cond_15c

    .line 1131
    const/4 v2, 0x2

    move/from16 v0, v33

    if-ne v0, v2, :cond_b0

    .line 1135
    :cond_15c
    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1136
    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 1137
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1138
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1139
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v39

    .line 1144
    const/4 v2, -0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_1ab

    move/from16 v0, v24

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1ab

    .line 1145
    move/from16 v0, v24

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v6, v2

    .line 1146
    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v2

    .line 1154
    :goto_19a
    if-nez v2, :cond_1b6

    .line 1155
    const-string v2, "Launcher.LauncherProvider"

    const-string v6, "skipping deleted user"

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1a4
    .catchall {:try_start_14a .. :try_end_1a4} :catchall_1a6

    goto/16 :goto_b0

    .line 1343
    :catchall_1a6
    move-exception v2

    .line 1344
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1345
    throw v2

    .line 1150
    :cond_1ab
    :try_start_1ab
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v2

    .line 1151
    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v6

    goto :goto_19a

    .line 1159
    :cond_1b6
    const-string v39, "Launcher.LauncherProvider"

    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "migrating \""

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1160
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "\" ("

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1161
    move-object/from16 v0, v40

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "@"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1162
    invoke-static/range {v37 .. v37}, Lcom/android/launcher3/LauncherSettings$Favorites;->containerToString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1163
    const-string v41, "/"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1164
    const-string v41, "): "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x1

    .line 1159
    invoke-static/range {v39 .. v41}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_216
    .catchall {:try_start_1ab .. :try_end_216} :catchall_1a6

    .line 1166
    const/16 v39, 0x2

    move/from16 v0, v33

    move/from16 v1, v39

    if-eq v0, v1, :cond_29a

    .line 1171
    const/16 v39, 0x0

    :try_start_220
    invoke-static/range {v38 .. v39}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_223
    .catch Ljava/net/URISyntaxException; {:try_start_220 .. :try_end_223} :catch_238
    .catchall {:try_start_220 .. :try_end_223} :catchall_1a6

    move-result-object v39

    .line 1179
    :try_start_224
    invoke-virtual/range {v39 .. v39}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v40

    .line 1180
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_243

    .line 1182
    const-string v2, "Launcher.LauncherProvider"

    const-string v6, "skipping empty intent"

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_b0

    .line 1174
    :catch_238
    move-exception v2

    const-string v2, "Launcher.LauncherProvider"

    .line 1175
    const-string v6, "skipping invalid intent uri"

    const/4 v7, 0x1

    .line 1174
    invoke-static {v2, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_b0

    .line 1184
    :cond_243
    if-eqz v40, :cond_25f

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->isValidPackageActivity(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v2

    .line 1186
    if-nez v2, :cond_25f

    .line 1188
    const-string v2, "Launcher.LauncherProvider"

    const-string v6, "skipping item whose component no longer exists."

    .line 1189
    const/4 v7, 0x1

    .line 1188
    invoke-static {v2, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_b0

    .line 1192
    :cond_25f
    const/16 v2, -0x64

    .line 1191
    move/from16 v0, v37

    if-ne v0, v2, :cond_29a

    .line 1199
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    invoke-virtual/range {v39 .. v39}, Landroid/content/Intent;->getFlags()I

    move-result v2

    .line 1201
    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1202
    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v40

    .line 1203
    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1204
    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_293

    .line 1205
    const-string v2, "Launcher.LauncherProvider"

    const-string v6, "skipping duplicate"

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_b0

    .line 1208
    :cond_293
    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1213
    :cond_29a
    new-instance v2, Landroid/content/ContentValues;

    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v39

    move/from16 v0, v39

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1214
    const-string v39, "_id"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1215
    const-string v39, "intent"

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v38, "title"

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v38, "iconType"

    .line 1218
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    .line 1217
    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1219
    const-string v38, "icon"

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1220
    const-string v38, "iconPackage"

    .line 1221
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1220
    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const-string v38, "iconResource"

    .line 1223
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1222
    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string v38, "itemType"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1225
    const-string v38, "appWidgetId"

    const/16 v39, -0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1226
    const-string v38, "uri"

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const-string v38, "displayMode"

    .line 1228
    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    .line 1227
    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1229
    const-string v38, "profileId"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1231
    const/16 v6, -0x65

    move/from16 v0, v37

    if-ne v0, v6, :cond_35c

    .line 1232
    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1235
    :cond_35c
    const/16 v6, -0x64

    move/from16 v0, v37

    if-eq v0, v6, :cond_37d

    .line 1237
    const-string v6, "screen"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1238
    const-string v6, "cellX"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1239
    const-string v6, "cellY"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1245
    :cond_37d
    const-string v6, "container"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1247
    const/4 v6, 0x2

    move/from16 v0, v33

    if-eq v0, v6, :cond_392

    .line 1248
    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b0

    .line 1250
    :cond_392
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b0

    .line 1258
    :cond_399
    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1259
    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1261
    move-object/from16 v0, v25

    iget v11, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatAllAppsRank:I

    if-ne v5, v11, :cond_3b3

    .line 1263
    :cond_3ad
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v28

    if-lt v5, v0, :cond_3c7

    .line 1272
    :cond_3b3
    :goto_3b3
    move/from16 v0, v28

    if-lt v5, v0, :cond_3c2

    .line 1274
    const-string v5, "container"

    .line 1275
    const/16 v11, -0x64

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1274
    invoke-virtual {v2, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1257
    :cond_3c2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_bc

    .line 1264
    :cond_3c7
    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3ad

    .line 1266
    const-string v11, "screen"

    .line 1267
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1266
    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3b3

    .line 1286
    :cond_3d9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1287
    const-string v8, "container"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1288
    const/16 v11, -0x64

    .line 1287
    if-ne v8, v11, :cond_d3

    .line 1293
    const-string v8, "screen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1294
    const-string v8, "cellX"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1295
    const-string v8, "cellY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1296
    add-int/lit8 v2, v5, 0x1

    rem-int v5, v2, v26

    .line 1297
    if-nez v5, :cond_485

    .line 1298
    add-int/lit8 v2, v4, 0x1

    .line 1301
    :goto_410
    add-int/lit8 v4, v27, -0x1

    if-ne v2, v4, :cond_482

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->generateNewScreenId()J
    :try_end_417
    .catchall {:try_start_224 .. :try_end_417} :catchall_1a6

    move-result-wide v2

    long-to-int v3, v2

    .line 1303
    const/4 v4, 0x0

    goto/16 :goto_d3

    .line 1310
    :cond_41c
    :try_start_41c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1311
    if-eqz v2, :cond_e6

    .line 1312
    const-string v5, "favorites"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v6, v2}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_42e
    .catchall {:try_start_41c .. :try_end_42e} :catchall_441

    move-result-wide v6

    .line 1313
    const-wide/16 v12, 0x0

    cmp-long v2, v6, v12

    if-gez v2, :cond_43d

    .line 1321
    :try_start_435
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_438
    .catchall {:try_start_435 .. :try_end_438} :catchall_1a6

    .line 1344
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_149

    .line 1316
    :cond_43d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_e6

    .line 1320
    :catchall_441
    move-exception v2

    .line 1321
    :try_start_442
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1322
    throw v2
    :try_end_446
    .catchall {:try_start_442 .. :try_end_446} :catchall_1a6

    .line 1328
    :cond_446
    :try_start_446
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1329
    const-string v6, "_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1330
    const-string v6, "screenRank"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1331
    const-string v6, "workspaceScreens"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6, v7, v5}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_467
    .catchall {:try_start_446 .. :try_end_467} :catchall_47a

    move-result-wide v6

    .line 1332
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_476

    .line 1338
    :try_start_46e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_471
    .catchall {:try_start_46e .. :try_end_471} :catchall_1a6

    .line 1344
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_149

    .line 1327
    :cond_476
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f7

    .line 1337
    :catchall_47a
    move-exception v2

    .line 1338
    :try_start_47b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1339
    throw v2
    :try_end_47f
    .catchall {:try_start_47b .. :try_end_47f} :catchall_1a6

    :catch_47f
    move-exception v2

    goto/16 :goto_17

    :cond_482
    move v4, v2

    goto/16 :goto_d3

    :cond_485
    move v2, v4

    goto :goto_410

    :cond_487
    move v2, v8

    move v3, v9

    goto/16 :goto_10c

    :cond_48b
    move v2, v8

    move v3, v9

    goto/16 :goto_10f
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    .prologue
    .line 495
    const-wide/16 v0, 0x1

    :try_start_2
    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 496
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mNewDbCreated:Z

    .line 499
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 501
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    .line 500
    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,appWidgetProvider TEXT,modified INTEGER NOT NULL DEFAULT 0,restored INTEGER NOT NULL DEFAULT 0,profileId INTEGER DEFAULT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 526
    const-string v1, "rank INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 527
    const-string v1, "options INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 528
    const-string v1, "iconId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 529
    const-string v1, "userCustomizedIcon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BLOB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 530
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 531
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 534
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_74

    .line 535
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 543
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    new-instance v1, Lcom/android/launcher3/LauncherProvider$DatabaseHelper$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper$1;-><init>(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 555
    :cond_74
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 556
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->setFlagEmptyDbCreated()V

    .line 559
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_86} :catch_8e

    .line 560
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherProviderAspect$2$6efbbec8(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_8e
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherProviderAspect$2$6efbbec8(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    .prologue
    .line 723
    const-string v0, "Launcher.LauncherProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Database version downgrade from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 724
    const-string v2, ". Wiping databse."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 726
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 14

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;

    move-result-object v4

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->onUpgrade_aroundBody1$advice(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;IILcom/lge/launcher3/nativejoin/LauncherProviderAspect;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;IILorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public recreateWorkspaceTable(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 798
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 800
    :try_start_5
    const-string v1, "workspaceScreens"

    .line 801
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 802
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 803
    const-string v7, "screenRank"

    move-object v0, p1

    .line 800
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 804
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1f
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_1f} :catch_65
    .catchall {:try_start_5 .. :try_end_1f} :catchall_9a

    .line 805
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 807
    :cond_22
    :goto_22
    :try_start_22
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_60

    move-result v0

    if-nez v0, :cond_44

    .line 815
    :try_start_28
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 818
    const-string v0, "DROP TABLE IF EXISTS workspaceScreens"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 819
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 822
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v9

    .line 823
    :goto_38
    if-lt v1, v4, :cond_74

    .line 830
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 831
    iput-wide v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J
    :try_end_3f
    .catch Landroid/database/SQLException; {:try_start_28 .. :try_end_3f} :catch_65
    .catchall {:try_start_28 .. :try_end_3f} :catchall_9a

    .line 837
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v8

    .line 839
    :goto_43
    return v0

    .line 808
    :cond_44
    const/4 v0, 0x0

    :try_start_45
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 809
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 810
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_60

    move-result-wide v0

    move-wide v2, v0

    goto :goto_22

    .line 814
    :catchall_60
    move-exception v0

    .line 815
    :try_start_61
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 816
    throw v0
    :try_end_65
    .catch Landroid/database/SQLException; {:try_start_61 .. :try_end_65} :catch_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_9a

    .line 832
    :catch_65
    move-exception v0

    .line 834
    :try_start_66
    const-string v1, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_9a

    .line 837
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v9

    .line 835
    goto :goto_43

    .line 824
    :cond_74
    :try_start_74
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 825
    const-string v7, "_id"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 826
    const-string v0, "screenRank"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    invoke-static {v6}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 828
    const-string v0, "workspaceScreens"

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_96
    .catch Landroid/database/SQLException; {:try_start_74 .. :try_end_96} :catch_65
    .catchall {:try_start_74 .. :try_end_96} :catchall_9a

    .line 823
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_38

    .line 836
    :catchall_9a
    move-exception v0

    .line 837
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 838
    throw v0
.end method

.method updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 843
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 845
    if-eqz p2, :cond_c

    .line 847
    :try_start_7
    const-string v2, "ALTER TABLE favorites ADD COLUMN rank INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 851
    :cond_c
    const-string v2, "SELECT container, MAX(cellX) FROM favorites WHERE container IN (SELECT _id FROM favorites WHERE itemType = ?) GROUP BY container;"

    .line 854
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 851
    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 856
    :goto_1d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 862
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 863
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_29} :catch_52
    .catchall {:try_start_7 .. :try_end_29} :catchall_60

    .line 869
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    .line 871
    :goto_2d
    return v0

    .line 857
    :cond_2e
    :try_start_2e
    const-string v3, "UPDATE favorites SET rank=cellX+(cellY*?) WHERE container=? AND cellX IS NOT NULL AND cellY IS NOT NULL;"

    .line 859
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 857
    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_51
    .catch Landroid/database/SQLException; {:try_start_2e .. :try_end_51} :catch_52
    .catchall {:try_start_2e .. :try_end_51} :catchall_60

    goto :goto_1d

    .line 864
    :catch_52
    move-exception v1

    .line 866
    :try_start_53
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_60

    .line 869
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2d

    .line 868
    :catchall_60
    move-exception v0

    .line 869
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 870
    throw v0
.end method

.method public updateMaxItemId(J)V
    .registers 6

    .prologue
    .line 918
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 919
    return-void
.end method

.method public updateMaxScreenId(J)V
    .registers 4

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$DatabaseHelper$updateMaxScreenId(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;J)V

    return-void
.end method

.method public wasNewDbCreated()Z
    .registers 2

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mNewDbCreated:Z

    return v0
.end method
