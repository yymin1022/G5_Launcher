.class public Lcom/lge/mdm/controller/LGMDMCertificateController;
.super Ljava/lang/Object;
.source "LGMDMCertificateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMCertificateController$MyMap;,
        Lcom/lge/mdm/controller/LGMDMCertificateController$InstallCaCertsToKeyChainTask;,
        Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;,
        Lcom/lge/mdm/controller/LGMDMCertificateController$ResetKeyStoreAndKeyChain;,
        Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;,
        Lcom/lge/mdm/controller/LGMDMCertificateController$Util;
    }
.end annotation


# static fields
.field private static synthetic -android_security_KeyStore$StateSwitchesValues:[I = null

.field public static final EXTENSION_CER:Ljava/lang/String; = ".cer"

.field public static final EXTENSION_CRT:Ljava/lang/String; = ".crt"

.field private static final EXTENSION_P12:Ljava/lang/String; = ".p12"

.field public static final EXTENSION_PFX:Ljava/lang/String; = ".pfx"

.field private static final PKEY_MAP_KEY:Ljava/lang/String; = "PKEY_MAP"

.field private static final PREFIX_USER:Ljava/lang/String; = "user:"

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field private static final TAG:Ljava/lang/String; = "LGMDMCertificateController"

.field static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/lge/mdm/controller/LGMDMCertificateController;


# instance fields
.field private final VPN_DN:Ljava/lang/String;

.field private final VPN_PRIVATE_KEY:Ljava/lang/String;

.field mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

.field private mIsAuthentec:I

.field mKeyStore:Landroid/security/KeyStore;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static synthetic -get0()[I
    .registers 1

    sget-object v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->SYSTEM_CREDENTIAL_UIDS:[I

    return-object v0
.end method

.method private static synthetic -getandroid_security_KeyStore$StateSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->-android_security_KeyStore$StateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->-android_security_KeyStore$StateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/security/KeyStore$State;->values()[Landroid/security/KeyStore$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->-android_security_KeyStore$StateSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 86
    const/16 v0, 0x3f2

    const/16 v1, 0x3f8

    .line 87
    const/4 v2, 0x0

    const/16 v3, 0x3e8

    .line 86
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string/jumbo v0, "DN_"

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->VPN_DN:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "PRIVATE_ENCODE_"

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->VPN_PRIVATE_KEY:Ljava/lang/String;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mIsAuthentec:I

    .line 85
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    .line 90
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 91
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method private CredentialInstaller(Landroid/os/Bundle;I)I
    .registers 16
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "useType"    # I

    .prologue
    const/4 v12, 0x5

    const/4 v10, 0x0

    .line 286
    const/4 v9, 0x2

    if-ne p2, v9, :cond_cc

    const/16 v7, 0x3f2

    .line 287
    .local v7, "uid":I
    :goto_7
    const/16 v9, 0x3f2

    if-ne v7, v9, :cond_cf

    const/4 v4, 0x0

    .line 289
    .local v4, "flags":I
    :goto_c
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMCertificateController;->isKeyStoreUnlocked()Z

    move-result v9

    if-eqz v9, :cond_159

    .line 290
    const-string/jumbo v9, "user_private_key_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 291
    const-string/jumbo v9, "user_private_key_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v9, "user_private_key_data"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 293
    .local v8, "value":[B
    if-eqz v5, :cond_d2

    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v9, v5, v8, v7, v4}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v9

    if-eqz v9, :cond_d2

    .line 299
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "value":[B
    :cond_33
    const-string/jumbo v9, "user_certificate_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_54

    .line 300
    const-string/jumbo v9, "user_certificate_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "certName":Ljava/lang/String;
    const-string/jumbo v9, "user_certificate_data"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 302
    .local v2, "certData":[B
    if-eqz v3, :cond_ed

    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v9, v3, v2, v7, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v9

    if-eqz v9, :cond_ed

    .line 308
    .end local v2    # "certData":[B
    .end local v3    # "certName":Ljava/lang/String;
    :cond_54
    const-string/jumbo v9, "ca_certificates_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_75

    .line 309
    const-string/jumbo v9, "ca_certificates_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "caListName":Ljava/lang/String;
    const-string/jumbo v9, "ca_certificates_data"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 311
    .local v0, "caListData":[B
    if-eqz v1, :cond_108

    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v9, v1, v0, v7, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v9

    if-eqz v9, :cond_108

    .line 317
    .end local v0    # "caListData":[B
    .end local v1    # "caListName":Ljava/lang/String;
    :cond_75
    const-string/jumbo v9, "AUTHENTEC_VPN_PRIV_KEY_NAME"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 318
    const-string/jumbo v9, "AUTHENTEC_VPN_PRIV_KEY_NAME"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v9, "AUTHENTEC_VPN_PRIV_KEY_DATA"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 320
    .restart local v8    # "value":[B
    if-eqz v6, :cond_123

    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v9, v6, v8, v7, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v9

    if-eqz v9, :cond_123

    .line 326
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "value":[B
    :cond_96
    const-string/jumbo v9, "AUTHENTEC_VPN_DN_NAME"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b7

    .line 327
    const-string/jumbo v9, "AUTHENTEC_VPN_DN_NAME"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 328
    .restart local v6    # "name":Ljava/lang/String;
    const-string/jumbo v9, "AUTHENTEC_VPN_DN_DATA"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 329
    .restart local v8    # "value":[B
    if-eqz v6, :cond_13e

    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v9, v6, v8, v7, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v9

    if-eqz v9, :cond_13e

    .line 334
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "value":[B
    :cond_b7
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    invoke-virtual {v9}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->hasCaCerts()Z

    move-result v9

    if-eqz v9, :cond_ca

    .line 335
    new-instance v9, Lcom/lge/mdm/controller/LGMDMCertificateController$InstallCaCertsToKeyChainTask;

    invoke-direct {v9, p0, v10}, Lcom/lge/mdm/controller/LGMDMCertificateController$InstallCaCertsToKeyChainTask;-><init>(Lcom/lge/mdm/controller/LGMDMCertificateController;Lcom/lge/mdm/controller/LGMDMCertificateController$InstallCaCertsToKeyChainTask;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/lge/mdm/controller/LGMDMCertificateController$InstallCaCertsToKeyChainTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 337
    :cond_ca
    const/4 v9, 0x1

    return v9

    .line 286
    .end local v4    # "flags":I
    .end local v7    # "uid":I
    :cond_cc
    const/4 v7, -0x1

    .restart local v7    # "uid":I
    goto/16 :goto_7

    .line 287
    :cond_cf
    const/4 v4, 0x1

    .restart local v4    # "flags":I
    goto/16 :goto_c

    .line 294
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v8    # "value":[B
    :cond_d2
    const-string/jumbo v9, "LGMDMCertificateController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v12

    .line 303
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "value":[B
    .restart local v2    # "certData":[B
    .restart local v3    # "certName":Ljava/lang/String;
    :cond_ed
    const-string/jumbo v9, "LGMDMCertificateController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return v12

    .line 312
    .end local v2    # "certData":[B
    .end local v3    # "certName":Ljava/lang/String;
    .restart local v0    # "caListData":[B
    .restart local v1    # "caListName":Ljava/lang/String;
    :cond_108
    const-string/jumbo v9, "LGMDMCertificateController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return v12

    .line 321
    .end local v0    # "caListData":[B
    .end local v1    # "caListName":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "value":[B
    :cond_123
    const-string/jumbo v9, "LGMDMCertificateController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return v12

    .line 330
    :cond_13e
    const-string/jumbo v9, "LGMDMCertificateController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v12

    .line 339
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "value":[B
    :cond_159
    const-string/jumbo v9, "LGMDMCertificateController"

    const-string/jumbo v10, "KeyStore is locked"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/16 v9, 0x8

    return v9
.end method

.method private static final fingerprint([B)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B

    .prologue
    .line 368
    if-nez p0, :cond_6

    .line 369
    const-string/jumbo v3, ""

    return-object v3

    .line 371
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v3, p0

    if-ge v1, v3, :cond_22

    .line 373
    aget-byte v0, p0, v1

    .line 374
    .local v0, "b":B
    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Ljava/lang/IntegralToString;->appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;

    .line 375
    add-int/lit8 v3, v1, 0x1

    array-length v4, p0

    if-eq v3, v4, :cond_1f

    .line 376
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 379
    .end local v0    # "b":B
    :cond_22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMCertificateController;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mInstance:Lcom/lge/mdm/controller/LGMDMCertificateController;

    if-nez v0, :cond_b

    .line 96
    new-instance v0, Lcom/lge/mdm/controller/LGMDMCertificateController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMCertificateController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mInstance:Lcom/lge/mdm/controller/LGMDMCertificateController;

    .line 98
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mInstance:Lcom/lge/mdm/controller/LGMDMCertificateController;

    return-object v0
.end method

.method private getLockPasswordFilename(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    const-string/jumbo v2, "/system/"

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_33

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "gatekeeper.password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 109
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "gatekeeper.password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLockPatternFilename(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    const-string/jumbo v2, "/system/"

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_33

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "gatekeeper.pattern.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 120
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "gatekeeper.pattern.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPkeyMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 274
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v3, "PKEY_MAP"

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 276
    .local v0, "bytes":[B
    if-eqz v0, :cond_15

    .line 277
    invoke-static {v0}, Lcom/lge/mdm/controller/LGMDMCertificateController$Util;->fromBytes([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 278
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    if-eqz v1, :cond_15

    .line 279
    return-object v1

    .line 282
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_15
    new-instance v2, Lcom/lge/mdm/controller/LGMDMCertificateController$MyMap;

    invoke-direct {v2, v4}, Lcom/lge/mdm/controller/LGMDMCertificateController$MyMap;-><init>(Lcom/lge/mdm/controller/LGMDMCertificateController$MyMap;)V

    return-object v2
.end method

.method private hash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 594
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I

    move-result v0

    .line 595
    .local v0, "hash":I
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isKeyStoreUnlocked()Z
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private saveKeyPair(I)V
    .registers 8
    .param p1, "useType"    # I

    .prologue
    .line 217
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    const-string/jumbo v4, "PKEY"

    invoke-virtual {v3, v4}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v2

    .line 218
    .local v2, "privatekey":[B
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    const-string/jumbo v4, "KEY"

    invoke-virtual {v3, v4}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/lge/mdm/controller/LGMDMCertificateController$Util;->toMd5([B)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMCertificateController;->getPkeyMap()Ljava/util/Map;

    move-result-object v1

    .line 220
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-direct {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMCertificateController;->savePkeyMap(Ljava/util/Map;I)V

    .line 222
    const-string/jumbo v3, "LGMDMCertificateController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "save privatekey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " --> #keys:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private savePkeyMap(Ljava/util/Map;I)V
    .registers 8
    .param p2, "useType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;I)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-static {p1}, Lcom/lge/mdm/controller/LGMDMCertificateController$Util;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 227
    .local v0, "bytes":[B
    const/4 v3, 0x2

    if-ne p2, v3, :cond_23

    const/16 v2, 0x3f2

    .line 228
    .local v2, "uid":I
    :goto_9
    const/16 v3, 0x3f2

    if-ne v2, v3, :cond_25

    const/4 v1, 0x0

    .line 229
    .local v1, "flags":I
    :goto_e
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v4, "PKEY_MAP"

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v3

    if-nez v3, :cond_22

    .line 230
    const-string/jumbo v3, "LGMDMCertificateController"

    const-string/jumbo v4, "savePkeyMap(): failed to write pkey map"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_22
    return-void

    .line 227
    .end local v1    # "flags":I
    .end local v2    # "uid":I
    :cond_23
    const/4 v2, -0x1

    .restart local v2    # "uid":I
    goto :goto_9

    .line 228
    :cond_25
    const/4 v1, 0x1

    .restart local v1    # "flags":I
    goto :goto_e
.end method

.method private setGrantInternal(Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 248
    .local v0, "callinguid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 249
    .local v2, "identity":J
    sget-object v5, Lcom/lge/mdm/controller/LGMDMCertificateController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1

    .line 251
    .local v1, "connection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_e
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    .line 252
    .local v4, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v4, v0, p1, p2}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1d

    .line 254
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 255
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    const/4 v5, 0x1

    return v5

    .line 253
    .end local v4    # "keyChainService":Landroid/security/IKeyChainService;
    :catchall_1d
    move-exception v5

    .line 254
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 255
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    throw v5
.end method


# virtual methods
.method convertToLGMDMCredentials(Ljava/security/cert/X509Certificate;)Lcom/lge/mdm/config/LGMDMCredentials;
    .registers 8
    .param p1, "x509"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 383
    new-instance v0, Lcom/lge/mdm/config/LGMDMCredentials;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMCredentials;-><init>()V

    .line 385
    .local v0, "cert":Lcom/lge/mdm/config/LGMDMCredentials;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lge/mdm/config/LGMDMCredentials;->issuerDN:Ljava/lang/String;

    .line 386
    const-string/jumbo v3, "LGMDMCertificateController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IssuerDN : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/mdm/config/LGMDMCredentials;->issuerDN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v2, Landroid/net/http/SslCertificate;

    invoke-direct {v2, p1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 390
    .local v2, "sslCert":Landroid/net/http/SslCertificate;
    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lge/mdm/config/LGMDMCredentials;->issuedToDN:Ljava/lang/String;

    .line 391
    const-string/jumbo v3, "LGMDMCertificateController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IssuedToDN : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/mdm/config/LGMDMCredentials;->issuedToDN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    .line 394
    .local v1, "serialNumber":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/lge/mdm/controller/LGMDMCertificateController;->fingerprint([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lge/mdm/config/LGMDMCredentials;->serial:Ljava/lang/String;

    .line 395
    const-string/jumbo v3, "LGMDMCertificateController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Serial number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/mdm/config/LGMDMCredentials;->serial:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-object v0
.end method

.method deleteKeyChain([B)Ljava/util/List;
    .registers 15
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 574
    if-eqz p1, :cond_56

    .line 575
    :try_start_3
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v7

    .line 576
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v4, "hash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 578
    .local v5, "index":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cert$iterator":Ljava/util/Iterator;
    move v6, v5

    .end local v5    # "index":I
    .local v6, "index":I
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 579
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    .line 580
    .local v8, "subject":Ljavax/security/auth/x500/X500Principal;
    invoke-direct {p0, v8}, Lcom/lge/mdm/controller/LGMDMCertificateController;->hash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    const-string/jumbo v9, "LGMDMCertificateController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " hash = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_49} :catch_57
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_49} :catch_4c

    move v6, v5

    .end local v5    # "index":I
    .restart local v6    # "index":I
    goto :goto_12

    .line 583
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v8    # "subject":Ljavax/security/auth/x500/X500Principal;
    :cond_4b
    return-object v4

    .line 587
    .end local v1    # "cert$iterator":Ljava/util/Iterator;
    .end local v4    # "hash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "index":I
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_4c
    move-exception v3

    .line 588
    .local v3, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v9, "LGMDMCertificateController"

    const-string/jumbo v10, "convertFromPem certification error"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :cond_56
    :goto_56
    return-object v12

    .line 585
    :catch_57
    move-exception v2

    .line 586
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v9, "LGMDMCertificateController"

    const-string/jumbo v10, "convertFromPem io error"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
.end method

.method public enumCaCertificateId(I)Ljava/util/List;
    .registers 9
    .param p1, "useType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 488
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x2

    if-ne p1, v4, :cond_22

    const/16 v3, 0x3f2

    .line 491
    .local v3, "uid":I
    :goto_b
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v5, "CACERT_"

    invoke-virtual {v4, v5, v3}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "caList":[Ljava/lang/String;
    if-eqz v0, :cond_25

    .line 493
    const/4 v4, 0x0

    array-length v5, v0

    :goto_18
    if-ge v4, v5, :cond_24

    aget-object v2, v0, v4

    .line 494
    .local v2, "str":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 490
    .end local v0    # "caList":[Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_22
    const/4 v3, -0x1

    .restart local v3    # "uid":I
    goto :goto_b

    .line 496
    .restart local v0    # "caList":[Ljava/lang/String;
    :cond_24
    return-object v1

    .line 498
    :cond_25
    return-object v6
.end method

.method public enumCertificateId(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "useType"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/lge/mdm/controller/LGMDMCertificateController;->enumCaCertificateId(I)Ljava/util/List;

    move-result-object v0

    .line 463
    .local v0, "enumCertificateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_42

    .line 464
    const-string/jumbo v5, "LGMDMCertificateController"

    const-string/jumbo v6, "cacert is not null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "str$iterator":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 467
    .local v3, "str":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    const-string/jumbo v5, "LGMDMCertificateController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "List CA : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 471
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "str$iterator":Ljava/util/Iterator;
    :cond_42
    const-string/jumbo v5, "LGMDMCertificateController"

    const-string/jumbo v6, "cacert is null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_4b
    invoke-virtual {p0, p2}, Lcom/lge/mdm/controller/LGMDMCertificateController;->enumUserCertificateId(I)Ljava/util/List;

    move-result-object v1

    .line 475
    .local v1, "enumUserCertificateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_88

    .line 476
    const-string/jumbo v5, "LGMDMCertificateController"

    const-string/jumbo v6, "cacert is not null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "str$iterator":Ljava/util/Iterator;
    :goto_5e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 478
    .restart local v3    # "str":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    const-string/jumbo v5, "LGMDMCertificateController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "List USER : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 482
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "str$iterator":Ljava/util/Iterator;
    :cond_88
    const-string/jumbo v5, "LGMDMCertificateController"

    const-string/jumbo v6, "cacert is null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_91
    return-object v2
.end method

.method public enumCertificateInfo(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "type"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMCredentials;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMCredentials;>;"
    invoke-static {}, Lcom/lge/mdm/LGMDMManager$CertType;->values()[Lcom/lge/mdm/LGMDMManager$CertType;

    move-result-object v5

    aget-object v5, v5, p2

    sget-object v6, Lcom/lge/mdm/LGMDMManager$CertType;->CACERT:Lcom/lge/mdm/LGMDMManager$CertType;

    if-eq v5, v6, :cond_1a

    invoke-static {}, Lcom/lge/mdm/LGMDMManager$CertType;->values()[Lcom/lge/mdm/LGMDMManager$CertType;

    move-result-object v5

    aget-object v5, v5, p2

    sget-object v6, Lcom/lge/mdm/LGMDMManager$CertType;->ALL:Lcom/lge/mdm/LGMDMManager$CertType;

    if-ne v5, v6, :cond_6e

    .line 433
    :cond_1a
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v6, "CACERT_"

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "caList":[Ljava/lang/String;
    if-eqz v0, :cond_65

    .line 435
    array-length v6, v0

    move v5, v4

    :goto_27
    if-ge v5, v6, :cond_6e

    aget-object v2, v0, v5

    .line 436
    .local v2, "str":Ljava/lang/String;
    const-string/jumbo v7, "LGMDMCertificateController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CA file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    .line 438
    .local v3, "val":[B
    invoke-virtual {p0, v1, v3}, Lcom/lge/mdm/controller/LGMDMCertificateController;->generateCertificateWithByteArray(Ljava/util/List;[B)V

    .line 435
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 441
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "val":[B
    :cond_65
    const-string/jumbo v5, "LGMDMCertificateController"

    const-string/jumbo v6, "cacert is null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .end local v0    # "caList":[Ljava/lang/String;
    :cond_6e
    invoke-static {}, Lcom/lge/mdm/LGMDMManager$CertType;->values()[Lcom/lge/mdm/LGMDMManager$CertType;

    move-result-object v5

    aget-object v5, v5, p2

    sget-object v6, Lcom/lge/mdm/LGMDMManager$CertType;->USRCERT:Lcom/lge/mdm/LGMDMManager$CertType;

    if-eq v5, v6, :cond_82

    invoke-static {}, Lcom/lge/mdm/LGMDMManager$CertType;->values()[Lcom/lge/mdm/LGMDMManager$CertType;

    move-result-object v5

    aget-object v5, v5, p2

    sget-object v6, Lcom/lge/mdm/LGMDMManager$CertType;->ALL:Lcom/lge/mdm/LGMDMManager$CertType;

    if-ne v5, v6, :cond_d5

    .line 445
    :cond_82
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v6, "USRCERT_"

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 446
    .restart local v0    # "caList":[Ljava/lang/String;
    if-eqz v0, :cond_cc

    .line 447
    array-length v5, v0

    :goto_8e
    if-ge v4, v5, :cond_d5

    aget-object v2, v0, v4

    .line 448
    .restart local v2    # "str":Ljava/lang/String;
    const-string/jumbo v6, "LGMDMCertificateController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USR file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USRCERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    .line 450
    .restart local v3    # "val":[B
    invoke-virtual {p0, v1, v3}, Lcom/lge/mdm/controller/LGMDMCertificateController;->generateCertificateWithByteArray(Ljava/util/List;[B)V

    .line 447
    add-int/lit8 v4, v4, 0x1

    goto :goto_8e

    .line 453
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "val":[B
    :cond_cc
    const-string/jumbo v4, "LGMDMCertificateController"

    const-string/jumbo v5, "usrcert is null"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .end local v0    # "caList":[Ljava/lang/String;
    :cond_d5
    return-object v1
.end method

.method public enumUserCertificateId(I)Ljava/util/List;
    .registers 9
    .param p1, "useType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x2

    if-ne p1, v4, :cond_22

    const/16 v2, 0x3f2

    .line 505
    .local v2, "uid":I
    :goto_b
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v5, "USRCERT_"

    invoke-virtual {v4, v5, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "userList":[Ljava/lang/String;
    if-eqz v3, :cond_25

    .line 507
    const/4 v4, 0x0

    array-length v5, v3

    :goto_18
    if-ge v4, v5, :cond_24

    aget-object v1, v3, v4

    .line 508
    .local v1, "str":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 504
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "userList":[Ljava/lang/String;
    :cond_22
    const/4 v2, -0x1

    .restart local v2    # "uid":I
    goto :goto_b

    .line 510
    .restart local v3    # "userList":[Ljava/lang/String;
    :cond_24
    return-object v0

    .line 512
    :cond_25
    return-object v6
.end method

.method generateCertificateWithByteArray(Ljava/util/List;[B)V
    .registers 13
    .param p2, "val"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMCredentials;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "certList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMCredentials;>;"
    :try_start_0
    const-string/jumbo v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 404
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v4, 0x0

    .line 406
    .local v4, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 408
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/security/cert/Certificate;>;"
    if-eqz p2, :cond_4a

    if-eqz v2, :cond_4a

    .line 409
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .end local v4    # "in":Ljava/io/InputStream;
    invoke-direct {v4, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 411
    .local v4, "in":Ljava/io/InputStream;
    invoke-virtual {v2, v4}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1

    .line 412
    .local v1, "certCollection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 413
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/security/cert/Certificate;>;"
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 414
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 415
    .local v6, "x509":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, v6}, Lcom/lge/mdm/controller/LGMDMCertificateController;->convertToLGMDMCredentials(Ljava/security/cert/X509Certificate;)Lcom/lge/mdm/config/LGMDMCredentials;

    move-result-object v0

    .line 416
    .local v0, "c":Lcom/lge/mdm/config/LGMDMCredentials;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_1a

    .line 421
    .end local v0    # "c":Lcom/lge/mdm/config/LGMDMCredentials;
    .end local v1    # "certCollection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/security/cert/Certificate;>;"
    .end local v6    # "x509":Ljava/security/cert/X509Certificate;
    :catch_2e
    move-exception v3

    .line 422
    .local v3, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v7, "LGMDMCertificateController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parseCert(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :cond_49
    :goto_49
    return-void

    .line 419
    .restart local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .local v4, "in":Ljava/io/InputStream;
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/security/cert/Certificate;>;"
    :cond_4a
    :try_start_4a
    const-string/jumbo v7, "LGMDMCertificateController"

    const-string/jumbo v8, "Cannot generate certificate with file."

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/security/cert/CertificateException; {:try_start_4a .. :try_end_53} :catch_2e

    goto :goto_49
.end method

.method public havePassword(I)Z
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 126
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMCertificateController;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_29

    const/4 v0, 0x1

    .line 127
    .local v0, "havePassword":Z
    :goto_14
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMCertificateController;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2b

    const/4 v1, 0x1

    .line 129
    .local v1, "havePattern":Z
    :goto_26
    if-nez v0, :cond_2d

    .end local v1    # "havePattern":Z
    :goto_28
    return v1

    .line 126
    .end local v0    # "havePassword":Z
    :cond_29
    const/4 v0, 0x0

    .restart local v0    # "havePassword":Z
    goto :goto_14

    .line 127
    :cond_2b
    const/4 v1, 0x0

    .restart local v1    # "havePattern":Z
    goto :goto_26

    .line 129
    :cond_2d
    const/4 v1, 0x1

    goto :goto_28
.end method

.method public initializeCertificate(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMCertificateController;->-getandroid_security_KeyStore$StateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

    .line 157
    return v2

    .line 135
    :pswitch_15
    const-string/jumbo v0, "LGMDMCertificateController"

    const-string/jumbo v1, "Keystore state : LOCKED"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p3}, Lcom/lge/mdm/controller/LGMDMCertificateController;->havePassword(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 137
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 139
    :cond_2b
    const-string/jumbo v0, "LGMDMCertificateController"

    const-string/jumbo v1, "plz change screen lock more strongly than now"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return v2

    .line 143
    :pswitch_35
    const-string/jumbo v0, "LGMDMCertificateController"

    const-string/jumbo v1, "Keystore state : UNINITIALIZED"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, p3}, Lcom/lge/mdm/controller/LGMDMCertificateController;->havePassword(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 145
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 147
    :cond_4b
    const-string/jumbo v0, "LGMDMCertificateController"

    const-string/jumbo v1, "plz change screen lock more strongly than now"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return v2

    .line 151
    :pswitch_55
    const-string/jumbo v0, "LGMDMCertificateController"

    const-string/jumbo v1, "Keystore state : UNLOCKED"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v0, "LGMDMCertificateController"

    const-string/jumbo v1, "Already initialized."

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x1

    return v0

    .line 133
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_35
        :pswitch_55
    .end packed-switch
.end method

.method public installCertificate(Landroid/content/ComponentName;[BLjava/lang/String;Ljava/lang/String;II)I
    .registers 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "certificate"    # [B
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "useType"    # I
    .param p6, "userHandle"    # I

    .prologue
    .line 165
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v2, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v6, "name"

    invoke-virtual {v2, v6, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v6, ".p12"

    invoke-virtual {p4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string/jumbo v6, ".pfx"

    invoke-virtual {p4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 169
    :cond_1d
    const-string/jumbo v6, "LGMDMCertificateController"

    const-string/jumbo v7, "Certificate is P12 or pfx"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v6, "PKCS12"

    invoke-virtual {v2, v6, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 171
    new-instance v6, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    invoke-direct {v6, p0, v2}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;-><init>(Lcom/lge/mdm/controller/LGMDMCertificateController;Landroid/os/Bundle;)V

    iput-object v6, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    .line 173
    const/4 v4, 0x0

    .line 174
    .local v4, "passwordSuccess":Z
    if-eqz p3, :cond_3c

    .line 175
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    invoke-virtual {v6, p3}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->extractPkcs12(Ljava/lang/String;)Z

    move-result v4

    .line 177
    .end local v4    # "passwordSuccess":Z
    :cond_3c
    if-eqz v4, :cond_57

    .line 178
    const-string/jumbo v6, "LGMDMCertificateController"

    const-string/jumbo v7, "Password is right"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    invoke-virtual {v6, p4}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->setName(Ljava/lang/String;)V

    .line 213
    :cond_4c
    :goto_4c
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    invoke-virtual {v6, p6}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->createSystemInstall(I)Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {p0, v6, p5}, Lcom/lge/mdm/controller/LGMDMCertificateController;->CredentialInstaller(Landroid/os/Bundle;I)I

    move-result v6

    return v6

    .line 180
    :cond_57
    const-string/jumbo v6, "LGMDMCertificateController"

    const-string/jumbo v7, "Password is wrong"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v6, 0x6

    return v6

    .line 184
    :cond_62
    const-string/jumbo v6, ".cer"

    invoke-virtual {p4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_74

    const-string/jumbo v6, ".crt"

    invoke-virtual {p4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 185
    :cond_74
    const-string/jumbo v6, "LGMDMCertificateController"

    const-string/jumbo v7, "Certificate is cer or crt"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v6, "CERT"

    invoke-virtual {v2, v6, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 187
    new-instance v6, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    invoke-direct {v6, p0, v2}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;-><init>(Lcom/lge/mdm/controller/LGMDMCertificateController;Landroid/os/Bundle;)V

    iput-object v6, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    .line 188
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    invoke-virtual {v6}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->hasKeyPair()Z

    move-result v6

    if-eqz v6, :cond_96

    .line 189
    invoke-direct {p0, p5}, Lcom/lge/mdm/controller/LGMDMCertificateController;->saveKeyPair(I)V

    goto :goto_4c

    .line 191
    :cond_96
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    invoke-virtual {v6}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->getUserCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 192
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_db

    .line 194
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    invoke-static {v6}, Lcom/lge/mdm/controller/LGMDMCertificateController$Util;->toMd5([B)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMCertificateController;->getPkeyMap()Ljava/util/Map;

    move-result-object v3

    .line 196
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 197
    .local v5, "privatekey":[B
    if-eqz v5, :cond_e5

    .line 198
    const-string/jumbo v6, "LGMDMCertificateController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "found matched key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-direct {p0, v3, p5}, Lcom/lge/mdm/controller/LGMDMCertificateController;->savePkeyMap(Ljava/util/Map;I)V

    .line 201
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    invoke-virtual {v6, v5}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->setPrivateKey([B)V

    .line 206
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v5    # "privatekey":[B
    :cond_db
    :goto_db
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    invoke-virtual {v6}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->hasAnyForSystemInstall()Z

    move-result v6

    if-nez v6, :cond_100

    .line 207
    const/4 v6, 0x7

    return v6

    .line 203
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .restart local v5    # "privatekey":[B
    :cond_e5
    const-string/jumbo v6, "LGMDMCertificateController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "didn\'t find matched private key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_db

    .line 209
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v5    # "privatekey":[B
    :cond_100
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    invoke-virtual {v6, p4}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->setName(Ljava/lang/String;)V

    goto/16 :goto_4c
.end method

.method public resetCredentials(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 637
    const-string/jumbo v0, "LGMDMCertificateController"

    const-string/jumbo v1, "resetCredentials"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    new-instance v0, Lcom/lge/mdm/controller/LGMDMCertificateController$ResetKeyStoreAndKeyChain;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/mdm/controller/LGMDMCertificateController$ResetKeyStoreAndKeyChain;-><init>(Lcom/lge/mdm/controller/LGMDMCertificateController;Lcom/lge/mdm/controller/LGMDMCertificateController$ResetKeyStoreAndKeyChain;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lge/mdm/controller/LGMDMCertificateController$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 639
    const/4 v0, 0x1

    return v0
.end method

.method public setGrant(Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .prologue
    const/4 v5, 0x0

    .line 236
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/lge/mdm/controller/LGMDMCertificateController;->setGrantInternal(Ljava/lang/String;Z)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v2

    return v2

    .line 240
    :catch_6
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LGMDMCertificateController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return v5

    .line 237
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_22
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "LGMDMCertificateController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "InterruptedException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return v5
.end method

.method public uninstallCertificate(Landroid/content/ComponentName;Ljava/lang/String;II)Z
    .registers 24
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "certificateId"    # Ljava/lang/String;
    .param p3, "useType"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 517
    const-string/jumbo v16, "LGMDMCertificateController"

    const-string/jumbo v17, "Uninstall Certificate"

    invoke-static/range {v16 .. v17}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v12, 0x0

    .line 519
    .local v12, "result":Z
    move-object/from16 v10, p2

    .line 520
    .local v10, "filename":Ljava/lang/String;
    const/16 v16, 0x2

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_1f

    const/16 v15, 0x3f2

    .line 522
    .local v15, "uid":I
    :goto_16
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_21

    .line 523
    const/16 v16, 0x0

    return v16

    .line 521
    .end local v15    # "uid":I
    :cond_1f
    const/4 v15, -0x1

    .restart local v15    # "uid":I
    goto :goto_16

    .line 526
    :cond_21
    const-string/jumbo v16, "."

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 527
    .local v11, "index":I
    if-lez v11, :cond_38

    .line 528
    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 531
    :cond_38
    const/4 v9, 0x0

    .line 532
    .local v9, "certificateExisted":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/controller/LGMDMCertificateController;->enumCertificateId(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v8

    .line 533
    .local v8, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "s$iterator":Ljava/util/Iterator;
    :cond_49
    :goto_49
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 534
    .local v13, "s":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_49

    .line 535
    const/4 v9, 0x1

    goto :goto_49

    .line 538
    .end local v13    # "s":Ljava/lang/String;
    :cond_5f
    if-nez v9, :cond_80

    .line 539
    const-string/jumbo v16, "LGMDMCertificateController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "no exist Certificate:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const/16 v16, 0x0

    return v16

    .line 543
    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "USRCERT_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_c7

    .line 544
    const-string/jumbo v16, "LGMDMCertificateController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " User Certificate is Deleted"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const/4 v12, 0x1

    .line 547
    :cond_c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "USRPKEY_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_10e

    .line 548
    const-string/jumbo v16, "LGMDMCertificateController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " PrivateKey is Deleted"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const/4 v12, 0x1

    .line 551
    :cond_10e
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "CACERT_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 552
    .local v7, "caListName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/mdm/controller/LGMDMCertificateController;->deleteKeyChain([B)Ljava/util/List;

    move-result-object v6

    .line 553
    .local v6, "caAlias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "CACERT_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_1ac

    .line 554
    const-string/jumbo v16, "LGMDMCertificateController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " CA Certificate is Deleted"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const/4 v12, 0x1

    .line 556
    if-eqz v6, :cond_1ac

    .line 557
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "alias$iterator":Ljava/util/Iterator;
    :goto_187
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1ac

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 558
    .local v4, "alias":Ljava/lang/String;
    new-instance v16, Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v4, v2}, Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;-><init>(Lcom/lge/mdm/controller/LGMDMCertificateController;Ljava/lang/String;Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_187

    .line 562
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    :cond_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "VPN_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_1f3

    .line 563
    const-string/jumbo v16, "LGMDMCertificateController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " VPN Certificate is Deleted"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v12, 0x1

    .line 566
    :cond_1f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "WIFI_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_23a

    .line 567
    const-string/jumbo v16, "LGMDMCertificateController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " WIFI Certificate is Deleted"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v12, 0x1

    .line 570
    :cond_23a
    return v12
.end method

.method public unlock(Ljava/lang/String;)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->lock()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 600
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 602
    :cond_f
    const-string/jumbo v0, "LGMDMCertificateController"

    const-string/jumbo v1, "KeyStore do not Lock."

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const/4 v0, 0x0

    return v0
.end method
