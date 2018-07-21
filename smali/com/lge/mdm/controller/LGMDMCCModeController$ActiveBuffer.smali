.class final Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;
.super Ljava/lang/Object;
.source "LGMDMCCModeController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMCCModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveBuffer"
.end annotation


# instance fields
.field mProcessBuffer:Landroid/os/MemoryFile;

.field final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMCCModeController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMCCModeController;Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMCCModeController;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    const/16 v0, 0x100

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;-><init>(Lcom/lge/mdm/controller/LGMDMCCModeController;Landroid/os/IBinder;II)V

    .line 326
    return-void
.end method

.method constructor <init>(Lcom/lge/mdm/controller/LGMDMCCModeController;Landroid/os/IBinder;II)V
    .registers 8
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMCCModeController;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "uid"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;->this$0:Lcom/lge/mdm/controller/LGMDMCCModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;->mToken:Landroid/os/IBinder;

    .line 333
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 334
    new-instance v0, Landroid/os/MemoryFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LGMDM-CCModeLog-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    .line 331
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 340
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;->this$0:Lcom/lge/mdm/controller/LGMDMCCModeController;

    invoke-static {v0, p0}, Lcom/lge/mdm/controller/LGMDMCCModeController;->-wrap0(Lcom/lge/mdm/controller/LGMDMCCModeController;Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;)V

    .line 338
    return-void
.end method

.method closeAllBuffers()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    if-eqz v0, :cond_15

    .line 345
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 346
    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    .line 347
    const-string/jumbo v0, "LGMDMCCModeController"

    const-string/jumbo v1, "ActiveBuffer.closeAllBuffers()"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_15
    return-void
.end method
