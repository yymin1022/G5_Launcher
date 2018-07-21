.class public Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;
.super Ljava/lang/Object;
.source "LGMDMWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LGMDMProperties"
.end annotation


# instance fields
.field dns1:Ljava/lang/String;

.field dns2:Ljava/lang/String;

.field private final dnsIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field exclusionList:Ljava/lang/String;

.field gateway:Ljava/lang/String;

.field host:Ljava/lang/String;

.field ipAddress:Ljava/lang/String;

.field private final iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private linkAddress:Landroid/net/LinkAddress;

.field public linkProperties:Landroid/net/LinkProperties;

.field port:I

.field prefixLength:I

.field private final proxyInfo:Landroid/net/ProxyInfo;

.field final synthetic this$0:Lcom/lge/mdm/config/LGMDMWifiConfiguration;


# direct methods
.method public constructor <init>(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)V
    .registers 6
    .param p1, "this$0"    # Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    .prologue
    const/4 v3, 0x0

    .line 1036
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->this$0:Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->linkProperties:Landroid/net/LinkProperties;

    .line 1038
    iget-object v2, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->iter:Ljava/util/Iterator;

    .line 1039
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->iter:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1040
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->iter:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->linkAddress:Landroid/net/LinkAddress;

    .line 1041
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->linkAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_bf

    move-object v2, v3

    :goto_34
    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->ipAddress:Ljava/lang/String;

    .line 1043
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->linkAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v2

    iput v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->prefixLength:I

    .line 1045
    :cond_3e
    iget-object v2, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "route$iterator":Ljava/util/Iterator;
    :cond_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1046
    .local v0, "route":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1047
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_cb

    :goto_60
    iput-object v3, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->gateway:Ljava/lang/String;

    .line 1052
    .end local v0    # "route":Landroid/net/RouteInfo;
    :cond_62
    iget-object v2, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->dnsIterator:Ljava/util/Iterator;

    .line 1053
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->dnsIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 1054
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->dnsIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->dns1:Ljava/lang/String;

    .line 1056
    :cond_84
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->dnsIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 1057
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->dnsIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->dns2:Ljava/lang/String;

    .line 1059
    :cond_9a
    iget-object v2, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->proxyInfo:Landroid/net/ProxyInfo;

    .line 1060
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->proxyInfo:Landroid/net/ProxyInfo;

    if-eqz v2, :cond_be

    .line 1061
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->proxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->host:Ljava/lang/String;

    .line 1062
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->proxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    iput v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->port:I

    .line 1063
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->proxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->exclusionList:Ljava/lang/String;

    .line 1036
    :cond_be
    return-void

    .line 1041
    .end local v1    # "route$iterator":Ljava/util/Iterator;
    :cond_bf
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->linkAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_34

    .line 1047
    .restart local v0    # "route":Landroid/net/RouteInfo;
    .restart local v1    # "route$iterator":Ljava/util/Iterator;
    :cond_cb
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_60
.end method


# virtual methods
.method public getDns1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->dns1:Ljava/lang/String;

    return-object v0
.end method

.method public getDns2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->dns2:Ljava/lang/String;

    return-object v0
.end method

.method public getExclusionList()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->exclusionList:Ljava/lang/String;

    return-object v0
.end method

.method public getGateway()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->gateway:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 1183
    iget v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->port:I

    return v0
.end method

.method public getPrefixLength()I
    .registers 2

    .prologue
    .line 1121
    iget v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->prefixLength:I

    return v0
.end method

.method public saveProperties()V
    .registers 3

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->this$0:Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->linkProperties:Landroid/net/LinkProperties;

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1219
    const-string/jumbo v0, "LGMDMWifiConfiguration"

    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->this$0:Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    iget-object v1, v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    return-void
.end method

.method public setDns1(Ljava/lang/String;)V
    .registers 4
    .param p1, "dns1"    # Ljava/lang/String;

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->dns1:Ljava/lang/String;

    .line 1142
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->linkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->this$0:Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    invoke-static {v1, p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-wrap0(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 1140
    return-void
.end method

.method public setDns2(Ljava/lang/String;)V
    .registers 4
    .param p1, "dns2"    # Ljava/lang/String;

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->dns2:Ljava/lang/String;

    .line 1163
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->linkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->this$0:Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    invoke-static {v1, p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-wrap0(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 1161
    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .registers 5
    .param p1, "gateway"    # Ljava/lang/String;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->gateway:Ljava/lang/String;

    .line 1111
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->linkProperties:Landroid/net/LinkProperties;

    new-instance v1, Landroid/net/RouteInfo;

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->this$0:Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    invoke-static {v2, p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-wrap0(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1109
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;I)V
    .registers 6
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "prefix"    # I

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->ipAddress:Ljava/lang/String;

    .line 1087
    iget v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->prefixLength:I

    if-lez v0, :cond_16

    .line 1088
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->linkProperties:Landroid/net/LinkProperties;

    new-instance v1, Landroid/net/LinkAddress;

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->this$0:Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    invoke-static {v2, p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->-wrap0(Lcom/lge/mdm/config/LGMDMWifiConfiguration;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1085
    :cond_16
    return-void
.end method

.method public setProxySettings(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "exclusionList"    # Ljava/lang/String;

    .prologue
    .line 1205
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1206
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->host:Ljava/lang/String;

    .line 1207
    iput p2, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->port:I

    .line 1208
    iput-object p3, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->exclusionList:Ljava/lang/String;

    .line 1209
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMWifiConfiguration$LGMDMProperties;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1204
    return-void
.end method
