.class public Lcom/lge/mdm/config/LGMDMWifiConfiguration$AuthAlgorithm;
.super Ljava/lang/Object;
.source "LGMDMWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthAlgorithm"
.end annotation


# static fields
.field public static final LEAP:I = 0x2

.field public static final OPEN:I = 0x0

.field public static final SHARED:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "auth_alg"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 674
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "OPEN"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHARED"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "LEAP"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    .line 646
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
