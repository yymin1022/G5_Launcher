.class public Lcom/lge/launcher3/backuprestore/BackupSizeUpdateProvider;
.super Landroid/content/ContentProvider;
.source "BackupSizeUpdateProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/lge/launcher3/backuprestore/BackupSizeUpdateProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/backuprestore/BackupSizeUpdateProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private toKiloBytes(J)I
    .registers 8

    .prologue
    .line 59
    long-to-float v0, p1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 60
    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupSizeUpdateProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LGHome5\'s backup size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10

    .prologue
    .line 49
    new-instance v0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    invoke-virtual {p0}, Lcom/lge/launcher3/backuprestore/BackupSizeUpdateProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Lcom/lge/launcher3/backuprestore/BackupSizeUpdateProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/util/PackageUtils;->isEnableBackupRestore(Landroid/content/Context;)Z

    move-result v1

    .line 51
    sget-object v2, Lcom/lge/launcher3/backuprestore/BackupSizeUpdateProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnableBackup is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-nez v1, :cond_32

    .line 53
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/backuprestore/BackupSizeUpdateProvider;->toKiloBytes(J)I

    move-result v0

    .line 55
    :goto_31
    return v0

    :cond_32
    invoke-virtual {v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;->getDatabaseSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/backuprestore/BackupSizeUpdateProvider;->toKiloBytes(J)I

    move-result v0

    goto :goto_31
.end method
