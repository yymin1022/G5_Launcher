.class public Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;
.super Ljava/lang/Object;
.source "Home4MigrationHelper.java"


# static fields
.field private static final ALLAPPS_CONTAINER:I = -0x66

.field private static final PLUSHOME_CONTAINER:I = -0x67

.field private static final TAG:Ljava/lang/String; = "Home4DatabaseMigrationHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    return-void
.end method

.method private addAppWidgetProviderColumn()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 360
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 363
    :try_start_6
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE favorites ADD COLUMN appWidgetProvider TEXT;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    const-string v3, "itemType = 4"
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_7e

    .line 366
    :try_start_f
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 367
    const-string v5, "packageName"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "className"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 366
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_8c

    move-result-object v1

    .line 368
    :goto_2d
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_70

    move-result v0

    if-nez v0, :cond_43

    .line 373
    if-eqz v1, :cond_38

    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_8c

    .line 374
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_7e

    .line 376
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 378
    return-void

    .line 369
    :cond_43
    :try_start_43
    new-instance v0, Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UPDATE favorites SET appWidgetProvider=? WHERE _id=?;"

    .line 371
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    .line 370
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_70

    goto :goto_2d

    .line 373
    :catchall_70
    move-exception v0

    if-eqz v1, :cond_76

    :try_start_73
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_76
    throw v0
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_7b
    if-nez v1, :cond_85

    :goto_7d
    :try_start_7d
    throw v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    .line 375
    :catchall_7e
    move-exception v0

    .line 376
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 377
    throw v0

    .line 373
    :cond_85
    if-eq v1, v0, :cond_8a

    :try_start_87
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_7e

    :cond_8a
    move-object v0, v1

    goto :goto_7d

    :catchall_8c
    move-exception v0

    move-object v1, v8

    goto :goto_7b
.end method

.method private addIntegerColumn(Ljava/lang/String;J)V
    .registers 8

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 425
    :try_start_5
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ALTER TABLE favorites ADD COLUMN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 426
    const-string v2, " INTEGER NOT NULL DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_34

    .line 429
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 431
    return-void

    .line 428
    :catchall_34
    move-exception v0

    .line 429
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 430
    throw v0
.end method

.method private addProfileColumn()V
    .registers 4

    .prologue
    .line 434
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 436
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 438
    :try_start_e
    const-string v2, "profileId"

    invoke-direct {p0, v2, v0, v1}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->addIntegerColumn(Ljava/lang/String;J)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_13} :catch_14

    .line 442
    :goto_13
    return-void

    .line 439
    :catch_14
    move-exception v0

    .line 440
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_13
.end method

