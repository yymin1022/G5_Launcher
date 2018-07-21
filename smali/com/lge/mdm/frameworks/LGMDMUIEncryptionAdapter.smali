.class public Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;
.super Ljava/lang/Object;
.source "LGMDMUIEncryptionAdapter.java"


# static fields
.field private static ENC_TYPE_DEVICE:I

.field private static ENC_TYPE_STORAGE:I

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;


# instance fields
.field private mMdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string/jumbo v0, "LGMDMUIEncryptionAdapter"

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->ENC_TYPE_DEVICE:I

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->ENC_TYPE_STORAGE:I

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->mMdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 39
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->mMdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;

    .line 35
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;

    return-object v0
.end method

.method private makeToast(III)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "policy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 43
    sget v0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->ENC_TYPE_DEVICE:I

    if-ne p1, v0, :cond_25

    .line 44
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Device is encrypted by MDM, policy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->mMdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 46
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_device_encryption_done:I

    .line 45
    invoke-virtual {v0, v1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 42
    :goto_24
    return-void

    .line 48
    :cond_25
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Storage is encrypted by MDM, policy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->mMdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 50
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_storage_encryption_done:I

    .line 49
    invoke-virtual {v0, v1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_24
.end method


# virtual methods
.method public isDeviceEncryptedByMDM(Z)Z
    .registers 8
    .param p1, "hasToast"    # Z

    .prologue
    const/4 v5, 0x1

    .line 79
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 80
    .local v1, "userHandle":I
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->mMdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEncryptionPolicy(Landroid/content/ComponentName;I)I

    move-result v0

    .line 81
    .local v0, "policy":I
    if-ne v0, v5, :cond_29

    .line 82
    const-string/jumbo v2, "encrypted"

    const-string/jumbo v3, "ro.crypto.state"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 83
    if-eqz p1, :cond_28

    .line 84
    sget v2, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->ENC_TYPE_DEVICE:I

    invoke-direct {p0, v2, v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->makeToast(III)V

    .line 86
    :cond_28
    return v5

    .line 89
    :cond_29
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5a

    .line 90
    const-string/jumbo v2, "encrypted"

    const-string/jumbo v3, "ro.crypto.state"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 91
    const-string/jumbo v2, "persist.security.sdc.enabled"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 92
    if-eqz p1, :cond_59

    .line 93
    sget v2, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->ENC_TYPE_DEVICE:I

    invoke-direct {p0, v2, v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->makeToast(III)V

    .line 95
    :cond_59
    return v5

    .line 98
    :cond_5a
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device is not encrypted by MDM, policy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x0

    return v2
.end method

.method public isStorageEncryptedByMDM(Z)Z
    .registers 8
    .param p1, "hasToast"    # Z

    .prologue
    const/4 v5, 0x1

    .line 55
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 56
    .local v1, "userHandle":I
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->mMdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEncryptionPolicy(Landroid/content/ComponentName;I)I

    move-result v0

    .line 57
    .local v0, "policy":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2a

    .line 58
    const-string/jumbo v2, "persist.security.sdc.enabled"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 59
    if-eqz p1, :cond_29

    .line 60
    sget v2, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->ENC_TYPE_STORAGE:I

    invoke-direct {p0, v2, v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->makeToast(III)V

    .line 62
    :cond_29
    return v5

    .line 65
    :cond_2a
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5b

    .line 66
    const-string/jumbo v2, "encrypted"

    const-string/jumbo v3, "ro.crypto.state"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 67
    const-string/jumbo v2, "persist.security.sdc.enabled"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 68
    if-eqz p1, :cond_5a

    .line 69
    sget v2, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->ENC_TYPE_STORAGE:I

    invoke-direct {p0, v2, v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->makeToast(III)V

    .line 71
    :cond_5a
    return v5

    .line 74
    :cond_5b
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Storage is not encrypted by MDM, policy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v2, 0x0

    return v2
.end method
