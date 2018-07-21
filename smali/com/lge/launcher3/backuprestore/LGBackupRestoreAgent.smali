.class public Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;
.super Lcom/lge/bnr/framework/LGBackupAgent;
.source "LGBackupRestoreAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGBackupRestoreAgent"


# instance fields
.field public mBackupRestoreImpl:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

.field private final mContext:Landroid/content/Context;

.field private final mMenuFileForLGBackup:Ljava/lang/String;

.field private final mMenuNameForLGBackup:Ljava/lang/String;

.field private final mMenuNameForLGHome:Ljava/lang/String;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageName:Ljava/lang/String;

.field private final mSuffixForLGBackup:Ljava/lang/String;

.field private mUnzipRootPath:Ljava/lang/String;

.field private final mWallpaperFileForLGBackup:Ljava/lang/String;

.field private final mWallpaperNameForLGBackup:Ljava/lang/String;

.field private final mWallpaperNameForLGHome:Ljava/lang/String;

.field private final mWorkspaceFileForLGBackup:Ljava/lang/String;

.field private final mWorkspaceNameForLGBackup:Ljava/lang/String;

.field private final mWorkspaceNameForLGHome:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/lge/bnr/framework/LGBackupAgent;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    const-string v0, "_for_lgbackup"

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mSuffixForLGBackup:Ljava/lang/String;

    .line 32
    const-string v0, "workspace"

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mWorkspaceNameForLGHome:Ljava/lang/String;

    .line 33
    const-string v0, "menu"

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mMenuNameForLGHome:Ljava/lang/String;

    .line 34
    const-string v0, "wallpaper"

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mWallpaperNameForLGHome:Ljava/lang/String;

    .line 36
    const-string v0, "workspace_for_lgbackup"

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mWorkspaceNameForLGBackup:Ljava/lang/String;

    .line 37
    const-string v0, "menu_for_lgbackup"

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mMenuNameForLGBackup:Ljava/lang/String;

    .line 38
    const-string v0, "wallpaper_for_lgbackup"

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mWallpaperNameForLGBackup:Ljava/lang/String;

    .line 39
    const-string v0, "workspace_for_lgbackup.db"

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mWorkspaceFileForLGBackup:Ljava/lang/String;

    .line 40
    const-string v0, "menu_for_lgbackup.db"

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mMenuFileForLGBackup:Ljava/lang/String;

    .line 41
    const-string v0, "wallpaper_for_lgbackup.dat"

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mWallpaperFileForLGBackup:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageName:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 46
    iput-object v1, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mBackupRestoreImpl:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    .line 47
    iput-object v1, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mUnzipRootPath:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    invoke-direct {v0, p1}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mBackupRestoreImpl:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    .line 52
    iput-object p1, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "files"

    const-string v2, "backup"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mUnzipRootPath:Ljava/lang/String;

    .line 56
    :try_start_55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_62} :catch_63

    .line 60
    :goto_62
    return-void

    .line 57
    :catch_63
    move-exception v0

    .line 58
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_62
.end method

