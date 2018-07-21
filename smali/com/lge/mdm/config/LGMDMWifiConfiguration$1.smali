.class final Lcom/lge/mdm/config/LGMDMWifiConfiguration$1;
.super Ljava/lang/Object;
.source "LGMDMWifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/mdm/config/LGMDMWifiConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/mdm/config/LGMDMWifiConfiguration;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 1545
    new-instance v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;-><init>()V

    .line 1546
    .local v0, "config":Lcom/lge/mdm/config/LGMDMWifiConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->networkId:I

    .line 1547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->status:I

    .line 1548
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->SSID:Ljava/lang/String;

    .line 1549
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1550
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1551
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    iget-object v3, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_35

    .line 1552
    iget-object v3, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1551
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1554
    :cond_35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->wepTxKeyIndex:I

    .line 1555
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->priority:I

    .line 1556
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_48

    const/4 v2, 0x1

    :cond_48
    iput-boolean v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->hiddenSSID:Z

    .line 1557
    invoke-static {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-wrap1(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1558
    invoke-static {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-wrap1(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 1559
    invoke-static {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-wrap1(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 1560
    invoke-static {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-wrap1(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 1561
    invoke-static {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-wrap1(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 1563
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-set3(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1565
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-set9(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1566
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-set6(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1567
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-set0(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1568
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-set8(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1569
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-set2(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1570
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-set10(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1571
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-set4(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1572
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-set5(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1573
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-set7(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1574
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-set1(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1575
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->ipAssignment:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    .line 1576
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    move-result-object v2

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->proxySettings:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    .line 1577
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1579
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1544
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/mdm/config/LGMDMWifiConfiguration;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 1583
    new-array v0, p1, [Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 1582
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$1;->newArray(I)[Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    move-result-object v0

    return-object v0
.end method
