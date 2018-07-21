.class public Lcom/lge/mdm/config/LGMDMVpnProfile;
.super Ljava/lang/Object;
.source "LGMDMVpnProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;,
        Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;,
        Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;,
        Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_INTEGRITY_TYPES;,
        Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;,
        Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;,
        Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;,
        Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_GROUP_TYPES;,
        Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;,
        Lcom/lge/mdm/config/LGMDMVpnProfile$EAP_METHOD_TYPES;,
        Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;,
        Lcom/lge/mdm/config/LGMDMVpnProfile$1;
    }
.end annotation


# static fields
.field public static final CMD_ADD:Ljava/lang/String; = "addProfile"

.field public static final CMD_DELETE:Ljava/lang/String; = "deleteProfile"

.field public static final CMD_MODIFY:Ljava/lang/String; = "modifyProfile"

.field public static final CONFIG_CMD:Ljava/lang/String; = "configCommand"

.field public static final CONFIG_FAIL:Ljava/lang/String; = "fail"

.field public static final CONFIG_RESULT:Ljava/lang/String; = "configResult"

.field public static final CONFIG_SUCCESS:Ljava/lang/String; = "success"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/mdm/config/LGMDMVpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAIL_REASON:Ljava/lang/String; = "failReason"

.field public static final FAIL_REASON_AUTHENTEC_FIELD_FAIL:Ljava/lang/String; = "authentec_field_fail"

.field public static final FAIL_REASON_BLANK_CA_CERT:Ljava/lang/String; = "blank_ca_cert"

.field public static final FAIL_REASON_BLANK_PROFILE_NAME:Ljava/lang/String; = "blank_profile_name"

.field public static final FAIL_REASON_BLANK_PROFILE_SERVER:Ljava/lang/String; = "blank_profile_server"

.field public static final FAIL_REASON_BLANK_PSK:Ljava/lang/String; = "blank_psk"

.field public static final FAIL_REASON_BLANK_USER_CERT:Ljava/lang/String; = "blank_user_cert"

.field public static final FAIL_REASON_KEYSTORE:Ljava/lang/String; = "keyStore_fail"

.field public static final FAIL_REASON_NOT_FOUND_CA_CERT:Ljava/lang/String; = "not_found_ca_cert"

.field public static final FAIL_REASON_NOT_FOUND_PROFILE:Ljava/lang/String; = "not_found_profile"

.field public static final FAIL_REASON_NOT_FOUND_SERVER_CERT:Ljava/lang/String; = "not_found_server_cert"

.field public static final FAIL_REASON_NOT_FOUND_USER_CERT:Ljava/lang/String; = "not_found_user_cert"

.field public static final FAIL_REASON_UNKNOWN_TYPE:Ljava/lang/String; = "unknown_type"

.field public static final TYPE_IPSEC_CRT:I = -0x3

.field public static final TYPE_IPSEC_EAP:I = -0x4

.field public static final TYPE_IPSEC_HYBRID_RSA:I = 0x5

.field public static final TYPE_IPSEC_HYBRID_RSA_NATIVE:I = -0x5

.field public static final TYPE_IPSEC_HYBRID_RSA_OLD:I = 0x6

.field public static final TYPE_IPSEC_PSK:I = -0x2

.field public static final TYPE_IPSEC_XAUTH_PSK:I = 0x3

.field public static final TYPE_IPSEC_XAUTH_RSA:I = 0x4

.field public static final TYPE_L2TP_IPSEC_CRT:I = -0x1

.field public static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final TYPE_MAX:I = 0x5

.field public static final TYPE_PPTP:I


# instance fields
.field public IkeIdValue:Ljava/lang/String;

.field public caIdentityValue:Ljava/lang/String;

.field public connectionTimeout:Lcom/lge/mdm/config/LGMDMVpnProfile$CONNECTION_TIMEOUT_LIST;

.field public dnsServers:Ljava/lang/String;

.field public eap:Z

.field public eapMethod:Lcom/lge/mdm/config/LGMDMVpnProfile$EAP_METHOD_TYPES;

.field public ikeAggressiveMode:Z

.field public ikeEncryption:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_ENCRYPTION_TYPES;

.field public ikeGroup:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_GROUP_TYPES;

