.class public Lcom/lge/mdm/controller/LGMDMGeneralController;
.super Ljava/lang/Object;
.source "LGMDMGeneralController.java"


# static fields
.field private static final ALLOW_WIPEDATA_CHECK_DIR_PATH:Ljava/lang/String; = "/persist-lg/lgmdm"

.field private static final ALLOW_WIPEDATA_CHECK_PATH:Ljava/lang/String; = "/persist-lg/lgmdm/check_for_policy.txt"

.field private static IPV4_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final IPV4_REGX:Ljava/lang/String; = "^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$"

.field protected static final LGE_PHONE_UPDATE:Ljava/lang/String; = "android.settings.SYSTEM_UPDATE_SETTINGS"

.field protected static final LGE_SOFTWARE_UPDATE:Ljava/lang/String; = "com.lge.SOFTWARE_UPDATE_SETTINGS"

.field private static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/lge/mdm/controller/LGMDMGeneralController;


# instance fields
.field private final ROOT_DETECTION_FILE:Ljava/lang/String;

.field private final allowOSUpdateFlagFile:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string/jumbo v0, "GeneralController"

    sput-object v0, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMGeneralController;->instance:Lcom/lge/mdm/controller/LGMDMGeneralController;

    .line 51
    const-string/jumbo v0, "^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMGeneralController;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 48
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 52
    const-string/jumbo v0, "/data/system/lgmdm_osupgrade_flag.txt"

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->allowOSUpdateFlagFile:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "/data/system/lgmdm_root_flag.txt"

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->ROOT_DETECTION_FILE:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 63
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private createWipeCheckFile()V
    .registers 7

    .prologue
    .line 97
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/persist-lg/lgmdm/check_for_policy.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "file":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/persist-lg/lgmdm"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "dir":Ljava/io/File;
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_24

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 102
    sget-object v3, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createWipeCheckFile : success to mkdir"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_24
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 109
    sget-object v3, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createWipeCheckFile : file already exist"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void

    .line 104
    :cond_33
    sget-object v3, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createWipeCheckFile : fail to mkdir"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void

    .line 112
    :cond_3c
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 113
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 114
    sget-object v3, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createWipeCheckFile : success to create file"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4c} :catch_4d

    .line 96
    :goto_4c
    return-void

    .line 116
    :catch_4d
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createWipeCheckFile :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c
.end method

.method private deleteWipeCheckFile()V
    .registers 4

    .prologue
    .line 122
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/persist-lg/lgmdm/check_for_policy.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 124
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deleteWipeCheckFile : file exist"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 126
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deleteWipeCheckFile : success to delete file"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_24
    return-void

    .line 128
    :cond_25
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deleteWipeCheckFile : fail to delete file"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 131
    :cond_2e
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deleteWipeCheckFile : file not exist"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMGeneralController;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/lge/mdm/controller/LGMDMGeneralController;->instance:Lcom/lge/mdm/controller/LGMDMGeneralController;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Lcom/lge/mdm/controller/LGMDMGeneralController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMGeneralController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMGeneralController;->instance:Lcom/lge/mdm/controller/LGMDMGeneralController;

    .line 71
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMGeneralController;->instance:Lcom/lge/mdm/controller/LGMDMGeneralController;

    return-object v0
.end method

