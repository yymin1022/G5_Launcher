.class public Lcom/lge/mdm/util/LGMDMConfig;
.super Ljava/lang/Object;
.source "LGMDMConfig.java"


# static fields
.field public static final ANDROID_VERSION_ICS_FINAL:I = 0xf

.field public static final EXCHANGE_EMAIL_VER:Ljava/lang/String; = "6.60"

.field public static final NEWCLIENT_PROVIDER:Ljava/lang/String; = "content://com.lge.email.providers.content/account/mdm"

.field public static final OPERATOR_ACG:Ljava/lang/String; = "ACG"

.field public static final OPERATOR_ATT:Ljava/lang/String; = "ATT"

.field public static final OPERATOR_BELL:Ljava/lang/String; = "BELL"

.field public static final OPERATOR_BM:Ljava/lang/String; = "BM"

.field public static final OPERATOR_DCM:Ljava/lang/String; = "DCM"

.field public static final OPERATOR_KDDI:Ljava/lang/String; = "KDDI"

.field public static final OPERATOR_KT:Ljava/lang/String; = "KT"

.field public static final OPERATOR_LGU:Ljava/lang/String; = "LGU"

.field public static final OPERATOR_MON:Ljava/lang/String; = "MON"

.field public static final OPERATOR_MPCS:Ljava/lang/String; = "MPCS"

.field public static final OPERATOR_OPEN:Ljava/lang/String; = "OPEN"

.field public static final OPERATOR_SHB:Ljava/lang/String; = "SHB"

.field public static final OPERATOR_SKT:Ljava/lang/String; = "SKT"

.field public static final OPERATOR_SPRINT:Ljava/lang/String; = "SPRINT"

.field public static final OPERATOR_STL:Ljava/lang/String; = "STL"

.field public static final OPERATOR_TCL:Ljava/lang/String; = "TCL"

.field public static final OPERATOR_TLS:Ljava/lang/String; = "TLS"

.field public static final OPERATOR_TRF:Ljava/lang/String; = "TRF"

.field public static final OPERATOR_USC:Ljava/lang/String; = "USC"

.field public static final OPERATOR_VIV:Ljava/lang/String; = "VIV"

.field public static final OPERATOR_VZW:Ljava/lang/String; = "VZW"

.field public static final PRODUCT_2X_EU:Ljava/lang/String; = "star"

.field public static final PRODUCT_BATMAN:Ljava/lang/String; = "batman"

.field public static final PRODUCT_BATMAN_LGU:Ljava/lang/String; = "batman_lgu"

.field public static final PRODUCT_BATMAN_SKT:Ljava/lang/String; = "batman_skt"

.field public static final PRODUCT_BATMAN_VZW:Ljava/lang/String; = "batman_vzw"

.field public static final PRODUCT_BLACK:Ljava/lang/String; = "black"

.field public static final PRODUCT_CAYMAN:Ljava/lang/String; = "cayman"

.field public static final PRODUCT_COSMO:Ljava/lang/String; = "cosmopolitan"

.field public static final PRODUCT_CX2:Ljava/lang/String; = "cx2"

.field public static final PRODUCT_D1LV:Ljava/lang/String; = "d1lv"

.field public static final PRODUCT_D1L_KT:Ljava/lang/String; = "d1lkt"

.field public static final PRODUCT_D1L_LGU:Ljava/lang/String; = "d1lu"

.field public static final PRODUCT_D1L_SKT:Ljava/lang/String; = "d1lsk"

.field public static final PRODUCT_F70:Ljava/lang/String; = "f70"

.field public static final PRODUCT_FX1E:Ljava/lang/String; = "fx1e"

.field public static final PRODUCT_G_KT_SKT:Ljava/lang/String; = "geehrc"

.field public static final PRODUCT_G_LGU:Ljava/lang/String; = "geehrc4g"

.field public static final PRODUCT_I_ATT:Ljava/lang/String; = "i_atnt"

.field public static final PRODUCT_I_DCM:Ljava/lang/String; = "i_dcm"

.field public static final PRODUCT_I_LGU:Ljava/lang/String; = "i_lgu"

.field public static final PRODUCT_I_SKT:Ljava/lang/String; = "i_skt"

.field public static final PRODUCT_I_VZW:Ljava/lang/String; = "i_vzw"

