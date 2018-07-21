.class public Lcom/lge/mdm/config/LGMDMWifiConfiguration;
.super Ljava/lang/Object;
.source "LGMDMWifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/config/LGMDMWifiConfiguration$Eap;,
        Lcom/lge/mdm/config/LGMDMWifiConfiguration$Phase2;,
        Lcom/lge/mdm/config/LGMDMWifiConfiguration$KeyMgmt;,
        Lcom/lge/mdm/config/LGMDMWifiConfiguration$Protocol;,
        Lcom/lge/mdm/config/LGMDMWifiConfiguration$AuthAlgorithm;,
        Lcom/lge/mdm/config/LGMDMWifiConfiguration$PairwiseCipher;,
        Lcom/lge/mdm/config/LGMDMWifiConfiguration$GroupCipher;,
        Lcom/lge/mdm/config/LGMDMWifiConfiguration$Status;,
        Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;,
        Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;,
        Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;,
        Lcom/lge/mdm/config/LGMDMWifiConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/mdm/config/LGMDMWifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_AUTH_FAILURE:I = 0x3

.field public static final DISABLED_DHCP_FAILURE:I = 0x2

.field public static final DISABLED_DNS_FAILURE:I = 0x1

.field public static final DISABLED_UNKNOWN_REASON:I = 0x0

.field public static final ENGINE_DISABLE:Ljava/lang/String; = "0"

.field public static final ENGINE_ENABLE:Ljava/lang/String; = "1"

.field public static final INVALID_NETWORK_ID:I = -0x1

.field public static final KEYSTORE_ENGINE_ID:Ljava/lang/String; = "keystore"

