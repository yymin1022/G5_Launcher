.class Lcom/lge/mdm/controller/LGMDMScreenCaptureController$2;
.super Ljava/lang/Object;
.source "LGMDMScreenCaptureController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMScreenCaptureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMScreenCaptureController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMScreenCaptureController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMScreenCaptureController;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$2;->this$0:Lcom/lge/mdm/controller/LGMDMScreenCaptureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 61
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 63
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$2;->this$0:Lcom/lge/mdm/controller/LGMDMScreenCaptureController;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->-wrap0(Lcom/lge/mdm/controller/LGMDMScreenCaptureController;I)V

    .line 60
    return-void
.end method
