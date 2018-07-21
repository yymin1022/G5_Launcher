.class Lcom/lge/mdm/controller/LGMDMGpsController$1;
.super Ljava/lang/Object;
.source "LGMDMGpsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMGpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMGpsController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMGpsController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMGpsController;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMGpsController$1;->this$0:Lcom/lge/mdm/controller/LGMDMGpsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 83
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 85
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController$1;->this$0:Lcom/lge/mdm/controller/LGMDMGpsController;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/LGMDMGpsController;->-wrap1(Lcom/lge/mdm/controller/LGMDMGpsController;I)V

    .line 82
    return-void
.end method
