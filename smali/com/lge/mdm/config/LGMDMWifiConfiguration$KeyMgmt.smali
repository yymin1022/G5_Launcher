.class public Lcom/lge/mdm/config/LGMDMWifiConfiguration$KeyMgmt;
.super Ljava/lang/Object;
.source "LGMDMWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyMgmt"
.end annotation


# static fields
.field public static final IEEE8021X:I = 0x3

.field public static final NONE:I = 0x0

.field public static final WPA2_PSK:I = 0x4

.field public static final WPA_EAP:I = 0x2

.field public static final WPA_PSK:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "key_mgmt"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 603
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 604
    const-string/jumbo v1, "NONE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 605
    const-string/jumbo v1, "WPA_PSK"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 606
    const-string/jumbo v1, "WPA_EAP"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 607
    const-string/jumbo v1, "IEEE8021X"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 608
    const-string/jumbo v1, "WPA2_PSK"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 603
    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 560
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
