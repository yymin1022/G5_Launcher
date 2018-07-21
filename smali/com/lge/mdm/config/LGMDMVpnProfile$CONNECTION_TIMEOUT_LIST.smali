.class public final enum Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;
.super Ljava/lang/Enum;
.source "LGMDMVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONNECTION_TIMEOUT_LIST"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

.field public static final enum TIMEOOT_10_SEC:Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

.field public static final enum TIMEOOT_30_SEC:Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

.field public static final enum TIMEOOT_60_SEC:Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 652
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    const-string/jumbo v1, "TIMEOOT_10_SEC"

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;-><init>(Ljava/lang/String;I)V

    .line 655
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;->TIMEOOT_10_SEC:Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    .line 656
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    const-string/jumbo v1, "TIMEOOT_30_SEC"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;-><init>(Ljava/lang/String;I)V

    .line 659
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;->TIMEOOT_30_SEC:Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    .line 660
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    const-string/jumbo v1, "TIMEOOT_60_SEC"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;-><init>(Ljava/lang/String;I)V

    .line 663
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;->TIMEOOT_60_SEC:Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    .line 651
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;->TIMEOOT_10_SEC:Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;->TIMEOOT_30_SEC:Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;->TIMEOOT_60_SEC:Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 651
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 651
    const-class v0, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;
    .registers 1

    .prologue
    .line 651
    sget-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

    return-object v0
.end method
