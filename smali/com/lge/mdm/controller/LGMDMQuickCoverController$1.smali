.class Lcom/lge/mdm/controller/LGMDMQuickCoverController$1;
.super Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;
.source "LGMDMQuickCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMQuickCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMQuickCoverController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMQuickCoverController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMQuickCoverController;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController$1;->this$0:Lcom/lge/mdm/controller/LGMDMQuickCoverController;

    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .registers 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    const-string/jumbo v0, "LGMDMQuickCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SmartCover onStateChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController$1;->this$0:Lcom/lge/mdm/controller/LGMDMQuickCoverController;

    invoke-static {v0, p1}, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->-set0(Lcom/lge/mdm/controller/LGMDMQuickCoverController;I)I

    .line 29
    return-void
.end method
