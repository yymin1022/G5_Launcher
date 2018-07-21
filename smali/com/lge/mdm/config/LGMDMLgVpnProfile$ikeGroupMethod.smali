.class public final Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeGroupMethod;
.super Ljava/lang/Object;
.source "LGMDMLgVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMLgVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ikeGroupMethod"
.end annotation


# static fields
.field public static final BASE:I = 0x2bc

.field public static final GROUP_14_MODP_2048:I = 0x2bf

.field public static final GROUP_15_MODP_3072:I = 0x2c0

.field public static final GROUP_16_MODP_4096:I = 0x2c1

.field public static final GROUP_17_MODP_6144:I = 0x2c2

.field public static final GROUP_18_MODP_8192:I = 0x2c3

.field public static final GROUP_19_ECP_256:I = 0x2c4

.field public static final GROUP_1_MODP_768:I = 0x2bc

.field public static final GROUP_20_ECP_384:I = 0x2c5

.field public static final GROUP_21_ECP_521:I = 0x2c6

.field public static final GROUP_22_MODP_1024_160:I = 0x2c7

.field public static final GROUP_23_MODP_2048_224:I = 0x2c8

.field public static final GROUP_24_MODP_2048_256:I = 0x2c9

.field public static final GROUP_25_ECP_192:I = 0x2ca

.field public static final GROUP_26_ECP_224:I = 0x2cb

.field public static final GROUP_2_MODP_1024:I = 0x2bd

.field public static final GROUP_5_MODP_1536:I = 0x2be

.field public static final STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 536
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "GROUP_1_MODP_768"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 537
    const-string/jumbo v1, "GROUP_2_MODP_1024"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "GROUP_5_MODP_1536"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "GROUP_14_MODP_2048"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 538
    const-string/jumbo v1, "GROUP_15_MODP_3072"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "GROUP_16_MODP_4096"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 539
    const-string/jumbo v1, "GROUP_17_MODP_6144"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "GROUP_18_MODP_8192"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "GROUP_19_ECP_256"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 540
    const-string/jumbo v1, "GROUP_20_ECP_384"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "GROUP_21_ECP_521"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 541
    const-string/jumbo v1, "GROUP_22_MODP_1024_160"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "GROUP_23_MODP_2048_224"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 542
    const-string/jumbo v1, "GROUP_24_MODP_2048_256"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "GROUP_25_ECP_192"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 543
    const-string/jumbo v1, "GROUP_26_ECP_224"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 536
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeGroupMethod;->STRINGS:[Ljava/lang/String;

    .line 445
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
