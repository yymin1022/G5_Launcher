.class public Lcom/lge/mdm/controller/LGMDMNfcController;
.super Ljava/lang/Object;
.source "LGMDMNfcController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;
    }
.end annotation


# static fields
.field private static final MSG_CONFIRM_DISABLE_NFC:I = 0x2

.field private static final MSG_DISABLE_NFC:I = 0x0

.field private static final MSG_SET_CARD_MODE_ONLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NfcController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMNfcController;


# instance fields
.field private INVALIDE_POLICY:I

.field private final MAX_TIMEOUT:I

.field private final NFC_STATE_OFF:I

.field private final NFC_STATE_ON:I

.field private final NFC_STATE_TURNING_OFF:I

.field private final NFC_STATE_TURNING_ON:I

.field private final NFC_STATE_UNKNOWN:I

.field private STATE_OFF:I

.field private STATE_ON:I

.field private STATE_TURNING_OFF:I

.field private STATE_TURNING_ON:I

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field private mNfcAdapter:Landroid/nfc/INfcAdapter;

.field private mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

.field final mService:Ljava/lang/Object;

.field private mSetPolicyLock:Z

.field private mTimeoutDisableNfc:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMNfcController;->instance:Lcom/lge/mdm/controller/LGMDMNfcController;

    .line 24
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 6
    .param p1, "service"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v2, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mTimeoutDisableNfc:I

    .line 31
    const/16 v0, 0x1388

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->MAX_TIMEOUT:I

    .line 32
    iput-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mSetPolicyLock:Z

    .line 35
    iput v1, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->NFC_STATE_UNKNOWN:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->NFC_STATE_OFF:I

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->NFC_STATE_TURNING_ON:I

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->NFC_STATE_ON:I

    .line 39
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->NFC_STATE_TURNING_OFF:I

    .line 45
    iput v1, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->INVALIDE_POLICY:I

    .line 48
    const/16 v0, 0x29

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->STATE_OFF:I

    .line 49
    const/16 v0, 0x2a

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->STATE_TURNING_ON:I

    .line 50
    const/16 v0, 0x2b

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->STATE_ON:I

    .line 51
    const/16 v0, 0x2c

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->STATE_TURNING_OFF:I

    .line 53
    iput-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 58
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 59
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 61
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mService:Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_51

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mHandler:Landroid/os/Handler;

    .line 57
    :cond_51
    return-void
.end method