.field public ikeIdType:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_IKE_ID_TYPES;

.field public ikeIntegrity:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_INTEGRITY_TYPES;

.field public ikeMobike:Z

.field public ikeVersion:Lcom/lge/mdm/config/LGMDMVpnProfile$IKE_VERSIONS;

.field public ipsecAntiReplay:Z

.field public ipsecCaCert:Ljava/lang/String;

.field public ipsecEncryption:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_ENCRYPTION_TYPES;

.field public ipsecIdentifier:Ljava/lang/String;

.field public ipsecIntegrity:Lcom/lge/mdm/config/LGMDMVpnProfile$IPSEC_INTEGRITY_TYPES;

.field public ipsecPerfectForwardSecrecy:Z

.field public ipsecSecret:Ljava/lang/String;

.field public ipsecServerCert:Ljava/lang/String;

.field public ipsecUserCert:Ljava/lang/String;

.field public isAuthentec:Z

.field public key:Ljava/lang/String;

.field public l2tpSecret:Ljava/lang/String;

.field public mppe:Z

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public presharedKey:Ljava/lang/String;

.field public routes:Ljava/lang/String;

.field public saveLogin:Z

.field public searchDomains:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public subnet:Ljava/lang/String;

.field public subnetType:Lcom/lge/mdm/config/LGMDMVpnProfile$SUBNET_TYPES;

.field public template:Lcom/lge/mdm/config/LGMDMVpnProfile$TEMPLATES;

.field public type:I

.field public userAuthentication:Z

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1330
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile$1;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMVpnProfile$1;-><init>()V

    sput-object v0, Lcom/lge/mdm/config/LGMDMVpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1216
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->saveLogin:Z

    .line 1229
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->isAuthentec:Z

    .line 1308
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    .line 1309
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->name:Ljava/lang/String;

    .line 1310
    iput v1, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    .line 1311
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->server:Ljava/lang/String;

    .line 1312
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->username:Ljava/lang/String;

    .line 1313
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->password:Ljava/lang/String;

    .line 1314
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->dnsServers:Ljava/lang/String;

    .line 1315
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->searchDomains:Ljava/lang/String;

    .line 1316
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->routes:Ljava/lang/String;

    .line 1317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->mppe:Z

    .line 1318
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 1319
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1320
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1321
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1322
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1323
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 1307
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1216
    iput-boolean v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->saveLogin:Z

    .line 1229
    iput-boolean v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->isAuthentec:Z

    .line 1232
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    .line 1231
    return-void
.end method