.method private hideCliptray(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    .line 540
    new-instance v1, Lcom/lge/systemservice/core/LGContext;

    invoke-direct {v1, p1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 541
    .local v1, "serviceContext":Lcom/lge/systemservice/core/LGContext;
    if-nez v1, :cond_10

    .line 542
    sget-object v2, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Fail to get LGContext"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void

    .line 546
    :cond_10
    const-string/jumbo v2, "cliptray"

    .line 545
    invoke-virtual {v1, v2}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/CliptrayManager;

    .line 547
    .local v0, "cliptrayManager":Lcom/lge/systemservice/core/CliptrayManager;
    if-nez v0, :cond_24

    .line 548
    sget-object v2, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Fail to get CliptrayManager"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return-void

    .line 551
    :cond_24
    invoke-virtual {v0}, Lcom/lge/systemservice/core/CliptrayManager;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 552
    invoke-virtual {v0}, Lcom/lge/systemservice/core/CliptrayManager;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3d

    .line 553
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    .line 554
    sget v3, Lcom/lge/internal/R$string;->sp_lgmdm_block_clipboard_NORMAL:I

    .line 553
    invoke-virtual {v2, v3, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 556
    invoke-virtual {v0}, Lcom/lge/systemservice/core/CliptrayManager;->hideCliptray()V

    .line 538
    :goto_3c
    return-void

    .line 558
    :cond_3d
    sget-object v2, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cliptray is not Viewed"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private isIPAddress(Ljava/lang/String;)Z
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 260
    sget-object v0, Lcom/lge/mdm/controller/LGMDMGeneralController;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private isPasswordTypvingVisibleAllowed()I
    .registers 6

    .prologue
    .line 648
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 650
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 651
    const-string/jumbo v3, "show_password"

    const/4 v4, 0x1

    .line 650
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    move-result v2

    .line 653
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    return v2

    .line 652
    :catchall_16
    move-exception v2

    .line 653
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 652
    throw v2
.end method

.method private sendProxyInfo(ZLjava/lang/String;I)V
    .registers 8
    .param p1, "allow"    # Z
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 331
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.mdm.intent.action.BROWSER_PROXY_SETUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "Policy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    const-string/jumbo v1, "ProxyIP"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string/jumbo v1, "ProxyPort"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 336
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendProxyInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method


# virtual methods
.method protected checkRootDetection(Landroid/content/ComponentName;I)I
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 188
    const-string/jumbo v3, "/data/system/lgmdm_root_flag.txt"

    .line 189
    .local v3, "filename":Ljava/lang/String;
    const/4 v4, 0x0

    .line 193
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_9} :catch_e8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a3
    .catchall {:try_start_4 .. :try_end_9} :catchall_117

    .line 195
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v8, 0x4

    :try_start_a
    new-array v0, v8, [B

    .line 196
    .local v0, "data":[B
    const/4 v6, 0x0

    .line 197
    .local v6, "result":I
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_10} :catch_141
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_144
    .catchall {:try_start_a .. :try_end_10} :catchall_13e

    move-result v8

    if-gez v8, :cond_3a

    .line 190
    const/4 v8, -0x1

    .line 219
    if-eqz v5, :cond_19

    .line 220
    :try_start_16
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 198
    :cond_19
    :goto_19
    return v8

    .line 222
    :catch_1a
    move-exception v2

    .line 223
    .local v2, "e":Ljava/io/IOException;
    sget-object v9, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "close()  IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    const/4 v7, -0x1

    .local v7, "ret":I
    goto :goto_19

    .line 201
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "ret":I
    :cond_3a
    const/4 v8, 0x0

    :try_start_3b
    aget-byte v8, v0, v8

    and-int/lit16 v6, v8, 0xff

    .line 202
    const/4 v8, 0x1

    aget-byte v8, v0, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v6, v8

    .line 203
    const/4 v8, 0x2

    aget-byte v8, v0, v8

    shl-int/lit8 v8, v8, 0x10

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    or-int/2addr v6, v8

    .line 204
    const/4 v8, 0x3

    aget-byte v8, v0, v8

    shl-int/lit8 v8, v8, 0x18

    const/high16 v9, -0x1000000

    and-int/2addr v8, v9

    or-int/2addr v6, v8

    .line 205
    sget-object v8, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "root_flag_value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_74} :catch_141
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_74} :catch_144
    .catchall {:try_start_3b .. :try_end_74} :catchall_13e

    .line 206
    const v8, 0xf4240

    if-le v6, v8, :cond_81

    .line 207
    const/4 v7, 0x1

    .line 219
    .restart local v7    # "ret":I
    :goto_7a
    if-eqz v5, :cond_7f

    .line 220
    :try_start_7c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_83

    :cond_7f
    :goto_7f
    move-object v4, v5

    .line 228
    .end local v0    # "data":[B
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "result":I
    :cond_80
    :goto_80
    return v7

    .line 209
    .end local v7    # "ret":I
    .restart local v0    # "data":[B
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "result":I
    :cond_81
    const/4 v7, 0x0

    .restart local v7    # "ret":I
    goto :goto_7a

    .line 222
    :catch_83
    move-exception v2

    .line 223
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "close()  IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    const/4 v7, -0x1

    goto :goto_7f

    .line 214
    .end local v0    # "data":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "result":I
    .end local v7    # "ret":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_a3
    move-exception v2

    .line 215
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_a4
    :try_start_a4
    sget-object v8, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "close()  IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c1
    .catchall {:try_start_a4 .. :try_end_c1} :catchall_117

    .line 216
    const/4 v7, -0x1

    .line 219
    .restart local v7    # "ret":I
    if-eqz v4, :cond_80

    .line 220
    :try_start_c4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c8

    goto :goto_80

    .line 222
    :catch_c8
    move-exception v2

    .line 223
    sget-object v8, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "close()  IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    :goto_e6
    const/4 v7, -0x1

    goto :goto_80

    .line 211
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "ret":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_e8
    move-exception v1

    .line 212
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_e9
    const/4 v7, -0x1

    .line 213
    .restart local v7    # "ret":I
    :try_start_ea
    sget-object v8, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "There is not root_flag file"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f2
    .catchall {:try_start_ea .. :try_end_f2} :catchall_117

    .line 219
    if-eqz v4, :cond_80

    .line 220
    :try_start_f4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8

    goto :goto_80

    .line 222
    :catch_f8
    move-exception v2

    .line 223
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "close()  IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e6

    .line 217
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "ret":I
    :catchall_117
    move-exception v8

    .line 219
    :goto_118
    if-eqz v4, :cond_11d

    .line 220
    :try_start_11a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_11e

    .line 217
    :cond_11d
    :goto_11d
    throw v8

    .line 222
    :catch_11e
    move-exception v2

    .line 223
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "close()  IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    const/4 v7, -0x1

    .restart local v7    # "ret":I
    goto :goto_11d

    .line 217
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "ret":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_13e
    move-exception v8

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    goto :goto_118

    .line 211
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_141
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_e9

    .line 214
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_144
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_a4
.end method

.method protected getAllowBackgroundProcessLimit(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 486
    const/4 v0, 0x0

    .line 488
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 489
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 490
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundProcessLimit:Z

    :cond_e
    return v4

    .line 493
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 494
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 495
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundProcessLimit:Z

    if-nez v5, :cond_19

    .line 496
    const/4 v4, 0x0

    return v4

    .line 499
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowBrowserProxySetup(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 293
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 294
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowserProxySetup:Z

    :cond_e
    return v4

    .line 297
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 298
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 299
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowserProxySetup:Z

    if-nez v5, :cond_19

    .line 300
    const/4 v4, 0x0

    return v4

    .line 303
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowCallInRoaming(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 458
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 459
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCallInRoaming:Z

    :cond_e
    return v4

    .line 462
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 463
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 464
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCallInRoaming:Z

    if-nez v5, :cond_19

    .line 465
    const/4 v4, 0x0

    return v4

    .line 468
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowClipboard(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 516
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 517
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowClipboard:Z

    :cond_e
    return v4

    .line 520
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 521
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 522
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowClipboard:Z

    if-nez v5, :cond_19

    .line 523
    const/4 v4, 0x0

    return v4

    .line 526
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowDeveloperMode(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 963
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 964
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDevMode:Z

    :cond_e
    return v4

    .line 967
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 968
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 969
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDevMode:Z

    if-nez v5, :cond_19

    .line 970
    const/4 v4, 0x0

    return v4

    .line 973
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowOSUpdate(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 365
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 366
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowOSUpdate:Z

    :cond_e
    return v4

    .line 369
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 370
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 371
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowOSUpdate:Z

    if-nez v5, :cond_19

    .line 372
    const/4 v4, 0x0

    return v4

    .line 375
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowOwnerInfo(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 847
    const/4 v0, 0x0

    .line 848
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 849
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 850
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->ownerInfo:I

    :goto_d
    return v5

    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 852
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    const/4 v4, 0x0

    .line 853
    .local v4, "policy":I
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 854
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 855
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->ownerInfo:I

    if-le v5, v4, :cond_1b

    .line 856
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->ownerInfo:I

    goto :goto_1b

    .line 859
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2e
    return v4
.end method

.method protected getAllowPasswordTypingVisible(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 634
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 635
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordTypingVisible:Z

    :cond_e
    return v4

    .line 638
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 639
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 640
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordTypingVisible:Z

    if-nez v5, :cond_19

    .line 641
    const/4 v4, 0x0

    return v4

    .line 644
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowPasswordVisible(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 774
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 775
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_f

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordVisible:Z

    :cond_f
    return v4

    .line 778
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, v6}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 779
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 780
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordVisible:Z

    if-nez v5, :cond_1a

    .line 781
    return v6

    .line 784
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowRemoveGoogleAccount(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 568
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 569
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowRemoveGoogleAccount:Z

    :cond_e
    return v4

    .line 572
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 573
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 574
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowRemoveGoogleAccount:Z

    if-nez v5, :cond_19

    .line 575
    const/4 v4, 0x0

    return v4

    .line 578
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowStatusBarExpansion(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 664
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 665
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowStatusBarExpansion:Z

    :cond_e
    return v4

    .line 668
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 669
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 670
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowStatusBarExpansion:Z

    if-nez v5, :cond_19

    .line 671
    const/4 v4, 0x0

    return v4

    .line 674
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowWipeData(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 138
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 139
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWipeData:Z

    :cond_e
    return v4

    .line 143
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMMasterController;->getInstance()Lcom/lge/mdm/controller/LGMDMMasterController;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/lge/mdm/controller/LGMDMMasterController;->getAllowWipeDataMaster(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 144
    return v4

    .line 147
    :cond_1a
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 148
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 149
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWipeData:Z

    if-nez v5, :cond_24

    .line 150
    const/4 v4, 0x0

    return v4

    .line 153
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_36
    return v4
.end method

.method protected getBrowserProxyIPAddress(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "IPAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getBrowserProxyIPAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "IPAddress":Ljava/lang/String;
    return-object v0
.end method

.method protected getBrowserProxyPortNumber(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 325
    const/4 v0, -0x1

    .line 326
    .local v0, "PortNumber":I
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getBrowserProxyPortNumber(I)I

    move-result v0

    .line 327
    return v0
.end method

.method protected getEnforceEmergencyCallOnly(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 428
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 429
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowOutgoingCall:Z

    :cond_e
    return v4

    .line 432
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 433
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 434
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowOutgoingCall:Z

    if-nez v5, :cond_19

    .line 435
    const/4 v4, 0x0

    return v4

    .line 438
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getLockScreenOwnerInfoEnabled(I)I
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    .line 863
    const/4 v2, -0x1

    .line 864
    .local v2, "ownerInfoEnabled":I
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-eqz v4, :cond_18

    .line 865
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 867
    .local v0, "identity":J
    :try_start_9
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 868
    const-string/jumbo v5, "lock_screen_owner_info_enabled"

    const-wide/16 v6, -0x1

    .line 867
    invoke-interface {v4, v5, v6, v7, p1}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_19
    .catchall {:try_start_9 .. :try_end_13} :catchall_38

    move-result-wide v4

    long-to-int v2, v4

    .line 872
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 875
    .end local v0    # "identity":J
    :cond_18
    :goto_18
    return v2

    .line 869
    .restart local v0    # "identity":J
    :catch_19
    move-exception v3

    .line 870
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_1a
    const-string/jumbo v4, "MDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t read lock_screen_owner_info_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_38

    .line 872
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    .line 871
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_38
    move-exception v4

    .line 872
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    throw v4
.end method

.method protected getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 3

    .prologue
    .line 916
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_11

    .line 918
    const-string/jumbo v0, "lock_settings"

    .line 917
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 920
    :cond_11
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_1e

    .line 921
    const-string/jumbo v0, "MDM"

    const-string/jumbo v1, "LockSettingsService[lock_settings] is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_1e
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method protected getNotifyRemoveGoogleAccountDisabled(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 726
    const/4 v0, 0x0

    .line 727
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 728
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 729
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_f

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyRemoveGoogleAccountDisabled:Z

    :cond_f
    return v4

    .line 732
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, v6}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 733
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 734
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyRemoveGoogleAccountDisabled:Z

    if-nez v5, :cond_1a

    .line 735
    return v6

    .line 738
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getOwnerInfo(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 927
    const/4 v2, 0x0

    .line 928
    .local v2, "ownerInfo":Ljava/lang/String;
    if-eqz p1, :cond_18

    .line 929
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-eqz v4, :cond_18

    .line 930
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 932
    .local v0, "identity":J
    :try_start_b
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const-string/jumbo v5, "lock_screen_owner_info"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_32
    .catchall {:try_start_b .. :try_end_14} :catchall_52

    move-result-object v2

    .line 938
    .local v2, "ownerInfo":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    .end local v0    # "identity":J
    .end local v2    # "ownerInfo":Ljava/lang/String;
    :cond_18
    :goto_18
    sget-object v4, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getOwnerInfo [ownerInfo] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    return-object v2

    .line 934
    .restart local v0    # "identity":J
    .local v2, "ownerInfo":Ljava/lang/String;
    :catch_32
    move-exception v3

    .line 935
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_33
    const-string/jumbo v4, "MDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t read string lock_screen_owner_info"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_52

    .line 936
    const/4 v2, 0x0

    .line 938
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    .line 937
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_52
    move-exception v4

    .line 938
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 937
    throw v4
.end method

.method protected getWarningMsg(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 808
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 809
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarningMsg:Z

    :cond_e
    return v4

    .line 812
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 813
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 814
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarningMsg:Z

    if-eqz v5, :cond_19

    .line 815
    iget-boolean v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarningMsg:Z

    return v4

    .line 818
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2c
    return v4
.end method

.method protected getWarningMsgStr(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 822
    const/4 v0, 0x0

    .line 823
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_12

    .line 824
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 825
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->warningMsg:Ljava/lang/String;

    :goto_d
    return-object v3

    :cond_e
    const-string/jumbo v3, ""

    goto :goto_d

    .line 828
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_12
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v2

    .line 829
    .local v2, "listSize":I
    if-nez v2, :cond_26

    .line 830
    sget-object v3, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "admin list size is zero  "

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string/jumbo v3, ""

    return-object v3

    .line 834
    :cond_26
    add-int/lit8 v1, v2, -0x1

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v1, "i":I
    :goto_28
    if-ltz v1, :cond_3a

    .line 835
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 836
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarningMsg:Z

    if-eqz v3, :cond_37

    .line 837
    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->warningMsg:Ljava/lang/String;

    return-object v3

    .line 834
    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 840
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_3a
    const-string/jumbo v3, ""

    return-object v3
.end method

.method protected gotoOSUpdateActivity(I)I
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    const/high16 v5, 0x10000

    .line 235
    const-string/jumbo v0, "com.lge.SOFTWARE_UPDATE_SETTINGS"

    .line 237
    .local v0, "actionName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 238
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.lge.SOFTWARE_UPDATE_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 241
    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_34

    .line 242
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 245
    const-string/jumbo v0, "android.settings.SYSTEM_UPDATE_SETTINGS"

    .line 246
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_34

    .line 247
    const/4 v4, -0x1

    return v4

    .line 250
    :cond_34
    sget-object v4, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gotoOSUpdateActivity : actionName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v0, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->osUpdateDialog(Landroid/content/Context;Ljava/lang/String;I)V

    .line 252
    const/4 v4, 0x1

    return v4
.end method

.method protected resetDeveloperOptions(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 986
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.mdm.intent.action.ACTION_RESET_DEVELOPER_OPTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 987
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->getInstance()Lcom/lge/mdm/util/handler/LGMDMPostRunnable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->sendBroadcast(Landroid/content/Intent;)V

    .line 985
    return-void
.end method

.method protected resetStatusBarExpansion(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 682
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/lge/mdm/controller/LGMDMGeneralController;->getAllowStatusBarExpansion(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 683
    .local v0, "allow":Z
    if-eqz v0, :cond_1d

    .line 684
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 686
    .local v2, "identity":J
    :try_start_b
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mContext:Landroid/content/Context;

    .line 687
    const-string/jumbo v5, "statusbar"

    .line 686
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 688
    .local v1, "mStatusBarManager":Landroid/app/StatusBarManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_26

    .line 690
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 693
    .end local v1    # "mStatusBarManager":Landroid/app/StatusBarManager;
    .end local v2    # "identity":J
    :cond_1d
    sget-object v4, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "resetStatusBarExpansion"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void

    .line 689
    .restart local v2    # "identity":J
    :catchall_26
    move-exception v4

    .line 690
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 689
    throw v4
.end method

.method protected sendProxyInfoBootTime(ZI)V
    .registers 8
    .param p1, "allow"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "ip":Ljava/lang/String;
    const/4 v1, -0x1

    .line 342
    .local v1, "port":I
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getBrowserProxyIPAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "ip":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getBrowserProxyPortNumber(I)I

    move-result v1

    .line 345
    invoke-direct {p0, p1, v0, v1}, Lcom/lge/mdm/controller/LGMDMGeneralController;->sendProxyInfo(ZLjava/lang/String;I)V

    .line 346
    sget-object v2, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendProxyInfoBootTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method protected setAllowBackgroundProcessLimit(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 503
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 505
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundProcessLimit:Z

    .line 507
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowBackgroundProcessLimit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method protected setAllowBrowserProxySetup(Landroid/content/ComponentName;ZLjava/lang/String;II)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 267
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    invoke-direct {p0, p3}, Lcom/lge/mdm/controller/LGMDMGeneralController;->isIPAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 268
    const-string/jumbo p3, "127.0.0.1"

    .line 271
    :cond_10
    if-gez p4, :cond_14

    .line 272
    const/16 p4, 0x50

    .line 274
    :cond_14
    if-eqz v0, :cond_1c

    .line 275
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowserProxySetup:Z

    .line 276
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mBrowserProxyIPAddress:Ljava/lang/String;

    .line 277
    iput p4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mBrowserProxyPortNumber:I

    .line 279
    :cond_1c
    if-nez p2, :cond_56

    .line 280
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p3, p4, p5}, Lcom/lge/mdm/admin/LGMDMadministrator;->setBrowserProxyInformation(Ljava/lang/String;II)V

    .line 286
    :cond_23
    :goto_23
    invoke-direct {p0, p2, p3, p4}, Lcom/lge/mdm/controller/LGMDMGeneralController;->sendProxyInfo(ZLjava/lang/String;I)V

    .line 287
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowBrowserProxySetup : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void

    .line 282
    :cond_56
    invoke-virtual {p0, v2, p5}, Lcom/lge/mdm/controller/LGMDMGeneralController;->getAllowBrowserProxySetup(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 283
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p5}, Lcom/lge/mdm/admin/LGMDMadministrator;->resetBrowserProxyInformation(I)V

    goto :goto_23
.end method

.method protected setAllowCallInRoaming(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 475
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 476
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_a

    .line 477
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCallInRoaming:Z

    .line 479
    :cond_a
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAllowCallInRoaming"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method protected setAllowClipboard(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 530
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 531
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowClipboard:Z

    .line 532
    if-nez p2, :cond_f

    .line 533
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMGeneralController;->hideCliptray(Landroid/content/Context;I)V

    .line 535
    :cond_f
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAllowClipboard control"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method protected setAllowDeveloperMode(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 977
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 978
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDevMode:Z

    if-ne p2, v1, :cond_13

    .line 979
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAllowDeveloperMode : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    return-void

    .line 982
    :cond_13
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDevMode:Z

    .line 976
    return-void
.end method

.method protected setAllowOSUpdate(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 353
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 354
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowOSUpdate:Z

    if-ne v1, p2, :cond_13

    .line 355
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "allowOSUpdate : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void

    .line 358
    :cond_13
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowOSUpdate:Z

    .line 359
    invoke-virtual {p0, p3}, Lcom/lge/mdm/controller/LGMDMGeneralController;->updateAllowOSUpdate(I)V

    .line 352
    return-void
.end method

.method protected setAllowOwnerInfo(Landroid/content/ComponentName;III)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I
    .param p3, "ownerInfoEnabled"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 880
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 881
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->ownerInfo:I

    .line 882
    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateOwnerInfo:I

    .line 883
    .local v1, "preStateOwnerInfo":I
    iget v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->ownerInfo:I

    if-lez v2, :cond_1d

    .line 884
    iget v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateOwnerInfo:I

    if-gez v2, :cond_14

    .line 885
    iput p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateOwnerInfo:I

    .line 892
    :cond_14
    :goto_14
    sget-object v2, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setAllowOwnerInfo"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    return v1

    .line 888
    :cond_1d
    iget v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateOwnerInfo:I

    if-ltz v2, :cond_14

    .line 889
    const/4 v2, -0x1

    iput v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateOwnerInfo:I

    goto :goto_14
.end method

.method protected setAllowPasswordTypingVisible(Landroid/content/ComponentName;ZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 594
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 596
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordTypingVisible:Z

    if-ne v1, p2, :cond_13

    .line 597
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setAllowPasswordTypingVisible : same policy is called"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void

    .line 601
    :cond_13
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordTypingVisible:Z

    .line 603
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordTypingVisible:Z

    if-nez v1, :cond_1f

    .line 604
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMGeneralController;->isPasswordTypvingVisibleAllowed()I

    move-result v1

    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStatePasswordTypingVisible:I

    .line 607
    :cond_1f
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMGeneralController;->getAllowPasswordTypingVisible(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_40

    .line 608
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 610
    .local v2, "identity":J
    :try_start_2a
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 611
    const-string/jumbo v4, "show_password"

    const/4 v5, 0x0

    .line 610
    invoke-static {v1, v4, v5, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_3b

    .line 613
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 593
    :goto_3a
    return-void

    .line 612
    :catchall_3b
    move-exception v1

    .line 613
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    throw v1

    .line 616
    .end local v2    # "identity":J
    :cond_40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 618
    .restart local v2    # "identity":J
    :try_start_44
    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStatePasswordTypingVisible:I

    if-eqz v1, :cond_61

    .line 619
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 620
    const-string/jumbo v4, "show_password"

    .line 621
    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStatePasswordTypingVisible:I

    .line 619
    invoke-static {v1, v4, v5, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 622
    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStatePasswordTypingVisible:I

    .line 623
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setAllowPasswordTypingVisible restore pre status:true"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_44 .. :try_end_61} :catchall_65

    .line 626
    :cond_61
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3a

    .line 625
    :catchall_65
    move-exception v1

    .line 626
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 625
    throw v1
.end method

.method protected setAllowPasswordVisible(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 762
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 763
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordVisible:Z

    if-ne v1, p2, :cond_13

    .line 764
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAllowPasswordVisible : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    return-void

    .line 767
    :cond_13
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordVisible:Z

    .line 768
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAllowPasswordVisible"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method protected setAllowRemoveGoogleAccount(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 585
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 586
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_a

    .line 587
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowRemoveGoogleAccount:Z

    .line 589
    :cond_a
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAllowRemoveGoogleAccount"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method protected setAllowStatusBarExpansion(Landroid/content/ComponentName;ZI)V
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/high16 v7, 0x10000000

    .line 700
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 701
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_c

    .line 702
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowStatusBarExpansion:Z

    .line 705
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 707
    .local v2, "identity":J
    :try_start_10
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mContext:Landroid/content/Context;

    .line 708
    const-string/jumbo v6, "statusbar"

    .line 707
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 709
    .local v4, "mStatusBarManager":Landroid/app/StatusBarManager;
    if-nez p2, :cond_20

    .line 710
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_3e

    .line 713
    :cond_20
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.lge.mdm.intent.action.statusbar.managed"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 714
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 715
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 716
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 719
    sget-object v5, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setAllowStatusBarExpansion"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return-void

    .line 712
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "mStatusBarManager":Landroid/app/StatusBarManager;
    :catchall_3e
    move-exception v5

    .line 713
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.lge.mdm.intent.action.statusbar.managed"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 714
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 715
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 716
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 712
    throw v5
.end method

.method protected setAllowWipeData(Landroid/content/ComponentName;ZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 75
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 76
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_a

    .line 77
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWipeData:Z

    .line 80
    :cond_a
    if-nez p2, :cond_10

    .line 81
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMGeneralController;->createWipeCheckFile()V

    .line 74
    :goto_f
    return-void

    .line 84
    :cond_10
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 85
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 86
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWipeData:Z

    if-nez v4, :cond_1b

    .line 88
    return-void

    .line 92
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2c
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMGeneralController;->deleteWipeCheckFile()V

    goto :goto_f
.end method

.method protected setEnforceEmergencyCallOnly(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 445
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 446
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_a

    .line 447
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowOutgoingCall:Z

    .line 449
    :cond_a
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setEnforceEmergencyCallOnly"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method protected setNotifyRemoveGoogleAccountDisabled(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 743
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 745
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyRemoveGoogleAccountDisabled:Z

    if-ne v1, p2, :cond_13

    .line 746
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setNotifyRemoveGoogleAccountDisabled : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    return-void

    .line 749
    :cond_13
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyRemoveGoogleAccountDisabled:Z

    .line 750
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setNotifyRemoveGoogleAccountDisabled"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method protected setOwnerInfo(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 947
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-eqz v3, :cond_13

    .line 948
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 950
    .local v0, "identity":J
    :try_start_8
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const-string/jumbo v4, "lock_screen_owner_info"

    invoke-interface {v3, v4, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_2d
    .catchall {:try_start_8 .. :try_end_10} :catchall_4c

    .line 954
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    .end local v0    # "identity":J
    :cond_13
    :goto_13
    sget-object v3, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOwnerInfo [ownerInfo]  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    return-void

    .line 951
    .restart local v0    # "identity":J
    :catch_2d
    move-exception v2

    .line 952
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2e
    const-string/jumbo v3, "MDM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t write string lock_screen_owner_info"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_2e .. :try_end_48} :catchall_4c

    .line 954
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13

    .line 953
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_4c
    move-exception v3

    .line 954
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 953
    throw v3
.end method

.method protected setWarningMsg(Landroid/content/ComponentName;ZLjava/lang/String;I)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 792
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 793
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWarningMsg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarningMsg:Z

    .line 797
    if-eqz p3, :cond_36

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    if-nez p2, :cond_44

    .line 798
    :cond_36
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "str == null or allow == false"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->warningMsg:Ljava/lang/String;

    .line 791
    :goto_43
    return-void

    .line 801
    :cond_44
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->warningMsg:Ljava/lang/String;

    goto :goto_43
.end method

.method protected settingOwnerInfo(III)V
    .registers 12
    .param p1, "userHandle"    # I
    .param p2, "policy"    # I
    .param p3, "preStateOwnerInfo"    # I

    .prologue
    .line 897
    if-gtz p2, :cond_19

    .line 898
    if-gez p3, :cond_5

    .line 899
    return-void

    .line 901
    :cond_5
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-eqz v3, :cond_19

    .line 902
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 904
    .local v0, "identity":J
    :try_start_d
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const-string/jumbo v4, "lock_screen_owner_info_enabled"

    int-to-long v6, p3

    invoke-interface {v3, v4, v6, v7, p1}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_1a
    .catchall {:try_start_d .. :try_end_16} :catchall_39

    .line 909
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 896
    .end local v0    # "identity":J
    :cond_19
    :goto_19
    return-void

    .line 906
    .restart local v0    # "identity":J
    :catch_1a
    move-exception v2

    .line 907
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_1b
    const-string/jumbo v3, "MDM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t set lock_screen_owner_info_enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_39

    .line 909
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_19

    .line 908
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_39
    move-exception v3

    .line 909
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 908
    throw v3
.end method

.method protected updateAllowBrowserProxySetup(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 308
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 309
    .local v2, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admins$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 310
    .local v0, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowserProxySetup:Z

    if-nez v3, :cond_a

    .line 311
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGeneralController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mBrowserProxyIPAddress:Ljava/lang/String;

    .line 312
    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mBrowserProxyPortNumber:I

    .line 311
    invoke-virtual {v3, v4, v5, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->setBrowserProxyInformation(Ljava/lang/String;II)V

    goto :goto_a

    .line 315
    .end local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_24
    sget-object v3, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeBrowserProxyInformation - Updated proxy information"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method protected updateAllowOSUpdate(I)V
    .registers 14
    .param p1, "userHandle"    # I

    .prologue
    .line 379
    const-string/jumbo v4, "/data/system/lgmdm_osupgrade_flag.txt"

    .line 380
    .local v4, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    .line 381
    .local v6, "out":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 385
    .local v0, "Streamout":Ljava/io/PrintStream;
    :try_start_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_7c
    .catchall {:try_start_5 .. :try_end_a} :catchall_e2

    .line 387
    .local v5, "flagfile":Ljava/io/File;
    :try_start_a
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 388
    invoke-static {v5}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 389
    sget-object v8, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateAllowOSUpdate SELinux restorecon failed for= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2c} :catch_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_2c} :catch_7c
    .catchall {:try_start_a .. :try_end_2c} :catchall_e2

    .line 396
    :cond_2c
    :goto_2c
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_2e
    invoke-virtual {v5, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 397
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_36} :catch_7c
    .catchall {:try_start_2e .. :try_end_36} :catchall_e2

    .line 398
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .local v7, "out":Ljava/io/FileOutputStream;
    :try_start_36
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3b} :catch_114
    .catchall {:try_start_36 .. :try_end_3b} :catchall_10d

    .line 399
    .local v1, "Streamout":Ljava/io/PrintStream;
    const/4 v8, 0x0

    :try_start_3c
    invoke-virtual {p0, v8, p1}, Lcom/lge/mdm/controller/LGMDMGeneralController;->getAllowOSUpdate(Landroid/content/ComponentName;I)Z

    .end local v0    # "Streamout":Ljava/io/PrintStream;
    move-result v8

    if-eqz v8, :cond_af

    .line 400
    const-string/jumbo v8, "1"

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 401
    sget-object v8, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "setAllowOSUpdate : Streamout.print(1)"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_50} :catch_be
    .catchall {:try_start_3c .. :try_end_50} :catchall_110

    .line 410
    :goto_50
    if-eqz v1, :cond_55

    .line 411
    :try_start_52
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 413
    :cond_55
    if-eqz v7, :cond_5a

    .line 414
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5a} :catch_c2

    :cond_5a
    :goto_5a
    move-object v0, v1

    .end local v1    # "Streamout":Ljava/io/PrintStream;
    .local v0, "Streamout":Ljava/io/PrintStream;
    move-object v6, v7

    .line 378
    .end local v0    # "Streamout":Ljava/io/PrintStream;
    .end local v5    # "flagfile":Ljava/io/File;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :cond_5c
    :goto_5c
    return-void

    .line 392
    .local v0, "Streamout":Ljava/io/PrintStream;
    .restart local v5    # "flagfile":Ljava/io/File;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_5d
    move-exception v3

    .line 394
    .local v3, "e":Ljava/io/IOException;
    :try_start_5e
    sget-object v8, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "createNewFile()  IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_7b} :catch_7c
    .catchall {:try_start_5e .. :try_end_7b} :catchall_e2

    goto :goto_2c

    .line 406
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "flagfile":Ljava/io/File;
    :catch_7c
    move-exception v2

    .line 407
    .end local v0    # "Streamout":Ljava/io/PrintStream;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_7d
    :try_start_7d
    sget-object v8, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Failed talking with LGMDM controller"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_7d .. :try_end_85} :catchall_e2

    .line 410
    if-eqz v0, :cond_8a

    .line 411
    :try_start_87
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 413
    :cond_8a
    if-eqz v6, :cond_5c

    .line 414
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8f} :catch_90

    goto :goto_5c

    .line 416
    :catch_90
    move-exception v3

    .line 417
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "close()  IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 403
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "Streamout":Ljava/io/PrintStream;
    .restart local v5    # "flagfile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :cond_af
    :try_start_af
    const-string/jumbo v8, "0"

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 404
    sget-object v8, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "setAllowOSUpdate : Streamout.print(0)"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/io/FileNotFoundException; {:try_start_af .. :try_end_bd} :catch_be
    .catchall {:try_start_af .. :try_end_bd} :catchall_110

    goto :goto_50

    .line 406
    :catch_be
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "Streamout":Ljava/io/PrintStream;
    .local v0, "Streamout":Ljava/io/PrintStream;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    goto :goto_7d

    .line 416
    .end local v0    # "Streamout":Ljava/io/PrintStream;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "Streamout":Ljava/io/PrintStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_c2
    move-exception v3

    .line 417
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "close()  IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    .line 408
    .end local v1    # "Streamout":Ljava/io/PrintStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "flagfile":Ljava/io/File;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :catchall_e2
    move-exception v8

    .line 410
    :goto_e3
    if-eqz v0, :cond_e8

    .line 411
    :try_start_e5
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 413
    :cond_e8
    if-eqz v6, :cond_ed

    .line 414
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ed} :catch_ee

    .line 408
    :cond_ed
    :goto_ed
    throw v8

    .line 416
    :catch_ee
    move-exception v3

    .line 417
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "close()  IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ed

    .line 408
    .end local v3    # "e":Ljava/io/IOException;
    .local v0, "Streamout":Ljava/io/PrintStream;
    .restart local v5    # "flagfile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catchall_10d
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_e3

    .end local v0    # "Streamout":Ljava/io/PrintStream;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "Streamout":Ljava/io/PrintStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catchall_110
    move-exception v8

    move-object v0, v1

    .end local v1    # "Streamout":Ljava/io/PrintStream;
    .local v0, "Streamout":Ljava/io/PrintStream;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_e3

    .line 406
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .local v0, "Streamout":Ljava/io/PrintStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_114
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_7d
.end method

.method protected updateUserSettingsIfNeed(ZZ)V
    .registers 5
    .param p1, "oldPolicy"    # Z
    .param p2, "newPolicy"    # Z

    .prologue
    .line 754
    if-eq p1, p2, :cond_11

    .line 755
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.mdm.intent.action.ACTION_MULTI_USER_POLICY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 756
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 753
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_11
    return-void
.end method

.method protected wipeData(II)V
    .registers 10
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v6, 0x1

    .line 157
    const-wide/16 v2, 0x0

    .line 158
    .local v2, "identity":J
    if-nez p2, :cond_c

    .line 159
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMMasterController;->getInstance()Lcom/lge/mdm/controller/LGMDMMasterController;

    move-result-object v1

    invoke-virtual {v1, v6, p2}, Lcom/lge/mdm/controller/LGMDMMasterController;->setAllowWipeDataMaster(ZI)V

    .line 161
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 163
    if-nez p2, :cond_60

    .line 164
    :try_start_12
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getInstance()Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getHasExternalMemory()Z

    move-result v0

    .line 166
    .local v0, "hasExternalMemory":Z
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WIPE_EXTERNAL_STORAGE : 1, hasExternalMemory : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-lt p1, v6, :cond_4b

    if-eqz v0, :cond_4b

    .line 170
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "LGMDM Wipe 1 "

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getInstance()Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, p2, v4}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->eraseStorage(IZ)V
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_5b

    .line 180
    .end local v0    # "hasExternalMemory":Z
    :goto_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    return-void

    .line 173
    .restart local v0    # "hasExternalMemory":Z
    :cond_4b
    :try_start_4b
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGeneralController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "LGMDM Wipe 0 "

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getInstance()Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->factoryReset(I)V
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_5b

    goto :goto_47

    .line 179
    .end local v0    # "hasExternalMemory":Z
    :catchall_5b
    move-exception v1

    .line 180
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    throw v1

    .line 177
    :cond_60
    :try_start_60
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->removeUser(I)V
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_5b

    goto :goto_47
.end method
