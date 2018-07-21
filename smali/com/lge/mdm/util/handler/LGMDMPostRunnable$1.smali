.class Lcom/lge/mdm/util/handler/LGMDMPostRunnable$1;
.super Ljava/lang/Object;
.source "LGMDMPostRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->sendBroadcast(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/util/handler/LGMDMPostRunnable;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/lge/mdm/util/handler/LGMDMPostRunnable;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/util/handler/LGMDMPostRunnable;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$1;->this$0:Lcom/lge/mdm/util/handler/LGMDMPostRunnable;

    iput-object p2, p0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 43
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 44
    invoke-static {}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->-get0()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$1;->val$intent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 42
    :goto_11
    return-void

    .line 46
    :cond_12
    invoke-static {}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->-get0()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$1;->val$intent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    .line 47
    const/4 v3, -0x2

    .line 46
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_11
.end method
