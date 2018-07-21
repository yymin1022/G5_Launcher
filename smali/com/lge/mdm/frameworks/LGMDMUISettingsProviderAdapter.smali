.class public Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;
.super Ljava/lang/Object;
.source "LGMDMUISettingsProviderAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;


# instance fields
.field private final VZW_LBS_PROVIDER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string/jumbo v0, "LGMDMUISettingsProviderAdapter"

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "vzw_lbs"

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;->VZW_LBS_PROVIDER:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;

    .line 33
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;

    return-object v0
.end method


# virtual methods
.method public checkGpsPolicy(Ljava/lang/String;ZI)Z
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 43
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkGpsPolicy : provider:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 44
    const-string/jumbo v3, ", userHandle:"

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 48
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const-string/jumbo v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 49
    invoke-virtual {v0, v5, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGPSLocation(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 50
    if-eqz p2, :cond_88

    .line 51
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_gps_point:I

    invoke-virtual {v0, v1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 53
    return v4

    .line 55
    :cond_4c
    invoke-virtual {v0, v5, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 56
    if-nez p2, :cond_88

    .line 57
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_cannot_gps_NORMAL:I

    invoke-virtual {v0, v1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 59
    return v4

    .line 62
    :cond_5a
    const-string/jumbo v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 63
    invoke-virtual {v0, v5, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWirelessLocation(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_88

    .line 64
    if-eqz p2, :cond_88

    .line 66
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_loaction_point:I

    .line 65
    invoke-virtual {v0, v1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 67
    return v4

    .line 70
    :cond_71
    const-string/jumbo v1, "vzw_lbs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 71
    invoke-virtual {v0, v5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowVerizonLocation(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 72
    if-eqz p2, :cond_88

    .line 73
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_loaction_point:I

    invoke-virtual {v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(I)V

    .line 74
    return v4

    .line 78
    :cond_88
    const/4 v1, 0x0

    return v1
.end method