.method private addScreenRankColumn()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->getMaxGridSize()Landroid/util/Pair;

    move-result-object v2

    .line 291
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 292
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 294
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 297
    :try_start_1a
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ALTER TABLE favorites ADD COLUMN screenRank INTEGER NOT NULL DEFAULT 2147483647"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET screenRank=cellX WHERE container=-101 AND screen IS NOT NULL AND cellX IS NOT NULL AND cellY IS NOT NULL"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET screenRank=cellX+(cellY*?)+(screen+1)*? WHERE container=-100 AND screen IS NOT NULL AND cellX IS NOT NULL AND cellY IS NOT NULL"

    .line 308
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    .line 305
    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_41
    .catch Landroid/database/SQLException; {:try_start_1a .. :try_end_41} :catch_92
    .catchall {:try_start_1a .. :try_end_41} :catchall_ba

    .line 311
    :try_start_41
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT _id, screenRank FROM favorites WHERE itemType=2"

    .line 312
    const/4 v3, 0x0

    .line 311
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_c1

    move-result-object v2

    .line 313
    :goto_4a
    :try_start_4a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_83

    move-result v0

    if-nez v0, :cond_60

    .line 317
    if-eqz v2, :cond_55

    :try_start_52
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_c1

    .line 319
    :cond_55
    :try_start_55
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5a
    .catch Landroid/database/SQLException; {:try_start_55 .. :try_end_5a} :catch_92
    .catchall {:try_start_55 .. :try_end_5a} :catchall_ba

    .line 323
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 325
    :goto_5f
    return-void

    .line 314
    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UPDATE favorites SET screenRank=? WHERE container=?"

    .line 315
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 314
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_82
    .catchall {:try_start_60 .. :try_end_82} :catchall_83

    goto :goto_4a

    .line 317
    :catchall_83
    move-exception v0

    if-eqz v2, :cond_89

    :try_start_86
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_89
    throw v0
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_8e
    if-nez v1, :cond_b4

    move-object v1, v0

    :cond_91
    :goto_91
    :try_start_91
    throw v1
    :try_end_92
    .catch Landroid/database/SQLException; {:try_start_91 .. :try_end_92} :catch_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_ba

    .line 320
    :catch_92
    move-exception v0

    .line 321
    :try_start_93
    const-string v1, "Home4DatabaseMigrationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to calculate screenRank: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v1, v0, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_ae
    .catchall {:try_start_93 .. :try_end_ae} :catchall_ba

    .line 323
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5f

    .line 317
    :cond_b4
    if-eq v1, v0, :cond_91

    :try_start_b6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b9
    .catch Landroid/database/SQLException; {:try_start_b6 .. :try_end_b9} :catch_92
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    goto :goto_91

    .line 322
    :catchall_ba
    move-exception v0

    .line 323
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 324
    throw v0

    .line 317
    :catchall_c1
    move-exception v0

    goto :goto_8e
.end method

.method private addWorkspacesTable()V
    .registers 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE workspaceScreens (_id INTEGER PRIMARY KEY,screenRank INTEGER,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private convertShortcutsToLauncherActivities()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 473
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 479
    :try_start_6
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 480
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    .line 479
    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 481
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v3

    const/4 v3, 0x1

    .line 482
    const-string v6, "intent"

    aput-object v6, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "itemType=1 AND profileId="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 481
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3b
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_3b} :catch_da
    .catchall {:try_start_6 .. :try_end_3b} :catchall_d1

    move-result-object v2

    .line 485
    :try_start_3c
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE favorites SET itemType=0 WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_43
    .catch Landroid/database/SQLException; {:try_start_3c .. :try_end_43} :catch_dd
    .catchall {:try_start_3c .. :try_end_43} :catchall_d4

    move-result-object v1

    .line 488
    :try_start_44
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 489
    const-string v3, "intent"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 491
    :cond_50
    :goto_50
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_6b

    .line 509
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5b
    .catch Landroid/database/SQLException; {:try_start_44 .. :try_end_5b} :catch_86
    .catchall {:try_start_44 .. :try_end_5b} :catchall_bf

    .line 513
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 514
    if-eqz v2, :cond_65

    .line 515
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 517
    :cond_65
    if-eqz v1, :cond_6a

    .line 518
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 521
    :cond_6a
    :goto_6a
    return-void

    .line 492
    :cond_6b
    :try_start_6b
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6e
    .catch Landroid/database/SQLException; {:try_start_6b .. :try_end_6e} :catch_86
    .catchall {:try_start_6b .. :try_end_6e} :catchall_bf

    move-result-object v4

    .line 495
    const/4 v5, 0x0

    :try_start_70
    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_73
    .catch Ljava/net/URISyntaxException; {:try_start_70 .. :try_end_73} :catch_b3
    .catch Landroid/database/SQLException; {:try_start_70 .. :try_end_73} :catch_86
    .catchall {:try_start_70 .. :try_end_73} :catchall_bf

    move-result-object v4

    .line 501
    :try_start_74
    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 505
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 506
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 507
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_85
    .catch Landroid/database/SQLException; {:try_start_74 .. :try_end_85} :catch_86
    .catchall {:try_start_74 .. :try_end_85} :catchall_bf

    goto :goto_50

    .line 510
    :catch_86
    move-exception v0

    move-object v8, v2

    .line 511
    :goto_88
    :try_start_88
    const-string v2, "Home4DatabaseMigrationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error deduping shortcuts: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-static {v2, v0, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_a3
    .catchall {:try_start_88 .. :try_end_a3} :catchall_d8

    .line 513
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 514
    if-eqz v8, :cond_ad

    .line 515
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 517
    :cond_ad
    if-eqz v1, :cond_6a

    .line 518
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_6a

    .line 496
    :catch_b3
    move-exception v4

    .line 497
    :try_start_b4
    const-string v5, "Home4DatabaseMigrationHelper"

    const-string v6, "Unable to parse intent"

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-static {v5, v6, v4, v7}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;[I)V
    :try_end_be
    .catch Landroid/database/SQLException; {:try_start_b4 .. :try_end_be} :catch_86
    .catchall {:try_start_b4 .. :try_end_be} :catchall_bf

    goto :goto_50

    .line 512
    :catchall_bf
    move-exception v0

    move-object v8, v2

    .line 513
    :goto_c1
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 514
    if-eqz v8, :cond_cb

    .line 515
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 517
    :cond_cb
    if-eqz v1, :cond_d0

    .line 518
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 520
    :cond_d0
    throw v0

    .line 512
    :catchall_d1
    move-exception v0

    move-object v1, v8

    goto :goto_c1

    :catchall_d4
    move-exception v0

    move-object v1, v8

    move-object v8, v2

    goto :goto_c1

    :catchall_d8
    move-exception v0

    goto :goto_c1

    .line 510
    :catch_da
    move-exception v0

    move-object v1, v8

    goto :goto_88

    :catch_dd
    move-exception v0

    move-object v1, v8

    move-object v8, v2

    goto :goto_88
