.class public Lcom/android/launcher3/LauncherBackupAgentHelper;
.super Landroid/app/backup/BackupAgentHelper;
.source "LauncherBackupAgentHelper.java"


# static fields
.field static final DEBUG:Z = false

.field private static final LAUNCHER_DATA_PREFIX:Ljava/lang/String; = "L"

.field private static final TAG:Ljava/lang/String; = "LauncherBackupAgentHelper"

.field static final VERBOSE:Z

.field private static sBackupManager:Landroid/app/backup/BackupManager;


# instance fields
.field private mHelper:Lcom/android/launcher3/LauncherBackupHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method public static dataChanged(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcom/android/launcher3/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    if-nez v0, :cond_b

    .line 49
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    .line 51
    :cond_b
    sget-object v0, Lcom/android/launcher3/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 52
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 59
    new-instance v0, Lcom/android/launcher3/LauncherBackupHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherBackupHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher3/LauncherBackupHelper;

    .line 60
    const-string v0, "L"

    iget-object v1, p0, Lcom/android/launcher3/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher3/LauncherBackupHelper;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/LauncherBackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 61
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-nez v0, :cond_15

    .line 68
    const-string v0, "LauncherBackupAgentHelper"

    const-string v1, "You shall not pass!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v0, "LauncherBackupAgentHelper"

    const-string v1, "Restore is only supported on devices running Lollipop and above."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_14
    :goto_14
    return-void

    .line 74
    :cond_15
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    .line 78
    :try_start_1c
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherBackupAgentHelper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 80
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 82
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_34} :catch_5c

    .line 90
    :goto_34
    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher3/LauncherBackupHelper;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherBackupHelper;->restoreSuccessful:Z

    if-eqz v0, :cond_66

    .line 91
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    .line 92
    invoke-static {p0}, Lcom/android/launcher3/LauncherClings;->synchonouslyMarkFirstRunClingDismissed(Landroid/content/Context;)V

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher3/LauncherBackupHelper;

    iget v0, v0, Lcom/android/launcher3/LauncherBackupHelper;->restoredBackupVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_14

    .line 96
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->updateFolderItemsRank()V

    .line 97
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->convertShortcutsToLauncherActivities()V

    goto :goto_14

    .line 84
    :catch_5c
    move-exception v0

    .line 86
    const-string v1, "LauncherBackupAgentHelper"

    const-string v2, "Restore failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    const/4 v0, 0x0

    goto :goto_34

    .line 101
    :cond_66
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    goto :goto_14
.end method
