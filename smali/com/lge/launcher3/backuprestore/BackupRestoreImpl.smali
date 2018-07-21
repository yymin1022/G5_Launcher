.class public Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;
.super Ljava/lang/Object;
.source "BackupRestoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;,
        Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;
    }
.end annotation


# static fields
.field public static final NEXT_REFESH:Ljava/lang/String; = "refresh"

.field public static final NEXT_RESTORE:Ljava/lang/String; = "restore"

.field private static final TAG:Ljava/lang/String; = "LGBackupRestore"

.field private static final WORKSPACE_FILE_FOR_LGHOME:Ljava/lang/String; = "workspace.db"

.field private static final WORKSPACE_NAME_FOR_LGHOME:Ljava/lang/String; = "workspace"


# instance fields
.field public BACKUP_RESTORE_PREFERENCES_DISABLED:Z

.field public BACKUP_RESTORE_PREFERENCES_ENABLED:Z

.field public exportDir:Ljava/io/File;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mContext:Landroid/content/Context;

.field private mIsBackupCancel:Z

.field public mLoadMenuFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->exportDir:Ljava/io/File;

    .line 65
    iput-object v1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mLoadMenuFile:Ljava/io/File;

    .line 68
    iput-boolean v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->BACKUP_RESTORE_PREFERENCES_DISABLED:Z

    .line 73
    iput-boolean v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mIsBackupCancel:Z

    .line 79
    iput-object p1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 81
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 82
    return-void
.end method

.method private SaveBitmapToFileCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 332
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    const/4 v2, 0x0

    .line 335
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 336
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_1b
    .catchall {:try_start_6 .. :try_end_e} :catchall_37

    .line 337
    :try_start_e
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_57
    .catchall {:try_start_e .. :try_end_15} :catchall_55

    .line 343
    if-eqz v1, :cond_1a

    .line 344
    :try_start_17
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_4a

    .line 350
    :cond_1a
    :goto_1a
    return-void

    .line 339
    :catch_1b
    move-exception v0

    move-object v1, v2

    .line 340
    :goto_1d
    :try_start_1d
    const-string v2, "LGBackupRestore"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_55

    .line 343
    if-eqz v1, :cond_1a

    .line 344
    :try_start_28
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_1a

    .line 346
    :catch_2c
    move-exception v0

    .line 347
    const-string v1, "LGBackupRestore"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 341
    :catchall_37
    move-exception v0

    move-object v1, v2

    .line 343
    :goto_39
    if-eqz v1, :cond_3e

    .line 344
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 349
    :cond_3e
    :goto_3e
    throw v0

    .line 346
    :catch_3f
    move-exception v1

    .line 347
    const-string v2, "LGBackupRestore"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 346
    :catch_4a
    move-exception v0

    .line 347
    const-string v1, "LGBackupRestore"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 341
    :catchall_55
    move-exception v0

    goto :goto_39

    .line 339
    :catch_57
    move-exception v0

    goto :goto_1d
.end method

