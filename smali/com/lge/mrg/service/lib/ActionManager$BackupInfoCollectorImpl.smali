.class Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;
.super Lcom/lge/mrg/service/IBackupInfoReporter$Stub;
.source "ActionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mrg/service/lib/ActionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupInfoCollectorImpl"
.end annotation


# instance fields
.field private mReporter:Lcom/lge/mrg/service/lib/ActionManager$BackupSizeReporter;

.field final synthetic this$0:Lcom/lge/mrg/service/lib/ActionManager;


# direct methods
.method public constructor <init>(Lcom/lge/mrg/service/lib/ActionManager;Lcom/lge/mrg/service/lib/ActionManager$BackupSizeReporter;)V
    .registers 3

    .prologue
    .line 529
    iput-object p1, p0, Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-direct {p0}, Lcom/lge/mrg/service/IBackupInfoReporter$Stub;-><init>()V

    .line 530
    iput-object p2, p0, Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;->mReporter:Lcom/lge/mrg/service/lib/ActionManager$BackupSizeReporter;

    .line 531
    return-void
.end method

.method static synthetic access$0(Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;Lcom/lge/mrg/service/lib/ActionManager$BackupSizeReporter;)V
    .registers 2

    .prologue
    .line 527
    iput-object p1, p0, Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;->mReporter:Lcom/lge/mrg/service/lib/ActionManager$BackupSizeReporter;

    return-void
.end method


# virtual methods
.method public getBackupSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;->mReporter:Lcom/lge/mrg/service/lib/ActionManager$BackupSizeReporter;

    if-nez v0, :cond_7

    .line 544
    const-wide/16 v0, 0x0

    .line 547
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;->mReporter:Lcom/lge/mrg/service/lib/ActionManager$BackupSizeReporter;

    invoke-interface {v0}, Lcom/lge/mrg/service/lib/ActionManager$BackupSizeReporter;->getBackupSize()J

    move-result-wide v0

    goto :goto_6
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;->mReporter:Lcom/lge/mrg/service/lib/ActionManager$BackupSizeReporter;

    if-nez v0, :cond_6

    .line 536
    const/4 v0, 0x0

    .line 538
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v0}, Lcom/lge/mrg/service/lib/ActionManager;->access$7(Lcom/lge/mrg/service/lib/ActionManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
