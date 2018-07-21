.class public final Lcom/lge/mdm/config/LGMDMLgVpnProfile$algorithmSuiteMethod;
.super Ljava/lang/Object;
.source "LGMDMLgVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMLgVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "algorithmSuiteMethod"
.end annotation


# static fields
.field public static final ANY:I = 0x12c

.field public static final BASE:I = 0x12c

.field public static final BASIC:I = 0x12d

.field public static final CUSTOM:I = 0x132

.field public static final FIPS:I = 0x130

.field public static final NIST_ACCEPTED:I = 0x131

.field public static final STRINGS:[Ljava/lang/String;

.field public static final SUITE_B_128:I = 0x12e

.field public static final SUITE_B_256:I = 0x12f


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 237
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ANY"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "BASIC"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SUITE_B_128"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 238
    const-string/jumbo v1, "SUITE_B_256"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "FIPS"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "NIST_ACCEPTED"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "CUSTOM"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 237
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$algorithmSuiteMethod;->STRINGS:[Ljava/lang/String;

    .line 167
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
