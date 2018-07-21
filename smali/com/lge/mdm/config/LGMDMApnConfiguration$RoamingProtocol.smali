.class public final enum Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;
.super Ljava/lang/Enum;
.source "LGMDMApnConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMApnConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoamingProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

.field public static final enum IP:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

.field public static final enum IPV4V6:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

.field public static final enum IPV6:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

.field public static final enum PPP:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    const-string/jumbo v1, "IP"

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;-><init>(Ljava/lang/String;I)V

    .line 229
    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->IP:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    .line 230
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    const-string/jumbo v1, "IPV6"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;-><init>(Ljava/lang/String;I)V

    .line 235
    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->IPV6:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    .line 236
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    const-string/jumbo v1, "IPV4V6"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;-><init>(Ljava/lang/String;I)V

    .line 241
    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->IPV4V6:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    .line 242
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    const-string/jumbo v1, "PPP"

    invoke-direct {v0, v1, v5}, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;-><init>(Ljava/lang/String;I)V

    .line 247
    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->PPP:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    .line 223
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    sget-object v1, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->IP:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->IPV6:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->IPV4V6:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->PPP:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->$VALUES:[Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    const-class v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;
    .registers 1

    .prologue
    .line 223
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->$VALUES:[Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    return-object v0
.end method
