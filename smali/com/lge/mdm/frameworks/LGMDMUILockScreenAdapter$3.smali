.class Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;
.super Ljava/lang/Object;
.source "LGMDMUILockScreenAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->showEncryptionPolicyDialog(Landroid/content/Context;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

.field final synthetic val$CONTEXT:Landroid/content/Context;

.field final synthetic val$PASSWORD:Ljava/lang/String;

.field final synthetic val$USERHANDLE:I

.field final synthetic val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

.field final synthetic val$policy:I


# direct methods
.method constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;ILandroid/content/Context;Ljava/lang/String;ILcom/lge/mdm/manager/LGMDMDevicePolicyManager;)V
    .registers 7
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;
    .param p2, "val$policy"    # I
    .param p3, "val$CONTEXT"    # Landroid/content/Context;
    .param p4, "val$PASSWORD"    # Ljava/lang/String;
    .param p5, "val$USERHANDLE"    # I
    .param p6, "val$mdm"    # Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    iput p2, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$policy:I

    iput-object p3, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$CONTEXT:Landroid/content/Context;

    iput-object p4, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$PASSWORD:Ljava/lang/String;

    iput p5, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$USERHANDLE:I

    iput-object p6, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 205
    iget v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$policy:I

    packed-switch v0, :pswitch_data_88

    .line 230
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/mdm/util/LGMDMConfig;->isSupportDeviceEncryptionModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 232
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.app.action.START_ENCRYPTION"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v0, 0x14000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$CONTEXT:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$USERHANDLE:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 204
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_28
    return-void

    .line 207
    :pswitch_29
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showEncryptionPolicyDialog on device Encryption"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 210
    :pswitch_34
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showEncryptionPolicyDialog on storage Encryption"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/mdm/util/LGMDMConfig;->isSupportStorageEncryptionModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;

    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$CONTEXT:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$PASSWORD:Ljava/lang/String;

    iget v4, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$USERHANDLE:I

    invoke-direct/range {v0 .. v5}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;-><init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/content/Context;Ljava/lang/String;ILcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;)V

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    return-void

    .line 217
    :pswitch_59
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get0()Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string/jumbo v1, "showEncryptionPolicyDialog on device and storage Encryption"

    .line 217
    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/mdm/util/LGMDMConfig;->isSupportStorageEncryptionModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 220
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v0

    if-nez v0, :cond_7

    .line 221
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;

    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$CONTEXT:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$PASSWORD:Ljava/lang/String;

    iget v4, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;->val$USERHANDLE:I

    invoke-direct/range {v0 .. v5}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;-><init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/content/Context;Ljava/lang/String;ILcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;)V

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 222
    return-void

    .line 205
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_29
        :pswitch_34
        :pswitch_59
    .end packed-switch
.end method
