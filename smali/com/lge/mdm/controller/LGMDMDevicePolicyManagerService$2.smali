.class Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$2;
.super Ljava/lang/Object;
.source "LGMDMDevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->setEnforceBackgroundDataRestricted(Landroid/content/ComponentName;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

.field final synthetic val$allow:Z

.field final synthetic val$oldGlobalPolicy:Z

.field final synthetic val$userHandle:I

.field final synthetic val$who:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;IZZLandroid/content/ComponentName;)V
    .registers 6
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;
    .param p2, "val$userHandle"    # I
    .param p3, "val$oldGlobalPolicy"    # Z
    .param p4, "val$allow"    # Z
    .param p5, "val$who"    # Landroid/content/ComponentName;

    .prologue
    .line 6502
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$2;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iput p2, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$2;->val$userHandle:I

    iput-boolean p3, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$2;->val$oldGlobalPolicy:Z

    iput-boolean p4, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$2;->val$allow:Z

    iput-object p5, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$2;->val$who:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 6504
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$2;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v2, v2, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMNetworkController:Lcom/lge/mdm/controller/LGMDMNetworkController;

    iget v3, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$2;->val$userHandle:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getEnforceBackgroundDataRestricted(Landroid/content/ComponentName;I)Z

    move-result v1

    .line 6505
    .local v1, "newGlobalPolicy":Z
    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$2;->val$oldGlobalPolicy:Z

    if-eq v2, v1, :cond_3c

    .line 6507
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mdm.intent.action.BACKGROUND_DATA_RESTRICTED_POLICY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6508
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 6509
    const-string/jumbo v2, "LGMDMDevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEnforceBackgroundDataRestricted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$2;->val$allow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$2;->val$who:Landroid/content/ComponentName;

    invoke-static {v2, v3, v4}, Lcom/lge/mdm/util/MDMCClog;->i(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 6503
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3c
    return-void
.end method
