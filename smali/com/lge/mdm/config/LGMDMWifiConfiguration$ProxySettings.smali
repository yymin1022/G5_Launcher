.class public final enum Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;
.super Ljava/lang/Enum;
.source "LGMDMWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProxySettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

.field public static final enum NONE:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

.field public static final enum STATIC:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

.field public static final enum UNASSIGNED:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 958
    new-instance v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    .line 963
    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->NONE:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    .line 964
    new-instance v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    const-string/jumbo v1, "STATIC"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    .line 969
    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->STATIC:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    .line 970
    new-instance v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    const-string/jumbo v1, "UNASSIGNED"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    .line 975
    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->UNASSIGNED:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    .line 957
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->NONE:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->STATIC:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->UNASSIGNED:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->$VALUES:[Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 957
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 957
    const-class v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;
    .registers 1

    .prologue
    .line 957
    sget-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->$VALUES:[Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    return-object v0
.end method
