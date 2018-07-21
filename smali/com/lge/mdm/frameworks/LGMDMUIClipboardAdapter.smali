.class public Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;
.super Ljava/lang/Object;
.source "LGMDMUIClipboardAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;


# instance fields
.field private mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string/jumbo v0, "LGMDMUIClipboardAdapter"

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;

    .line 38
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;

    return-object v0
.end method

.method private getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-nez v0, :cond_10

    .line 52
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->SERVICE_NAME:Ljava/lang/String;

    .line 51
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 54
    :cond_10
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    return-object v0
.end method


# virtual methods
.method public checkDisabledClipboard(ZI)Z
    .registers 6
    .param p1, "bShowToast"    # Z
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 60
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez v0, :cond_9

    .line 61
    return v2

    .line 64
    :cond_9
    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowClipboard(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 65
    if-eqz p1, :cond_16

    .line 66
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_clipboard_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 69
    :cond_16
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "disabled Clipboard"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x1

    return v1

    .line 72
    :cond_20
    return v2
.end method