.end method

.method private copyFavoritesFromTemp()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 143
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT * FROM favorites"

    invoke-virtual {v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 146
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM favorites_temp"

    invoke-virtual {v0, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 147
    :goto_15
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_22

    .line 178
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 179
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 180
    return-void

    .line 148
    :cond_22
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 149
    array-length v5, v2

    const/4 v0, 0x0

    :goto_29
    if-lt v0, v5, :cond_33

    .line 175
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "favorites"

    invoke-virtual {v0, v5, v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_15

    .line 149
    :cond_33
    aget-object v6, v2, v0

    .line 150
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 151
    const/4 v8, -0x1

    if-ne v7, v8, :cond_3f

    .line 149
    :goto_3c
    :pswitch_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 155
    :cond_3f
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getType(I)I

    move-result v8

    .line 156
    packed-switch v8, :pswitch_data_82

    .line 170
    :pswitch_46
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid column type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :pswitch_65
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 161
    :pswitch_6d
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3c

    .line 164
    :pswitch_79
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_3c

    .line 156
    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_6d
        :pswitch_46
        :pswitch_65
        :pswitch_79
    .end packed-switch
.end method

.method private createNewFavoritesTable()V
    .registers 6

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 112
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,appWidgetProvider TEXT,modified INTEGER NOT NULL DEFAULT 0,restored INTEGER NOT NULL DEFAULT 0,profileId INTEGER DEFAULT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string v1, "rank INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string v1, "options INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string v1, "iconId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string v1, "userCustomizedIcon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BLOB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private dropTempTable()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE favorites_temp"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private dropUnusedTables()V
    .registers 5

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS workspaceinfo"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS essentialapplicationlist"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_e} :catch_f

    .line 70
    :goto_e
    return-void

    .line 67
    :catch_f
    move-exception v0

    .line 68
    const-string v1, "Home4DatabaseMigrationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to drop unused table: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v1, v0, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_e
.end method

.method private getMaxGridSize()Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 202
    const/16 v1, 0x10

    .line 204
    iget-object v3, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 205
    const v4, 0x7f0a0007

    .line 204
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 206
    array-length v8, v7

    move v6, v0

    move v4, v2

    move v0, v1

    :goto_15
    if-lt v6, v8, :cond_25

    .line 229
    new-instance v0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 206
    :cond_25
    aget-object v1, v7, v6

    .line 210
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 211
    array-length v3, v1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3e

    move v1, v2

    move v2, v4

    .line 206
    :goto_38
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v4, v2

    move v2, v1

    goto :goto_15

    .line 215
    :cond_3e
    const/4 v3, 0x0

    :try_start_3f
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 216
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_4b} :catch_54

    move-result v3

    .line 221
    mul-int v1, v5, v3

    .line 222
    if-ge v0, v1, :cond_58

    move v0, v1

    move v2, v5

    move v1, v3

    .line 225
    goto :goto_38

    .line 218
    :catch_54
    move-exception v1

    move v1, v2

    move v2, v4

    goto :goto_38

    :cond_58
    move v1, v2

    move v2, v4

    goto :goto_38
.end method

.method private initWorkspaceTable()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 233
    const-string v1, "Home4DatabaseMigrationHelper"

    const-string v2, "Init workspace table.."

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 236
    :try_start_d
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT screen FROM favorites WHERE container=-100 GROUP BY screen ORDER BY screen ASC"

    .line 237
    const/4 v3, 0x0

    .line 236
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 239
    :goto_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_27

    .line 249
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_21} :catch_74
    .catchall {:try_start_d .. :try_end_21} :catchall_7e

    .line 253
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 255
    :goto_26
    return-void

    .line 240
    :cond_27
    const/4 v2, 0x0

    :try_start_28
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 241
    const-string v3, "Home4DatabaseMigrationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", rank: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 243
    const-string v3, "_id"

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v3, "screenRank"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    invoke-static {v2}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 246
    iget-object v3, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "workspaceScreens"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_71
    .catch Landroid/database/SQLException; {:try_start_28 .. :try_end_71} :catch_74
    .catchall {:try_start_28 .. :try_end_71} :catchall_7e

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 250
    :catch_74
    move-exception v0

    .line 251
    :try_start_75
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_7e

    .line 253
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_26

    .line 252
    :catchall_7e
    move-exception v0

    .line 253
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 254
    throw v0
