.class public Lcom/lge/mdm/config/LGMDMWifiConfiguration$GroupCipher;
.super Ljava/lang/Object;
.source "LGMDMWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupCipher"
.end annotation


# static fields
.field public static final CCMP:I = 0x3

.field public static final TKIP:I = 0x2

.field public static final WEP104:I = 0x1

.field public static final WEP40:I = 0x0

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "group"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 756
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "WEP40"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "WEP104"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "TKIP"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "CCMP"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    .line 723
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