.method private changeDBFileNameForLGBackup(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 384
    const-string v0, ".db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_for_lgbackup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 392
    :cond_2c
    :goto_2c
    return-object p1

    .line 386
    :cond_2d
    const-string v0, ".dat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "wallpaper_for_lgbackup.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2c
.end method

.method private deleteDirectory(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 242
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 244
    if-eqz v2, :cond_f

    .line 245
    array-length v3, v2

    const/4 v0, 0x0

    :goto_d
    if-lt v0, v3, :cond_13

    .line 253
    :cond_f
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 254
    return-void

    .line 245
    :cond_13
    aget-object v4, v2, v0

    .line 246
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 247
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->deleteDirectory(Ljava/lang/String;)V

    .line 245
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 249
    :cond_25
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_22
.end method

.method private deleteFilesAfterRestore()V
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mUnzipRootPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->deleteDirectory(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private extractFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 377
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 378
    return-object v0
.end method

.method private getBNRFailItem()Lcom/lge/bnr/model/BNRFailItem;
    .registers 3

    .prologue
    .line 257
    new-instance v0, Lcom/lge/bnr/model/BNRFailItem;

    invoke-direct {v0}, Lcom/lge/bnr/model/BNRFailItem;-><init>()V

    .line 258
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/bnr/model/BNRFailItem;->setPackageNm(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/bnr/model/BNRFailItem;->setPackageVersion(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Lcom/lge/bnr/model/BNRFailItem;->setPackageVersionCode(I)V

    .line 262
    return-object v0
.end method

.method private getFileFromPathList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 170
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 165
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_b
.end method

.method private getFileListInDirectory(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 293
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\" \""

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_22
    const/4 v1, 0x0

    :goto_23
    array-length v3, v0

    if-lt v1, v3, :cond_32

    .line 303
    return-object v2

    .line 296
    :cond_27
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 300
    :cond_32
    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->getOnlyLGBackupFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_23
.end method

.method private getOnlyLGBackupFileList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 312
    if-nez v2, :cond_1a

    .line 313
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_19
    return-object v0

    .line 319
    :cond_1a
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v3, :cond_19

    aget-object v4, v2, v1

    .line 320
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 321
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->getOnlyLGBackupFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 319
    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 323
    :cond_34
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->extractFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 324
    const-string v6, "workspace_for_lgbackup.db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 325
    const-string v6, "menu_for_lgbackup.db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 326
    const-string v6, "wallpaper_for_lgbackup.dat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 327
    :cond_54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31
.end method

.method private setBackupComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V
    .registers 6

    .prologue
    .line 266
    const-string v0, "LGBackupRestoreAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Backup complete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->getBNRFailItem()Lcom/lge/bnr/model/BNRFailItem;

    move-result-object v0

    .line 269
    invoke-virtual {p2}, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/bnr/model/BNRFailItem;->setFailCode(I)V

    .line 270
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setBackupComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V

    .line 271
    return-void
.end method

.method private setRestoreComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V
    .registers 6

    .prologue
    .line 274
    const-string v0, "LGBackupRestoreAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Restore complete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->getBNRFailItem()Lcom/lge/bnr/model/BNRFailItem;

    move-result-object v0

    .line 277
    invoke-virtual {p2}, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/bnr/model/BNRFailItem;->setFailCode(I)V

    .line 278
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setRestoreComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V

    .line 279
    return-void
.end method

.method private writeFile(Ljava/io/File;Ljava/io/File;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 336
    const/high16 v0, 0x80000

    new-array v0, v0, [B

    .line 340
    const-string v1, "LGBackupRestoreAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fin: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v1, "LGBackupRestoreAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fout: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :try_start_35
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_3f} :catch_c6
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3f} :catch_7d
    .catchall {:try_start_35 .. :try_end_3f} :catchall_97

    .line 345
    :try_start_3f
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, p2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_4a} :catch_c9
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_4a} :catch_c1
    .catchall {:try_start_3f .. :try_end_4a} :catchall_b8

    .line 348
    :goto_4a
    :try_start_4a
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_5e

    .line 351
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_53} :catch_63
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_53} :catch_c3
    .catchall {:try_start_4a .. :try_end_53} :catchall_ba

    .line 358
    if-eqz v3, :cond_58

    .line 360
    :try_start_55
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_ae

    .line 365
    :cond_58
    :goto_58
    if-eqz v1, :cond_5d

    .line 367
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_b3

    .line 374
    :cond_5d
    :goto_5d
    return-void

    .line 349
    :cond_5e
    const/4 v4, 0x0

    :try_start_5f
    invoke-virtual {v1, v0, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_62} :catch_63
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_c3
    .catchall {:try_start_5f .. :try_end_62} :catchall_ba

    goto :goto_4a

    .line 353
    :catch_63
    move-exception v0

    move-object v2, v3

    .line 354
    :goto_65
    :try_start_65
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_bd

    .line 358
    if-eqz v2, :cond_6d

    .line 360
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_78

    .line 365
    :cond_6d
    :goto_6d
    if-eqz v1, :cond_5d

    .line 367
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_5d

    .line 368
    :catch_73
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 361
    :catch_78
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6d

    .line 355
    :catch_7d
    move-exception v0

    move-object v3, v2

    .line 356
    :goto_7f
    :try_start_7f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_b8

    .line 358
    if-eqz v3, :cond_87

    .line 360
    :try_start_84
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_92

    .line 365
    :cond_87
    :goto_87
    if-eqz v2, :cond_5d

    .line 367
    :try_start_89
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_5d

    .line 368
    :catch_8d
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 361
    :catch_92
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    .line 357
    :catchall_97
    move-exception v0

    move-object v3, v2

    .line 358
    :goto_99
    if-eqz v3, :cond_9e

    .line 360
    :try_start_9b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a4

    .line 365
    :cond_9e
    :goto_9e
    if-eqz v2, :cond_a3

    .line 367
    :try_start_a0
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a9

    .line 372
    :cond_a3
    :goto_a3
    throw v0

    .line 361
    :catch_a4
    move-exception v1

    .line 362
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9e

    .line 368
    :catch_a9
    move-exception v1

    .line 369
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    .line 361
    :catch_ae
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    .line 368
    :catch_b3
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 357
    :catchall_b8
    move-exception v0

    goto :goto_99

    :catchall_ba
    move-exception v0

    move-object v2, v1

    goto :goto_99

    :catchall_bd
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_99

    .line 355
    :catch_c1
    move-exception v0

    goto :goto_7f

    :catch_c3
    move-exception v0

    move-object v2, v1

    goto :goto_7f

    .line 353
    :catch_c6
    move-exception v0

    move-object v1, v2

    goto :goto_65

    :catch_c9
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_65
.end method


# virtual methods
.method public getDatabaseSize()J
    .registers 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mBackupRestoreImpl:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    if-eqz v0, :cond_b

    .line 283
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mBackupRestoreImpl:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    invoke-virtual {v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseSize()J

    move-result-wide v0

    .line 286
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public onBackup(Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    .registers 9

    .prologue
    const/16 v6, 0x32

    const/4 v3, 0x0

    .line 64
    const-string v0, "LGBackupRestoreAgent"

    const-string v1, "Start backup"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-nez p1, :cond_12

    .line 67
    sget-object v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->INVALID_FRAMEWORK_API:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->setBackupComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V

    .line 111
    :cond_11
    :goto_11
    return-void

    .line 71
    :cond_12
    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->NO_ERROR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 72
    sput-boolean v3, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    .line 74
    new-instance v0, Lcom/lge/bnr/model/BNRFailItem;

    invoke-direct {v0}, Lcom/lge/bnr/model/BNRFailItem;-><init>()V

    .line 76
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setBackupProgress(Ljava/lang/String;I)V

    .line 78
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mBackupRestoreImpl:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    const-string v3, "workspace_for_lgbackup"

    .line 79
    const-string v4, "menu_for_lgbackup"

    const-string v5, "wallpaper_for_lgbackup"

    .line 78
    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->backupTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mBackupRestoreImpl:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    invoke-virtual {v3}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getBackupCancel()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 81
    const-string v0, "LGBackupRestoreAgent"

    const-string v1, "LGHome backup stop by remote"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 84
    :cond_3c
    const-string v3, "LGBackupRestoreAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lgbnr.backupTo success is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v3, v6}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setBackupProgress(Ljava/lang/String;I)V

    .line 87
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 88
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mBackupRestoreImpl:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    .line 89
    invoke-virtual {v2}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseInHomeDirectory()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-direct {p0, v2}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->getFileListInDirectory(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 90
    const-string v3, "LGBackupRestoreAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LGHome backup FileList="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :try_start_79
    iget-object v3, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageName:Ljava/lang/String;

    const/16 v4, 0x32

    const/16 v5, 0x64

    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->writeZip(Ljava/lang/String;Ljava/util/ArrayList;II)V

    .line 93
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/lge/bnr/model/BNRFailItem;->setFailCode(I)V

    .line 94
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8a
    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_8d
    .catch Ljava/lang/SecurityException; {:try_start_79 .. :try_end_8d} :catch_d1
    .catch Lcom/lge/bnr/framework/LGBackupException; {:try_start_79 .. :try_end_8d} :catch_dc
    .catchall {:try_start_79 .. :try_end_8d} :catchall_e7

    move-result v0

    if-nez v0, :cond_95

    .line 108
    invoke-direct {p0, p1, v1}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->setBackupComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V

    goto/16 :goto_11

    .line 94
    :cond_95
    :try_start_95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 95
    const-string v3, "LGBackupRestoreAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fileN : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 98
    const-string v3, "LGBackupRestoreAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is removed"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d0
    .catch Ljava/lang/SecurityException; {:try_start_95 .. :try_end_d0} :catch_d1
    .catch Lcom/lge/bnr/framework/LGBackupException; {:try_start_95 .. :try_end_d0} :catch_dc
    .catchall {:try_start_95 .. :try_end_d0} :catchall_e7

    goto :goto_8a

    .line 101
    :catch_d1
    move-exception v0

    .line 102
    :try_start_d2
    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->SECURITY_ERR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 103
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_d7
    .catchall {:try_start_d2 .. :try_end_d7} :catchall_e7

    .line 108
    invoke-direct {p0, p1, v1}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->setBackupComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V

    goto/16 :goto_11

    .line 104
    :catch_dc
    move-exception v0

    .line 105
    :try_start_dd
    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->FRAMEWORK_ERR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 106
    invoke-virtual {v0}, Lcom/lge/bnr/framework/LGBackupException;->printStackTrace()V
    :try_end_e2
    .catchall {:try_start_dd .. :try_end_e2} :catchall_e7

    .line 108
    invoke-direct {p0, p1, v1}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->setBackupComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V

    goto/16 :goto_11

    .line 107
    :catchall_e7
    move-exception v0

    .line 108
    invoke-direct {p0, p1, v1}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->setBackupComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V

    .line 109
    throw v0
.end method

.method public onBackupCancel(Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 115
    if-nez p1, :cond_b

    .line 116
    const-string v0, "LGBackupRestoreAgent"

    const-string v1, "parameter bnr is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_a
    return-void

    .line 120
    :cond_b
    const-string v0, "LGBackupRestoreAgent"

    const-string v1, "LGHome backup cancel"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mBackupRestoreImpl:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->setBackupCancel(Z)V

    .line 122
    sput-boolean v2, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    goto :goto_a
.end method

.method public onRestore(Lcom/lge/bnr/framework/IBNRFrameworkAPI;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 127
    const-string v0, "LGBackupRestoreAgent"

    const-string v1, "Start restore"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-nez p1, :cond_f

    .line 130
    sget-object v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->INVALID_FRAMEWORK_API:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->setRestoreComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V

    .line 162
    :goto_e
    return-void

    .line 134
    :cond_f
    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->NO_ERROR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 137
    :try_start_11
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mUnzipRootPath:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x50

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->writeUnzip(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_5d

    .line 139
    const-string v2, "workspace_for_lgbackup.db"

    invoke-direct {p0, v0, v2}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->getFileFromPathList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 140
    const-string v3, "wallpaper_for_lgbackup.dat"

    invoke-direct {p0, v0, v3}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->getFileFromPathList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 141
    iget-object v3, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mBackupRestoreImpl:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    invoke-virtual {v3, v2, v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->restoreFrom(Ljava/io/File;Ljava/io/File;)Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;

    move-result-object v0

    .line 142
    iget-boolean v2, v0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;->succeeded:Z

    if-nez v2, :cond_4f

    .line 143
    const-string v2, "LGBackupRestoreAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to restore: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;->errMsg:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-static {v2, v0, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 144
    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->INTERNAL_ERROR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 151
    :cond_4f
    :goto_4f
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->deleteFilesAfterRestore()V

    .line 152
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-interface {p1, v0, v2}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setRestoreProgress(Ljava/lang/String;I)V
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_59} :catch_6a
    .catch Lcom/lge/bnr/framework/LGBackupException; {:try_start_11 .. :try_end_59} :catch_74
    .catchall {:try_start_11 .. :try_end_59} :catchall_7e

    .line 160
    invoke-direct {p0, p1, v1}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->setRestoreComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V

    goto :goto_e

    .line 147
    :cond_5d
    :try_start_5d
    const-string v0, "LGBackupRestoreAgent"

    const-string v2, "Backup file is empty"

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-static {v0, v2, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 148
    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->INVALID_LBF:Lcom/lge/launcher3/backuprestore/BackupErrorCode;
    :try_end_69
    .catch Ljava/lang/SecurityException; {:try_start_5d .. :try_end_69} :catch_6a
    .catch Lcom/lge/bnr/framework/LGBackupException; {:try_start_5d .. :try_end_69} :catch_74
    .catchall {:try_start_5d .. :try_end_69} :catchall_7e

    goto :goto_4f

    .line 153
    :catch_6a
    move-exception v0

    .line 154
    :try_start_6b
    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->SECURITY_ERR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 155
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_7e

    .line 160
    invoke-direct {p0, p1, v1}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->setRestoreComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V

    goto :goto_e

    .line 156
    :catch_74
    move-exception v0

    .line 157
    :try_start_75
    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->FRAMEWORK_ERR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 158
    invoke-virtual {v0}, Lcom/lge/bnr/framework/LGBackupException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_7e

    .line 160
    invoke-direct {p0, p1, v1}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->setRestoreComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V

    goto :goto_e

    .line 159
    :catchall_7e
    move-exception v0

    .line 160
    invoke-direct {p0, p1, v1}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->setRestoreComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V

    .line 161
    throw v0
.end method

.method public onRestoreOld(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/bnr/framework/IBNRFrameworkAPI;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    const-string v0, "LGBackupRestoreAgent"

    const-string v1, "Start restoreOld"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    if-nez p1, :cond_f

    .line 178
    sget-object v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->INVALID_FRAMEWORK_API:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->setRestoreComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V

    .line 235
    :goto_e
    return-void

    .line 182
    :cond_f
    const-string v0, "LGBackupRestoreAgent"

    const-string v1, "LGHome restoreold start"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "LGBackupRestoreAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LGHome restoreold filePathList="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-eqz p2, :cond_16c

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mBackupRestoreImpl:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    invoke-virtual {v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseInHomeDirectory()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_93

    .line 213
    const-string v0, "workspace_for_lgbackup.db"

    invoke-direct {p0, v1, v0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->getFileFromPathList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 214
    const-string v2, "wallpaper_for_lgbackup.dat"

    invoke-direct {p0, v1, v2}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->getFileFromPathList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 215
    if-eqz v0, :cond_163

    .line 216
    new-instance v2, Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mContext:Landroid/content/Context;

    .line 217
    const/16 v4, 0x400

    .line 216
    invoke-direct {v2, v3, v4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 218
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 219
    iget-object v2, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mBackupRestoreImpl:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    invoke-virtual {v2, v0, v1}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->restoreFrom(Ljava/io/File;Ljava/io/File;)Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-interface {p1, v1, v2}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setRestoreProgress(Ljava/lang/String;I)V

    .line 221
    const-string v1, "LGBackupRestoreAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lgbnr.restoreFrom success is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;->succeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-boolean v1, v0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;->succeeded:Z

    if-eqz v1, :cond_157

    .line 223
    invoke-direct {p0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->deleteFilesAfterRestore()V

    .line 230
    :goto_85
    sget-object v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->NO_ERROR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->setRestoreComplete(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Lcom/lge/launcher3/backuprestore/BackupErrorCode;)V

    .line 231
    const-string v0, "LGBackupRestoreAgent"

    const-string v1, "After onRestoreOld LGHome should exit"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 188
    :cond_93
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    const-string v4, "LGBackupRestoreAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fileN : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_dc

    .line 192
    :cond_c2
    const-string v4, "LGBackupRestoreAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " doesn\'t exist"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 196
    :cond_dc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->extractFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    const-string v5, "LGBackupRestoreAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fout : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, v4}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->changeDBFileNameForLGBackup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    const-string v5, "LGBackupRestoreAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "foutchange : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->mBackupRestoreImpl:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    invoke-virtual {v6}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseInHomeDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_137

    .line 203
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 205
    :cond_137
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_145

    .line 207
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 209
    :cond_145
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, v0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->writeFile(Ljava/io/File;Ljava/io/File;)V

    .line 210
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3b

    .line 225
    :cond_157
    const-string v1, "LGBackupRestoreAgent"

    iget-object v0, v0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;->errMsg:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v1, v0, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto/16 :goto_85

    .line 228
    :cond_163
    const-string v0, "LGBackupRestoreAgent"

    const-string v1, "LGHome restoreold workspaceFile is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_85

    .line 233
    :cond_16c
    const-string v0, "LGBackupRestoreAgent"

    const-string v1, "LGHome restoreold filePathList is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e
.end method
