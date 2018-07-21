.class public final enum Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;
.super Ljava/lang/Enum;
.source "LGMDMVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IKE_ENCRYPTION_TYPES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public static final enum IKE_ENCRYPTION_TYPE_3DES_CBC:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public static final enum IKE_ENCRYPTION_TYPE_AES_CBC_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public static final enum IKE_ENCRYPTION_TYPE_AES_CBC_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public static final enum IKE_ENCRYPTION_TYPE_AES_CBC_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public static final enum IKE_ENCRYPTION_TYPE_AES_CTR_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public static final enum IKE_ENCRYPTION_TYPE_AES_CTR_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public static final enum IKE_ENCRYPTION_TYPE_AES_CTR_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public static final enum IKE_ENCRYPTION_TYPE_AES_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public static final enum IKE_ENCRYPTION_TYPE_AES_GCM_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public static final enum IKE_ENCRYPTION_TYPE_AES_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public static final enum IKE_ENCRYPTION_TYPE_AUTO:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public static final enum IKE_ENCRYPTION_TYPE_SUITE_B_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public static final enum IKE_ENCRYPTION_TYPE_SUITE_B_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 467
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IKE_ENCRYPTION_TYPE_AUTO"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 470
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AUTO:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    .line 471
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IKE_ENCRYPTION_TYPE_3DES_CBC"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 474
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_3DES_CBC:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    .line 475
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IKE_ENCRYPTION_TYPE_AES_CBC_128"

    invoke-direct {v0, v1, v5}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 478
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_CBC_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    .line 479
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IKE_ENCRYPTION_TYPE_AES_CBC_192"

    invoke-direct {v0, v1, v6}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 482
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_CBC_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    .line 483
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IKE_ENCRYPTION_TYPE_AES_CBC_256"

    invoke-direct {v0, v1, v7}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 486
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_CBC_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    .line 487
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IKE_ENCRYPTION_TYPE_AES_CTR_128"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 490
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_CTR_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    .line 491
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IKE_ENCRYPTION_TYPE_AES_CTR_192"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 494
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_CTR_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    .line 495
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IKE_ENCRYPTION_TYPE_AES_CTR_256"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 498
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_CTR_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    .line 499
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IKE_ENCRYPTION_TYPE_AES_GCM_128"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 502
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    .line 503
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IKE_ENCRYPTION_TYPE_AES_GCM_192"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 506
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_GCM_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    .line 507
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IKE_ENCRYPTION_TYPE_AES_GCM_256"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 510
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    .line 511
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IKE_ENCRYPTION_TYPE_SUITE_B_GCM_128"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 514
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_SUITE_B_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    .line 515
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IKE_ENCRYPTION_TYPE_SUITE_B_GCM_256"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 518
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_SUITE_B_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    .line 466
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AUTO:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_3DES_CBC:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_CBC_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_CBC_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_CBC_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_CTR_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_CTR_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_CTR_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_GCM_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_AES_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_SUITE_B_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->IKE_ENCRYPTION_TYPE_SUITE_B_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 466
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 466
    const-class v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;
    .registers 1

    .prologue
    .line 466
    sget-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

    return-object v0
.end method
