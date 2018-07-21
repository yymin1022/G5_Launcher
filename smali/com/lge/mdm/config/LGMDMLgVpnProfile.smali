.class public Lcom/lge/mdm/config/LGMDMLgVpnProfile;
.super Ljava/lang/Object;
.source "LGMDMLgVpnProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/config/LGMDMLgVpnProfile$connectionTypeMethod;,
        Lcom/lge/mdm/config/LGMDMLgVpnProfile$identityTypeMethod;,
        Lcom/lge/mdm/config/LGMDMLgVpnProfile$algorithmSuiteMethod;,
        Lcom/lge/mdm/config/LGMDMLgVpnProfile$eapMethodMethod;,
        Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeEncryptionAlgorithmMethod;,
        Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeIntegrityAlgorithmMethod;,
        Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeGroupMethod;,
        Lcom/lge/mdm/config/LGMDMLgVpnProfile$ipsecEncryptionAlgorithmMethod;,
        Lcom/lge/mdm/config/LGMDMLgVpnProfile$ipsecIntegrityAlgorithmMethod;,
        Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_IPSEC_RESULT;,
        Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;,
        Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;,
        Lcom/lge/mdm/config/LGMDMLgVpnProfile$1;
    }
.end annotation


# static fields
.field public static final CMD_CONNECTLGVPN:Ljava/lang/String; = "connectlgvpn"

.field public static final CONNECT_LGVPN_STATUS:Ljava/lang/String; = "LgVpnStatus"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/mdm/config/LGMDMLgVpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final LGVPN_CMD:Ljava/lang/String; = "LgVpnCommand"


# instance fields
.field public ProfileName:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public aggressiveMode:Z

.field public algorithmSuite:I

.field public caCert:I

.field public certificateRevocationCheck:Z

.field public connectionAttemptTimeout:I

.field public connectionType:I

.field public diableSplitTunneling:Z

.field public eapMethod:I

.field public extendedAuthentication:Z

.field public gateway:Ljava/lang/String;

.field public identity:Ljava/lang/String;

.field public identityType:I

.field public ikeEncryptionAlgorithm:I

.field public ikeGroup:I

.field public ikeIntegrityAlgorithm:I

.field public ikeLifeTime:I

.field public ipsecEncryptionAlgorithm:I

.field public ipsecIntegrityAlgorithm:I

.field public ipsecLifeTime:I

.field public mobike:Z

.field public password:Ljava/lang/String;

.field public perfectForwardSecrecy:Z

.field public preSharedKey:Ljava/lang/String;

.field public profileResult:I

.field public userCert:I

.field public userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1640
    new-instance v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$1;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$1;-><init>()V

    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "LGMDMLgVpnProfile"

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->TAG:Ljava/lang/String;

    .line 1653
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "LGMDMLgVpnProfile"

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->TAG:Ljava/lang/String;

    .line 1657
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 1656
    return-void
.end method

