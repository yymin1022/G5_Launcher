.class Lcom/lge/mdm/controller/LGMDMPermissionController$1;
.super Landroid/os/Handler;
.source "LGMDMPermissionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/controller/LGMDMPermissionController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMPermissionController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMPermissionController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMPermissionController;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMPermissionController$1;->this$0:Lcom/lge/mdm/controller/LGMDMPermissionController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1f

    .line 71
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;

    .line 72
    .local v0, "restoreInfo":Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;
    new-instance v1, Landroid/os/UserHandle;

    iget v2, v0, Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;->mUserHandle:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 73
    .local v1, "user":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController$1;->this$0:Lcom/lge/mdm/controller/LGMDMPermissionController;

    iget-object v3, v0, Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;->mPackageName:Ljava/lang/String;

    .line 74
    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;->mPermission:Ljava/lang/String;

    .line 75
    iget v5, v0, Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;->mPreState:I

    .line 73
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/lge/mdm/controller/LGMDMPermissionController;->restorePermissionState(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Z

    .line 69
    .end local v0    # "restoreInfo":Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;
    .end local v1    # "user":Landroid/os/UserHandle;
    :cond_1f
    return-void
.end method
