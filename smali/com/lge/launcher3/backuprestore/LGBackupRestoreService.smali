.class public Lcom/lge/launcher3/backuprestore/LGBackupRestoreService;
.super Landroid/app/IntentService;
.source "LGBackupRestoreService.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.lge.launcher3.homesettings.LGBackupRestoreService"

.field private static final BACKUP:Ljava/lang/String; = "backup"

.field private static final BACKUPAGENT:Ljava/lang/String; = "backupagent"

.field public static final BACKUPAGENT_URI:Landroid/net/Uri;

.field public static final BACKUP_URI:Landroid/net/Uri;

.field public static final EXTRA_KEY_ORG_INTENT:Ljava/lang/String; = "orgIntent"

.field private static final RESTORE:Ljava/lang/String; = "restore"

.field private static final RESTOREAGENT:Ljava/lang/String; = "restoreagent"

.field public static final RESTOREAGENT_URI:Landroid/net/Uri;

.field private static final RESTOREOLDAGENT:Ljava/lang/String; = "restoreoldagent"

.field public static final RESTOREOLDAGENT_URI:Landroid/net/Uri;

.field public static final RESTORE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "content://com.lge.launcher3.homesettings.LGBackupRestoreService/backup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreService;->BACKUP_URI:Landroid/net/Uri;

    .line 22
    const-string v0, "content://com.lge.launcher3.homesettings.LGBackupRestoreService/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreService;->RESTORE_URI:Landroid/net/Uri;

    .line 23
    const-string v0, "content://com.lge.launcher3.homesettings.LGBackupRestoreService/backupagent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreService;->BACKUPAGENT_URI:Landroid/net/Uri;

    .line 24
    const-string v0, "content://com.lge.launcher3.homesettings.LGBackupRestoreService/restoreagent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreService;->RESTOREAGENT_URI:Landroid/net/Uri;

    .line 25
    const-string v0, "content://com.lge.launcher3.homesettings.LGBackupRestoreService/restoreoldagent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/backuprestore/LGBackupRestoreService;->RESTOREOLDAGENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    const-string v0, "LGBackupRestoreService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 34
    if-nez v2, :cond_8

    .line 61
    :cond_7
    :goto_7
    return-void

    .line 41
    :cond_8
    if-eqz p1, :cond_59

    const-string v1, "orgIntent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 42
    const-string v0, "orgIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 43
    new-instance v1, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;

    invoke-virtual {p0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    const-string v3, "OLD_FILELIST"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 47
    :goto_29
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 48
    const-string v3, "backupagent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 49
    if-eqz v1, :cond_7

    .line 50
    invoke-virtual {v1}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->startBackup()V

    goto :goto_7

    .line 52
    :cond_3b
    const-string v3, "restoreagent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 53
    if-eqz v1, :cond_7

    .line 54
    invoke-virtual {v1}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->startRestore()V

    goto :goto_7

    .line 56
    :cond_49
    const-string v3, "restoreoldagent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 57
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 58
    invoke-virtual {v1, v0}, Lcom/lge/launcher3/backuprestore/LGBackupRestoreAgent;->startRestoreOld(Ljava/util/ArrayList;)V

    goto :goto_7

    :cond_59
    move-object v1, v0

    goto :goto_29
.end method
