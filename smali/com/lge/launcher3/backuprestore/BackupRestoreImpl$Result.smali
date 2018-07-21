.class Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;
.super Ljava/lang/Object;
.source "BackupRestoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# instance fields
.field errMsg:Ljava/lang/String;

.field errorCode:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

.field succeeded:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;->succeeded:Z

    .line 163
    sget-object v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->NO_ERROR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    iput-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;->errorCode:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 166
    iput-boolean p1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;->succeeded:Z

    .line 167
    iput-object p2, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;->errMsg:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public static failed(Ljava/lang/String;)Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;
    .registers 3

    .prologue
    .line 175
    new-instance v0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static succeeded()Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;
    .registers 3

    .prologue
    .line 171
    new-instance v0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$Result;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
