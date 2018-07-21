.class public final enum Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;
.super Ljava/lang/Enum;
.source "LGMDMVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SUBNET_TYPES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

.field public static final enum IPv4:Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

.field public static final enum IPv6:Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 686
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

    const-string/jumbo v1, "IPv4"

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;-><init>(Ljava/lang/String;I)V

    .line 689
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;->IPv4:Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

    .line 690
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

    const-string/jumbo v1, "IPv6"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;-><init>(Ljava/lang/String;I)V

    .line 693
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;->IPv6:Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

    .line 685
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;->IPv4:Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;->IPv6:Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 685
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 685
    const-class v0, Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;
    .registers 1

    .prologue
    .line 685
    sget-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

    return-object v0
.end method
