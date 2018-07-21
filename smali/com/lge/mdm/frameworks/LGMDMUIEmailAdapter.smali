.class public Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;
.super Ljava/lang/Object;
.source "LGMDMUIEmailAdapter.java"


# static fields
.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;

    if-nez v0, :cond_b

    .line 13
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;

    .line 15
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;

    return-object v0
.end method


# virtual methods
.method public handleManualSync(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 22
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 23
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->handleManualSync(Landroid/content/ComponentName;)V

    .line 21
    return-void
.end method
