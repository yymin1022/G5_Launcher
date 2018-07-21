.class Lcom/lge/mdm/controller/LGMDMNetworkController$1;
.super Landroid/os/AsyncTask;
.source "LGMDMNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/controller/LGMDMNetworkController;->writeAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMNetworkController;

.field final synthetic val$policies:[Landroid/net/NetworkPolicy;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMNetworkController;[Landroid/net/NetworkPolicy;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMNetworkController;
    .param p2, "val$policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController$1;->this$0:Lcom/lge/mdm/controller/LGMDMNetworkController;

    iput-object p2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController$1;->val$policies:[Landroid/net/NetworkPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1162
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMNetworkController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1163
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNetworkController$1;->this$0:Lcom/lge/mdm/controller/LGMDMNetworkController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    .line 1164
    .local v2, "policyManager":Landroid/net/NetworkPolicyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1166
    .local v0, "identity":J
    :try_start_c
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNetworkController$1;->val$policies:[Landroid/net/NetworkPolicy;

    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_16

    .line 1168
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1170
    const/4 v3, 0x0

    return-object v3

    .line 1167
    :catchall_16
    move-exception v3

    .line 1168
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1167
    throw v3
.end method
