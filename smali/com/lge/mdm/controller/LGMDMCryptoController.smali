.class public Lcom/lge/mdm/controller/LGMDMCryptoController;
.super Ljava/lang/Object;
.source "LGMDMCryptoController.java"


# static fields
.field public static final ENCRYPTION_DISABLED:I = 0x0

.field public static final ENCRYPTION_ENABLED:I = 0x1

.field public static final ENCRYPTION_EXTENAL_STORAGE:I = 0x0

.field public static final ENCRYPTION_FAILED:I = 0x2

.field public static final ENCRYPTION_INTENAL_STORAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CryptoController"

.field static mIPowerManager:Landroid/os/IPowerManager;

.field private static mInstance:Lcom/lge/mdm/controller/LGMDMCryptoController;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 40
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .registers 3

    .prologue
    .line 308
    sget-object v1, Lcom/lge/mdm/controller/LGMDMCryptoController;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_11

    .line 309
    const-string/jumbo v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 310
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    sput-object v1, Lcom/lge/mdm/controller/LGMDMCryptoController;->mIPowerManager:Landroid/os/IPowerManager;

    .line 312
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_11
    sget-object v1, Lcom/lge/mdm/controller/LGMDMCryptoController;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMCryptoController;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mInstance:Lcom/lge/mdm/controller/LGMDMCryptoController;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcom/lge/mdm/controller/LGMDMCryptoController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMCryptoController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mInstance:Lcom/lge/mdm/controller/LGMDMCryptoController;

    .line 48
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mInstance:Lcom/lge/mdm/controller/LGMDMCryptoController;

    return-object v0
.end method