.method private disableBeam(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V
    .registers 6
    .param p1, "backupInfo"    # Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMNfcController;->getNfcAdapter()Landroid/nfc/INfcAdapter;

    move-result-object v1

    .line 228
    .local v1, "nfcAdapter":Landroid/nfc/INfcAdapter;
    if-eqz v1, :cond_18

    .line 230
    :try_start_6
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 231
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z

    .line 232
    const-string/jumbo v2, "NfcController"

    const-string/jumbo v3, "disableBeam done"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_19

    .line 226
    :cond_18
    :goto_18
    return-void

    .line 234
    :catch_19
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcController"

    const-string/jumbo v3, "RemoteException during NFC disableNdefPush"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method private disableNfc(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V
    .registers 7
    .param p1, "backupInfo"    # Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;

    .prologue
    .line 241
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    if-eqz v3, :cond_3c

    .line 242
    const/4 v0, 0x1

    .line 243
    .local v0, "bRet":Z
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcP2pModeEnabled()Z

    move-result v3

    if-nez v3, :cond_25

    .line 244
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled()Z

    move-result v3

    .line 243
    if-nez v3, :cond_25

    .line 245
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcCardModeEnabled()Z

    move-result v3

    .line 243
    if-nez v3, :cond_25

    .line 246
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v3

    .line 243
    if-eqz v3, :cond_2d

    .line 247
    :cond_25
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 248
    const/16 v4, 0x2a

    .line 247
    invoke-virtual {v3, v4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcPowerStatus(I)Z

    move-result v0

    .line 253
    .end local v0    # "bRet":Z
    :cond_2d
    if-nez v0, :cond_3b

    .line 254
    const-string/jumbo v3, "NfcController"

    const-string/jumbo v4, "disableNfc : fail"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMNfcController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V

    .line 240
    :cond_3b
    :goto_3b
    return-void

    .line 258
    :cond_3c
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMNfcController;->getNfcAdapter()Landroid/nfc/INfcAdapter;

    move-result-object v2

    .line 259
    .local v2, "nfcAdapter":Landroid/nfc/INfcAdapter;
    if-eqz v2, :cond_3b

    .line 261
    const/4 v3, 0x1

    :try_start_43
    invoke-interface {v2, v3}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 262
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMNfcController;->disableBeam(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4c} :catch_4d

    goto :goto_3b

    .line 264
    :catch_4d
    move-exception v1

    .line 265
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NfcController"

    const-string/jumbo v4, "RemoteException during NFC disable"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMNfcController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V

    goto :goto_3b
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMNfcController;
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 75
    sget-object v0, Lcom/lge/mdm/controller/LGMDMNfcController;->instance:Lcom/lge/mdm/controller/LGMDMNfcController;

    if-nez v0, :cond_c

    .line 76
    new-instance v0, Lcom/lge/mdm/controller/LGMDMNfcController;

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMNfcController;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMNfcController;->instance:Lcom/lge/mdm/controller/LGMDMNfcController;

    .line 78
    :cond_c
    sget-object v0, Lcom/lge/mdm/controller/LGMDMNfcController;->instance:Lcom/lge/mdm/controller/LGMDMNfcController;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/lge/mdm/controller/LGMDMNfcController;
    .registers 2
    .param p0, "service"    # Ljava/lang/Object;

    .prologue
    .line 68
    sget-object v0, Lcom/lge/mdm/controller/LGMDMNfcController;->instance:Lcom/lge/mdm/controller/LGMDMNfcController;

    if-nez v0, :cond_b

    .line 69
    new-instance v0, Lcom/lge/mdm/controller/LGMDMNfcController;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMNfcController;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMNfcController;->instance:Lcom/lge/mdm/controller/LGMDMNfcController;

    .line 71
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMNfcController;->instance:Lcom/lge/mdm/controller/LGMDMNfcController;

    return-object v0
.end method

.method private getNfcAdapter()Landroid/nfc/INfcAdapter;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 273
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    if-nez v1, :cond_27

    .line 274
    const-string/jumbo v1, "NfcController"

    const-string/jumbo v2, "getNfcAdapter : mNfcAdapter is null so get mNfcAdapter"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    .line 277
    .local v0, "nfc":Landroid/nfc/INfcAdapter;
    if-nez v0, :cond_25

    .line 279
    const-string/jumbo v1, "NfcController"

    const-string/jumbo v2, "getNfcAdapter : NFC not available return null"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-object v3

    .line 282
    :cond_25
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    .line 284
    .end local v0    # "nfc":Landroid/nfc/INfcAdapter;
    :cond_27
    const-string/jumbo v1, "NfcController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNfcAdapter : mNfcAdapter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    return-object v1
.end method

.method private getNfcState()I
    .registers 8

    .prologue
    .line 290
    const/4 v3, 0x1

    .line 291
    .local v3, "returnState":I
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    if-eqz v4, :cond_3f

    .line 292
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getAdapterSysState()I

    move-result v1

    .line 293
    .local v1, "getState":I
    const-string/jumbo v4, "NfcController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNfcState : getAdapterSysState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget v4, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->STATE_OFF:I

    if-ne v1, v4, :cond_2b

    .line 296
    const/4 v3, 0x1

    .line 335
    .end local v1    # "getState":I
    :cond_2a
    :goto_2a
    return v3

    .line 297
    .restart local v1    # "getState":I
    :cond_2b
    iget v4, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->STATE_TURNING_ON:I

    if-ne v1, v4, :cond_31

    .line 298
    const/4 v3, 0x2

    goto :goto_2a

    .line 299
    :cond_31
    iget v4, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->STATE_ON:I

    if-ne v1, v4, :cond_37

    .line 300
    const/4 v3, 0x3

    goto :goto_2a

    .line 301
    :cond_37
    iget v4, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->STATE_TURNING_OFF:I

    if-ne v1, v4, :cond_3d

    .line 302
    const/4 v3, 0x4

    goto :goto_2a

    .line 304
    :cond_3d
    const/4 v3, -0x1

    goto :goto_2a

    .line 307
    .end local v1    # "getState":I
    :cond_3f
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMNfcController;->getNfcAdapter()Landroid/nfc/INfcAdapter;

    move-result-object v2

    .line 308
    .local v2, "nfcAdapter":Landroid/nfc/INfcAdapter;
    if-eqz v2, :cond_2a

    .line 310
    :try_start_45
    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_68

    move-result v1

    .line 315
    .restart local v1    # "getState":I
    :goto_49
    const-string/jumbo v4, "NfcController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNfcState : getAdapterState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    packed-switch v1, :pswitch_data_7c

    .line 330
    const/4 v3, -0x1

    .line 331
    goto :goto_2a

    .line 311
    .end local v1    # "getState":I
    :catch_68
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NfcController"

    const-string/jumbo v5, "RemoteException during NFC getState"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    const/4 v1, 0x1

    .restart local v1    # "getState":I
    goto :goto_49

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_74
    const/4 v3, 0x1

    .line 319
    goto :goto_2a

    .line 321
    :pswitch_76
    const/4 v3, 0x2

    .line 322
    goto :goto_2a

    .line 324
    :pswitch_78
    const/4 v3, 0x3

    .line 325
    goto :goto_2a

    .line 327
    :pswitch_7a
    const/4 v3, 0x4

    .line 328
    goto :goto_2a

    .line 316
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_74
        :pswitch_76
        :pswitch_78
        :pswitch_7a
    .end packed-switch
.end method

.method private sendIntentError(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V
    .registers 8
    .param p1, "backupInfo"    # Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;

    .prologue
    .line 381
    const-string/jumbo v2, "NfcController"

    const-string/jumbo v3, "sendIntentError"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_e

    .line 384
    iget-object v0, p1, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 386
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_e
    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 387
    iget-object v3, p1, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    monitor-enter v3

    .line 388
    :try_start_15
    iget v2, p1, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;->backupPolicy:I

    iput v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNfc:I

    .line 389
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const-string/jumbo v4, "lgmdm_hardware_policies.xml"

    iget v5, p1, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;->userHandle:I

    invoke-virtual {v2, v4, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(Ljava/lang/String;I)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_34

    monitor-exit v3

    .line 392
    :cond_24
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mdm.intent.action.NFC_SET_FAILURE_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    return-void

    .line 387
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_34
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setNfcCardOnly(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V
    .registers 5
    .param p1, "backupInfo"    # Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    if-nez v1, :cond_13

    .line 200
    const-string/jumbo v1, "NfcController"

    const-string/jumbo v2, "setNfcCardOnly : check NfcAdapterAddon"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 204
    :cond_13
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    if-nez v1, :cond_24

    .line 205
    const-string/jumbo v1, "NfcController"

    const-string/jumbo v2, "setNfcCardOnly : NFC is not supported"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMNfcController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V

    .line 207
    return-void

    .line 210
    :cond_24
    const/4 v0, 0x1

    .line 213
    .local v0, "bRet":Z
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcP2pModeEnabled()Z

    move-result v1

    if-nez v1, :cond_35

    .line 214
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled()Z

    move-result v1

    .line 213
    if-eqz v1, :cond_3d

    .line 215
    :cond_35
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 216
    const/16 v2, 0x28

    .line 215
    invoke-virtual {v1, v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcPowerStatus(I)Z

    move-result v0

    .line 220
    .end local v0    # "bRet":Z
    :cond_3d
    if-nez v0, :cond_4b

    .line 221
    const-string/jumbo v1, "NfcController"

    const-string/jumbo v2, "setNfcCardOnly : fail"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMNfcController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V

    .line 198
    :cond_4b
    return-void
.end method

.method private validatePolicy(I)I
    .registers 4
    .param p1, "allowNfc"    # I

    .prologue
    .line 149
    move v0, p1

    .line 150
    .local v0, "changedPolicy":I
    packed-switch p1, :pswitch_data_10

    .line 161
    :pswitch_4
    iget v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->INVALIDE_POLICY:I

    .line 164
    :cond_6
    :goto_6
    :pswitch_6
    return v0

    .line 156
    :pswitch_7
    invoke-static {}, Lcom/lge/mdm/util/LGMDMConfig;->hasFeatureNfcP2P()Z

    move-result v1

    if-nez v1, :cond_6

    .line 157
    const/4 v0, 0x0

    goto :goto_6

    .line 150
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method protected getAllowAndroidBeam(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_2a

    .line 426
    const-string/jumbo v4, "NfcController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "who != null = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 428
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_29

    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAndroidBeam:Z

    :cond_29
    return v3

    .line 430
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2a
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v2

    .line 431
    .local v2, "listSize":I
    if-nez v2, :cond_33

    .line 432
    return v3

    .line 434
    :cond_33
    const/4 v1, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v1, "i":I
    :goto_34
    if-ge v1, v2, :cond_44

    .line 435
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 436
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAndroidBeam:Z

    if-nez v4, :cond_41

    .line 437
    return v5

    .line 434
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 440
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_44
    return v3
.end method

.method protected getAllowNfc(Landroid/content/ComponentName;I)I
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 84
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 85
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNfc:I

    :goto_d
    return v5

    :cond_e
    const/4 v5, 0x1

    goto :goto_d

    .line 88
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    const/4 v3, 0x1

    .line 89
    .local v3, "allowNfc":I
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 90
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 91
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v5, "NfcController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllowNfc : admin.allowNfc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNfc:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNfc:I

    if-nez v5, :cond_64

    .line 94
    iget v3, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNfc:I

    .line 100
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_49
    const-string/jumbo v5, "NfcController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllowNfc : Strong allowNfc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return v3

    .line 97
    .restart local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_64
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNfc:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1b
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x1388

    const/4 v6, 0x0

    .line 340
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;

    .line 341
    .local v0, "backupInfo":Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_62

    .line 370
    :goto_c
    return v6

    .line 343
    :pswitch_d
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMNfcController;->disableNfc(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V

    goto :goto_c

    .line 346
    :pswitch_11
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMNfcController;->setNfcCardOnly(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V

    goto :goto_c

    .line 349
    :pswitch_15
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMNfcController;->getNfcState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3e

    iget v2, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mTimeoutDisableNfc:I

    if-ge v2, v4, :cond_3e

    .line 350
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 352
    .local v1, "delayMsg":Landroid/os/Message;
    iget v2, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mTimeoutDisableNfc:I

    add-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mTimeoutDisableNfc:I

    .line 353
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 354
    const-string/jumbo v2, "NfcController"

    const-string/jumbo v3, "MSG_CONFIRM_DISABLE_NFC fail : check again"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 355
    .end local v1    # "delayMsg":Landroid/os/Message;
    :cond_3e
    iget v2, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mTimeoutDisableNfc:I

    if-ge v2, v4, :cond_50

    .line 356
    iput v6, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mTimeoutDisableNfc:I

    .line 357
    iput-boolean v6, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mSetPolicyLock:Z

    .line 358
    const-string/jumbo v2, "NfcController"

    const-string/jumbo v3, "MSG_CONFIRM_DISABLE_NFC success"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 360
    :cond_50
    const-string/jumbo v2, "NfcController"

    const-string/jumbo v3, "MSG_CONFIRM_DISABLE_NFC fail : timeout"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iput v6, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mTimeoutDisableNfc:I

    .line 362
    iput-boolean v6, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mSetPolicyLock:Z

    .line 363
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMNfcController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V

    goto :goto_c

    .line 341
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method

.method protected setAllowAndroidBeam(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 398
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 400
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAndroidBeam:Z

    if-ne v3, p2, :cond_15

    .line 401
    const-string/jumbo v3, "NfcController"

    const-string/jumbo v4, "setAllowAndroidBeam : same policy is called"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void

    .line 405
    :cond_15
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAndroidBeam:Z

    .line 407
    invoke-virtual {p0, v4, p3}, Lcom/lge/mdm/controller/LGMDMNfcController;->getAllowAndroidBeam(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_35

    .line 408
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMNfcController;->getNfcAdapter()Landroid/nfc/INfcAdapter;

    move-result-object v2

    .line 409
    .local v2, "nfcAdapter":Landroid/nfc/INfcAdapter;
    if-eqz v2, :cond_35

    .line 411
    :try_start_23
    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 412
    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z

    .line 413
    const-string/jumbo v3, "NfcController"

    const-string/jumbo v4, "disableBeam done"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_35} :catch_36

    .line 397
    .end local v2    # "nfcAdapter":Landroid/nfc/INfcAdapter;
    :cond_35
    :goto_35
    return-void

    .line 415
    .restart local v2    # "nfcAdapter":Landroid/nfc/INfcAdapter;
    :catch_36
    move-exception v1

    .line 416
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NfcController"

    const-string/jumbo v4, "RemoteException during NFC disableNdefPush"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method

.method protected setAllowNfc(Landroid/content/ComponentName;II)Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v6, 0x0

    .line 105
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 107
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v3, "NfcController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAllowNfc : allow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-boolean v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mSetPolicyLock:Z

    if-eqz v3, :cond_45

    .line 109
    const-string/jumbo v3, "NfcController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAllowNfc : return : lock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mSetPolicyLock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, v6}, Lcom/lge/mdm/controller/LGMDMNfcController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V

    .line 111
    return-object v6

    .line 115
    :cond_45
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMNfcController;->validatePolicy(I)I

    move-result p2

    .line 116
    iget v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->INVALIDE_POLICY:I

    if-ne p2, v3, :cond_5a

    .line 117
    const-string/jumbo v3, "NfcController"

    const-string/jumbo v4, "setAllowNfc : return : invalide value"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v6}, Lcom/lge/mdm/controller/LGMDMNfcController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V

    .line 119
    return-object v6

    .line 122
    :cond_5a
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNfc:I

    if-ne v3, p2, :cond_68

    .line 123
    const-string/jumbo v3, "NfcController"

    const-string/jumbo v4, "setAllowNfc : same policy is called"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-object v6

    .line 127
    :cond_68
    new-instance v1, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;

    invoke-direct {v1, p0}, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;-><init>(Lcom/lge/mdm/controller/LGMDMNfcController;)V

    .line 128
    .local v1, "backupInfo":Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;
    iput-object v0, v1, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 129
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mService:Ljava/lang/Object;

    if-eqz v3, :cond_86

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mService:Ljava/lang/Object;

    :goto_75
    iput-object v3, v1, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    .line 130
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNfc:I

    iput v3, v1, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;->backupPolicy:I

    .line 131
    iput p3, v1, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;->userHandle:I

    .line 132
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNfc:I

    .line 134
    invoke-virtual {p0, v6, p3}, Lcom/lge/mdm/controller/LGMDMNfcController;->getAllowNfc(Landroid/content/ComponentName;I)I

    move-result v3

    if-nez v3, :cond_88

    .line 136
    return-object v1

    :cond_86
    move-object v3, p0

    .line 129
    goto :goto_75

    .line 137
    :cond_88
    invoke-virtual {p0, v6, p3}, Lcom/lge/mdm/controller/LGMDMNfcController;->getAllowNfc(Landroid/content/ComponentName;I)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9c

    .line 139
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 140
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    .end local v1    # "backupInfo":Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_9b
    return-object v6

    .line 143
    .restart local v1    # "backupInfo":Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;
    :cond_9c
    const/4 v1, 0x0

    .local v1, "backupInfo":Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;
    goto :goto_9b
.end method

.method protected setNfcDisable(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V
    .registers 10
    .param p1, "backupInfo"    # Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 168
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    if-nez v3, :cond_15

    .line 169
    const-string/jumbo v3, "NfcController"

    const-string/jumbo v4, "setNfcDisable : check NfcAdapterAddon"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 173
    :cond_15
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    if-nez v3, :cond_2c

    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMNfcController;->getNfcAdapter()Landroid/nfc/INfcAdapter;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 174
    const-string/jumbo v3, "NfcController"

    const-string/jumbo v4, "setNfcDisable : NFC is not supported"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMNfcController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;)V

    .line 176
    return-void

    .line 179
    :cond_2c
    const/4 v0, 0x0

    .line 180
    .local v0, "checkChanged":Z
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMNfcController;->getNfcState()I

    move-result v2

    .line 181
    .local v2, "nfcState":I
    if-eq v2, v7, :cond_36

    const/4 v3, 0x3

    if-ne v2, v3, :cond_53

    .line 182
    :cond_36
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 183
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    const/4 v0, 0x1

    .line 189
    .end local v1    # "msg":Landroid/os/Message;
    :goto_42
    if-eqz v0, :cond_6e

    .line 190
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mSetPolicyLock:Z

    .line 191
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 192
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    .end local v1    # "msg":Landroid/os/Message;
    :goto_52
    return-void

    .line 186
    :cond_53
    const-string/jumbo v3, "NfcController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNfcDisable : no work. NFC state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 194
    :cond_6e
    iput-boolean v6, p0, Lcom/lge/mdm/controller/LGMDMNfcController;->mSetPolicyLock:Z

    goto :goto_52
.end method