.end method

.method private migrateFavorites()V
    .registers 5

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->addWorkspacesTable()V

    .line 78
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->addAppWidgetProviderColumn()V

    .line 79
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->addProfileColumn()V

    .line 80
    const-string v0, "restored"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->addIntegerColumn(Ljava/lang/String;J)V

    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->updateFolderItemsRank(Z)V

    .line 82
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->convertShortcutsToLauncherActivities()V

    .line 83
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->removeFullScreenItem()V

    .line 84
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->removeAllAppsItems()V

    .line 85
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->removePlusHomeItems()V

    .line 86
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->removeDuplicatedItems()V

    .line 87
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->resetValues()V

    .line 88
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->initWorkspaceTable()V

    .line 89
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->removeUnusedColumns()V

    .line 90
    return-void
.end method

.method private removeAllAppsItems()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 267
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 268
    const-string v3, "container=-102 AND itemType=2"

    .line 270
    :try_start_b
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    .line 271
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 270
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_46

    move-result-object v1

    .line 272
    :goto_17
    :try_start_17
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_31

    move-result v0

    if-nez v0, :cond_28

    .line 276
    if-eqz v1, :cond_22

    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_46

    .line 277
    :cond_22
    const/16 v0, -0x66

    invoke-direct {p0, v0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->removeItemsOn(I)V

    .line 278
    return-void

    .line 273
    :cond_28
    const/4 v0, 0x0

    :try_start_29
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 274
    invoke-direct {p0, v0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->removeItemsOn(I)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_31

    goto :goto_17

    .line 276
    :catchall_31
    move-exception v0

    if-eqz v1, :cond_37

    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_37
    throw v0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_3c
    if-nez v1, :cond_3f

    :goto_3e
    throw v0

    :cond_3f
    if-eq v1, v0, :cond_44

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    move-object v0, v1

    goto :goto_3e

    :catchall_46
    move-exception v0

    move-object v1, v8

    goto :goto_3c
.end method

.method private removeDuplicateItemsByScreenRank()V
    .registers 8

    .prologue
    .line 328
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 331
    :try_start_5
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 332
    const-string v1, "SELECT intent FROM favorites WHERE itemType=? GROUP BY intent HAVING COUNT(*)>1"

    .line 333
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 331
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 334
    :goto_18
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 350
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 351
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_26} :catch_51
    .catchall {:try_start_5 .. :try_end_26} :catchall_82

    .line 355
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 357
    :goto_2b
    return-void

    .line 336
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 337
    const-string v2, "SELECT _id, intent FROM favorites WHERE intent=? AND itemType=? ORDER BY screenRank ASC, rank ASC limit 1"

    .line 339
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 340
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 336
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 341
    :goto_47
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 348
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catch Landroid/database/SQLException; {:try_start_2c .. :try_end_50} :catch_51
    .catchall {:try_start_2c .. :try_end_50} :catchall_82

    goto :goto_18

    .line 352
    :catch_51
    move-exception v0

    .line 353
    :try_start_52
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_82

    .line 355
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2b

    .line 343
    :cond_5b
    :try_start_5b
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 344
    const-string v3, "DELETE FROM favorites WHERE _id<>? AND intent=? AND itemType=?"

    .line 345
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 346
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 343
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_81
    .catch Landroid/database/SQLException; {:try_start_5b .. :try_end_81} :catch_51
    .catchall {:try_start_5b .. :try_end_81} :catchall_82

    goto :goto_47

    .line 354
    :catchall_82
    move-exception v0

    .line 355
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 356
    throw v0
.end method

.method private removeDuplicatedItems()V
    .registers 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->addScreenRankColumn()V

    .line 286
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->removeDuplicateItemsByScreenRank()V

    .line 287
    return-void
.end method

.method private removeFullScreenItem()V
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM favorites WHERE itemType=8"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private removeItemsOn(I)V
    .registers 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM favorites WHERE container="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method private removePlusHomeItems()V
    .registers 2

    .prologue
    .line 263
    const/16 v0, -0x67

    invoke-direct {p0, v0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->removeItemsOn(I)V

    .line 264
    return-void
.end method

.method private removeUnusedColumns()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->renameFavoritesAsTemp()V

    .line 94
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->createNewFavoritesTable()V

    .line 95
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->copyFavoritesFromTemp()V

    .line 96
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->dropTempTable()V

    .line 97
    return-void
.end method

.method private renameFavoritesAsTemp()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE favorites RENAME TO favorites_temp"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private resetValues()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 383
    :try_start_2
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UPDATE favorites SET iconType=0 WHERE itemType=2"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_9} :catch_4c

    .line 391
    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UPDATE favorites SET iconId=? WHERE itemType=? OR itemType=?"

    .line 392
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "original"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 393
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 391
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UPDATE favorites SET iconType=0 WHERE iconType=3"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UPDATE favorites SET spanX=1, spanY=1 WHERE itemType=0"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_36} :catch_51

    .line 404
    :goto_36
    :try_start_36
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT _id FROM favorites WHERE container=-101 ORDER BY cellX ASC"

    .line 405
    const/4 v4, 0x0

    .line 404
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_91

    move-result-object v3

    move v0, v2

    .line 406
    :goto_40
    :try_start_40
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_77

    move-result v2

    if-nez v2, :cond_56

    .line 410
    if-eqz v3, :cond_4b

    :try_start_48
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_91

    .line 414
    :cond_4b
    :goto_4b
    return-void

    .line 385
    :catch_4c
    move-exception v0

    .line 386
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_9

    .line 397
    :catch_51
    move-exception v0

    .line 398
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_36

    .line 407
    :cond_56
    :try_start_56
    iget-object v4, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "UPDATE favorites SET screen=? WHERE _id=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 408
    add-int/lit8 v2, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    .line 407
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_75
    .catchall {:try_start_56 .. :try_end_75} :catchall_77

    move v0, v2

    goto :goto_40

    .line 410
    :catchall_77
    move-exception v0

    if-eqz v3, :cond_7d

    :try_start_7a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw v0
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_82
    if-nez v1, :cond_8a

    :goto_84
    :try_start_84
    throw v0
    :try_end_85
    .catch Landroid/database/SQLException; {:try_start_84 .. :try_end_85} :catch_85

    .line 411
    :catch_85
    move-exception v0

    .line 412
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_4b

    .line 410
    :cond_8a
    if-eq v1, v0, :cond_8f

    :try_start_8c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8f
    .catch Landroid/database/SQLException; {:try_start_8c .. :try_end_8f} :catch_85

    :cond_8f
    move-object v0, v1

    goto :goto_84

    :catchall_91
    move-exception v0

    goto :goto_82
.end method

.method private setupGridSize()V
    .registers 6

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->getMaxGridSize()Landroid/util/Pair;

    move-result-object v1

    .line 188
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 189
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 191
    const-string v1, "Home4DatabaseMigrationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setup grid size : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mContext:Landroid/content/Context;

    .line 194
    sget-object v3, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_COLUMNS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 193
    invoke-static {v1, v3, v2}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->setSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)V

    .line 195
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mContext:Landroid/content/Context;

    .line 196
    sget-object v2, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_ROWS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 195
    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->setSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)V

    .line 197
    return-void
