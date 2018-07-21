.class public final enum Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;
.super Ljava/lang/Enum;
.source "LGMDMVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPSEC_ENCRYPTION_TYPES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public static final enum IPSEC_ENCRYPTION_TYPE_3DES_CBC:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public static final enum IPSEC_ENCRYPTION_TYPE_AES_CBC_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public static final enum IPSEC_ENCRYPTION_TYPE_AES_CBC_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public static final enum IPSEC_ENCRYPTION_TYPE_AES_CBC_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public static final enum IPSEC_ENCRYPTION_TYPE_AES_CTR_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public static final enum IPSEC_ENCRYPTION_TYPE_AES_CTR_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public static final enum IPSEC_ENCRYPTION_TYPE_AES_CTR_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public static final enum IPSEC_ENCRYPTION_TYPE_AES_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public static final enum IPSEC_ENCRYPTION_TYPE_AES_GCM_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public static final enum IPSEC_ENCRYPTION_TYPE_AES_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public static final enum IPSEC_ENCRYPTION_TYPE_AUTO:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public static final enum IPSEC_ENCRYPTION_TYPE_SUITE_B_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public static final enum IPSEC_ENCRYPTION_TYPE_SUITE_B_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 346
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IPSEC_ENCRYPTION_TYPE_AUTO"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 349
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AUTO:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    .line 350
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IPSEC_ENCRYPTION_TYPE_3DES_CBC"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 353
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_3DES_CBC:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    .line 354
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IPSEC_ENCRYPTION_TYPE_AES_CBC_128"

    invoke-direct {v0, v1, v5}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 357
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_CBC_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    .line 358
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IPSEC_ENCRYPTION_TYPE_AES_CBC_192"

    invoke-direct {v0, v1, v6}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 361
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_CBC_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    .line 362
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IPSEC_ENCRYPTION_TYPE_AES_CBC_256"

    invoke-direct {v0, v1, v7}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 365
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_CBC_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    .line 366
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IPSEC_ENCRYPTION_TYPE_AES_CTR_128"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 369
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_CTR_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    .line 370
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IPSEC_ENCRYPTION_TYPE_AES_CTR_192"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 373
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_CTR_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    .line 374
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IPSEC_ENCRYPTION_TYPE_AES_CTR_256"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 377
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_CTR_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    .line 378
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IPSEC_ENCRYPTION_TYPE_AES_GCM_128"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 381
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    .line 382
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IPSEC_ENCRYPTION_TYPE_AES_GCM_192"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 385
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_GCM_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    .line 386
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IPSEC_ENCRYPTION_TYPE_AES_GCM_256"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 389
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    .line 390
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IPSEC_ENCRYPTION_TYPE_SUITE_B_GCM_128"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 393
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_SUITE_B_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    .line 394
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const-string/jumbo v1, "IPSEC_ENCRYPTION_TYPE_SUITE_B_GCM_256"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;-><init>(Ljava/lang/String;I)V

    .line 397
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_SUITE_B_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    .line 345
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AUTO:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_3DES_CBC:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_CBC_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_CBC_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_CBC_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_CTR_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_CTR_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_CTR_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_GCM_192:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_AES_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_SUITE_B_GCM_128:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->IPSEC_ENCRYPTION_TYPE_SUITE_B_GCM_256:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 345
    const-class v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;
    .registers 1

    .prologue
    .line 345
    sget-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

    return-object v0
.end method
