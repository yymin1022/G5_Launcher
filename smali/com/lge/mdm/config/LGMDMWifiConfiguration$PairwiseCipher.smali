.class public Lcom/lge/mdm/config/LGMDMWifiConfiguration$PairwiseCipher;
.super Ljava/lang/Object;
.source "LGMDMWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PairwiseCipher"
.end annotation


# static fields
.field public static final CCMP:I = 0x2

.field public static final NONE:I = 0x0

.field public static final TKIP:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "pairwise"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 709
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "TKIP"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "CCMP"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    .line 681
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