.end method

.method private updateFolderItemsRank(Z)V
    .registers 13

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 447
    if-eqz p1, :cond_e

    .line 449
    :try_start_7
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE favorites ADD COLUMN rank INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_6c

    .line 454
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT container, MAX(cellX) FROM favorites WHERE container IN (SELECT _id FROM favorites WHERE itemType = ?) GROUP BY container;"

    .line 457
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 454
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_7a

    move-result-object v2

    .line 459
    :goto_22
    :try_start_22
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_5e

    move-result v0

    if-nez v0, :cond_38

    .line 464
    if-eqz v2, :cond_2d

    :try_start_2a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_7a

    .line 466
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_6c

    .line 468
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 470
    return-void

    .line 460
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UPDATE favorites SET rank=cellX+(cellY*?) WHERE container=? AND cellX IS NOT NULL AND cellY IS NOT NULL;"

    .line 462
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

    .line 460
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5d
    .catchall {:try_start_38 .. :try_end_5d} :catchall_5e

    goto :goto_22

    .line 464
    :catchall_5e
    move-exception v0

    if-eqz v2, :cond_64

    :try_start_61
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v0
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_69
    if-nez v1, :cond_73

    :goto_6b
    :try_start_6b
    throw v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    .line 467
    :catchall_6c
    move-exception v0

    .line 468
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 469
    throw v0

    .line 464
    :cond_73
    if-eq v1, v0, :cond_78

    :try_start_75
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_6c

    :cond_78
    move-object v0, v1

    goto :goto_6b

    :catchall_7a
    move-exception v0

    goto :goto_69
.end method


# virtual methods
.method public deleteUnusedDatabaseAndTables()V
    .registers 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "files"

    const-string v2, "databases"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/LGMenuInfos.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 58
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/LGMenuInfos.db-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 59
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/smart_bulletin.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 60
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/smart_bulletin.db-journal"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 61
    return-void
.end method

.method public migrate()V
    .registers 3

    .prologue
    .line 46
    const-string v0, "Home4DatabaseMigrationHelper"

    const-string v1, "Migrate LGHome4 databaes"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->deleteUnusedDatabaseAndTables()V

    .line 49
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->dropUnusedTables()V

    .line 50
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->migrateFavorites()V

    .line 51
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->setupGridSize()V

    .line 52
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->markExistingUsersForNoFolderCreation(Landroid/content/Context;)V

    .line 53
    return-void
.end method
