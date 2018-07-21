.class Lcom/lge/mdm/util/handler/LGMDMPostRunnable$2;
.super Ljava/lang/Object;
.source "LGMDMPostRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->sendBroadcastAsUser(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/util/handler/LGMDMPostRunnable;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/lge/mdm/util/handler/LGMDMPostRunnable;Landroid/content/Intent;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/lge/mdm/util/handler/LGMDMPostRunnable;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p3, "val$userHandle"    # I

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$2;->this$0:Lcom/lge/mdm/util/handler/LGMDMPostRunnable;

    iput-object p2, p0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$2;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$2;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 63
    invoke-static {}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->-get0()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$2;->val$intent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$2;->val$userHandle:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 62
    return-void
.end method
