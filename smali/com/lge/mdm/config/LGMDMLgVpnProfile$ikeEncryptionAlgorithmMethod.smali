.class public final Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeEncryptionAlgorithmMethod;
.super Ljava/lang/Object;
.source "LGMDMLgVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMLgVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ikeEncryptionAlgorithmMethod"
.end annotation


# static fields
.field public static final AES_CBC_128:I = 0x1f4

.field public static final AES_CBC_192:I = 0x1f5

.field public static final AES_CBC_256:I = 0x1f6

.field public static final AES_CTR_128:I = 0x1fb

.field public static final AES_CTR_192:I = 0x1fc

.field public static final AES_CTR_256:I = 0x1fd

.field public static final AES_GCM_128:I = 0x1f8

.field public static final AES_GCM_192:I = 0x1f9

.field public static final AES_GCM_256:I = 0x1fa

.field public static final BASE:I = 0x1f4

.field public static final STRINGS:[Ljava/lang/String;

.field public static final TRIPLE_DES:I = 0x1f7


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 357
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "AES_CBC_128"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "AES_CBC_192"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 358
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

    .line 359
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

    .line 357
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeEncryptionAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    .line 283
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method