.method public static decode(Ljava/lang/String;[B)Lcom/lge/mdm/config/LGMDMVpnProfile;
    .registers 13
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [B

    .prologue
    const/4 v10, 0x5

    const/16 v9, 0xe

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1241
    if-nez p0, :cond_9

    .line 1242
    return-object v8

    .line 1245
    :cond_9
    :try_start_9
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string/jumbo v6, "\u0000"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1246
    .local v2, "values":[Ljava/lang/String;
    array-length v5, v2

    if-lt v5, v9, :cond_20

    array-length v5, v2

    const/16 v6, 0xf

    if-le v5, v6, :cond_3c

    .line 1247
    :cond_20
    const-string/jumbo v3, "LGMDMVpnProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decode : return null(values.lenth) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    return-object v8

    .line 1251
    :cond_3c
    new-instance v1, Lcom/lge/mdm/config/LGMDMVpnProfile;

    invoke-direct {v1, p0}, Lcom/lge/mdm/config/LGMDMVpnProfile;-><init>(Ljava/lang/String;)V

    .line 1252
    .local v1, "profile":Lcom/lge/mdm/config/LGMDMVpnProfile;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    iput-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->name:Ljava/lang/String;

    .line 1253
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    .line 1254
    iget v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    if-ltz v5, :cond_5b

    iget v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    if-le v5, v10, :cond_78

    .line 1255
    :cond_5b
    const-string/jumbo v3, "LGMDMVpnProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decode : return null(profile.type) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    return-object v8

    .line 1258
    :cond_78
    const/4 v5, 0x2

    aget-object v5, v2, v5

    iput-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->server:Ljava/lang/String;

    .line 1259
    const/4 v5, 0x3

    aget-object v5, v2, v5

    iput-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->username:Ljava/lang/String;

    .line 1260
    const/4 v5, 0x4

    aget-object v5, v2, v5

    iput-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->password:Ljava/lang/String;

    .line 1261
    const/4 v5, 0x5

    aget-object v5, v2, v5

    iput-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->dnsServers:Ljava/lang/String;

    .line 1262
    const/4 v5, 0x6

    aget-object v5, v2, v5

    iput-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->searchDomains:Ljava/lang/String;

    .line 1263
    const/4 v5, 0x7

    aget-object v5, v2, v5

    iput-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->routes:Ljava/lang/String;

    .line 1264
    const/16 v5, 0x8

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->mppe:Z

    .line 1265
    const/16 v5, 0x9

    aget-object v5, v2, v5

    iput-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 1266
    const/16 v5, 0xa

    aget-object v5, v2, v5

    iput-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1267
    const/16 v5, 0xb

    aget-object v5, v2, v5

    iput-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1268
    const/16 v5, 0xc

    aget-object v5, v2, v5

    iput-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1269
    const/16 v5, 0xd

    aget-object v5, v2, v5

    iput-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1270
    array-length v5, v2

    if-le v5, v9, :cond_df

    const/16 v5, 0xe

    aget-object v5, v2, v5

    :goto_c9
    iput-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 1272
    iget-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_dc

    iget-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_dc

    move v3, v4

    :cond_dc
    iput-boolean v3, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->saveLogin:Z

    .line 1273
    return-object v1

    .line 1270
    :cond_df
    const-string/jumbo v5, ""
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e2} :catch_e3

    goto :goto_c9

    .line 1274
    .end local v1    # "profile":Lcom/lge/mdm/config/LGMDMVpnProfile;
    .end local v2    # "values":[Ljava/lang/String;
    :catch_e3
    move-exception v0

    .line 1275
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMVpnProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decode : exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    return-object v8
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1348
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1286
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1287
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->saveLogin:Z

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->username:Ljava/lang/String;

    :goto_24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->saveLogin:Z

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->password:Ljava/lang/String;

    :goto_31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->mppe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1294
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1

    .line 1288
    :cond_99
    const-string/jumbo v1, ""

    goto :goto_24

    .line 1289
    :cond_9d
    const-string/jumbo v1, ""

    goto :goto_31
.end method

.method public printVpnField()V
    .registers 4

    .prologue
    .line 1404
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "server = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "username = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dnsServers = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchDomains = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "routes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mppe = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->mppe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "l2tpSecret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ipsecIdentifier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ipsecSecret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ipsecUserCert = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ipsecCaCert = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ipsecServerCert = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const-string/jumbo v0, "LGMDMVpnProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveLogin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->saveLogin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1380
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    .line 1381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->name:Ljava/lang/String;

    .line 1382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    .line 1383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->server:Ljava/lang/String;

    .line 1384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->username:Ljava/lang/String;

    .line 1385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->password:Ljava/lang/String;

    .line 1386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->dnsServers:Ljava/lang/String;

    .line 1387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->searchDomains:Ljava/lang/String;

    .line 1388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->routes:Ljava/lang/String;

    .line 1389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v1

    :goto_3f
    iput-boolean v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->mppe:Z

    .line 1390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 1391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1394
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1395
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 1396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_70

    :goto_6b
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->saveLogin:Z

    .line 1379
    return-void

    :cond_6e
    move v0, v2

    .line 1389
    goto :goto_3f

    :cond_70
    move v1, v2

    .line 1396
    goto :goto_6b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1356
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1358
    iget v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1361
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1362
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1363
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1365
    iget-boolean v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->mppe:Z

    if-eqz v0, :cond_5d

    move v0, v1

    :goto_34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1366
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1372
    iget-boolean v0, p0, Lcom/lge/mdm/config/LGMDMVpnProfile;->saveLogin:Z

    if-eqz v0, :cond_5f

    :goto_59
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1355
    return-void

    :cond_5d
    move v0, v2

    .line 1365
    goto :goto_34

    :cond_5f
    move v1, v2

    .line 1372
    goto :goto_59
.end method