.field public static final PRODUCT_JUSTIN:Ljava/lang/String; = "justin"

.field public static final PRODUCT_L1A:Ljava/lang/String; = "l1a"

.field public static final PRODUCT_NAME_D1LV:Ljava/lang/String; = "d1lv_VZW_US"

.field public static final PRODUCT_NAME_F120_LGU:Ljava/lang/String; = "cayman_lgu_kr"

.field public static final PRODUCT_NAME_I_VZW:Ljava/lang/String; = "i_vzw"

.field public static final PRODUCT_NAME_LS840_SPRINT:Ljava/lang/String; = "cayman_sprint_us"

.field public static final PRODUCT_NAME_LS860_SPRINT:Ljava/lang/String; = "l2s_SPR_US"

.field public static final PRODUCT_NAME_LS970_SPRINT:Ljava/lang/String; = "geehrc4g_spr_us"

.field public static final PRODUCT_NAME_U0_SPRINT:Ljava/lang/String; = "u0_cdma_bm_us"

.field public static final PRODUCT_NAME_VS840_VZW:Ljava/lang/String; = "cayman_vzw_us"

.field public static final PRODUCT_NAME_VS950_VZW:Ljava/lang/String; = "batman_vzw_us"

.field public static final PRODUCT_P2:Ljava/lang/String; = "p2"

.field public static final PRODUCT_V3_DS:Ljava/lang/String; = "vee3ds"

.field public static final PRODUCT_V3_E:Ljava/lang/String; = "vee3e"

.field public static final PRODUCT_V5_DS:Ljava/lang/String; = "vee5ds"

.field public static final PRODUCT_V5_NFC:Ljava/lang/String; = "vee5nfc"

.field public static final PRODUCT_V5_SS:Ljava/lang/String; = "vee5ss"

.field public static final PRODUCT_X3:Ljava/lang/String; = "x3"

.field private static final TAG:Ljava/lang/String; = "LGMDMConfig"

