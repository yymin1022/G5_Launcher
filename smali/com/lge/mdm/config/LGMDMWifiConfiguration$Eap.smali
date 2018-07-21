.class public final Lcom/lge/mdm/config/LGMDMWifiConfiguration$Eap;
.super Ljava/lang/Object;
.source "LGMDMWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eap"
.end annotation


# static fields
.field public static final AKA:I = 0x5

.field public static final AKA_PRIME:I = 0x7

.field public static final FAST:I = 0x6

.field public static final NONE:I = -0x1

.field public static final PEAP:I = 0x0

.field public static final PWD:I = 0x3

.field public static final SIM:I = 0x4

.field public static final STRINGS:[Ljava/lang/String;

.field public static final TLS:I = 0x1

.field public static final TTLS:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 201
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 202
    const-string/jumbo v1, "PEAP"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 203
    const-string/jumbo v1, "TLS"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 204
    const-string/jumbo v1, "TTLS"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 205
    const-string/jumbo v1, "PWD"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 206
    const-string/jumbo v1, "SIM"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 207
    const-string/jumbo v1, "AKA"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 208
    const-string/jumbo v1, "FAST"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 209
    const-string/jumbo v1, "AKA\'"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 201
    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$Eap;->STRINGS:[Ljava/lang/String;

    .line 135
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
