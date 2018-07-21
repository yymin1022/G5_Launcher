.class Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;
.super Landroid/os/AsyncTask;
.source "LGMDMUILockScreenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "processingStorageEncryption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final mPASSWORD:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

.field final userHandle:I


# direct methods
.method private constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->context:Landroid/content/Context;

    .line 136
    iput-object p3, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->mPASSWORD:Ljava/lang/String;

    .line 137
    iput p4, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->userHandle:I

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/content/Context;Ljava/lang/String;ILcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;)V
    .registers 6
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;-><init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 173
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 175
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "processingStorageEncryption - doInBackground"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->mPASSWORD:Ljava/lang/String;

    invoke-virtual {v0, v4, v3, v3, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;ZILjava/lang/String;)I

    .line 177
    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 8
    .param p1, "testResult"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    .line 153
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "processingStorageEncryption - onPostExecute"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 157
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v1, v5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEncryptionPolicy(Landroid/content/ComponentName;)I

    move-result v2

    .line 159
    .local v2, "policy":I
    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    invoke-static {v3}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get2(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 160
    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    invoke-static {v3}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get2(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 161
    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    invoke-static {v3, v5}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-set1(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 162
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4d

    .line 163
    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lge/mdm/util/LGMDMConfig;->isSupportDeviceEncryptionModel(Landroid/content/Context;)Z

    move-result v3

    .line 162
    if-eqz v3, :cond_4d

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.app.action.START_ENCRYPTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x14000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->context:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->userHandle:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 152
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4d
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "testResult"    # Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "testResult":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 6

    .prologue
    .line 141
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "processingStorageEncryption - onPreExecute"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    new-instance v1, Landroid/app/ProgressDialog;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 143
    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->context:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    .line 142
    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-set1(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 144
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    invoke-static {v0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get2(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 145
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    invoke-static {v0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get2(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    invoke-static {v0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get2(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 147
    sget v2, Lcom/lge/internal/R$string;->sp_encrypt_enabling_NORMAL:I

    .line 146
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    invoke-static {v0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get2(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 149
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    invoke-static {v0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get2(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 140
    return-void
.end method