.method public static getAlgorithmSuiteMethod(I)Ljava/lang/String;
    .registers 3
    .param p0, "selectType"    # I

    .prologue
    .line 1721
    const/16 v0, 0x12c

    if-ge p0, v0, :cond_9

    .line 1722
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$algorithmSuiteMethod;->STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 1724
    :cond_9
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$algorithmSuiteMethod;->STRINGS:[Ljava/lang/String;

    add-int/lit16 v1, p0, -0x12c

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getCertificateResultAsEnum(I)Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;
    .registers 6
    .param p0, "i"    # I

    .prologue
    .line 1909
    invoke-static {}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->values()[Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_6
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 1911
    .local v0, "e":Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;
    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_11

    .line 1912
    return-object v0

    .line 1909
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1915
    .end local v0    # "e":Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getConnectionTypeMethod(I)Ljava/lang/String;
    .registers 3
    .param p0, "selectType"    # I

    .prologue
    .line 1679
    const/16 v0, 0x64

    if-ge p0, v0, :cond_9

    .line 1680
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$connectionTypeMethod;->STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 1682
    :cond_9
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$connectionTypeMethod;->STRINGS:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x64

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getEapMethodMethod(I)Ljava/lang/String;
    .registers 3
    .param p0, "selectType"    # I

    .prologue
    .line 1739
    const/16 v0, 0x190

    if-ge p0, v0, :cond_9

    .line 1740
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$eapMethodMethod;->STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 1742
    :cond_9
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$eapMethodMethod;->STRINGS:[Ljava/lang/String;

    add-int/lit16 v1, p0, -0x190

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getIdentityTypeMethod(I)Ljava/lang/String;
    .registers 3
    .param p0, "selectType"    # I

    .prologue
    .line 1699
    const/16 v0, 0xc8

    if-ge p0, v0, :cond_9

    .line 1700
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$identityTypeMethod;->STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 1702
    :cond_9
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$identityTypeMethod;->STRINGS:[Ljava/lang/String;

    add-int/lit16 v1, p0, -0xc8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getIkeEncryptionAlgorithmMethod(I)Ljava/lang/String;
    .registers 3
    .param p0, "selectType"    # I

    .prologue
    .line 1764
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_9

    .line 1765
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeEncryptionAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 1767
    :cond_9
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeEncryptionAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    add-int/lit16 v1, p0, -0x1f4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getIkeGroupMethod(I)Ljava/lang/String;
    .registers 3
    .param p0, "selectType"    # I

    .prologue
    .line 1812
    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_9

    .line 1813
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeGroupMethod;->STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 1815
    :cond_9
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeGroupMethod;->STRINGS:[Ljava/lang/String;

    add-int/lit16 v1, p0, -0x2bc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getIkeIntegrityAlgorithmMethod(I)Ljava/lang/String;
    .registers 3
    .param p0, "selectType"    # I

    .prologue
    .line 1786
    const/16 v0, 0x258

    if-ge p0, v0, :cond_9

    .line 1787
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeIntegrityAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 1789
    :cond_9
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeIntegrityAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    add-int/lit16 v1, p0, -0x258

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getIpsecEncryptionAlgorithmMethod(I)Ljava/lang/String;
    .registers 3
    .param p0, "selectType"    # I

    .prologue
    .line 1837
    const/16 v0, 0x320

    if-ge p0, v0, :cond_9

    .line 1838
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ipsecEncryptionAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 1840
    :cond_9
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ipsecEncryptionAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    add-int/lit16 v1, p0, -0x320

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getIpsecIntegrityAlgorithmMethod(I)Ljava/lang/String;
    .registers 3
    .param p0, "selectType"    # I

    .prologue
    .line 1859
    const/16 v0, 0x384

    if-ge p0, v0, :cond_9

    .line 1860
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ipsecIntegrityAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 1862
    :cond_9
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ipsecIntegrityAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    add-int/lit16 v1, p0, -0x384

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getIpsecResultAsEnum(I)Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_IPSEC_RESULT;
    .registers 6
    .param p0, "i"    # I

    .prologue
    .line 1875
    invoke-static {}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_IPSEC_RESULT;->values()[Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_IPSEC_RESULT;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_6
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 1876
    .local v0, "e":Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_IPSEC_RESULT;
    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_IPSEC_RESULT;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_11

    .line 1877
    return-object v0

    .line 1875
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1880
    .end local v0    # "e":Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_IPSEC_RESULT;
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getProfileResultAsEnum(I)Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;
    .registers 6
    .param p0, "i"    # I

    .prologue
    .line 1892
    invoke-static {}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;->values()[Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_6
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 1893
    .local v0, "e":Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;
    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_11

    .line 1894
    return-object v0

    .line 1892
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1897
    .end local v0    # "e":Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1560
    const/4 v0, 0x0

    return v0
.end method

.method public getAlgorithmSuite()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2337
    const/4 v0, 0x0

    .line 2339
    .local v0, "mAlgorithmSuite":Ljava/lang/String;
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$identityTypeMethod;->STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->algorithmSuite:I

    add-int/lit16 v2, v2, -0x12c

    aget-object v0, v1, v2

    .line 2341
    .local v0, "mAlgorithmSuite":Ljava/lang/String;
    return-object v0
.end method

.method public getCaCert()I
    .registers 2

    .prologue
    .line 2080
    iget v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->caCert:I

    return v0
.end method

.method public getConnectionAttemptTimeout()I
    .registers 2

    .prologue
    .line 2443
    iget v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionAttemptTimeout:I

    return v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2020
    const/4 v0, 0x0

    .line 2022
    .local v0, "mConnectionType":Ljava/lang/String;
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$connectionTypeMethod;->STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionType:I

    add-int/lit8 v2, v2, -0x64

    aget-object v0, v1, v2

    .line 2024
    .local v0, "mConnectionType":Ljava/lang/String;
    return-object v0
.end method

.method public getEapMethod()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2368
    const/4 v0, 0x0

    .line 2370
    .local v0, "mEapMethod":Ljava/lang/String;
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$eapMethodMethod;->STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->eapMethod:I

    add-int/lit16 v2, v2, -0x190

    aget-object v0, v1, v2

    .line 2372
    .local v0, "mEapMethod":Ljava/lang/String;
    return-object v0
.end method

.method public getGateway()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->gateway:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2122
    const/4 v0, 0x0

    .line 2124
    .local v0, "mIdentityType":Ljava/lang/String;
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$identityTypeMethod;->STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->identityType:I

    add-int/lit16 v2, v2, -0xc8

    aget-object v0, v1, v2

    .line 2126
    .local v0, "mIdentityType":Ljava/lang/String;
    return-object v0
.end method

.method public getIkeEncryptionAlgorithm()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2502
    const/4 v0, 0x0

    .line 2504
    .local v0, "mIkeEncryptionAlgorithm":Ljava/lang/String;
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeEncryptionAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeEncryptionAlgorithm:I

    add-int/lit16 v2, v2, -0x1f4

    aget-object v0, v1, v2

    .line 2506
    .local v0, "mIkeEncryptionAlgorithm":Ljava/lang/String;
    return-object v0
.end method

.method public getIkeGroup()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2583
    const/4 v0, 0x0

    .line 2585
    .local v0, "mIkeGroup":Ljava/lang/String;
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeGroupMethod;->STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeGroup:I

    add-int/lit16 v2, v2, -0x2bc

    aget-object v0, v1, v2

    .line 2586
    .local v0, "mIkeGroup":Ljava/lang/String;
    return-object v0
.end method

.method public getIkeIntegrityAlgorithm()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2538
    const/4 v0, 0x0

    .line 2540
    .local v0, "mIkeIntegrityAlgorithm":Ljava/lang/String;
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ikeIntegrityAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeIntegrityAlgorithm:I

    add-int/lit16 v2, v2, -0x258

    aget-object v0, v1, v2

    .line 2542
    .local v0, "mIkeIntegrityAlgorithm":Ljava/lang/String;
    return-object v0
.end method

.method public getIkeLifeTime()I
    .registers 2

    .prologue
    .line 2383
    iget v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeLifeTime:I

    return v0
.end method

.method public getIpsecEncryptionAlgorithm()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2622
    const/4 v0, 0x0

    .line 2624
    .local v0, "mIpsecEncryptionAlgorithm":Ljava/lang/String;
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ipsecEncryptionAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecEncryptionAlgorithm:I

    add-int/lit16 v2, v2, -0x320

    aget-object v0, v1, v2

    .line 2626
    .local v0, "mIpsecEncryptionAlgorithm":Ljava/lang/String;
    return-object v0
.end method

.method public getIpsecIntegrityAlgorithm()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2658
    const/4 v0, 0x0

    .line 2660
    .local v0, "mIpsecIntegrityAlgorithm":Ljava/lang/String;
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$ipsecIntegrityAlgorithmMethod;->STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecIntegrityAlgorithm:I

    add-int/lit16 v2, v2, -0x384

    aget-object v0, v1, v2

    .line 2662
    .local v0, "mIpsecIntegrityAlgorithm":Ljava/lang/String;
    return-object v0
.end method

.method public getIpsecLifeTime()I
    .registers 2

    .prologue
    .line 2413
    iget v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecLifeTime:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPreSharedKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->preSharedKey:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileResult()I
    .registers 2

    .prologue
    .line 2674
    iget v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->profileResult:I

    return v0
.end method

.method public getUserCert()I
    .registers 2

    .prologue
    .line 2058
    iget v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->userCert:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isAggressiveMode()Z
    .registers 2

    .prologue
    .line 2205
    iget-boolean v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->aggressiveMode:Z

    return v0
.end method

.method public isCertificateRevocationCheck()Z
    .registers 2

    .prologue
    .line 2271
    iget-boolean v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->certificateRevocationCheck:Z

    return v0
.end method

.method public isDiableSplitTunneling()Z
    .registers 2

    .prologue
    .line 2249
    iget-boolean v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->diableSplitTunneling:Z

    return v0
.end method

.method public isExtendedAuthentication()Z
    .registers 2

    .prologue
    .line 2183
    iget-boolean v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->extendedAuthentication:Z

    return v0
.end method

.method public isMobike()Z
    .registers 2

    .prologue
    .line 2293
    iget-boolean v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->mobike:Z

    return v0
.end method

.method public isPerfectForwardSecrecy()Z
    .registers 2

    .prologue
    .line 2227
    iget-boolean v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->perfectForwardSecrecy:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1607
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ProfileName:Ljava/lang/String;

    .line 1608
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->userName:Ljava/lang/String;

    .line 1609
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->password:Ljava/lang/String;

    .line 1610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionType:I

    .line 1611
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->gateway:Ljava/lang/String;

    .line 1612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->userCert:I

    .line 1613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->caCert:I

    .line 1614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->identityType:I

    .line 1615
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->identity:Ljava/lang/String;

    .line 1616
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->preSharedKey:Ljava/lang/String;

    .line 1618
    const/4 v1, 0x6

    new-array v0, v1, [Z

    .line 1619
    .local v0, "b":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 1620
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->extendedAuthentication:Z

    .line 1621
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->aggressiveMode:Z

    .line 1622
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->perfectForwardSecrecy:Z

    .line 1623
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->diableSplitTunneling:Z

    .line 1624
    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->certificateRevocationCheck:Z

    .line 1625
    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->mobike:Z

    .line 1627
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->algorithmSuite:I

    .line 1628
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->eapMethod:I

    .line 1629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeLifeTime:I

    .line 1630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecLifeTime:I

    .line 1631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionAttemptTimeout:I

    .line 1632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeEncryptionAlgorithm:I

    .line 1633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeIntegrityAlgorithm:I

    .line 1634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeGroup:I

    .line 1635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecEncryptionAlgorithm:I

    .line 1636
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecIntegrityAlgorithm:I

    .line 1637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->profileResult:I

    .line 1606
    return-void
.end method

.method public setAggressiveMode(Z)V
    .registers 2
    .param p1, "aggressiveMode"    # Z

    .prologue
    .line 2216
    iput-boolean p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->aggressiveMode:Z

    .line 2215
    return-void
.end method

.method public setAlgorithmSuite(I)V
    .registers 3
    .param p1, "selectType"    # I

    .prologue
    .line 2322
    const/16 v0, 0x12c

    if-ge p1, v0, :cond_6

    .line 2323
    add-int/lit16 p1, p1, 0x12c

    .line 2325
    :cond_6
    iput p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->algorithmSuite:I

    .line 2321
    return-void
.end method

.method public setCaCert(I)V
    .registers 2
    .param p1, "caCert"    # I

    .prologue
    .line 2091
    iput p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->caCert:I

    .line 2090
    return-void
.end method

.method public setCertificateRevocationCheck(Z)V
    .registers 2
    .param p1, "certificateRevocationCheck"    # Z

    .prologue
    .line 2282
    iput-boolean p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->certificateRevocationCheck:Z

    .line 2281
    return-void
.end method

.method public setConnectionAttemptTimeout(I)V
    .registers 7
    .param p1, "connectionAttemptTimeout"    # I

    .prologue
    const/16 v4, 0x3c

    const/16 v3, 0x32

    const/16 v2, 0x28

    const/16 v1, 0x1e

    const/16 v0, 0x14

    .line 2454
    if-lt p1, v4, :cond_f

    .line 2455
    iput v4, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionAttemptTimeout:I

    .line 2453
    :goto_e
    return-void

    .line 2456
    :cond_f
    if-lt p1, v3, :cond_14

    .line 2457
    iput v3, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionAttemptTimeout:I

    goto :goto_e

    .line 2458
    :cond_14
    if-lt p1, v2, :cond_19

    .line 2459
    iput v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionAttemptTimeout:I

    goto :goto_e

    .line 2460
    :cond_19
    if-lt p1, v1, :cond_1e

    .line 2461
    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionAttemptTimeout:I

    goto :goto_e

    .line 2462
    :cond_1e
    if-lt p1, v0, :cond_23

    .line 2463
    iput v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionAttemptTimeout:I

    goto :goto_e

    .line 2465
    :cond_23
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionAttemptTimeout:I

    goto :goto_e
.end method

.method public setConnectionType(I)V
    .registers 3
    .param p1, "selectType"    # I

    .prologue
    .line 2005
    const/16 v0, 0x64

    if-ge p1, v0, :cond_6

    .line 2006
    add-int/lit8 p1, p1, 0x64

    .line 2008
    :cond_6
    iput p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionType:I

    .line 2004
    return-void
.end method

.method public setDiableSplitTunneling(Z)V
    .registers 2
    .param p1, "diableSplitTunneling"    # Z

    .prologue
    .line 2260
    iput-boolean p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->diableSplitTunneling:Z

    .line 2259
    return-void
.end method

.method public setEapMethod(I)V
    .registers 3
    .param p1, "selectType"    # I

    .prologue
    .line 2354
    const/16 v0, 0x190

    if-ge p1, v0, :cond_6

    .line 2355
    add-int/lit16 p1, p1, 0x190

    .line 2357
    :cond_6
    iput p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->eapMethod:I

    .line 2353
    return-void
.end method

.method public setExtendedAuthentication(Z)V
    .registers 2
    .param p1, "extendedAuthentication"    # Z

    .prologue
    .line 2194
    iput-boolean p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->extendedAuthentication:Z

    .line 2193
    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .registers 2
    .param p1, "gateway"    # Ljava/lang/String;

    .prologue
    .line 2047
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->gateway:Ljava/lang/String;

    .line 2046
    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .registers 2
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 2149
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->identity:Ljava/lang/String;

    .line 2148
    return-void
.end method

.method public setIdentityType(I)V
    .registers 3
    .param p1, "selectType"    # I

    .prologue
    .line 2107
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_6

    .line 2108
    add-int/lit16 p1, p1, 0xc8

    .line 2110
    :cond_6
    iput p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->identityType:I

    .line 2106
    return-void
.end method

.method public setIkeEncryptionAlgorithm(I)V
    .registers 3
    .param p1, "selectType"    # I

    .prologue
    .line 2487
    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_6

    .line 2488
    add-int/lit16 p1, p1, 0x1f4

    .line 2490
    :cond_6
    iput p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeEncryptionAlgorithm:I

    .line 2486
    return-void
.end method

.method public setIkeGroup(I)V
    .registers 3
    .param p1, "selectType"    # I

    .prologue
    .line 2569
    const/16 v0, 0x2bc

    if-ge p1, v0, :cond_6

    .line 2570
    add-int/lit16 p1, p1, 0x2bc

    .line 2572
    :cond_6
    iput p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeGroup:I

    .line 2568
    return-void
.end method

.method public setIkeIntegrityAlgorithm(I)V
    .registers 3
    .param p1, "selectType"    # I

    .prologue
    .line 2523
    const/16 v0, 0x258

    if-ge p1, v0, :cond_6

    .line 2524
    add-int/lit16 p1, p1, 0x258

    .line 2526
    :cond_6
    iput p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeIntegrityAlgorithm:I

    .line 2522
    return-void
.end method

.method public setIkeLifeTime(I)V
    .registers 4
    .param p1, "ikeLifeTimeHour"    # I

    .prologue
    const/16 v1, 0x18

    const/4 v0, 0x1

    .line 2394
    if-gt p1, v0, :cond_8

    .line 2395
    iput v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeLifeTime:I

    .line 2396
    return-void

    .line 2398
    :cond_8
    if-lt p1, v1, :cond_d

    .line 2399
    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeLifeTime:I

    .line 2400
    return-void

    .line 2402
    :cond_d
    iput p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeLifeTime:I

    .line 2393
    return-void
.end method

.method public setIpsecEncryptionAlgorithm(I)V
    .registers 3
    .param p1, "selectType"    # I

    .prologue
    .line 2607
    const/16 v0, 0x320

    if-ge p1, v0, :cond_6

    .line 2608
    add-int/lit16 p1, p1, 0x320

    .line 2610
    :cond_6
    iput p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecEncryptionAlgorithm:I

    .line 2606
    return-void
.end method

.method public setIpsecIntegrityAlgorithm(I)V
    .registers 3
    .param p1, "selectType"    # I

    .prologue
    .line 2643
    const/16 v0, 0x384

    if-ge p1, v0, :cond_6

    .line 2644
    add-int/lit16 p1, p1, 0x384

    .line 2646
    :cond_6
    iput p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecIntegrityAlgorithm:I

    .line 2642
    return-void
.end method

.method public setIpsecLifeTime(I)V
    .registers 4
    .param p1, "ipsecLifeTime"    # I

    .prologue
    const/16 v1, 0x18

    const/4 v0, 0x1

    .line 2424
    if-gt p1, v0, :cond_8

    .line 2425
    iput v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecLifeTime:I

    .line 2426
    return-void

    .line 2428
    :cond_8
    if-lt p1, v1, :cond_d

    .line 2429
    iput v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecLifeTime:I

    .line 2430
    return-void

    .line 2432
    :cond_d
    iput p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecLifeTime:I

    .line 2423
    return-void
.end method

.method public setMobike(Z)V
    .registers 2
    .param p1, "mobike"    # Z

    .prologue
    .line 2304
    iput-boolean p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->mobike:Z

    .line 2303
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1986
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->password:Ljava/lang/String;

    .line 1985
    return-void
.end method

.method public setPerfectForwardSecrecy(Z)V
    .registers 2
    .param p1, "perfectForwardSecrecy"    # Z

    .prologue
    .line 2238
    iput-boolean p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->perfectForwardSecrecy:Z

    .line 2237
    return-void
.end method

.method public setPreSharedKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "preSharedKey"    # Ljava/lang/String;

    .prologue
    .line 2172
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->preSharedKey:Ljava/lang/String;

    .line 2171
    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "ProfileName"    # Ljava/lang/String;

    .prologue
    .line 1940
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ProfileName:Ljava/lang/String;

    .line 1939
    return-void
.end method

.method public setUserCert(Ljava/lang/String;)V
    .registers 4
    .param p1, "userCert"    # Ljava/lang/String;

    .prologue
    .line 2069
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->userCert:I

    .line 2068
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 1963
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->userName:Ljava/lang/String;

    .line 1962
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2682
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2683
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "* Profile name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2684
    const-string/jumbo v2, "\t"

    .line 2683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2684
    const-string/jumbo v2, "UserName : "

    .line 2683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2684
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->userName:Ljava/lang/String;

    .line 2683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2684
    const-string/jumbo v2, "\n"

    .line 2683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2685
    const-string/jumbo v2, "\t"

    .line 2683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2685
    const-string/jumbo v2, "Password : "

    .line 2683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2685
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->password:Ljava/lang/String;

    .line 2683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2685
    const-string/jumbo v2, "\n"

    .line 2683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2686
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionType:I

    if-eqz v1, :cond_6e

    .line 2687
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "Connection type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2688
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    .line 2687
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2688
    const-string/jumbo v2, "\n"

    .line 2687
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2691
    :cond_6e
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "Gateway : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->gateway:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2693
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->identityType:I

    if-eqz v1, :cond_a8

    .line 2694
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "Identity Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2695
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->getIdentityType()Ljava/lang/String;

    move-result-object v2

    .line 2694
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2695
    const-string/jumbo v2, "\n"

    .line 2694
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2699
    :cond_a8
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->identity:Ljava/lang/String;

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->identity:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2dd

    .line 2704
    :cond_b7
    :goto_b7
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "User Certificate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2706
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->userCert:I

    if-nez v1, :cond_2f9

    .line 2707
    const-string/jumbo v1, "No User certificate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2712
    :goto_d5
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "CA certificate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2713
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->caCert:I

    if-nez v1, :cond_307

    .line 2714
    const-string/jumbo v1, "No CA certificate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2719
    :goto_f3
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "Preshared Key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2720
    const-string/jumbo v2, "\t"

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2720
    const-string/jumbo v2, "Extended Authentication : "

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2720
    iget-boolean v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->extendedAuthentication:Z

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2720
    const-string/jumbo v2, "\n"

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2721
    const-string/jumbo v2, "\t"

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2721
    const-string/jumbo v2, "Aggressive mode : "

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2721
    iget-boolean v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->aggressiveMode:Z

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2721
    const-string/jumbo v2, "\n"

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2722
    const-string/jumbo v2, "\t"

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2722
    const-string/jumbo v2, "Perfect forward secrecy : "

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2722
    iget-boolean v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->perfectForwardSecrecy:Z

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2722
    const-string/jumbo v2, "\n"

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2723
    const-string/jumbo v2, "\t"

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2723
    const-string/jumbo v2, "Disable split tunneling : "

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2723
    iget-boolean v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->diableSplitTunneling:Z

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2723
    const-string/jumbo v2, "\n"

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2724
    const-string/jumbo v2, "\t"

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2724
    const-string/jumbo v2, "Certificate revocation check : "

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2724
    iget-boolean v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->certificateRevocationCheck:Z

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2724
    const-string/jumbo v2, "\n"

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2725
    const-string/jumbo v2, "\t"

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2725
    const-string/jumbo v2, "Mobike : "

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2725
    iget-boolean v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->mobike:Z

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2725
    const-string/jumbo v2, "\n"

    .line 2719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2727
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->algorithmSuite:I

    if-eqz v1, :cond_1cf

    .line 2728
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "Algorithm suite : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2729
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->getAlgorithmSuite()Ljava/lang/String;

    move-result-object v2

    .line 2728
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2729
    const-string/jumbo v2, "\n"

    .line 2728
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2732
    :cond_1cf
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->eapMethod:I

    if-eqz v1, :cond_1ef

    .line 2733
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "EAP method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->getEapMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2734
    const-string/jumbo v2, "\n"

    .line 2733
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2737
    :cond_1ef
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeEncryptionAlgorithm:I

    if-eqz v1, :cond_20f

    .line 2738
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "IKE encryption algorithm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2739
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->getIkeEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 2738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2739
    const-string/jumbo v2, "\n"

    .line 2738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2742
    :cond_20f
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeIntegrityAlgorithm:I

    if-eqz v1, :cond_22f

    .line 2743
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "IKE integrity algorithm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2744
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->getIkeIntegrityAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 2743
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2744
    const-string/jumbo v2, "\n"

    .line 2743
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2747
    :cond_22f
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeGroup:I

    if-eqz v1, :cond_24f

    .line 2748
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "IKE group : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->getIkeGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2749
    const-string/jumbo v2, "\n"

    .line 2748
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2752
    :cond_24f
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecEncryptionAlgorithm:I

    if-eqz v1, :cond_26f

    .line 2753
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "IPsec encryption algorithm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2754
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->getIpsecEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 2753
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2754
    const-string/jumbo v2, "\n"

    .line 2753
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2757
    :cond_26f
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecIntegrityAlgorithm:I

    if-eqz v1, :cond_28f

    .line 2758
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "IPsec Integrity algorithm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2759
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->getIpsecIntegrityAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 2758
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2759
    const-string/jumbo v2, "\n"

    .line 2758
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2762
    :cond_28f
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "IKE life time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeLifeTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2763
    const-string/jumbo v2, "\t"

    .line 2762
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2763
    const-string/jumbo v2, "IPsec life time : "

    .line 2762
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2763
    iget v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecLifeTime:I

    .line 2762
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2763
    const-string/jumbo v2, "\n"

    .line 2762
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2764
    const-string/jumbo v2, "\t"

    .line 2762
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2764
    const-string/jumbo v2, "Connection attempt timeout : "

    .line 2762
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2764
    iget v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionAttemptTimeout:I

    .line 2762
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2766
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2700
    :cond_2dd
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "Identity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->identity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2701
    const-string/jumbo v2, "\n"

    .line 2700
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b7

    .line 2709
    :cond_2f9
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->userCert:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_d5

    .line 2716
    :cond_307
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->caCert:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_f3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 1569
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ProfileName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1570
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->userName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1571
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1572
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->gateway:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1574
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->userCert:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->caCert:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1576
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->identityType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1577
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->identity:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1578
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1580
    const/4 v1, 0x6

    new-array v0, v1, [Z

    .line 1581
    .local v0, "b":[Z
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->extendedAuthentication:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    .line 1582
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->aggressiveMode:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    .line 1583
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->perfectForwardSecrecy:Z

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    .line 1584
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->diableSplitTunneling:Z

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    .line 1585
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->certificateRevocationCheck:Z

    const/4 v2, 0x4

    aput-boolean v1, v0, v2

    .line 1586
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->mobike:Z

    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    .line 1587
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 1589
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->algorithmSuite:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1590
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->eapMethod:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1591
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeLifeTime:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1592
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecLifeTime:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1593
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->connectionAttemptTimeout:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1594
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeEncryptionAlgorithm:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1595
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeIntegrityAlgorithm:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1596
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ikeGroup:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1597
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecEncryptionAlgorithm:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1598
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ipsecIntegrityAlgorithm:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1599
    iget v1, p0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->profileResult:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1567
    return-void
.end method
