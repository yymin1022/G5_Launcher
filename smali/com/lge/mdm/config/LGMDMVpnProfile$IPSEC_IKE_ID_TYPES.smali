.class public final enum Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;
.super Ljava/lang/Enum;
.source "LGMDMVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPSEC_IKE_ID_TYPES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

.field public static final enum IPSEC_IKE_ID_TYPE_DN:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

.field public static final enum IPSEC_IKE_ID_TYPE_DNS:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

.field public static final enum IPSEC_IKE_ID_TYPE_EMAIL_ADDRESS:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

.field public static final enum IPSEC_IKE_ID_TYPE_IP:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

.field public static final enum IPSEC_IKE_ID_TYPE_KEY_ID:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 319
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    const-string/jumbo v1, "IPSEC_IKE_ID_TYPE_EMAIL_ADDRESS"

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;-><init>(Ljava/lang/String;I)V

    .line 322
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;->IPSEC_IKE_ID_TYPE_EMAIL_ADDRESS:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    .line 323
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    const-string/jumbo v1, "IPSEC_IKE_ID_TYPE_DN"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;-><init>(Ljava/lang/String;I)V

    .line 326
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;->IPSEC_IKE_ID_TYPE_DN:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    .line 327
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    const-string/jumbo v1, "IPSEC_IKE_ID_TYPE_DNS"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;-><init>(Ljava/lang/String;I)V

    .line 330
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;->IPSEC_IKE_ID_TYPE_DNS:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    .line 331
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    const-string/jumbo v1, "IPSEC_IKE_ID_TYPE_KEY_ID"

    invoke-direct {v0, v1, v5}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;-><init>(Ljava/lang/String;I)V

    .line 334
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;->IPSEC_IKE_ID_TYPE_KEY_ID:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    .line 335
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    const-string/jumbo v1, "IPSEC_IKE_ID_TYPE_IP"

    invoke-direct {v0, v1, v6}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;-><init>(Ljava/lang/String;I)V

    .line 338
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;->IPSEC_IKE_ID_TYPE_IP:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    .line 318
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;->IPSEC_IKE_ID_TYPE_EMAIL_ADDRESS:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;->IPSEC_IKE_ID_TYPE_DN:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;->IPSEC_IKE_ID_TYPE_DNS:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;->IPSEC_IKE_ID_TYPE_KEY_ID:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;->IPSEC_IKE_ID_TYPE_IP:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 318
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 318
    const-class v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;
    .registers 1

    .prologue
    .line 318
    sget-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

    return-object v0
.end method
