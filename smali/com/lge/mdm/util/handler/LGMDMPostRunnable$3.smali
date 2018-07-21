.class Lcom/lge/mdm/util/handler/LGMDMPostRunnable$3;
.super Ljava/lang/Object;
.source "LGMDMPostRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->startService(Landroid/content/Intent;)V
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
    .line 75
    iput-object p1, p0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$3;->this$0:Lcom/lge/mdm/util/handler/LGMDMPostRunnable;

    iput-object p2, p0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 78
    invoke-static {}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->-get0()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 77
    return-void
.end method
