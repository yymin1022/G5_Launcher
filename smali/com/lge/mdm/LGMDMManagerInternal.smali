.class public Lcom/lge/mdm/LGMDMManagerInternal;
.super Ljava/lang/Object;
.source "LGMDMManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/LGMDMManagerInternal$LGMDMManagerInternalHolder;
    }
.end annotation


# static fields
.field public static final ATCLIENT_SET_FAIL:I = -0x1

.field public static final ATCLIENT_SET_SUCCEEDED:I = 0x1

.field public static final ATCLINET_NOT_SUPPORT:I = 0x0

.field public static final AT_ALL:I = 0x0

.field public static final AT_BACKUP_AND_RESTORE:I = 0x4

.field public static final AT_DATA_TRANSMISSION_VIA_AUDIOPORT:I = 0x8

.field public static final AT_DOWNLOAD_MODE:I = 0x2

.field public static final AT_HW_FACTORY_RESET:I = 0x1

.field public static final CAMERAPACKAGENAME:Ljava/lang/String; = "com.lge.camera"

.field private static final DEBUG:Z

.field public static final PASSWORD_RECOVERY_MODE:Ljava/lang/String; = "PASSWORD_RECOVERY"

.field private static final TAG:Ljava/lang/String; = "LGMDMManagerInternal"


# instance fields
.field private mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

.field private mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_e

    :goto_b
    sput-boolean v0, Lcom/lge/mdm/LGMDMManagerInternal;->DEBUG:Z

    .line 39
    return-void

    :cond_e
    move v0, v1

    .line 42
    goto :goto_b
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string/jumbo v0, "LGMDMManagerInternal"

    const-string/jumbo v1, "Create singleton instance"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->create()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 68
    new-instance v0, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/LGMDMManagerInternal;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/lge/mdm/LGMDMManagerInternal;-><init>()V

    return-void
.end method