.method private declared-synchronized getLGSDEnc()Lcom/lge/systemservice/core/ILGSDEncManager;
    .registers 7

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    .line 316
    const/4 v1, 0x0

    .line 317
    .local v1, "encryptionStatus":Z
    :try_start_3
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lge/mdm/util/LGMDMConfig;->isSupportStorageEncryptionModel(Landroid/content/Context;)Z

    move-result v1

    .line 318
    .local v1, "encryptionStatus":Z
    if-eqz v1, :cond_25

    .line 319
    const-string/jumbo v3, "lgsdencryption"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 320
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_1f

    .line 321
    const-string/jumbo v3, "CryptoController"

    const-string/jumbo v4, "SD Encryption service is null"

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_30

    monitor-exit p0

    .line 322
    return-object v5

    .line 324
    :cond_1f
    :try_start_1f
    invoke-static {v0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGSDEncManager;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_30

    move-result-object v2

    .local v2, "lgSDEncManager":Lcom/lge/systemservice/core/ILGSDEncManager;
    monitor-exit p0

    .line 325
    return-object v2

    .line 327
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "lgSDEncManager":Lcom/lge/systemservice/core/ILGSDEncManager;
    :cond_25
    :try_start_25
    const-string/jumbo v3, "CryptoController"

    const-string/jumbo v4, "SD Encryption is not supported"

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_30

    monitor-exit p0

    .line 328
    return-object v5

    .end local v1    # "encryptionStatus":Z
    :catchall_30
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public checkDecryptionAvailable(II)Z
    .registers 12
    .param p1, "policy"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 161
    if-eq p1, v7, :cond_8

    .line 162
    if-ne p1, v8, :cond_5c

    .line 163
    :cond_8
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mContext:Landroid/content/Context;

    .line 164
    const-string/jumbo v4, "device_policy"

    .line 163
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 165
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_16

    .line 166
    return v6

    .line 168
    :cond_16
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lge/mdm/util/LGMDMConfig;->isSupportDeviceEncryptionModel(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 170
    return v6

    .line 172
    :cond_1f
    invoke-virtual {p0, v5, p2}, Lcom/lge/mdm/controller/LGMDMCryptoController;->getEncryptionPolicy(Landroid/content/ComponentName;I)I

    move-result v2

    .line 173
    .local v2, "strongPolicy":I
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 174
    .local v1, "statusDeviceEncryption":I
    const-string/jumbo v3, "CryptoController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkDecryptionAvailable [strongPolicy] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    const-string/jumbo v5, " [statusDeviceEncryption] = "

    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-eq v2, v7, :cond_50

    .line 177
    if-ne v2, v8, :cond_5b

    .line 178
    :cond_50
    if-eq v1, v6, :cond_5b

    .line 179
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->showDecryptionPolicyDialog(Landroid/content/Context;I)V

    .line 181
    :cond_5b
    return v6

    .line 183
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v1    # "statusDeviceEncryption":I
    .end local v2    # "strongPolicy":I
    :cond_5c
    const/4 v3, 0x0

    return v3
.end method

.method public checkEncryptionAvailable(II)Z
    .registers 11
    .param p1, "policy"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 187
    const/4 v3, 0x1

    .line 188
    .local v3, "result":Z
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMCryptoController;->getLGSDEnc()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v2

    .line 189
    .local v2, "mLGSDEnc":Lcom/lge/systemservice/core/ILGSDEncManager;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mContext:Landroid/content/Context;

    .line 190
    const-string/jumbo v5, "device_policy"

    .line 189
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 193
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    packed-switch p1, :pswitch_data_10a

    .line 253
    const/4 v3, 0x0

    .line 259
    :goto_16
    return v3

    .line 195
    :pswitch_17
    :try_start_17
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lge/mdm/util/LGMDMConfig;->isSupportDeviceEncryptionModel(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 196
    const-string/jumbo v4, "CryptoController"

    const-string/jumbo v5, "Device Encryption is not supported"

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return v6

    .line 199
    :cond_29
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4

    if-eq v4, v7, :cond_30

    .line 200
    const/4 v3, 0x0

    .line 202
    :cond_30
    const-string/jumbo v4, "CryptoController"

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " dpm.getStorageEncryptionStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_4e} :catch_4f

    goto :goto_16

    .line 256
    :catch_4f
    move-exception v1

    .line 257
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "CryptoController"

    const-string/jumbo v5, "Fail checkEncryptionAvailable"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 206
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_5a
    if-eqz v2, :cond_82

    .line 207
    :try_start_5c
    invoke-interface {v2}, Lcom/lge/systemservice/core/ILGSDEncManager;->MDMStorageEncryptionStatus()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 209
    const/4 v3, 0x0

    .line 212
    :cond_63
    const-string/jumbo v4, "CryptoController"

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " mLGSDEnc.MDMStorageEncryptionStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 214
    invoke-interface {v2}, Lcom/lge/systemservice/core/ILGSDEncManager;->MDMStorageEncryptionStatus()Z

    move-result v6

    .line 213
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 216
    :cond_82
    const-string/jumbo v4, "CryptoController"

    const-string/jumbo v5, " mLGSDEnc value null!!"

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return v6

    .line 221
    :pswitch_8c
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lge/mdm/util/LGMDMConfig;->isSupportDeviceEncryptionModel(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9c

    .line 222
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lge/mdm/util/LGMDMConfig;->isSupportStorageEncryptionModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 226
    :cond_9c
    if-eqz v2, :cond_f4

    .line 227
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lge/mdm/util/LGMDMConfig;->isSupportDeviceEncryptionModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 228
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4

    if-eq v4, v7, :cond_b3

    .line 229
    invoke-interface {v2}, Lcom/lge/systemservice/core/ILGSDEncManager;->MDMStorageEncryptionStatus()Z

    move-result v4

    .line 228
    if-eqz v4, :cond_b3

    .line 230
    const/4 v3, 0x0

    .line 238
    :cond_b3
    :goto_b3
    const-string/jumbo v4, "CryptoController"

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " dpm.getStorageEncryptionStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 240
    const-string/jumbo v6, "mLGSDEnc.MDMStorageEncryptionStatus"

    .line 239
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 241
    invoke-interface {v2}, Lcom/lge/systemservice/core/ILGSDEncManager;->MDMStorageEncryptionStatus()Z

    move-result v6

    .line 239
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 223
    :cond_e2
    const-string/jumbo v4, "CryptoController"

    const-string/jumbo v5, "Device Encryption is not supported"

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return v6

    .line 233
    :cond_ec
    invoke-interface {v2}, Lcom/lge/systemservice/core/ILGSDEncManager;->MDMStorageEncryptionStatus()Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 234
    const/4 v3, 0x0

    goto :goto_b3

    .line 243
    :cond_f4
    const-string/jumbo v4, "CryptoController"

    const-string/jumbo v5, " mLGSDEnc value null!!"

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return v6

    .line 249
    :pswitch_fe
    const-string/jumbo v4, "CryptoController"

    const-string/jumbo v5, "do not Encrypt - LGMDMENCRYPTION_NONE"

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_107} :catch_4f

    .line 250
    const/4 v3, 0x0

    .line 251
    goto/16 :goto_16

    .line 193
    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_fe
        :pswitch_17
        :pswitch_5a
        :pswitch_8c
        :pswitch_fe
    .end packed-switch
.end method

.method protected getEncryptionPolicy(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 90
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 91
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicy:I

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x4

    goto :goto_d

    .line 94
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/lge/mdm/controller/LGMDMCryptoController;->getEncryptionPolicyResult(IZ)I

    move-result v1

    return v1
.end method

.method protected getEncryptionPolicyForEas(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 294
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 295
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicyForEas:I

    :goto_d
    return v1

    .line 296
    :cond_e
    const/4 v1, 0x4

    goto :goto_d

    .line 298
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/lge/mdm/controller/LGMDMCryptoController;->getEncryptionPolicyResult(IZ)I

    move-result v1

    return v1
.end method

.method protected getEncryptionPolicyResult(IZ)I
    .registers 16
    .param p1, "userHandle"    # I
    .param p2, "isForEas"    # Z

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x4

    .line 98
    const/4 v4, 0x4

    .line 99
    .local v4, "result":I
    const/4 v5, 0x4

    .line 100
    .local v5, "resultForDecryption":I
    const/4 v3, 0x4

    .line 101
    .local v3, "policy":I
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 102
    .local v2, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admins$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 103
    .local v0, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p2, :cond_6e

    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicyForEas:I

    .line 105
    :goto_21
    const-string/jumbo v6, "CryptoController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isForEas: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " allowEncryptionPolicy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    if-eq v3, v9, :cond_11

    .line 107
    if-ne v4, v9, :cond_4b

    .line 108
    const/4 v4, 0x0

    .line 110
    :cond_4b
    const/4 v6, 0x3

    if-ne v3, v6, :cond_71

    .line 111
    move v4, v3

    .line 150
    .end local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_4f
    :goto_4f
    const-string/jumbo v6, "CryptoController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "admin.allowEncryptionPolicy result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-lt v4, v10, :cond_99

    .line 153
    if-gt v4, v9, :cond_99

    .line 154
    return v4

    .line 104
    .restart local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_6e
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicy:I

    goto :goto_21

    .line 114
    :cond_71
    if-ne v4, v10, :cond_77

    .line 115
    if-ne v3, v12, :cond_77

    .line 116
    const/4 v4, 0x3

    .line 117
    goto :goto_4f

    .line 120
    :cond_77
    if-ne v4, v12, :cond_7d

    .line 121
    if-ne v3, v10, :cond_7d

    .line 122
    const/4 v4, 0x3

    .line 123
    goto :goto_4f

    .line 126
    :cond_7d
    if-le v3, v4, :cond_83

    if-ge v3, v11, :cond_83

    .line 127
    move v4, v3

    .line 126
    goto :goto_11

    .line 129
    :cond_83
    const/4 v6, 0x6

    if-eq v5, v6, :cond_11

    .line 130
    const/4 v6, 0x6

    if-ne v3, v6, :cond_8a

    .line 131
    const/4 v5, 0x6

    .line 133
    :cond_8a
    if-nez v5, :cond_8f

    .line 134
    if-ne v3, v11, :cond_8f

    .line 135
    const/4 v5, 0x6

    .line 138
    :cond_8f
    if-ne v5, v11, :cond_94

    .line 139
    if-nez v3, :cond_94

    .line 140
    const/4 v5, 0x6

    .line 143
    :cond_94
    if-ne v5, v9, :cond_11

    .line 144
    move v5, v3

    goto/16 :goto_11

    .line 156
    .end local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_99
    return v5
.end method

.method public getStorageEncryptionStatus(II)I
    .registers 8
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 53
    const/4 v2, 0x1

    .line 54
    .local v2, "storageEncryptionStatus":I
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMCryptoController;->getLGSDEnc()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    .line 56
    .local v1, "mLGSDEnc":Lcom/lge/systemservice/core/ILGSDEncManager;
    if-eqz v1, :cond_17

    .line 58
    :try_start_7
    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->MDMStorageEncryptionStatus()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 59
    const-string/jumbo v3, "CryptoController"

    const-string/jumbo v4, "MDMStorageEncryptionStatus is true"

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v2, 0x1

    .line 69
    :cond_17
    :goto_17
    return v2

    .line 62
    :cond_18
    const-string/jumbo v3, "CryptoController"

    const-string/jumbo v4, "MDMStorageEncryptionStatus is false"

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_21} :catch_23

    .line 63
    const/4 v2, 0x0

    goto :goto_17

    .line 65
    :catch_23
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CryptoController"

    const-string/jumbo v4, "error getStorageEncryptionStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method protected handleSetEncryptionPolicy(II)V
    .registers 11
    .param p1, "policy"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/lge/mdm/controller/LGMDMCryptoController;->checkDecryptionAvailable(II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 270
    return-void

    .line 272
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/lge/mdm/controller/LGMDMCryptoController;->checkEncryptionAvailable(II)Z

    move-result v4

    if-nez v4, :cond_e

    .line 273
    return-void

    .line 275
    :cond_e
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMCryptoController;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v0

    .line 276
    .local v0, "IPower":Landroid/os/IPowerManager;
    if-nez v0, :cond_15

    .line 277
    return-void

    .line 279
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 281
    .local v2, "identity":J
    :try_start_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 282
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 281
    invoke-interface {v0, v4, v5, v6, v7}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_26
    .catchall {:try_start_19 .. :try_end_22} :catchall_34

    .line 286
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    :goto_25
    return-void

    .line 283
    :catch_26
    move-exception v1

    .line 284
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_27
    const-string/jumbo v4, "CryptoController"

    const-string/jumbo v5, "Fail Encryption"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_34

    .line 286
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_25

    .line 285
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_34
    move-exception v4

    .line 286
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    throw v4
.end method

.method protected setEncryptionPolicy(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 263
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 264
    const/4 v2, 0x7

    .line 263
    invoke-virtual {v1, p1, v2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLockedForNativePolicy(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 265
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicy:I

    .line 262
    return-void
.end method

.method protected setEncryptionPolicyForEas(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 302
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMCryptoController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 303
    const/4 v2, 0x7

    .line 302
    invoke-virtual {v1, p1, v2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLockedForNativePolicy(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 304
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicyForEas:I

    .line 301
    return-void
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;ZILjava/lang/String;I)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .param p3, "flags"    # I
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "userHandle"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMCryptoController;->getLGSDEnc()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    .line 74
    .local v1, "mLGSDEnc":Lcom/lge/systemservice/core/ILGSDEncManager;
    const-string/jumbo v2, "externalStorage"

    .line 75
    .local v2, "path":Ljava/lang/String;
    const/4 v3, -0x1

    .line 77
    .local v3, "setStorageEncryption":I
    if-eqz v1, :cond_e

    .line 79
    :try_start_a
    invoke-interface {v1, v2, p4}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardEnableEncryptionUserPassword(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    move-result v3

    .line 84
    :cond_e
    :goto_e
    return v3

    .line 80
    :catch_f
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "CryptoController"

    const-string/jumbo v5, "error setStorageEncryption"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method
