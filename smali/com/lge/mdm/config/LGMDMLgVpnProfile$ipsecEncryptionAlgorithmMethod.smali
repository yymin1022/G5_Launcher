.class public final Lcom/lge/mdm/config/LGMDMLgVpnProfile$ipsecEncryptionAlgorithmMethod;
.super Ljava/lang/Object;
.source "LGMDMLgVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMLgVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ipsecEncryptionAlgorithmMethod"
.end annotation


# static fields
.field public static final AES_CBC_128:I = 0x320

.field public static final AES_CBC_192:I = 0x321

.field public static final AES_CBC_256:I = 0x322

.field public static final AES_CTR_128:I = 0x327

.field public static final AES_CTR_192:I = 0x328

.field public static final AES_CTR_256:I = 0x329

.field public static final AES_GCM_128:I = 0x324

.field public static final AES_GCM_192:I = 0x325

.field public static final AES_GCM_256:I = 0x326

.field public static final BASE:I = 0x320

.field public static final STRINGS:[Ljava/lang/String;

.field public static final TRIPLE_DES:I = 0x323


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 629
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "AES_CBC_128"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "AES_CBC_192"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 630
    const-string/jumbo v1, "AES_CBC_256"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "TRIPLE_DES"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "AES_GCM_128"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "AES_GCM_192"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 631
    const-string/jumbo v1, "AES_GCM_256"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "AES_CTR_128"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "AES_CTR_192"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "AES_CTR_256"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 629
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ipsecEncryptionAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    .line 555
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