.field private static final TAG:Ljava/lang/String; = "LGMDMWifiConfiguration"

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final wepKeyVarNames:[Ljava/lang/String;

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public hiddenSSID:Z

.field public ipAssignment:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

.field public linkProperties:Landroid/net/LinkProperties;

.field private mAnonymous_identity:Ljava/lang/String;

.field private mCa_cert:Ljava/lang/String;

.field private mClient_cert:Ljava/lang/String;

.field private mEap:Ljava/lang/String;

.field private mEngine:Ljava/lang/String;

.field private mEngine_id:Ljava/lang/String;

.field private mIdentity:Ljava/lang/String;

.field private mKey_id:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPhase2:Ljava/lang/String;

.field private mPrivate_key:Ljava/lang/String;

.field public networkId:I

.field public preSharedKey:Ljava/lang/String;

.field public priority:I

.field public proxySettings:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

.field public status:I

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I


# direct methods
.method static synthetic -set0(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mAnonymous_identity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mCa_cert:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set10(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPrivate_key:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mClient_cert:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEap:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEngine:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEngine_id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mIdentity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mKey_id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPhase2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->stringToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/os/Parcel;)Ljava/util/BitSet;
    .registers 2
    .param p0, "src"    # Landroid/os/Parcel;

    .prologue
    invoke-static {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "wep_key0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "wep_key1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "wep_key2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "wep_key3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .line 1543
    new-instance v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$1;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$1;-><init>()V

    sput-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->networkId:I

    .line 1283
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->SSID:Ljava/lang/String;

    .line 1284
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1285
    iput v3, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->priority:I

    .line 1286
    iput-boolean v3, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->hiddenSSID:Z

    .line 1287
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1288
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 1289
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 1290
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 1291
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 1292
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 1293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_45

    .line 1294
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 1293
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1297
    :cond_45
    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->UNASSIGNED:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->ipAssignment:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    .line 1298
    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->UNASSIGNED:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->proxySettings:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    .line 1299
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1301
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEap:Ljava/lang/String;

    .line 1303
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPhase2:Ljava/lang/String;

    .line 1304
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mIdentity:Ljava/lang/String;

    .line 1305
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mAnonymous_identity:Ljava/lang/String;

    .line 1306
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPassword:Ljava/lang/String;

    .line 1307
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mClient_cert:Ljava/lang/String;

    .line 1308
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPrivate_key:Ljava/lang/String;

    .line 1309
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEngine:Ljava/lang/String;

    .line 1310
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEngine_id:Ljava/lang/String;

    .line 1311
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mKey_id:Ljava/lang/String;

    .line 1312
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mCa_cert:Ljava/lang/String;

    .line 1281
    return-void
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .registers 5
    .param p0, "src"    # Landroid/os/Parcel;

    .prologue
    .line 1466
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1468
    .local v0, "cardinality":I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 1469
    .local v2, "set":Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 1470
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1469
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1473
    :cond_16
    return-object v2
.end method

.method private setDns1(Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "dns"    # Ljava/net/InetAddress;

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 1268
    return-void
.end method

.method private setDns2(Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "dns"    # Ljava/net/InetAddress;

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 1272
    return-void
.end method

.method private setLinkAddress(Ljava/net/InetAddress;I)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    new-instance v1, Landroid/net/LinkAddress;

    invoke-direct {v1, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1260
    return-void
.end method

.method private setLinkRoute(Landroid/net/RouteInfo;)V
    .registers 3
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1264
    return-void
.end method

.method private stringToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1257
    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .registers 4
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 1477
    const/4 v0, -0x1

    .line 1479
    .local v0, "nextSetBit":I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1481
    :goto_8
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 1482
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 1476
    :cond_15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1502
    const/4 v0, 0x0

    return v0
.end method

.method public getAnonymousIdentity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mAnonymous_identity:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1488
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1489
    return v1

    .line 1490
    :cond_d
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1491
    return v4

    .line 1492
    :cond_16
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1493
    return v2

    .line 1494
    :cond_1f
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1495
    return v3

    .line 1497
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public getCaCert()Ljava/lang/String;
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mCa_cert:Ljava/lang/String;

    return-object v0
.end method

.method public getClientCert()Ljava/lang/String;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mClient_cert:Ljava/lang/String;

    return-object v0
.end method

.method public getEap()Ljava/lang/String;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEap:Ljava/lang/String;

    return-object v0
.end method

.method public getEapMethod()I
    .registers 7

    .prologue
    .line 259
    sget-object v2, Lcom/lge/mdm/config/LGMDMWifiConfiguration$Eap;->STRINGS:[Ljava/lang/String;

    .line 260
    .local v2, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 261
    .local v0, "count":I
    const/4 v3, 0x0

    array-length v4, v2

    :goto_5
    if-ge v3, v4, :cond_17

    aget-object v1, v2, v3

    .line 262
    .local v1, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEap:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 263
    return v0

    .line 265
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 267
    .end local v1    # "str":Ljava/lang/String;
    :cond_17
    const/4 v3, -0x1

    return v3
.end method

.method public getEngine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEngine:Ljava/lang/String;

    return-object v0
.end method

.method public getEngineId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEngine_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mKey_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPhase2:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase2Method()I
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 351
    const/4 v3, 0x5

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v2, v4

    const-string/jumbo v3, "PAP"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string/jumbo v3, "MSCHAP"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string/jumbo v3, "MSCHAPV2"

    const/4 v5, 0x3

    aput-object v3, v2, v5

    const-string/jumbo v3, "GTC"

    const/4 v5, 0x4

    aput-object v3, v2, v5

    .line 352
    .local v2, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 353
    .local v0, "count":I
    array-length v5, v2

    move v3, v4

    :goto_24
    if-ge v3, v5, :cond_5d

    aget-object v1, v2, v3

    .line 354
    .local v1, "str":Ljava/lang/String;
    const-string/jumbo v6, "test"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "str="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  mphase2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPhase2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPhase2:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 356
    return v0

    .line 358
    :cond_58
    add-int/lit8 v0, v0, 0x1

    .line 353
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 360
    .end local v1    # "str":Ljava/lang/String;
    :cond_5d
    return v4
.end method

.method public getPrivateKey()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPrivate_key:Ljava/lang/String;

    return-object v0
.end method

.method public setAnonymousIdentity(Ljava/lang/String;)V
    .registers 2
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mAnonymous_identity:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setCaCert(Ljava/lang/String;)V
    .registers 2
    .param p1, "caCert"    # Ljava/lang/String;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mCa_cert:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public setClientCert(Ljava/lang/String;)V
    .registers 2
    .param p1, "clientCert"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mClient_cert:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public setEap(Ljava/lang/String;)V
    .registers 2
    .param p1, "eap"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEap:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setEapMethod(I)V
    .registers 3
    .param p1, "eap"    # I

    .prologue
    .line 236
    const/4 v0, 0x7

    if-gt p1, v0, :cond_5

    if-gez p1, :cond_b

    .line 237
    :cond_5
    const-string/jumbo v0, "NONE"

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEap:Ljava/lang/String;

    .line 235
    :goto_a
    return-void

    .line 239
    :cond_b
    sget-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$Eap;->STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEap:Ljava/lang/String;

    goto :goto_a
.end method

.method public setEngine(Ljava/lang/String;)V
    .registers 2
    .param p1, "engine"    # Ljava/lang/String;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEngine:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setEngineId(Ljava/lang/String;)V
    .registers 2
    .param p1, "engine_id"    # Ljava/lang/String;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEngine_id:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .registers 2
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mIdentity:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .registers 2
    .param p1, "key_id"    # Ljava/lang/String;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mKey_id:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPassword:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setPhase2(Ljava/lang/String;)V
    .registers 2
    .param p1, "phase2"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPhase2:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setPhase2Method(I)V
    .registers 3
    .param p1, "phase2"    # I

    .prologue
    .line 331
    sget-object v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$Phase2;->STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPhase2:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setPrivateKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "privateKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 452
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPrivate_key:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setProxySettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;

    .prologue
    .line 1232
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1, p3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1234
    .local v0, "ProxyInfo":Landroid/net/ProxyInfo;
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1231
    return-void
.end method

.method public setStaticIpAddress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "gateway"    # Ljava/lang/String;
    .param p3, "prefixLength"    # I
    .param p4, "dns1"    # Ljava/lang/String;
    .param p5, "dns2"    # Ljava/lang/String;

    .prologue
    .line 1249
    const-string/jumbo v0, "LGMDMWifiConfiguration"

    const-string/jumbo v1, "set advanced IP address"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    invoke-direct {p0, p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->stringToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setLinkAddress(Ljava/net/InetAddress;I)V

    .line 1251
    new-instance v0, Landroid/net/RouteInfo;

    invoke-direct {p0, p2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->stringToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-direct {p0, v0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setLinkRoute(Landroid/net/RouteInfo;)V

    .line 1252
    invoke-direct {p0, p4}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->stringToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setDns1(Ljava/net/InetAddress;)V

    .line 1253
    invoke-direct {p0, p5}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->stringToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setDns2(Ljava/net/InetAddress;)V

    .line 1248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    .line 1321
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1322
    .local v5, "sbuf":Ljava/lang/StringBuffer;
    iget v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->status:I

    if-nez v6, :cond_73

    .line 1323
    const-string/jumbo v6, "* "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1327
    :cond_13
    :goto_13
    const-string/jumbo v6, "ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " SSID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 1328
    const-string/jumbo v7, " BSSID: "

    .line 1327
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 1328
    iget-object v7, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1327
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 1328
    const-string/jumbo v7, " PRIO: "

    .line 1327
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 1328
    iget v7, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->priority:I

    .line 1327
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1330
    const-string/jumbo v6, " KeyMgmt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1331
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_51
    iget-object v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v2, v6, :cond_86

    .line 1332
    iget-object v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 1333
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1334
    sget-object v6, Lcom/lge/mdm/config/LGMDMWifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_7f

    .line 1335
    sget-object v6, Lcom/lge/mdm/config/LGMDMWifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1331
    :cond_70
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 1324
    .end local v2    # "k":I
    :cond_73
    iget v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->status:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13

    .line 1325
    const-string/jumbo v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 1337
    .restart local v2    # "k":I
    :cond_7f
    const-string/jumbo v6, "??"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_70

    .line 1341
    :cond_86
    const-string/jumbo v6, " Protocols:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1342
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_8d
    iget-object v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v3, v6, :cond_b6

    .line 1343
    iget-object v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 1344
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1345
    sget-object v6, Lcom/lge/mdm/config/LGMDMWifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_af

    .line 1346
    sget-object v6, Lcom/lge/mdm/config/LGMDMWifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1342
    :cond_ac
    :goto_ac
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    .line 1348
    :cond_af
    const-string/jumbo v6, "??"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ac

    .line 1352
    :cond_b6
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1353
    const-string/jumbo v6, " AuthAlgorithms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1354
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_c0
    iget-object v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v0, v6, :cond_e9

    .line 1355
    iget-object v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_df

    .line 1356
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1357
    sget-object v6, Lcom/lge/mdm/config/LGMDMWifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_e2

    .line 1358
    sget-object v6, Lcom/lge/mdm/config/LGMDMWifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1354
    :cond_df
    :goto_df
    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    .line 1360
    :cond_e2
    const-string/jumbo v6, "??"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_df

    .line 1364
    :cond_e9
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1365
    const-string/jumbo v6, " PairwiseCiphers:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1366
    const/4 v4, 0x0

    .local v4, "pc":I
    :goto_f3
    iget-object v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v4, v6, :cond_11c

    .line 1367
    iget-object v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_112

    .line 1368
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1369
    sget-object v6, Lcom/lge/mdm/config/LGMDMWifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_115

    .line 1370
    sget-object v6, Lcom/lge/mdm/config/LGMDMWifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1366
    :cond_112
    :goto_112
    add-int/lit8 v4, v4, 0x1

    goto :goto_f3

    .line 1372
    :cond_115
    const-string/jumbo v6, "??"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_112

    .line 1376
    :cond_11c
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1377
    const-string/jumbo v6, " GroupCiphers:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1378
    const/4 v1, 0x0

    .local v1, "gc":I
    :goto_126
    iget-object v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v1, v6, :cond_14f

    .line 1379
    iget-object v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_145

    .line 1380
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1381
    sget-object v6, Lcom/lge/mdm/config/LGMDMWifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_148

    .line 1382
    sget-object v6, Lcom/lge/mdm/config/LGMDMWifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1378
    :cond_145
    :goto_145
    add-int/lit8 v1, v1, 0x1

    goto :goto_126

    .line 1384
    :cond_148
    const-string/jumbo v6, "??"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_145

    .line 1388
    :cond_14f
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " PSK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1389
    iget-object v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v6, :cond_162

    .line 1390
    const/16 v6, 0x2a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1393
    :cond_162
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " eap: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1394
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getEap()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_179

    .line 1395
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1403
    :cond_179
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " phase2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1404
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getPhase2()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_190

    .line 1405
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getPhase2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1408
    :cond_190
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " identity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1409
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getIdentity()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1a7

    .line 1410
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1413
    :cond_1a7
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " anonymous_identity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1414
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1be

    .line 1415
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1418
    :cond_1be
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " password: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1419
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getPassword()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1d5

    .line 1420
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1423
    :cond_1d5
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " client_cert: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1424
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getClientCert()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1ec

    .line 1425
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getClientCert()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1432
    :cond_1ec
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " engine id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1433
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getKeyId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_203

    .line 1434
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getKeyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1437
    :cond_203
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " ca_cert: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1438
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getCaCert()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_21a

    .line 1439
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getCaCert()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1442
    :cond_21a
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1443
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IP assignment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->ipAssignment:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    invoke-virtual {v7}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1444
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Proxy settings: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->proxySettings:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    invoke-virtual {v7}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1446
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1447
    iget-object v6, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1448
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1450
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1507
    iget v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->networkId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1508
    iget v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->status:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1509
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1510
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1511
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1512
    iget-object v3, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1e
    if-ge v2, v4, :cond_28

    aget-object v0, v3, v2

    .line 1513
    .local v0, "wepKey":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1512
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1515
    .end local v0    # "wepKey":Ljava/lang/String;
    :cond_28
    iget v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1516
    iget v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->priority:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    iget-boolean v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->hiddenSSID:Z

    if-eqz v2, :cond_37

    const/4 v1, 0x1

    :cond_37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1519
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1520
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1521
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1522
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1523
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1525
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEap:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1527
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPhase2:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1528
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mIdentity:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1529
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mAnonymous_identity:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1530
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1531
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mClient_cert:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1532
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mPrivate_key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1533
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEngine:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1534
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mEngine_id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1535
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mKey_id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1536
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->mCa_cert:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1537
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->ipAssignment:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1538
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->proxySettings:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1539
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1506
    return-void
.end method
