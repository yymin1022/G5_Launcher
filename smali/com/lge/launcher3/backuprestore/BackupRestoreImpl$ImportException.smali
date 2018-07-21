.class Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;
.super Ljava/lang/Exception;
.source "BackupRestoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImportException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3acf366741357babL


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 445
    iput-object p1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreImpl$ImportException;->this$0:Lcom/lge/launcher3/backuprestore/BackupRestoreImpl;

    .line 446
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    return-void
.end method
