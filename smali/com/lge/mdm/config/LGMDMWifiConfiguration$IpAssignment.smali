.class public final enum Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;
.super Ljava/lang/Enum;
.source "LGMDMWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpAssignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

.field public static final enum DHCP:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

.field public static final enum STATIC:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

.field public static final enum UNASSIGNED:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 918
    new-instance v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    const-string/jumbo v1, "STATIC"

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    .line 924
    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->STATIC:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    .line 925
    new-instance v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    const-string/jumbo v1, "DHCP"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    .line 929
    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->DHCP:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    .line 930
    new-instance v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    const-string/jumbo v1, "UNASSIGNED"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    .line 936
    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->UNASSIGNED:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    .line 917
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->STATIC:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->DHCP:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->UNASSIGNED:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->$VALUES:[Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 917
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 917
    const-class v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;
    .registers 1

    .prologue
    .line 917
    sget-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->$VALUES:[Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    return-object v0
.end method
