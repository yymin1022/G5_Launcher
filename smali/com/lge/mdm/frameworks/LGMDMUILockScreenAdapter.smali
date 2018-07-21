.class public Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;
.super Ljava/lang/Object;
.source "LGMDMUILockScreenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$processingStorageEncryption;
    }
.end annotation


# static fields
.field private static final SHOW_DOD_WARNING_BANNER:I = 0xbc2

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;


# instance fields
.field private adEncryption:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDpmService:Landroid/app/admin/IDevicePolicyManager;

.field mHandler:Landroid/os/Handler;

.field private mPdProgress:Landroid/app/ProgressDialog;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->adEncryption:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mPdProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->adEncryption:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mPdProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/os/Bundle;)V
    .registers 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->handleShowDodWarningBanner(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-string/jumbo v0, "LGMDMUILockScreenProviderAdapter"

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->TAG:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->adEncryption:Landroid/app/AlertDialog;

    .line 77
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "LGMDMUILockScreenAdapter"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "t":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 79
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 80
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_18

    .line 81
    return-void

    .line 83
    :cond_18
    new-instance v2, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$1;-><init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method private getDpmService()Landroid/app/admin/IDevicePolicyManager;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mDpmService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_11

    .line 102
    const-string/jumbo v0, "device_policy"

    .line 101
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mDpmService:Landroid/app/admin/IDevicePolicyManager;

    .line 104
    :cond_11
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mDpmService:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    if-nez v0, :cond_b

    .line 71
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    .line 73
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    return-object v0
.end method

.method private handleShowDodWarningBanner(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 288
    const-string/jumbo v6, "message"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "message":Ljava/lang/String;
    sget-object v6, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleShowDodWarningBanner() message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v6, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 292
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/lge/internal/R$layout;->disa_warning_banner:I

    invoke-virtual {v3, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 294
    .local v1, "contentView":Landroid/view/View;
    sget v6, Lcom/lge/internal/R$id;->disa_warning_banner_message:I

    .line 293
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 295
    .local v5, "messageView":Landroid/widget/TextView;
    if-eqz v5, :cond_3b

    .line 296
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :cond_3b
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mContext:Landroid/content/Context;

    .line 300
    sget v8, Lcom/lge/R$style;->Theme_LGE_Default_Dialog_Alert:I

    .line 299
    invoke-direct {v6, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 301
    sget v7, Lcom/lge/internal/R$string;->sp_lgmdm_warning_banner_title:I

    .line 299
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 303
    sget v7, Lcom/lge/internal/R$string;->sp_lgmdm_agree:I

    .line 304
    new-instance v8, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$4;

    invoke-direct {v8, p0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$4;-><init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;)V

    .line 299
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 311
    .local v2, "dialog":Landroid/app/AlertDialog;
    iget-object v6, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-nez v6, :cond_6c

    .line 312
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 315
    :cond_6c
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 316
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 317
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 319
    const/4 v6, -0x3

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 320
    sget v6, Lcom/lge/internal/R$id;->disa_warning_banner_checkbox:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 321
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-eqz v0, :cond_8f

    .line 322
    new-instance v6, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$5;

    invoke-direct {v6, p0, v2}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$5;-><init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 334
    :cond_8f
    iget-object v6, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-nez v6, :cond_a0

    .line 335
    const/16 v6, 0x802

    invoke-virtual {v1, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 339
    :cond_a0
    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 340
    sget-object v6, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Banner is showing"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMCClog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_ae
    return-void
.end method


# virtual methods
.method public checkLockoutRecoveryKey(Ljava/lang/String;)Z
    .registers 4
    .param p1, "strRecoveryKey"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 258
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkLockoutRecoveryKey(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public checkPasswordRecovery(Ljava/lang/String;Landroid/content/Context;I)Z
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userHandle"    # I

    .prologue
    .line 272
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 273
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkPasswordRecovery(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public dismissDialogForLockout()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->adEncryption:Landroid/app/AlertDialog;

    if-eqz v1, :cond_c

    .line 248
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->adEncryption:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 249
    iput-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->adEncryption:Landroid/app/AlertDialog;

    .line 251
    :cond_c
    new-instance v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;

    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/mdm/util/LGMDMNotifyHelper;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, "notifyHelper":Lcom/lge/mdm/util/LGMDMNotifyHelper;
    invoke-virtual {v0}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->dismissDialogDecryption()V

    .line 246
    return-void
.end method

.method public getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;I)I
    .registers 6
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userHandle"    # I

    .prologue
    .line 124
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPasswordLeftDaysToExpire, userHandle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/lge/mdm/util/LGMDMPasswordInfo;->getInstance()Lcom/lge/mdm/util/LGMDMPasswordInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/util/LGMDMPasswordInfo;->getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordExpiration(Lcom/android/internal/widget/LockPatternUtils;I)I
    .registers 12
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 108
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->getDpmService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    .line 109
    .local v1, "idpm":Landroid/app/admin/IDevicePolicyManager;
    if-nez v1, :cond_8

    .line 110
    return v8

    .line 114
    :cond_8
    const/4 v3, 0x0

    :try_start_9
    invoke-interface {v1, v3, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_13

    long-to-int v2, v4

    .line 115
    .local v2, "timeout":I
    return v2

    .line 116
    .end local v2    # "timeout":I
    :catch_13
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed talking with LGMDM UI Adapter"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    return v8
.end method

.method public isNeedPasswordChangeNoti(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .registers 7
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x7

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->getRequestedPasswordExpiration(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v1

    .line 264
    .local v1, "requestday":I
    invoke-virtual {p0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v0

    .line 265
    .local v0, "leftday":I
    if-le v1, v2, :cond_10

    if-gt v0, v2, :cond_10

    .line 266
    :cond_e
    const/4 v2, 0x1

    return v2

    .line 265
    :cond_10
    if-gt v1, v2, :cond_14

    if-lez v0, :cond_e

    .line 268
    :cond_14
    return v3
.end method

.method public showDodWarningBanner(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_5

    .line 278
    return-void

    .line 280
    :cond_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v1, "options":Landroid/os/Bundle;
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mContext:Landroid/content/Context;

    .line 282
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xbc2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    return-void
.end method

.method public showEncryptionPolicyDialog(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "CONTEXT"    # Landroid/content/Context;
    .param p2, "PASSWORD"    # Ljava/lang/String;
    .param p3, "USERHANDLE"    # I

    .prologue
    .line 182
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v6

    .line 184
    .local v6, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEncryptionPolicy(Landroid/content/ComponentName;)I

    move-result v2

    .line 186
    .local v2, "policy":I
    invoke-virtual {v6, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkEncryptionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 187
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showEncryptionPolicyDialog FALSE"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_19
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 192
    sget v3, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    .line 191
    invoke-direct {v1, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    sget v1, Lcom/lge/internal/R$drawable;->ic_dialog_alert:I

    .line 191
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 194
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_proceed_encrytion_NORMAL:I

    .line 191
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 195
    sget v1, Lcom/lge/internal/R$string;->sp_Encryption_SHORT:I

    .line 191
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$2;

    invoke-direct {v1, p0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$2;-><init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;)V

    const/high16 v3, 0x1040000

    .line 191
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 203
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$3;-><init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;ILandroid/content/Context;Ljava/lang/String;ILcom/lge/mdm/manager/LGMDMDevicePolicyManager;)V

    const v1, 0x104000a

    .line 191
    invoke-virtual {v7, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->adEncryption:Landroid/app/AlertDialog;

    .line 240
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->adEncryption:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 241
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->adEncryption:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 242
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showEncryptionPolicyDialog TRUE"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x1

    return v0
.end method
