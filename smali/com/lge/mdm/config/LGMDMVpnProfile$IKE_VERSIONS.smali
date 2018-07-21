.class public final enum Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;
.super Ljava/lang/Enum;
.source "LGMDMVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IKE_VERSIONS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

.field public static final enum IKE_VERSION_1:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

.field public static final enum IKE_VERSION_2:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 452
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

    const-string/jumbo v1, "IKE_VERSION_1"

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;-><init>(Ljava/lang/String;I)V

    .line 455
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;->IKE_VERSION_1:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

    .line 456
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

    const-string/jumbo v1, "IKE_VERSION_2"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;-><init>(Ljava/lang/String;I)V

    .line 459
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;->IKE_VERSION_2:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

    .line 451
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;->IKE_VERSION_1:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;->IKE_VERSION_2:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 451
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 451
    const-class v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;
    .registers 1

    .prologue
    .line 451
    sget-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

    return-object v0
.end method
