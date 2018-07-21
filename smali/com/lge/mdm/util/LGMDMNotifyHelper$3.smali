.class Lcom/lge/mdm/util/LGMDMNotifyHelper$3;
.super Ljava/lang/Object;
.source "LGMDMNotifyHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/util/LGMDMNotifyHelper;->displayDecryptionPolicyDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/util/LGMDMNotifyHelper;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/lge/mdm/util/LGMDMNotifyHelper;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/util/LGMDMNotifyHelper;
    .param p2, "val$userHandle"    # I

    .prologue
    .line 190
    iput-object p1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper$3;->this$0:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    iput p2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper$3;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.settings.START_UNENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper$3;->this$0:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    invoke-static {v1}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->-get2(Lcom/lge/mdm/util/LGMDMNotifyHelper;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper$3;->val$userHandle:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 191
    return-void
.end method
