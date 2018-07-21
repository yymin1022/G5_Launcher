.class public final enum Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;
.super Ljava/lang/Enum;
.source "LGMDMLgVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMLgVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LGVPN_DM_CERTIFICATE_RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

.field public static final enum INVALID_CERTIFICATE:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

.field public static final enum INVALID_PASSWORD:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

.field public static final enum NEW_CERTIFICATE_INSTALLED_BUT_OLD_CERTIFICATE_DELETE_FAILED:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

.field public static final enum NOT_EXIST_CERTIFICATE:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

.field public static final enum OK:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

.field public static final enum REMOTE_ERROR:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

.field public static final enum UNKNOWN:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;


# instance fields
.field final BASE:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1076
    new-instance v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;-><init>(Ljava/lang/String;I)V

    .line 1081
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->OK:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    .line 1082
    new-instance v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    const-string/jumbo v1, "NOT_EXIST_CERTIFICATE"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;-><init>(Ljava/lang/String;I)V

    .line 1087
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->NOT_EXIST_CERTIFICATE:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    .line 1088
    new-instance v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    const-string/jumbo v1, "INVALID_CERTIFICATE"

    invoke-direct {v0, v1, v5}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;-><init>(Ljava/lang/String;I)V

    .line 1093
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->INVALID_CERTIFICATE:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    .line 1094
    new-instance v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    const-string/jumbo v1, "INVALID_PASSWORD"

    invoke-direct {v0, v1, v6}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;-><init>(Ljava/lang/String;I)V

    .line 1099
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->INVALID_PASSWORD:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    .line 1100
    new-instance v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    const-string/jumbo v1, "REMOTE_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;-><init>(Ljava/lang/String;I)V

    .line 1105
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->REMOTE_ERROR:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    .line 1106
    new-instance v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;-><init>(Ljava/lang/String;I)V

    .line 1111
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->UNKNOWN:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    .line 1113
    new-instance v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    const-string/jumbo v1, "NEW_CERTIFICATE_INSTALLED_BUT_OLD_CERTIFICATE_DELETE_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;-><init>(Ljava/lang/String;I)V

    .line 1118
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->NEW_CERTIFICATE_INSTALLED_BUT_OLD_CERTIFICATE_DELETE_FAILED:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    .line 1075
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->OK:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->NOT_EXIST_CERTIFICATE:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->INVALID_CERTIFICATE:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->INVALID_PASSWORD:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->REMOTE_ERROR:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->UNKNOWN:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->NEW_CERTIFICATE_INSTALLED_BUT_OLD_CERTIFICATE_DELETE_FAILED:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->$VALUES:[Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 1075
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1120
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->BASE:I

    .line 1075
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1075
    const-class v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;
    .registers 1

    .prologue
    .line 1075
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->$VALUES:[Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 1123
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x4b0

    return v0
.end method
