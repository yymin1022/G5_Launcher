.class public Lcom/lge/mdm/config/LGMDMWifiConfiguration$Protocol;
.super Ljava/lang/Object;
.source "LGMDMWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Protocol"
.end annotation


# static fields
.field public static final RSN:I = 0x1

.field public static final WPA:I = 0x0

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "proto"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 639
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "WPA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "RSN"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    .line 616
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
