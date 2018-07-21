.class Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;
.super Ljava/lang/Object;
.source "LGMDMUIResetPasswordAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->showResetPasswordDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

.field final synthetic val$entercode:Landroid/widget/EditText;

.field final synthetic val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;Landroid/widget/EditText;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;
    .param p2, "val$mdm"    # Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .param p3, "val$entercode"    # Landroid/widget/EditText;
    .param p4, "val$userHandle"    # I

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    iput-object p2, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;->val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    iput-object p3, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;->val$entercode:Landroid/widget/EditText;

    iput p4, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 127
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;->val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLockoutNow(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 128
    return-void

    .line 130
    :cond_a
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;->val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;->val$entercode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;->val$userHandle:I

    invoke-virtual {v1, v2, v3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkPasswordRecovery(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    const-string/jumbo v1, "PASSWORD_RECOVERY"

    .line 136
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;->val$entercode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    invoke-static {v1}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->-get0(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 138
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;->val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->keyguardDone()V

    .line 126
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_4b
    return-void

    .line 140
    :cond_4c
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    invoke-static {v1}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->-wrap0(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;)V

    goto :goto_4b
.end method