.method private allocateAppWidgetId(Ljava/lang/String;)I
    .registers 9

    .prologue
    const/4 v0, -0x1

    .line 551
    if-nez p1, :cond_4

    .line 582
    :goto_3
    return v0

    .line 556
    :cond_4
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 557
    invoke-direct {p0, v2}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->hasPackage(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 559
    :try_start_e
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_13} :catch_89

    move-result v1

    .line 560
    :try_start_14
    iget-object v3, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v1, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 562
    iget-object v3, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 563
    invoke-virtual {v3, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 564
    iget-object v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_8b

    .line 565
    iget v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-nez v4, :cond_55

    invoke-direct {p0, v2}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->isSystem(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 566
    const-string v3, "LGBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Has not preview image: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_46
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_46} :catch_47

    goto :goto_3

    .line 575
    :catch_47
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 576
    :goto_4b
    const-string v2, "LGBackupRestore"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 569
    :cond_55
    :try_start_55
    iget v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    if-nez v3, :cond_8b

    .line 570
    const-string v3, "LGBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Has not initial layout: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_72
    .catch Ljava/lang/SecurityException; {:try_start_55 .. :try_end_72} :catch_47

    goto :goto_3

    .line 579
    :cond_73
    const-string v1, "LGBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot find provider: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 575
    :catch_89
    move-exception v1

    goto :goto_4b

    :cond_8b
    move v0, v1

    goto/16 :goto_3
.end method

.method private backupWallpaper(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 353
    if-nez p1, :cond_4

    .line 354
    const-string p1, "curwallpaper"

    .line 357
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseInHomeDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 362
    :cond_16
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 365
    if-nez v1, :cond_5d

    .line 366
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 367
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_54

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseInHomeDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 371
    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->SaveBitmapToFileCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x1

    .line 386
    :goto_53
    return v0

    .line 374
    :cond_54
    const-string v0, "LGBackupRestore"

    const-string v1, "bitmap is NULL"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    goto :goto_53

    .line 377
    :cond_5d
    const-string v0, "LGBackupRestore"

    const-string v1, "When LGHome backup, livewallpaper is not supported"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseInHomeDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 381
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 382
    const-string v0, "LGBackupRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "old "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file is removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method private backupWorkspaceInfo(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/launcher.db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseInHomeDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 139
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 142
    :cond_2e
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 144
    const-string v0, ".db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_63

    .line 145
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    :goto_55
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 150
    invoke-direct {p0, v1, v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 153
    :cond_5b
    const-string v0, "LGBackupRestore"

    const-string v1, "DB file copied from original data"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 147
    :cond_63
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_55
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 287
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_55

    .line 288
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_39

    move-result-object v1

    .line 289
    :try_start_a
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_58

    .line 290
    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 291
    if-eqz v1, :cond_20

    if-eqz v6, :cond_20

    .line 292
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_2b

    .line 294
    :cond_20
    if-eqz v9, :cond_25

    :try_start_22
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_58

    .line 295
    :cond_25
    if-eqz v8, :cond_2a

    :try_start_27
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_55

    .line 296
    :cond_2a
    return-void

    .line 294
    :catchall_2b
    move-exception v0

    if-eqz v9, :cond_31

    :try_start_2e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    :cond_31
    throw v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_36
    if-nez v1, :cond_47

    :goto_38
    :try_start_38
    throw v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 295
    :catchall_39
    move-exception v0

    if-eqz v8, :cond_3f

    :try_start_3c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_3f
    throw v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_44
    if-nez v1, :cond_4e

    :goto_46
    throw v0

    .line 294
    :cond_47
    if-eq v1, v0, :cond_4c

    :try_start_49
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_39

    :cond_4c
    move-object v0, v1

    goto :goto_38

    .line 295
    :cond_4e
    if-eq v1, v0, :cond_53

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_53
    move-object v0, v1

    goto :goto_46

    :catchall_55
    move-exception v0

    move-object v1, v7

    goto :goto_44

    .line 294
    :catchall_58
    move-exception v0

    move-object v1, v7

    goto :goto_36
.end method

.method private deleteRecentlyUninstallApps()V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 209
    new-array v1, v0, [Ljava/lang/String;

    .line 210
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 211
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 214
    :try_start_11
    invoke-static {}, Lcom/lge/content/pm/PackageManagerEx;->getDefault()Lcom/lge/content/pm/PackageManagerEx;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/content/pm/PackageManagerEx;->getDisabledByLGLauncherPackageList(I)[Ljava/lang/String;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_21
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_11 .. :try_end_1c} :catch_26

    move-result-object v3

    .line 223
    array-length v4, v3

    :goto_1e
    if-lt v0, v4, :cond_2f

    .line 232
    :goto_20
    return-void

    .line 215
    :catch_21
    move-exception v0

    .line 216
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_20

    .line 219
    :catch_26
    move-exception v0

    const-string v0, "LGBackupRestore"

    const-string v1, "Not implement PackageManagerEX in framework"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 223
    :cond_2f
    aget-object v5, v3, v0

    .line 225
    const/4 v6, 0x0

    :try_start_32
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v2, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3a} :catch_3d

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 226
    :catch_3d
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method private filterByAction(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 474
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "title"

    aput-object v0, v2, v3

    const-string v0, "intent"

    aput-object v0, v2, v4

    .line 475
    const-string v3, "itemType=1"

    .line 477
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 478
    :try_start_18
    const-string v1, "favorites"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_a6

    move-result-object v1

    .line 479
    :cond_23
    :goto_23
    :try_start_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_35

    .line 498
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_81

    .line 499
    if-eqz v1, :cond_31

    :try_start_2e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_a6

    .line 502
    :cond_31
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 504
    return-void

    .line 480
    :cond_35
    const/4 v0, 0x0

    :try_start_36
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 481
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 482
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_81

    move-result-object v3

    .line 483
    if-eqz v3, :cond_23

    .line 488
    const/4 v4, 0x0

    :try_start_47
    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 489
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->isFilteringAction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 490
    const-string v3, "favorites"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 491
    const-string v0, "LGBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Filter shortcuts: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/net/URISyntaxException; {:try_start_47 .. :try_end_7e} :catch_7f
    .catchall {:try_start_47 .. :try_end_7e} :catchall_81

    goto :goto_23

    :catch_7f
    move-exception v0

    goto :goto_23

    .line 499
    :catchall_81
    move-exception v0

    if-eqz v1, :cond_87

    :try_start_84
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_87
    throw v0
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_8c
    if-nez v1, :cond_a0

    move-object v1, v0

    :cond_8f
    :goto_8f
    :try_start_8f
    throw v1
    :try_end_90
    .catch Ljava/lang/RuntimeException; {:try_start_8f .. :try_end_90} :catch_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_9b

    :catch_90
    move-exception v0

    .line 500
    :try_start_91
    new-instance v1, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;-><init>(Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_9b

    .line 501
    :catchall_9b
    move-exception v0

    .line 502
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 503
    throw v0

    .line 499
    :cond_a0
    if-eq v1, v0, :cond_8f

    :try_start_a2
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a5
    .catch Ljava/lang/RuntimeException; {:try_start_a2 .. :try_end_a5} :catch_90
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_9b

    goto :goto_8f

    :catchall_a6
    move-exception v0

    move-object v1, v8

    goto :goto_8c
.end method

.method private filterShortcuts(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;
        }
    .end annotation

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->filterByAction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 459
    return-void
.end method

.method private getDatabaseDir()Ljava/lang/String;
    .registers 5

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "files"

    const-string v2, "databases"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 300
    const-string v1, "LGBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LGHome DB path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-object v0
.end method

.method private hasPackage(Landroid/content/ComponentName;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 602
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 605
    const/4 v3, 0x0

    :try_start_9
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_c} :catch_d

    .line 617
    :goto_c
    return v0

    .line 607
    :catch_d
    move-exception v3

    .line 608
    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 609
    new-instance v4, Landroid/content/ComponentName;

    aget-object v3, v3, v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v3, 0x0

    :try_start_26
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_c

    .line 613
    :catch_2a
    move-exception v0

    move v0, v1

    goto :goto_c
.end method

.method private importFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;
        }
    .end annotation

    .prologue
    .line 451
    const-string v0, "LGBackupRestore"

    const-string v1, "Import favorite table"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-direct {p0, p1}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->reallocateAppWidgetIds(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 453
    invoke-direct {p0, p1}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->setAsRestoredForApplications(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 454
    invoke-direct {p0, p1}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->filterShortcuts(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 455
    return-void
.end method

.method private importWorkspaceDb(Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;
        }
    .end annotation

    .prologue
    const v4, 0x7f0f00ae

    const/16 v3, 0x64

    .line 237
    const/4 v0, 0x0

    :try_start_6
    invoke-static {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_9} :catch_4f

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    if-ge v1, v3, :cond_1d

    .line 243
    new-instance v1, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;

    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 245
    :try_start_17
    invoke-virtual {v1}, Lcom/lge/launcher3/backuprestore/Home4MigrationHelper;->migrate()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_5f

    .line 249
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 252
    :cond_1d
    invoke-direct {p0, v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->importFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 254
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->needsToSkipCustomPage()Z

    .line 255
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 257
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v1, "files"

    const-string v2, "databases/launcher.db"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    :try_start_3d
    invoke-direct {p0, p1, v1}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_6c

    .line 266
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$resetDatabaseHelper(Lcom/android/launcher3/LauncherProvider;)V

    .line 268
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    .line 269
    return-void

    .line 238
    :catch_4f
    move-exception v0

    .line 239
    new-instance v1, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;

    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;-><init>(Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 246
    :catch_5f
    move-exception v0

    .line 247
    new-instance v1, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;

    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;-><init>(Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 262
    :catch_6c
    move-exception v0

    .line 263
    new-instance v1, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;

    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;-><init>(Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isExternalStorageAvail()Z
    .registers 3

    .prologue
    .line 157
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFilteringAction(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 462
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 463
    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 464
    array-length v3, v2

    move v1, v0

    :goto_10
    if-lt v1, v3, :cond_13

    .line 470
    :goto_12
    return v0

    .line 464
    :cond_13
    aget-object v4, v2, v1

    .line 465
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 466
    const/4 v0, 0x1

    goto :goto_12

    .line 464
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method private isSystem(Landroid/content/ComponentName;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 586
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 590
    :try_start_7
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_12} :catch_18

    .line 591
    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_17

    .line 592
    const/4 v0, 0x1

    .line 598
    :cond_17
    :goto_17
    return v0

    .line 595
    :catch_18
    move-exception v1

    goto :goto_17
.end method

.method private needsToSkipCustomPage()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existSmartBulletinItemInDataBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 275
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOffSmartBulletin(Landroid/content/Context;)Z

    .line 278
    :cond_e
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existQmemoPanelItemInDataBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 279
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOffQMemoPanel(Landroid/content/Context;)Z

    .line 280
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->putEnableQmemopluspanel(Landroid/content/Context;Z)V

    .line 283
    :cond_20
    return v1
.end method

.method private onRestoreComplete()V
    .registers 5

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->deleteRecentlyUninstallApps()V

    .line 204
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 205
    sget-object v2, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$BackupRestoreKey;->RESTORED:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$BackupRestoreKey;

    const/4 v3, 0x1

    .line 204
    invoke-static {v0, v1, v2, v3}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z

    .line 206
    return-void
.end method

.method private reallocateAppWidgetIds(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 516
    const-string v0, "LGBackupRestore"

    const-string v1, "Reallocate appwidget ids"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v10, Landroid/appwidget/AppWidgetHost;

    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    const/16 v1, 0x400

    invoke-direct {v10, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 518
    invoke-virtual {v10}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v11

    .line 520
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "appWidgetProvider"

    aput-object v0, v2, v3

    .line 521
    const-string v0, "appWidgetId"

    aput-object v0, v2, v4

    .line 522
    const-string v3, "itemType=4"

    .line 524
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 525
    :try_start_2c
    const-string v1, "favorites"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_d1

    move-result-object v1

    .line 526
    :goto_37
    :try_start_37
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 538
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_a3

    .line 539
    if-eqz v1, :cond_45

    :try_start_42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_d1

    .line 542
    :cond_45
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v8

    .line 545
    :goto_49
    array-length v1, v11

    if-lt v0, v1, :cond_c8

    .line 548
    return-void

    .line 527
    :cond_4d
    const/4 v0, 0x0

    :try_start_4e
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 528
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 529
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 530
    invoke-direct {p0, v2}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->allocateAppWidgetId(Ljava/lang/String;)I

    move-result v4

    .line 531
    const-string v5, "LGBackupRestore"

    const-string v6, " # [%d -> %d] %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v12

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v3

    const/4 v3, 0x2

    .line 532
    aput-object v2, v7, v3

    .line 531
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 535
    const-string v3, "appWidgetId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 536
    const-string v3, "favorites"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_4e .. :try_end_a2} :catchall_a3

    goto :goto_37

    .line 539
    :catchall_a3
    move-exception v0

    if-eqz v1, :cond_a9

    :try_start_a6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a9
    throw v0
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_aa

    :catchall_aa
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_ae
    if-nez v1, :cond_c2

    move-object v1, v0

    :cond_b1
    :goto_b1
    :try_start_b1
    throw v1
    :try_end_b2
    .catch Ljava/lang/RuntimeException; {:try_start_b1 .. :try_end_b2} :catch_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_bd

    :catch_b2
    move-exception v0

    .line 540
    :try_start_b3
    new-instance v1, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;-><init>(Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_bd
    .catchall {:try_start_b3 .. :try_end_bd} :catchall_bd

    .line 541
    :catchall_bd
    move-exception v0

    .line 542
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 543
    throw v0

    .line 539
    :cond_c2
    if-eq v1, v0, :cond_b1

    :try_start_c4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c7
    .catch Ljava/lang/RuntimeException; {:try_start_c4 .. :try_end_c7} :catch_b2
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_bd

    goto :goto_b1

    .line 546
    :cond_c8
    aget v1, v11, v0

    invoke-virtual {v10, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_49

    .line 539
    :catchall_d1
    move-exception v0

    move-object v1, v9

    goto :goto_ae
.end method

.method private restoreWallpaper(Ljava/io/File;)Z
    .registers 4

    .prologue
    .line 419
    if-nez p1, :cond_24

    .line 420
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseInHomeDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "curwallpaper.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    :cond_24
    if-eqz p1, :cond_3c

    .line 424
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 425
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->setWallpaperBitmap(Ljava/lang/String;)Z

    move-result v0

    .line 431
    :goto_34
    return v0

    .line 427
    :cond_35
    const-string v0, "LGBackupRestore"

    const-string v1, "Faild to restore wallpaper: doesn\'t exist"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_3c
    const/4 v0, 0x0

    goto :goto_34
.end method

.method private setAsRestoredForApplications(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 509
    :try_start_0
    const-string v0, "UPDATE favorites SET restored=1 WHERE itemType=0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_6

    .line 513
    :goto_5
    return-void

    .line 510
    :catch_6
    move-exception v0

    .line 511
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_5
.end method

.method private setWallpaperBitmap(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 391
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 394
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 395
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 396
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 398
    if-eqz v2, :cond_3f

    .line 399
    iget-object v3, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 402
    :try_start_20
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 403
    invoke-virtual {v3, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2e} :catch_32
    .catchall {:try_start_20 .. :try_end_2e} :catchall_38

    .line 408
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 415
    :goto_31
    return v0

    .line 406
    :catch_32
    move-exception v0

    .line 408
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v0, v1

    goto :goto_31

    .line 407
    :catchall_38
    move-exception v0

    .line 408
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 409
    throw v0

    :cond_3d
    move v0, v1

    .line 412
    goto :goto_31

    :cond_3f
    move v0, v1

    goto :goto_31
.end method


# virtual methods
.method public backupTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 12

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->isExternalStorageAvail()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 108
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0f00b2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    const-string v0, "LGBackupRestore"

    const-string v1, "No storage available when backup"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 115
    invoke-direct {p0, p3}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->backupWallpaper(Ljava/lang/String;)Z

    .line 118
    :try_start_23
    invoke-direct {p0, p1}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->backupWorkspaceInfo(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_3d

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    sub-long v4, v2, v0

    cmp-long v4, v4, v6

    if-gez v4, :cond_37

    .line 126
    sub-long v0, v2, v0

    sub-long v0, v6, v0

    :try_start_34
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_37} :catch_43

    .line 131
    :cond_37
    :goto_37
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3c
    return-object v0

    .line 120
    :catch_3d
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3c

    .line 127
    :catch_43
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_37
.end method

.method existBackupFile()Ljava/lang/String;
    .registers 7

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseInHomeDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_1b

    .line 90
    array-length v2, v1

    const/4 v0, 0x0

    :goto_19
    if-lt v0, v2, :cond_1d

    .line 103
    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return-object v0

    .line 90
    :cond_1d
    aget-object v3, v1, v0

    .line 91
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "workspace.db"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 92
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 93
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 90
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public getBackupCancel()Z
    .registers 2

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mIsBackupCancel:Z

    return v0
.end method

.method public getDatabaseInHomeDirectory()Ljava/lang/String;
    .registers 5

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "files"

    const-string v2, "home"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v1, "LGBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LGHome backup DB path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-object v0
.end method

.method public getDatabaseSize()J
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 305
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseDir()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/launcher.db"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    const-string v1, "wallpaper_for_lgbackup"

    invoke-direct {p0, v1}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->backupWallpaper(Ljava/lang/String;)Z

    .line 307
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseInHomeDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    const-string v5, "/wallpaper_for_lgbackup.dat"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 317
    :goto_49
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 318
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 321
    :cond_53
    add-long/2addr v0, v2

    .line 322
    return-wide v0

    :cond_55
    move-wide v0, v2

    goto :goto_49
.end method

.method public restoreFrom(Ljava/io/File;Ljava/io/File;)Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;
    .registers 5

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    if-nez p1, :cond_14

    .line 183
    const v1, 0x7f0f00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;->failed(Ljava/lang/String;)Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;

    move-result-object v0

    .line 199
    :goto_13
    return-object v0

    .line 185
    :cond_14
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->isExternalStorageAvail()Z

    move-result v1

    if-nez v1, :cond_26

    .line 186
    const v1, 0x7f0f00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;->failed(Ljava/lang/String;)Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;

    move-result-object v0

    goto :goto_13

    .line 190
    :cond_26
    :try_start_26
    invoke-direct {p0, p1}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->importWorkspaceDb(Ljava/io/File;)V

    .line 191
    invoke-direct {p0, p2}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->restoreWallpaper(Ljava/io/File;)Z
    :try_end_2c
    .catch Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException; {:try_start_26 .. :try_end_2c} :catch_34

    .line 197
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->onRestoreComplete()V

    .line 199
    invoke-static {}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;->succeeded()Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;

    move-result-object v0

    goto :goto_13

    .line 192
    :catch_34
    move-exception v0

    .line 193
    invoke-virtual {v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;->printStackTrace()V

    .line 194
    invoke-virtual {v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;->failed(Ljava/lang/String;)Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;

    move-result-object v0

    goto :goto_13
.end method

.method public setBackupCancel(Z)V
    .registers 2

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->mIsBackupCancel:Z

    .line 440
    return-void
.end method
