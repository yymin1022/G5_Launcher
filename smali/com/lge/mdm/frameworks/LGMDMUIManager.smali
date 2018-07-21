.class public Lcom/lge/mdm/frameworks/LGMDMUIManager;
.super Ljava/lang/Object;
.source "LGMDMUIManager.java"


# static fields
.field public static final LGMDM_ADAPTER_AIRPLANE_MODE:Ljava/lang/String; = "LGMDMAirplaneModeUIAdpater"

.field public static final LGMDM_ADAPTER_ANDROIDBEAM:Ljava/lang/String; = "LGMDMAndroidBeamUIAdapter"

.field public static final LGMDM_ADAPTER_APPLICATION:Ljava/lang/String; = "LGMDMApplicationUIAdapter"

.field public static final LGMDM_ADAPTER_AUTORESTORE:Ljava/lang/String; = "LGMDMAutoRestoreUIAdapter"

.field public static final LGMDM_ADAPTER_BLUETOOTH:Ljava/lang/String; = "LGMDMBluetoothAdapter"

.field public static final LGMDM_ADAPTER_BLUETOOTH_TETHERING:Ljava/lang/String; = "LGMDMBluetoothTetheringUIAdapter"

.field public static final LGMDM_ADAPTER_BROWSER:Ljava/lang/String; = "LGMDMBrowserUIAdapter"

.field public static final LGMDM_ADAPTER_DATAROAMING:Ljava/lang/String; = "LGMDMDataRoamingAdapter"

.field public static final LGMDM_ADAPTER_EMAIL:Ljava/lang/String; = "LGMDMEmailUIAdapter"

.field public static final LGMDM_ADAPTER_EXTERNALMEMORY:Ljava/lang/String; = "LGMDMExternalAdapter"

.field public static final LGMDM_ADAPTER_GOOGLEBACKUP:Ljava/lang/String; = "LGMDMGoogleBackupUIAdapter"

.field public static final LGMDM_ADAPTER_GPS:Ljava/lang/String; = "LGMDMGPSUIAdpater"

.field public static final LGMDM_ADAPTER_HOTSPOT:Ljava/lang/String; = "LGMDMHotspotUIAdapter"

.field public static final LGMDM_ADAPTER_LOCATION_SERVICE:Ljava/lang/String; = "LGMDMLocationServiceUIAdapter"

.field public static final LGMDM_ADAPTER_LOVKSCREEN:Ljava/lang/String; = "LGMDMUILockScreenProviderAdapter"

.field public static final LGMDM_ADAPTER_MESSAGE:Ljava/lang/String; = "LGMDMMessageUIAdapter"

.field public static final LGMDM_ADAPTER_MIRACAST:Ljava/lang/String; = "LGMDMMiracastUIAdapter"

.field public static final LGMDM_ADAPTER_MOBILENETWORK:Ljava/lang/String; = "LGMDMMobileNetworkAdapter"

.field public static final LGMDM_ADAPTER_NFC:Ljava/lang/String; = "LGMDMNfcAdapter"

.field public static final LGMDM_ADAPTER_NFC_CARDMODE:Ljava/lang/String; = "LGMDMNfcCardModeAdapter"

.field public static final LGMDM_ADAPTER_PASSWORD:Ljava/lang/String; = "LGMDMPasswordUIAdapter"

.field public static final LGMDM_ADAPTER_POWER_OFF:Ljava/lang/String; = "LGMDMPowerOffUIAdpater"

.field public static final LGMDM_ADAPTER_RESTRICT_BACKGROUNDDATA:Ljava/lang/String; = "LGMDMRestrictBackgroundDataUIAdapter"

.field public static final LGMDM_ADAPTER_SCREENCAPTURE:Ljava/lang/String; = "LGMDMScreenCaptureUIAdapter"

.field public static final LGMDM_ADAPTER_STATUSBAR:Ljava/lang/String; = "LGMDMStatusBarAdapter"

.field public static final LGMDM_ADAPTER_TETHERING:Ljava/lang/String; = "LGMDMTetheringUIAdapter"

.field public static final LGMDM_ADAPTER_UI_HANDLER:Ljava/lang/String; = "LGMDMUIHandlerAdapter"

.field public static final LGMDM_ADAPTER_USB:Ljava/lang/String; = "LGMDMUsbUIAdapter"

.field public static final LGMDM_ADAPTER_WIFI:Ljava/lang/String; = "LGMDMWifiUIAdapter"

.field public static final LGMDM_ADAPTER_WIFIDIRECT:Ljava/lang/String; = "LGMDMWifiDirectUIAdapter"

.field public static final LGMDM_ADAPTER_WIPER:Ljava/lang/String; = "LGMDMWiperAdapter"

.field public static final LGMDM_ADAPTER_WIRELESS_STORAGE:Ljava/lang/String; = "LGMDMWirelessStorageUIAdapter"

.field public static final LGMDM_UI_MANAGER_SERVICE:Ljava/lang/String; = "LGMDMUIManager"

.field private static mUniqueLGMDMUMngr:Lcom/lge/mdm/frameworks/LGMDMUIManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lge/mdm/frameworks/LGMDMUIManager;
    .registers 2

    .prologue
    const-class v1, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v1

    .line 57
    :try_start_3
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;->mUniqueLGMDMUMngr:Lcom/lge/mdm/frameworks/LGMDMUIManager;

    if-nez v0, :cond_e

    .line 58
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUIManager;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;->mUniqueLGMDMUMngr:Lcom/lge/mdm/frameworks/LGMDMUIManager;

    .line 61
    :cond_e
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;->mUniqueLGMDMUMngr:Lcom/lge/mdm/frameworks/LGMDMUIManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 93
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIAdapterBrowser()Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 81
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIAdapterEncryption()Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 97
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIAdapterGlobalActions()Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 117
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIAdapterKey()Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 121
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIAdapterLockScreen()Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 77
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIAdapterMessage()Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 85
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIAdapterMicrophone()Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 113
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIAdapterSettingsProvider()Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 73
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 69
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIAdapterSystemUI()Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 65
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUICameraAdapter()Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 101
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIClipboradAdapter()Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 125
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIEmailAdapter()Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 109
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIHandlerAdapter()Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 89
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIScreencaptureAdapter()Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/frameworks/LGMDMUIManager;

    monitor-enter v0

    .line 105
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method
