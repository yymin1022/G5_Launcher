.class Lcom/lge/mdm/util/LGMDMNotifyHelper$1;
.super Ljava/lang/Object;
.source "LGMDMNotifyHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/util/LGMDMNotifyHelper;->showChangePasswordDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/util/LGMDMNotifyHelper;


# direct methods
.method constructor <init>(Lcom/lge/mdm/util/LGMDMNotifyHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/util/LGMDMNotifyHelper;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper$1;->this$0:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    const-string/jumbo v1, "PASSWORD_EXPIRE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper$1;->this$0:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    invoke-static {v1}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->-get2(Lcom/lge/mdm/util/LGMDMNotifyHelper;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 153
    return-void
.end method
