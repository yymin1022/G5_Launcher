.class public Lcom/lge/mdm/controller/LGMDMApnController;
.super Ljava/lang/Object;
.source "LGMDMApnController.java"


# static fields
.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PREFERRED_APN_URI:Landroid/net/Uri;

.field private static final SPROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LGMDMApnController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMApnController;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    const-string/jumbo v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMApnController;->CONTENT_URI:Landroid/net/Uri;

    .line 33
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMApnController;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMApnController;->instance:Lcom/lge/mdm/controller/LGMDMApnController;

    .line 43
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "apn"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "proxy"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "port"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "user"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "server"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "password"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "mmsc"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "mcc"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "mnc"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "numeric"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "mmsproxy"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "mmsport"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "authtype"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "type"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "protocol"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "carrier_enabled"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "bearer"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "roaming_protocol"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 43
    sput-object v0, Lcom/lge/mdm/controller/LGMDMApnController;->SPROJECTION:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 76
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 392
    if-nez p1, :cond_6

    .line 393
    const-string/jumbo v0, ""

    return-object v0

    .line 395
    :cond_6
    return-object p1
.end method

.method private static getBearer(I)Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 217
    const/16 v0, 0xe

    if-ne p0, v0, :cond_7

    .line 218
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->LTE:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    return-object v0

    .line 219
    :cond_7
    const/16 v0, 0xd

    if-ne p0, v0, :cond_e

    .line 220
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->eHRPD:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    return-object v0

    .line 222
    :cond_e
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->Unspecified:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    return-object v0
.end method

.method private getBearerValue(Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;)I
    .registers 3
    .param p1, "value"    # Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    .prologue
    .line 227
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->LTE:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    if-ne p1, v0, :cond_7

    .line 228
    const/16 v0, 0xe

    return v0

    .line 229
    :cond_7
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->eHRPD:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    if-ne p1, v0, :cond_e

    .line 230
    const/16 v0, 0xd

    return v0

    .line 232
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private getConfig(Landroid/database/Cursor;)Lcom/lge/mdm/config/LGMDMApnConfiguration;
    .registers 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 147
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMApnConfiguration;-><init>()V

    .line 149
    .local v0, "config":Lcom/lge/mdm/config/LGMDMApnConfiguration;
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->id:Ljava/lang/String;

    .line 150
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->name:Ljava/lang/String;

    .line 151
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->apn:Ljava/lang/String;

    .line 152
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->proxy:Ljava/lang/String;

    .line 153
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->port:Ljava/lang/String;

    .line 154
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->user:Ljava/lang/String;

    .line 155
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->server:Ljava/lang/String;

    .line 156
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->password:Ljava/lang/String;

    .line 157
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsc:Ljava/lang/String;

    .line 158
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mcc:Ljava/lang/String;

    .line 159
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mnc:Ljava/lang/String;

    .line 160
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->numeric:Ljava/lang/String;

    .line 161
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsProxy:Ljava/lang/String;

    .line 162
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsPort:Ljava/lang/String;

    .line 166
    :try_start_6d
    invoke-static {}, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->values()[Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    move-result-object v2

    .line 167
    const/16 v3, 0xe

    .line 166
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->authType:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7b} :catch_b0

    .line 173
    :goto_7b
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->type:Ljava/lang/String;

    .line 179
    const/16 v2, 0x10

    .line 178
    :try_start_85
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;->valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->protocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8f} :catch_b6

    .line 185
    :goto_8f
    const/16 v2, 0x11

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->carrierEnabled:Ljava/lang/String;

    .line 187
    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/lge/mdm/controller/LGMDMApnController;->getBearer(I)Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->bearer:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    .line 192
    const/16 v2, 0x13

    .line 191
    :try_start_a5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->roamingProtocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_af} :catch_bc

    .line 213
    :goto_af
    return-object v0

    .line 168
    :catch_b0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->NONE:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->authType:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    goto :goto_7b

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_b6
    move-exception v1

    .line 181
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;->IP:Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->protocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;

    goto :goto_8f

    .line 193
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_bc
    move-exception v1

    .line 194
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->IP:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->roamingProtocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    goto :goto_af
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMApnController;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/lge/mdm/controller/LGMDMApnController;->instance:Lcom/lge/mdm/controller/LGMDMApnController;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Lcom/lge/mdm/controller/LGMDMApnController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMApnController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMApnController;->instance:Lcom/lge/mdm/controller/LGMDMApnController;

    .line 84
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMApnController;->instance:Lcom/lge/mdm/controller/LGMDMApnController;

    return-object v0
.end method

