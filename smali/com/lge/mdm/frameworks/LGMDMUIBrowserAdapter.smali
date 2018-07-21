.class public Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;
.super Ljava/lang/Object;
.source "LGMDMUIBrowserAdapter.java"


# static fields
.field private static final PASS_URL:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    const-string/jumbo v0, "LGMDMUIBrowserAdapter"

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 27
    const-string/jumbo v1, "tel:"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 28
    const-string/jumbo v1, "mailto:"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 29
    const-string/jumbo v1, "geo:0,0?q="

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 26
    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;->PASS_URL:[Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;

    .line 38
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;

    return-object v0
.end method


# virtual methods
.method public checkWebView(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 45
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkWebView url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", userHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 47
    :cond_2e
    return v5

    .line 50
    :cond_2f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;->PASS_URL:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5c

    .line 51
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;->PASS_URL:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 52
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PASS_URL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return v5

    .line 50
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 57
    :cond_5c
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 59
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v1, v6, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_75

    .line 60
    sget v2, Lcom/lge/internal/R$string;->sp_lgmdm_blockbrowser_NORMAL:I

    invoke-virtual {v1, v2, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 62
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Blocking Browser by LGMDM"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v2, 0x1

    return v2

    .line 65
    :cond_75
    return v5
.end method
