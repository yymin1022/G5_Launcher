.class public final Lcom/lge/mdm/config/LGMDMWifiConfiguration$Phase2;
.super Ljava/lang/Object;
.source "LGMDMWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phase2"
.end annotation


# static fields
.field public static final GTC:I = 0x4

.field public static final MSCHAP:I = 0x2

.field public static final MSCHAPV2:I = 0x3

.field public static final NONE:I = 0x0

.field public static final PAP:I = 0x1

.field public static final STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 300
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "PAP"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "MSCHAP"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "MSCHAPV2"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "GTC"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$Phase2;->STRINGS:[Ljava/lang/String;

    .line 273
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