.method private getLastId(Landroid/net/Uri;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 311
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 312
    .local v1, "lastId":I
    const-string/jumbo v2, "LGMDMApnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 313
    return v1

    .line 314
    .end local v1    # "lastId":I
    :catch_2b
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "LGMDMApnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CONTENT_URI error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v2, -0x1

    return v2
.end method

.method private validateAndSave(Lcom/lge/mdm/config/LGMDMApnConfiguration;Landroid/net/Uri;Z)I
    .registers 16
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMApnConfiguration;
    .param p2, "mUri"    # Landroid/net/Uri;
    .param p3, "newApn"    # Z

    .prologue
    .line 321
    iget-object v9, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->name:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 322
    .local v6, "name":Ljava/lang/String;
    iget-object v9, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->apn:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "apn":Ljava/lang/String;
    iget-object v9, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mcc:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "mcc":Ljava/lang/String;
    iget-object v9, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mnc:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, "mnc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 326
    .local v2, "err":I
    const/4 v3, 0x0

    .line 327
    .local v3, "errMsg":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_56

    .line 328
    const/4 v2, -0x1

    .line 329
    const-string/jumbo v3, "name"

    .line 341
    .end local v3    # "errMsg":Ljava/lang/String;
    :cond_25
    :goto_25
    if-eqz v2, :cond_7d

    .line 342
    const-string/jumbo v9, "LGMDMApnController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validateAndSave error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is empty"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    if-eqz p3, :cond_55

    .line 344
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, p2, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 346
    :cond_55
    return v2

    .line 330
    .restart local v3    # "errMsg":Ljava/lang/String;
    :cond_56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_62

    .line 331
    const/4 v2, -0x1

    .line 332
    const-string/jumbo v3, "APN valiable"

    .local v3, "errMsg":Ljava/lang/String;
    goto :goto_25

    .line 333
    .local v3, "errMsg":Ljava/lang/String;
    :cond_62
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6d

    .line 334
    const/4 v2, -0x1

    .line 335
    const-string/jumbo v3, "MCC"

    .local v3, "errMsg":Ljava/lang/String;
    goto :goto_25

    .line 336
    .local v3, "errMsg":Ljava/lang/String;
    :cond_6d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const v10, 0xfffe

    and-int/2addr v9, v10

    const/4 v10, 0x2

    if-eq v9, v10, :cond_25

    .line 337
    const/4 v2, -0x1

    .line 338
    const-string/jumbo v3, "MNC"

    .local v3, "errMsg":Ljava/lang/String;
    goto :goto_25

    .line 349
    .end local v3    # "errMsg":Ljava/lang/String;
    :cond_7d
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 352
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "name"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string/jumbo v9, "apn"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v9, "proxy"

    iget-object v10, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->proxy:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v9, "port"

    iget-object v10, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->port:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v9, "mmsproxy"

    iget-object v10, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v9, "mmsport"

    iget-object v10, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsPort:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v9, "user"

    iget-object v10, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->user:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v9, "server"

    iget-object v10, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->server:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v9, "password"

    iget-object v10, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->password:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v9, "mmsc"

    iget-object v10, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsc:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v9, "authtype"

    iget-object v10, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->authType:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    invoke-virtual {v10}, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->ordinal()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    const-string/jumbo v9, "protocol"

    .line 364
    invoke-static {}, Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;->values()[Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;

    move-result-object v10

    iget-object v11, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->protocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;

    invoke-virtual {v11}, Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;->ordinal()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;->name()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 363
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v9, "roaming_protocol"

    .line 366
    invoke-static {}, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->values()[Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    move-result-object v10

    iget-object v11, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->roamingProtocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    invoke-virtual {v11}, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->ordinal()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->name()Ljava/lang/String;

    move-result-object v10

    .line 365
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v9, "type"

    iget-object v10, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->type:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v9, "mcc"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v9, "mnc"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string/jumbo v10, "numeric"

    iget-object v9, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->numeric:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x1

    if-ge v9, v11, :cond_1ae

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mcc:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 373
    iget-object v11, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mnc:Ljava/lang/String;

    .line 372
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_167
    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v9, "current"

    iget-object v10, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->current:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string/jumbo v9, "bearer"

    iget-object v10, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->bearer:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMApnController;->getBearerValue(Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    :try_start_186
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, p2, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 384
    .local v7, "resUri":I
    const-string/jumbo v9, "LGMDMApnController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "update value count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_1ac} :catch_1b5

    .line 388
    .end local v7    # "resUri":I
    :goto_1ac
    const/4 v9, 0x0

    return v9

    .line 373
    :cond_1ae
    iget-object v9, p1, Lcom/lge/mdm/config/LGMDMApnConfiguration;->numeric:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/lge/mdm/controller/LGMDMApnController;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_167

    .line 385
    :catch_1b5
    move-exception v1

    .line 386
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "LGMDMApnController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "An error occurred  on validateAndSave : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ac
.end method


# virtual methods
.method public activateApn(Landroid/content/ComponentName;II)I
    .registers 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "id"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 419
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mContext:Landroid/content/Context;

    .line 420
    const-string/jumbo v8, "phone"

    .line 419
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 423
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "numeric":Ljava/lang/String;
    const-string/jumbo v7, "LGMDMApnController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "activateApn():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 427
    .local v4, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0, p1, v10, p3}, Lcom/lge/mdm/controller/LGMDMApnController;->getConfiguredApnList(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v2

    .line 429
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApnConfiguration;>;"
    if-nez v2, :cond_38

    .line 430
    return v10

    .line 433
    :cond_38
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;

    .line 434
    .local v0, "config":Lcom/lge/mdm/config/LGMDMApnConfiguration;
    iget-object v7, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->id:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p2, :cond_3c

    .line 435
    iget-object v7, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->numeric:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_85

    .line 436
    const-string/jumbo v7, "LGMDMApnController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Numeric + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->numeric:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - NOT matched with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/4 v7, -0x1

    return v7

    .line 439
    :cond_85
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 440
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "apn_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    sget-object v7, Lcom/lge/mdm/controller/LGMDMApnController;->PREFERRED_APN_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7, v6, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 442
    const/4 v7, 0x1

    return v7

    .line 445
    .end local v0    # "config":Lcom/lge/mdm/config/LGMDMApnConfiguration;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_9b
    return v10
.end method

.method public addApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;I)I
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "config"    # Lcom/lge/mdm/config/LGMDMApnConfiguration;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/lge/mdm/controller/LGMDMApnController;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 238
    .local v1, "addUri":Landroid/net/Uri;
    if-nez v1, :cond_20

    .line 239
    const-string/jumbo v0, "LGMDMApnController"

    const-string/jumbo v2, "cannot open CONTENT_URI"

    invoke-static {v0, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return v9

    .line 243
    :cond_20
    invoke-direct {p0, v1}, Lcom/lge/mdm/controller/LGMDMApnController;->getLastId(Landroid/net/Uri;)I

    move-result v7

    .line 244
    .local v7, "addId":I
    if-ne v7, v9, :cond_27

    .line 245
    return v7

    .line 248
    :cond_27
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 250
    .local v6, "addCursor":Landroid/database/Cursor;
    if-nez v6, :cond_40

    .line 251
    const-string/jumbo v0, "LGMDMApnController"

    const-string/jumbo v2, "addApn addCursor is null"

    invoke-static {v0, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return v9

    .line 254
    :cond_40
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 258
    iget-object v0, p2, Lcom/lge/mdm/config/LGMDMApnConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v10, :cond_5d

    iget-object v0, p2, Lcom/lge/mdm/config/LGMDMApnConfiguration;->apn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v10, :cond_5d

    .line 259
    const-string/jumbo v0, "LGMDMApnController"

    const-string/jumbo v2, "no name, no APN"

    invoke-static {v0, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return v9

    .line 262
    :cond_5d
    invoke-direct {p0, p2, v1, v10}, Lcom/lge/mdm/controller/LGMDMApnController;->validateAndSave(Lcom/lge/mdm/config/LGMDMApnConfiguration;Landroid/net/Uri;Z)I

    move-result v8

    .line 264
    .local v8, "result":I
    if-nez v8, :cond_64

    .line 265
    return v7

    .line 267
    :cond_64
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    return v9
.end method

.method public deleteApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;I)Z
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "config"    # Lcom/lge/mdm/config/LGMDMApnConfiguration;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 400
    if-nez p2, :cond_5

    .line 401
    return v6

    .line 403
    :cond_5
    const-string/jumbo v3, "LGMDMApnController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteApn():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/lge/mdm/config/LGMDMApnConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v3, p2, Lcom/lge/mdm/config/LGMDMApnConfiguration;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 405
    .local v0, "key":I
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 407
    .local v2, "url":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/lge/mdm/controller/LGMDMApnController;->getLastId(Landroid/net/Uri;)I

    move-result v3

    if-le v0, v3, :cond_3e

    .line 408
    const-string/jumbo v3, "LGMDMApnController"

    const-string/jumbo v4, "invalid configuration"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return v6

    .line 411
    :cond_3e
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 412
    .local v1, "res":I
    if-nez v1, :cond_4b

    .line 413
    return v6

    .line 415
    :cond_4b
    const/4 v3, 0x1

    return v3
.end method

.method public getApn(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMApnConfiguration;
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_ID = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/mdm/controller/LGMDMApnController;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 135
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_2d

    .line 136
    return-object v2

    .line 138
    :cond_2d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 139
    invoke-direct {p0, v7}, Lcom/lge/mdm/controller/LGMDMApnController;->getConfig(Landroid/database/Cursor;)Lcom/lge/mdm/config/LGMDMApnConfiguration;

    move-result-object v6

    .line 141
    .local v6, "config":Lcom/lge/mdm/config/LGMDMApnConfiguration;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 143
    return-object v6
.end method

.method public getConfiguredApnList(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "option"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApnConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    .local v3, "where":Ljava/lang/String;
    const/4 v7, 0x0

    .line 92
    .local v7, "listCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/lge/mdm/LGMDMManager$APNProfile;->values()[Lcom/lge/mdm/LGMDMManager$APNProfile;

    move-result-object v0

    aget-object v0, v0, p2

    sget-object v1, Lcom/lge/mdm/LGMDMManager$APNProfile;->AVAILABLE_APNs:Lcom/lge/mdm/LGMDMManager$APNProfile;

    if-ne v0, v1, :cond_62

    .line 93
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mContext:Landroid/content/Context;

    .line 94
    const-string/jumbo v1, "phone"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 98
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "numeric":Ljava/lang/String;
    const-string/jumbo v0, "LGMDMApnController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConfiguredApnList():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz v8, :cond_62

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_62

    .line 102
    new-instance v3, Ljava/lang/String;

    .end local v3    # "where":Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 103
    .local v3, "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "numeric =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    .end local v3    # "where":Ljava/lang/String;
    .end local v8    # "numeric":Ljava/lang/String;
    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    :cond_62
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/mdm/controller/LGMDMApnController;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/mdm/controller/LGMDMApnController;->SPROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 110
    .local v7, "listCursor":Landroid/database/Cursor;
    if-nez v7, :cond_74

    .line 111
    return-object v4

    .line 113
    :cond_74
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v6, "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApnConfiguration;>;"
    :goto_7c
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 116
    invoke-direct {p0, v7}, Lcom/lge/mdm/controller/LGMDMApnController;->getConfig(Landroid/database/Cursor;)Lcom/lge/mdm/config/LGMDMApnConfiguration;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7c

    .line 120
    :cond_8d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 122
    return-object v6
.end method

.method public modifyApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;I)I
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "config"    # Lcom/lge/mdm/config/LGMDMApnConfiguration;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v10, -0x1

    .line 273
    if-nez p2, :cond_5

    .line 274
    return v10

    .line 276
    :cond_5
    iget-object v0, p2, Lcom/lge/mdm/config/LGMDMApnConfiguration;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 277
    .local v8, "key":I
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v8

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 279
    .local v1, "url":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/lge/mdm/controller/LGMDMApnController;->getLastId(Landroid/net/Uri;)I

    move-result v0

    if-le v8, v0, :cond_19

    .line 280
    return v10

    .line 283
    :cond_19
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMApnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lge/mdm/controller/LGMDMApnController;->SPROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 284
    .local v7, "editCursor":Landroid/database/Cursor;
    if-nez v7, :cond_33

    .line 285
    const-string/jumbo v0, "LGMDMApnController"

    const-string/jumbo v2, "modifyApn editCursor is null"

    invoke-static {v0, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return v10

    .line 289
    :cond_33
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 293
    :try_start_36
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v8, v0, :cond_65

    .line 294
    const-string/jumbo v0, "LGMDMApnController"

    const-string/jumbo v2, "invalid configuration"

    invoke-static {v0, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_49} :catch_4a

    .line 295
    return v10

    .line 297
    :catch_4a
    move-exception v6

    .line 298
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v0, "LGMDMApnController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "modifyApn exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_65
    const/4 v0, 0x0

    invoke-direct {p0, p2, v1, v0}, Lcom/lge/mdm/controller/LGMDMApnController;->validateAndSave(Lcom/lge/mdm/config/LGMDMApnConfiguration;Landroid/net/Uri;Z)I

    move-result v9

    .line 303
    .local v9, "modifyId":I
    if-eq v9, v10, :cond_6d

    .line 304
    move v9, v8

    .line 306
    :cond_6d
    return v9
.end method

.method showColumnName(Landroid/database/Cursor;)V
    .registers 6
    .param p1, "mCursor"    # Landroid/database/Cursor;

    .prologue
    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 127
    const-string/jumbo v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_2c
    return-void
.end method