.method private checkWho(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 113
    if-eqz p1, :cond_7

    .line 114
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "resultWho":Ljava/lang/String;
    :goto_6
    return-object v0

    .line 116
    .end local v0    # "resultWho":Ljava/lang/String;
    :cond_7
    const-string/jumbo v0, "NULL"

    .restart local v0    # "resultWho":Ljava/lang/String;
    goto :goto_6
.end method

.method public static getInstance()Lcom/lge/mdm/LGMDMManagerInternal;
    .registers 1

    .prologue
    .line 78
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal$LGMDMManagerInternalHolder;->-get0()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method private isAPILevelAllFeature()Z
    .registers 2

    .prologue
    .line 562
    invoke-static {}, Lcom/lge/mdm/util/LGMDMVersionInfo;->getDeviceAPILevel()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public changePassword(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lpu"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->changePassword(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 305
    return-void
.end method

.method public checkBluetoothAudioOnly(Ljava/lang/String;)Z
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkBluetoothAudioOnly(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkBluetoothAudioOnlyForCoD(Ljava/lang/String;)Z
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkBluetoothAudioOnlyForCoD(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkBluetoothDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkBluetoothDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkBluetoothPairing(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "withToast"    # Z

    .prologue
    .line 508
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkBluetoothPairing(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public checkBluetoothProfileStatus(I)Z
    .registers 3
    .param p1, "nBluetoothProfile"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkBluetoothProfileStatus(I)Z

    move-result v0

    return v0
.end method

.method public checkBluetoothProfileToast()V
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkBluetoothProfileToast()V

    .line 456
    return-void
.end method

.method public checkBluetoothVisible()Z
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkBluetoothVisible()Z

    move-result v0

    return v0
.end method

.method public checkCameraPackageInWhitelist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkCameraPackageInWhitelist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkDisabledClipboard(Z)Z
    .registers 3
    .param p1, "bShowToast"    # Z

    .prologue
    .line 410
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkDisabledClipboard(Z)Z

    move-result v0

    return v0
.end method

.method public checkDisabledGlobalAction(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "currentModuleName"    # Ljava/lang/String;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkDisabledGlobalAction(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkDisabledLGVpn()Z
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkDisabledLGVpn()Z

    move-result v0

    return v0
.end method

.method public checkDisabledSystemService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "currentModuleName"    # Ljava/lang/String;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkDisabledSystemService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkDisabledVpn()Z
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkDisabledVpn()Z

    move-result v0

    return v0
.end method

.method public checkEncryptionAvailable(I)Z
    .registers 3
    .param p1, "policy"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkEncryptionAvailable(I)Z

    move-result v0

    return v0
.end method

.method public checkLockoutRecoveryKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkLockoutRecoveryKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkMicPackageInWhitelist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkMicPackageInWhitelist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mCurrentModuleName"    # Ljava/lang/String;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkOnLocationButton(Landroid/content/ComponentName;I)I
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 612
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkOnLocationButton(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public checkPasswordRecovery(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkPasswordRecovery(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public checkScreenCapture(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->hasScreenCapturePolicy()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/16 v0, -0x69

    goto :goto_9
.end method

.method public checkStartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 539
    .local v5, "userHandle":I
    invoke-direct {p0}, Lcom/lge/mdm/LGMDMManagerInternal;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_17

    .line 540
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 542
    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 540
    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->checkStartActivityLockedForEAS(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    return v0

    .line 544
    :cond_17
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v6

    const/4 v7, 0x0

    .line 546
    const/4 v11, 0x0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move v12, v5

    .line 544
    invoke-virtual/range {v6 .. v12}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->checkStartActivityLocked(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method public checkVpnSplitTunneling(Z)Z
    .registers 3
    .param p1, "popup"    # Z

    .prologue
    .line 636
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->checkVpnSplitTunneling(Z)Z

    move-result v0

    return v0
.end method

.method public computeEditDistance(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "m1"    # Ljava/lang/String;
    .param p2, "m2"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 229
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 230
    :cond_5
    return v5

    .line 232
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 235
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [I

    .line 236
    .local v0, "costs":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v1, v5, :cond_5d

    .line 237
    move v3, v1

    .line 238
    .local v3, "lastValue":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v2, v5, :cond_52

    .line 239
    if-nez v1, :cond_2c

    .line 240
    aput v2, v0, v2

    .line 238
    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 242
    :cond_2c
    if-lez v2, :cond_29

    .line 243
    add-int/lit8 v5, v2, -0x1

    aget v4, v0, v5

    .line 244
    .local v4, "newValue":I
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_4c

    .line 245
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    aget v6, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 247
    :cond_4c
    add-int/lit8 v5, v2, -0x1

    aput v3, v0, v5

    .line 248
    move v3, v4

    goto :goto_29

    .line 252
    .end local v4    # "newValue":I
    :cond_52
    if-lez v1, :cond_5a

    .line 253
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    aput v3, v0, v5

    .line 236
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 256
    .end local v2    # "j":I
    .end local v3    # "lastValue":I
    :cond_5d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    aget v5, v0, v5

    return v5
.end method

.method public dismissDialogForLockout(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->dismissDialogForLockout(Landroid/content/Context;)V

    .line 386
    return-void
.end method

.method public dismissResetPasswordDialog()V
    .registers 2

    .prologue
    .line 284
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->dismissResetPasswordDialog()V

    .line 283
    return-void
.end method

.method public getBluetoothVisibleDuration(I)I
    .registers 3
    .param p1, "duration"    # I

    .prologue
    .line 575
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getBluetoothVisibleDuration(I)I

    move-result v0

    return v0
.end method

.method public getDisallowTetheringType(I)Z
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 207
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getInstance()Lcom/lge/mdm/frameworks/MDMTetheringAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getDisallowTetheringType(I)Z

    move-result v0

    .line 209
    .local v0, "ret":Z
    sget-boolean v1, Lcom/lge/mdm/LGMDMManagerInternal;->DEBUG:Z

    if-eqz v1, :cond_31

    .line 210
    const-string/jumbo v1, "LGMDMManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gDTT("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_31
    return v0
.end method

.method public getDisallowTetheringType(II)Z
    .registers 7
    .param p1, "type"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 190
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getInstance()Lcom/lge/mdm/frameworks/MDMTetheringAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getDisallowTetheringType(II)Z

    move-result v0

    .line 192
    .local v0, "ret":Z
    sget-boolean v1, Lcom/lge/mdm/LGMDMManagerInternal;->DEBUG:Z

    if-eqz v1, :cond_31

    .line 193
    const-string/jumbo v1, "LGMDMManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gDTT("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_31
    return v0
.end method

.method public getDisallowUSBType(I)Z
    .registers 6
    .param p1, "usbType"    # I

    .prologue
    .line 174
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getDisallowUSBType(I)Z

    move-result v0

    .line 175
    .local v0, "ret":Z
    sget-boolean v1, Lcom/lge/mdm/LGMDMManagerInternal;->DEBUG:Z

    if-eqz v1, :cond_2f

    .line 176
    const-string/jumbo v1, "LGMDMManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gDUT("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2f
    return v0
.end method

.method public getDisallowUSBType(II)Z
    .registers 7
    .param p1, "usbType"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 161
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getDisallowUSBType(II)Z

    move-result v0

    .line 162
    .local v0, "ret":Z
    sget-boolean v1, Lcom/lge/mdm/LGMDMManagerInternal;->DEBUG:Z

    if-eqz v1, :cond_2f

    .line 163
    const-string/jumbo v1, "LGMDMManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gDUT("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2f
    return v0
.end method

.method public getEmergencyCallStatus()Z
    .registers 5

    .prologue
    .line 149
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEmergencyCallStatus()Z

    move-result v0

    .line 150
    .local v0, "ret":Z
    sget-boolean v1, Lcom/lge/mdm/LGMDMManagerInternal;->DEBUG:Z

    if-eqz v1, :cond_24

    .line 151
    const-string/jumbo v1, "LGMDMManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gECS() ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_24
    return v0
.end method

.method public getEnforcePowerButtonLocks(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 625
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getEnforcePowerButtonLocks(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getNumeric(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 717
    const-string/jumbo v2, "phone"

    .line 716
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 719
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "numeric":Ljava/lang/String;
    return-object v0
.end method

.method public getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;)I
    .registers 3
    .param p1, "lpu"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method public getPasswordRecoveryByEas(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getPasswordRecoveryByEas(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public getPasswordRecoveryEnabled(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getPasswordRecoveryEnabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I

    .prologue
    .line 665
    sget-boolean v0, Lcom/lge/mdm/LGMDMManagerInternal;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 666
    const-string/jumbo v0, "LGMDMManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hGP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManagerInternal;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isAccountByMDM(Landroid/content/Context;Landroid/accounts/Account;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAccountByMDM(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method public isManualSyncCurrent()Z
    .registers 5

    .prologue
    .line 99
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isManualSyncCurrent()Z

    move-result v0

    .line 100
    .local v0, "ret":Z
    sget-boolean v1, Lcom/lge/mdm/LGMDMManagerInternal;->DEBUG:Z

    if-eqz v1, :cond_24

    .line 101
    const-string/jumbo v1, "LGMDMManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iMSC() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_24
    return v0
.end method

.method public isNeedPasswordChangeNoti(Lcom/android/internal/widget/LockPatternUtils;)Z
    .registers 3
    .param p1, "lpu"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isNeedPasswordChangeNoti(Lcom/android/internal/widget/LockPatternUtils;)Z

    move-result v0

    return v0
.end method

.method public notificationChangePasswordDialogWarning(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lpu"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->notificationChangePasswordDialogWarning(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 342
    return-void
.end method

.method public setEmergencyCallStatus(ZI)V
    .registers 6
    .param p1, "status"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEmergencyCallStatus(ZI)V

    .line 136
    sget-boolean v0, Lcom/lge/mdm/LGMDMManagerInternal;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 137
    const-string/jumbo v0, "LGMDMManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sECS() set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_2e
    return-void
.end method

.method public setEnforceRecoveryPassword(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-boolean v0, Lcom/lge/mdm/LGMDMManagerInternal;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 89
    const-string/jumbo v0, "LGMDMManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sERP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManagerInternal;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEnforceRecoveryPassword(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setGrant(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .prologue
    .line 712
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setGrant(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showDodWarningBanner(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 677
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterLockScreen()Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->showDodWarningBanner(Landroid/content/Context;Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method public showEncryptionPolicyDialog(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManagerInternal;->mMDMInterfaceImpl:Lcom/lge/mdm/frameworks/MDMInterfaceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->showEncryptionPolicyDialog(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public showResetPasswordDialog(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    .line 275
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIHandlerAdapter()Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->showResetPasswordDialog(Landroid/content/Context;I)V

    .line 274
    return-void
.end method
