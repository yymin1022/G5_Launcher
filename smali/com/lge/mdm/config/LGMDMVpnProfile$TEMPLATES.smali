.class public final enum Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;
.super Ljava/lang/Enum;
.source "LGMDMVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TEMPLATES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

.field public static final enum IPSEC_CRT_TEMPLATE_V1:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

.field public static final enum IPSEC_CRT_TEMPLATE_V1_XAUTH:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

.field public static final enum IPSEC_CRT_TEMPLATE_V1_XAUTH_AGG:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

.field public static final enum IPSEC_CRT_TEMPLATE_V2:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

.field public static final enum IPSEC_PSK_TEMPLATE_V1:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

.field public static final enum IPSEC_PSK_TEMPLATE_V1_XAUTH:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

.field public static final enum IPSEC_PSK_TEMPLATE_V1_XAUTH_AGG:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

.field public static final enum IPSEC_PSK_TEMPLATE_V2:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 279
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    const-string/jumbo v1, "IPSEC_PSK_TEMPLATE_V1"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;-><init>(Ljava/lang/String;I)V

    .line 282
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_PSK_TEMPLATE_V1:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    .line 283
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    const-string/jumbo v1, "IPSEC_PSK_TEMPLATE_V1_XAUTH"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;-><init>(Ljava/lang/String;I)V

    .line 286
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_PSK_TEMPLATE_V1_XAUTH:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    .line 287
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    const-string/jumbo v1, "IPSEC_PSK_TEMPLATE_V1_XAUTH_AGG"

    invoke-direct {v0, v1, v5}, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;-><init>(Ljava/lang/String;I)V

    .line 290
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_PSK_TEMPLATE_V1_XAUTH_AGG:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    .line 291
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    const-string/jumbo v1, "IPSEC_PSK_TEMPLATE_V2"

    invoke-direct {v0, v1, v6}, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;-><init>(Ljava/lang/String;I)V

    .line 294
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_PSK_TEMPLATE_V2:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    .line 295
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    const-string/jumbo v1, "IPSEC_CRT_TEMPLATE_V1"

    invoke-direct {v0, v1, v7}, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;-><init>(Ljava/lang/String;I)V

    .line 298
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_CRT_TEMPLATE_V1:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    .line 299
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    const-string/jumbo v1, "IPSEC_CRT_TEMPLATE_V1_XAUTH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;-><init>(Ljava/lang/String;I)V

    .line 302
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_CRT_TEMPLATE_V1_XAUTH:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    .line 303
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    const-string/jumbo v1, "IPSEC_CRT_TEMPLATE_V1_XAUTH_AGG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;-><init>(Ljava/lang/String;I)V

    .line 306
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_CRT_TEMPLATE_V1_XAUTH_AGG:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    .line 307
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    const-string/jumbo v1, "IPSEC_CRT_TEMPLATE_V2"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;-><init>(Ljava/lang/String;I)V

    .line 310
    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_CRT_TEMPLATE_V2:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    .line 278
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_PSK_TEMPLATE_V1:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_PSK_TEMPLATE_V1_XAUTH:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_PSK_TEMPLATE_V1_XAUTH_AGG:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_PSK_TEMPLATE_V2:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_CRT_TEMPLATE_V1:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_CRT_TEMPLATE_V1_XAUTH:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_CRT_TEMPLATE_V1_XAUTH_AGG:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->IPSEC_CRT_TEMPLATE_V2:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 278
    const-class v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;
    .registers 1

    .prologue
    .line 278
    sget-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;->$VALUES:[Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

    return-object v0
.end method
