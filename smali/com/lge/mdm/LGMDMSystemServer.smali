.class public Lcom/lge/mdm/LGMDMSystemServer;
.super Ljava/lang/Object;
.source "LGMDMSystemServer.java"


# static fields
.field private static mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/LGMDMSystemServer;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/lge/mdm/LGMDMSystemServer;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    return-object v0
.end method


# virtual methods
.method public ServiceSystemReady()V
    .registers 1

    .prologue
    .line 28
    return-void
.end method
