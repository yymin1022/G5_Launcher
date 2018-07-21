.class public final enum Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;
.super Ljava/lang/Enum;
.source "LGMDMVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IKE_INTEGRITY_TYPES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

.field public static final enum IKE_INTEGRITY_TYPE_AES_XCBC_MAC_96_IKEV2_ONLY:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

.field public static final enum IKE_INTEGRITY_TYPE_AUTO:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

.field public static final enum IKE_INTEGRITY_TYPE_HMAC_MD5_96:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

.field public static final enum IKE_INTEGRITY_TYPE_HMAC_SHA1_96:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

.field public static final enum IKE_INTEGRITY_TYPE_HMAC_SHA_256_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

.field public static final enum IKE_INTEGRITY_TYPE_HMAC_SHA_384_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

.field public static final enum IKE_INTEGRITY_TYPE_HMAC_SHA_512_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

.field public static final enum IKE_INTEGRITY_TYPE_SUITE_B_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

.field public static final enum IKE_INTEGRITY_TYPE_SUITE_B_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 526
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    const-string/jumbo v1, "IKE_INTEGRITY_TYPE_AUTO"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;-><init>(Ljava/lang/String;I)V

    .line 529
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_AUTO:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    .line 530
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    const-string/jumbo v1, "IKE_INTEGRITY_TYPE_HMAC_MD5_96"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;-><init>(Ljava/lang/String;I)V

    .line 533
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_HMAC_MD5_96:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    .line 534
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    const-string/jumbo v1, "IKE_INTEGRITY_TYPE_HMAC_SHA1_96"

    invoke-direct {v0, v1, v5}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;-><init>(Ljava/lang/String;I)V

    .line 537
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_HMAC_SHA1_96:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    .line 538
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    const-string/jumbo v1, "IKE_INTEGRITY_TYPE_AES_XCBC_MAC_96_IKEV2_ONLY"

    invoke-direct {v0, v1, v6}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;-><init>(Ljava/lang/String;I)V

    .line 541
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_AES_XCBC_MAC_96_IKEV2_ONLY:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    .line 542
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    const-string/jumbo v1, "IKE_INTEGRITY_TYPE_HMAC_SHA_256_128"

    invoke-direct {v0, v1, v7}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;-><init>(Ljava/lang/String;I)V

    .line 545
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_HMAC_SHA_256_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    .line 546
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    const-string/jumbo v1, "IKE_INTEGRITY_TYPE_HMAC_SHA_384_192"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;-><init>(Ljava/lang/String;I)V

    .line 549
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_HMAC_SHA_384_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    .line 550
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    const-string/jumbo v1, "IKE_INTEGRITY_TYPE_HMAC_SHA_512_256"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;-><init>(Ljava/lang/String;I)V

    .line 553
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_HMAC_SHA_512_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    .line 554
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    const-string/jumbo v1, "IKE_INTEGRITY_TYPE_SUITE_B_GCM_128"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;-><init>(Ljava/lang/String;I)V

    .line 557
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_SUITE_B_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    .line 558
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    const-string/jumbo v1, "IKE_INTEGRITY_TYPE_SUITE_B_GCM_256"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;-><init>(Ljava/lang/String;I)V

    .line 561
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_SUITE_B_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    .line 525
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_AUTO:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_HMAC_MD5_96:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_HMAC_SHA1_96:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_AES_XCBC_MAC_96_IKEV2_ONLY:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_HMAC_SHA_256_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_HMAC_SHA_384_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_HMAC_SHA_512_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_SUITE_B_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->IKE_INTEGRITY_TYPE_SUITE_B_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 525
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 525
    const-class v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;
    .registers 1

    .prologue
    .line 525
    sget-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

    return-object v0
.end method
