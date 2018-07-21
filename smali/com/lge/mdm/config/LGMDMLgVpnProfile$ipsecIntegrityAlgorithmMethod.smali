.class public final Lcom/lge/mdm/config/LGMDMLgVpnProfile$ipsecIntegrityAlgorithmMethod;
.super Ljava/lang/Object;
.source "LGMDMLgVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMLgVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ipsecIntegrityAlgorithmMethod"
.end annotation


# static fields
.field public static final AES_XCBC:I = 0x389

.field public static final BASE:I = 0x384

.field public static final MD5:I = 0x385

.field public static final SHA_1:I = 0x384

.field public static final SHA_256:I = 0x386

.field public static final SHA_384:I = 0x387

.field public static final SHA_512:I = 0x388

.field public static final STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 692
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SHA_1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "MD5"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA_256"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 693
    const-string/jumbo v1, "SHA_384"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA_512"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "AES_XCBC"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 692
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ipsecIntegrityAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    .line 643
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
