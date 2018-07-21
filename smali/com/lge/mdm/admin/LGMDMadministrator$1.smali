.class Lcom/lge/mdm/admin/LGMDMadministrator$1;
.super Landroid/content/BroadcastReceiver;
.source "LGMDMadministrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/admin/LGMDMadministrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method constructor <init>(Lcom/lge/mdm/admin/LGMDMadministrator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/admin/LGMDMadministrator;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$1;->this$0:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 165
    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/lge/mdm/admin/LGMDMadministrator$1;->getSendingUserId()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 166
    .local v1, "userId":I
    iget-object v2, p0, Lcom/lge/mdm/admin/LGMDMadministrator$1;->this$0:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-static {v2, v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->-wrap0(Lcom/lge/mdm/admin/LGMDMadministrator;I)V

    .line 161
    .end local v1    # "userId":I
    :cond_1d
    return-void
.end method
