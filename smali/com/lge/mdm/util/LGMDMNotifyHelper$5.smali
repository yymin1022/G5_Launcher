.class Lcom/lge/mdm/util/LGMDMNotifyHelper$5;
.super Ljava/lang/Object;
.source "LGMDMNotifyHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/util/LGMDMNotifyHelper;->showOSUpdateDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/util/LGMDMNotifyHelper;

.field final synthetic val$actionName:Ljava/lang/String;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/lge/mdm/util/LGMDMNotifyHelper;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/lge/mdm/util/LGMDMNotifyHelper;
    .param p2, "val$actionName"    # Ljava/lang/String;
    .param p3, "val$userHandle"    # I

    .prologue
    .line 220
    iput-object p1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper$5;->this$0:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    iput-object p2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper$5;->val$actionName:Ljava/lang/String;

    iput p3, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper$5;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper$5;->val$actionName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper$5;->this$0:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    invoke-static {v1}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->-get2(Lcom/lge/mdm/util/LGMDMNotifyHelper;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper$5;->val$userHandle:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 221
    return-void
.end method