.field public static final TARGET_COUNTRY_KR:Ljava/lang/String; = "KR"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidVersion()I
    .registers 2

    .prologue
    .line 164
    const-string/jumbo v0, "ro.build.version.sdk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCountryName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    const-string/jumbo v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "CountryName":Ljava/lang/String;
    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 122
    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOperator()Ljava/lang/String;
    .registers 1

    .prologue
    .line 89
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProduct()Ljava/lang/String;
    .registers 1

    .prologue
    .line 93
    const-string/jumbo v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 97
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasFeatureNfcP2P()Z
    .registers 2

    .prologue
    .line 154
    const-string/jumbo v0, "SKT"

    invoke-static {}, Lcom/lge/mdm/util/LGMDMConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 155
    const-string/jumbo v0, "KT"

    invoke-static {}, Lcom/lge/mdm/util/LGMDMConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 154
    if-nez v0, :cond_27

    .line 156
    const-string/jumbo v0, "LGU"

    invoke-static {}, Lcom/lge/mdm/util/LGMDMConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 154
    if-eqz v0, :cond_32

    .line 157
    :cond_27
    const-string/jumbo v0, "LGMDMConfig"

    const-string/jumbo v1, "hasFeatureNfcP2P : true "

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public static isCountryKr()Z
    .registers 2

    .prologue
    .line 106
    const-string/jumbo v0, "KR"

    invoke-static {}, Lcom/lge/mdm/util/LGMDMConfig;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 107
    const-string/jumbo v0, "LGMDMConfig"

    const-string/jumbo v1, "isCountryKr : true"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    return v0

    .line 110
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static isDefaultDeviceEncryptionModel(Landroid/content/Context;)Z
    .registers 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_default_encrypt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 146
    const-string/jumbo v0, "LGMDMConfig"

    const-string/jumbo v1, "Device Encryption is enabled by default."

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_17
    const-string/jumbo v0, "LGMDMConfig"

    const-string/jumbo v1, "Device Encryption is not enabled by default."

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public static isExchangeEmail(Landroid/content/Context;)Z
    .registers 17
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 169
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .line 170
    .local v11, "pi":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    .line 172
    .local v5, "is_exchange_app":Z
    const-string/jumbo v13, "LGMDMConfig"

    const-string/jumbo v14, "[isExchangeEmail] start."

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 175
    .local v6, "id":J
    :try_start_13
    const-string/jumbo v13, "com.lge.email"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 176
    .local v11, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 177
    .local v1, "emailVersion":Ljava/lang/String;
    const-string/jumbo v13, "LGMDMConfig"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "cur version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v13, "LGMDMConfig"

    const-string/jumbo v14, "new version: 6.60"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v13, "\\."

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "getVer":[Ljava/lang/String;
    const-string/jumbo v13, "6.60"

    const-string/jumbo v14, "\\."

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, "newVer":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, "getMainVer":I
    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 185
    .local v8, "newMainVer":I
    const/4 v13, 0x1

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 186
    .local v3, "getSubVer":I
    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 188
    .local v9, "newSubVer":I
    if-le v2, v8, :cond_8e

    .line 189
    const/4 v5, 0x1

    .line 199
    :goto_70
    const-string/jumbo v13, "LGMDMConfig"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "is exchange: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_8a} :catch_98
    .catchall {:try_start_13 .. :try_end_8a} :catchall_a7

    .line 204
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    .end local v1    # "emailVersion":Ljava/lang/String;
    .end local v2    # "getMainVer":I
    .end local v3    # "getSubVer":I
    .end local v4    # "getVer":[Ljava/lang/String;
    .end local v8    # "newMainVer":I
    .end local v9    # "newSubVer":I
    .end local v10    # "newVer":[Ljava/lang/String;
    .end local v11    # "pi":Landroid/content/pm/PackageInfo;
    :goto_8d
    return v5

    .line 190
    .restart local v1    # "emailVersion":Ljava/lang/String;
    .restart local v2    # "getMainVer":I
    .restart local v3    # "getSubVer":I
    .restart local v4    # "getVer":[Ljava/lang/String;
    .restart local v8    # "newMainVer":I
    .restart local v9    # "newSubVer":I
    .restart local v10    # "newVer":[Ljava/lang/String;
    .restart local v11    # "pi":Landroid/content/pm/PackageInfo;
    :cond_8e
    if-ne v2, v8, :cond_96

    .line 191
    if-lt v3, v9, :cond_94

    .line 192
    const/4 v5, 0x1

    goto :goto_70

    .line 194
    :cond_94
    const/4 v5, 0x0

    goto :goto_70

    .line 197
    :cond_96
    const/4 v5, 0x0

    goto :goto_70

    .line 200
    .end local v1    # "emailVersion":Ljava/lang/String;
    .end local v2    # "getMainVer":I
    .end local v3    # "getSubVer":I
    .end local v4    # "getVer":[Ljava/lang/String;
    .end local v8    # "newMainVer":I
    .end local v9    # "newSubVer":I
    .end local v10    # "newVer":[Ljava/lang/String;
    .end local v11    # "pi":Landroid/content/pm/PackageInfo;
    :catch_98
    move-exception v0

    .line 201
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_99
    const-string/jumbo v13, "LGMDMConfig"

    const-string/jumbo v14, "email info not exist !!"

    invoke-static {v13, v14, v0}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_a7

    .line 202
    const/4 v5, 0x0

    .line 204
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8d

    .line 203
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_a7
    move-exception v13

    .line 204
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    throw v13
.end method

.method public static isSupportDeviceEncryptionModel(Landroid/content/Context;)Z
    .registers 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_data_encrypt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 137
    const-string/jumbo v0, "LGMDMConfig"

    const-string/jumbo v1, "Device Encryption is supported"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_17
    const-string/jumbo v0, "LGMDMConfig"

    const-string/jumbo v1, "Device Encryption is not supported"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportStorageEncryptionModel(Landroid/content/Context;)Z
    .registers 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 126
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nosdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_sd_encrypt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 131
    const-string/jumbo v0, "LGMDMConfig"

    const-string/jumbo v1, "Storage Encryption is supported"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_27
    const-string/jumbo v0, "LGMDMConfig"

    const-string/jumbo v1, "Storage Encryption is not supported"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public static isVerizonOperator()Z
    .registers 2

    .prologue
    .line 114
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/lge/mdm/util/LGMDMConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 115
    const-string/jumbo v0, "LGMDMConfig"

    const-string/jumbo v1, "isVerizonOperator : true "

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_18
    const/4 v0, 0x0

    return v0
.end method
