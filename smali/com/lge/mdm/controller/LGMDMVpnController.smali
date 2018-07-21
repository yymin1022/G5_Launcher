.class public Lcom/lge/mdm/controller/LGMDMVpnController;
.super Ljava/lang/Object;
.source "LGMDMVpnController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMVpnController$1;
    }
.end annotation


# static fields
.field private static final IPSEC_SERVICE_CLIENT_NAME:Ljava/lang/String; = "com.ipsec.vpnclient"

.field private static final IPSEC_SERVICE_INTERFACE_NAME:Ljava/lang/String; = "com.ipsec.vpndmservice.VpnDmService"

.field private static final IPSEC_SERVICE_NAME:Ljava/lang/String; = "com.ipsec.vpndmservice.VPN_DM_SERVICE"

.field private static final IPSEC_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.ipsec.service"

.field private static final MSG_DELETE_LG_VPN:I = 0x3

.field private static final MSG_DELETE_NATIVE_VPN:I = 0x1

.field private static final MSG_MODIFY_LG_VPN:I = 0x2

.field private static final MSG_MODIFY_NATIVE_VPN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VpnController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMVpnController;

.field private static sIsAuthentec:Z

.field private static sIsCurrentVpn:Z


# instance fields
.field private cService:Landroid/net/IConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

.field srvConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMVpnController;->instance:Lcom/lge/mdm/controller/LGMDMVpnController;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mKeyStore:Landroid/security/KeyStore;

    .line 56
    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    .line 490
    new-instance v0, Lcom/lge/mdm/controller/LGMDMVpnController$1;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMVpnController$1;-><init>(Lcom/lge/mdm/controller/LGMDMVpnController;)V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->srvConn:Landroid/content/ServiceConnection;

    .line 66
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 67
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mContext:Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMVpnController;->isAuthentecVpn(I)Z

    move-result v0

    sput-boolean v0, Lcom/lge/mdm/controller/LGMDMVpnController;->sIsAuthentec:Z

    .line 70
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_33

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mHandler:Landroid/os/Handler;

    .line 65
    :cond_33
    return-void
.end method

.method private bindLGVpnService()V
    .registers 5

    .prologue
    .line 484
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.ipsec.vpndmservice.VPN_DM_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.ipsec.vpnclient"

    const-string/jumbo v2, "com.ipsec.vpndmservice.VpnDmService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->srvConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 487
    const-string/jumbo v1, "VpnController"

    const-string/jumbo v2, "Start of LGVPN service."

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method private connectCurrentVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;)V
    .registers 8
    .param p1, "nProfile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    .line 593
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 595
    .local v2, "identity":J
    :try_start_4
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 596
    .local v0, "C":Landroid/net/IConnectivityManager;
    if-eqz v0, :cond_14

    .line 597
    const-string/jumbo v4, "com.lge.mdm"

    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMVpnController;->getProfile(Lcom/lge/mdm/config/LGMDMVpnProfile;)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/net/IConnectivityManager;->startLegacyVpnForLGMDM(Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_18
    .catchall {:try_start_4 .. :try_end_14} :catchall_1d

    .line 602
    :cond_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 592
    .end local v0    # "C":Landroid/net/IConnectivityManager;
    :goto_17
    return-void

    .line 599
    :catch_18
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    .line 601
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1d
    move-exception v4

    .line 602
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    throw v4
.end method

.method private connectNativeVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;)I
    .registers 9
    .param p1, "nProfile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    .line 663
    const/4 v3, 0x0

    .line 664
    .local v3, "result":I
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMVpnController;->getEnabledVpnInfo(Lcom/lge/mdm/config/LGMDMVpnProfile;)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    .line 665
    .local v1, "info":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->getCurrentConnectionLgVpn()Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, "mLGProfileName":Ljava/lang/String;
    if-nez p1, :cond_16

    .line 668
    const-string/jumbo v4, "VpnController"

    const-string/jumbo v5, "profile is not!"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/4 v4, 0x6

    return v4

    .line 674
    :cond_16
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    if-eqz v4, :cond_3c

    if-eqz v2, :cond_3c

    .line 676
    :try_start_1c
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    invoke-interface {v4, v2}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;->disconnectByProfile(Ljava/lang/String;)I

    move-result v3

    .line 677
    const-string/jumbo v4, "VpnController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "disconnetLgeVpn(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3c} :catch_5e

    .line 682
    :cond_3c
    :goto_3c
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMVpnController;->connectCurrentVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;)V

    .line 684
    if-eqz v1, :cond_7a

    .line 685
    iget v3, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 690
    :goto_43
    const-string/jumbo v4, "VpnController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "connectNativeVpn result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    return v3

    .line 678
    :catch_5e
    move-exception v0

    .line 679
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "VpnController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RemoteException in disconnetLgeVpn()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 687
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7a
    const-string/jumbo v4, "VpnController"

    const-string/jumbo v5, "connectNativeVpn :: info is null"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43
.end method

.method private connetLgeVpn(Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I
    .registers 8
    .param p1, "lProfile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .prologue
    .line 695
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnectCurrentNativeVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;)V

    .line 697
    const/4 v2, 0x0

    .line 698
    .local v2, "result":I
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ProfileName:Ljava/lang/String;

    .line 701
    .local v1, "profileName":Ljava/lang/String;
    :try_start_7
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    invoke-interface {v3, v1}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;->connectByProfile(Ljava/lang/String;)I

    move-result v2

    .line 702
    const-string/jumbo v3, "VpnController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connetLgeVpn(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string/jumbo v3, "connectlgvpn"

    invoke-direct {p0, v3, v2}, Lcom/lge/mdm/controller/LGMDMVpnController;->sendLgVpnConnectResultNoti(Ljava/lang/String;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2d} :catch_2e

    .line 708
    :goto_2d
    return v2

    .line 704
    :catch_2e
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "VpnController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RemoteException in connetLgeVpn()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private disconnectCurrentNativeVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;)V
    .registers 5
    .param p1, "profile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMVpnController;->getEnabledVpnInfo(Lcom/lge/mdm/config/LGMDMVpnProfile;)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 714
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v0, :cond_30

    iget v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_30

    .line 715
    const-string/jumbo v1, "VpnController"

    const-string/jumbo v2, "Native vpn connected state. disconnect Native profile"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    if-eqz p1, :cond_20

    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 717
    :cond_20
    if-nez p1, :cond_26

    .line 718
    :cond_22
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnectCurrentVpn()V

    .line 711
    :goto_25
    return-void

    .line 720
    :cond_26
    const-string/jumbo v1, "VpnController"

    const-string/jumbo v2, "Native vpn connected state. but this profile is not!"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 723
    :cond_30
    if-nez p1, :cond_35

    .line 724
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnectCurrentVpn()V

    .line 726
    :cond_35
    const-string/jumbo v1, "VpnController"

    const-string/jumbo v2, "Vpn disconnected state"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method private disconnectCurrentVpn()V
    .registers 7

    .prologue
    .line 736
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 738
    .local v2, "identity":J
    :try_start_4
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 739
    .local v0, "C":Landroid/net/IConnectivityManager;
    if-eqz v0, :cond_13

    .line 740
    const-string/jumbo v4, "com.lge.mdm"

    const-string/jumbo v5, "[Legacy VPN]"

    invoke-interface {v0, v4, v5}, Landroid/net/IConnectivityManager;->prepareVpnForLGMDM(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_17
    .catchall {:try_start_4 .. :try_end_13} :catchall_1c

    .line 745
    :cond_13
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 735
    .end local v0    # "C":Landroid/net/IConnectivityManager;
    :goto_16
    return-void

    .line 742
    :catch_17
    move-exception v1

    .line 745
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    .line 744
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1c
    move-exception v4

    .line 745
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    throw v4
.end method

.method private disconnectNativeVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;)I
    .registers 8
    .param p1, "nProfile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    const/4 v5, 0x7

    .line 771
    const/4 v2, 0x0

    .line 772
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->getCurrentConnectionLgVpn()Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "mLGProfileName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMVpnController;->getEnabledVpnInfo(Lcom/lge/mdm/config/LGMDMVpnProfile;)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 775
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    if-nez p1, :cond_17

    .line 776
    const-string/jumbo v3, "VpnController"

    const-string/jumbo v4, "profile is not!"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const/4 v3, 0x6

    return v3

    .line 778
    :cond_17
    if-eqz v1, :cond_23

    .line 779
    const-string/jumbo v3, "VpnController"

    const-string/jumbo v4, "connected of LGVPN"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return v5

    .line 785
    :cond_23
    if-eqz v0, :cond_37

    iget v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_37

    .line 786
    iget-object v3, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 787
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnectCurrentVpn()V

    .line 794
    :cond_37
    if-eqz v0, :cond_60

    .line 795
    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 800
    :goto_3b
    const-string/jumbo v3, "VpnController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnectNativeVpn result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    return v2

    .line 789
    :cond_56
    const-string/jumbo v3, "VpnController"

    const-string/jumbo v4, "This profile is not currently connected profiles."

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    return v5

    .line 797
    :cond_60
    const-string/jumbo v3, "VpnController"

    const-string/jumbo v4, "disconnectNativeVpn :: info is null"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method private disconnetCurrentVpnLgeVpn()V
    .registers 3

    .prologue
    .line 731
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.ipsec.vpnclient.WorkerService.ACTION.STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 730
    return-void
.end method

.method private disconnetLgeVpn(Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I
    .registers 8
    .param p1, "lProfile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .prologue
    .line 805
    const/4 v2, 0x0

    .line 806
    .local v2, "result":I
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->ProfileName:Ljava/lang/String;

    .line 809
    .local v1, "profileName":Ljava/lang/String;
    :try_start_3
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    invoke-interface {v3, v1}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;->disconnectByProfile(Ljava/lang/String;)I

    move-result v2

    .line 810
    const-string/jumbo v3, "VpnController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnetLgeVpn(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_23} :catch_24

    .line 815
    :goto_23
    return v2

    .line 811
    :catch_24
    move-exception v0

    .line 812
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "VpnController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RemoteException in disconnetLgeVpn()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private enumVpnProfile(Landroid/content/ComponentName;ZI)Ljava/util/List;
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "internal"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMVpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 217
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 219
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v4, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMVpnProfile;>;"
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v7, "VPN_"

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "keys":[Ljava/lang/String;
    if-eqz v2, :cond_7b

    array-length v6, v2

    if-lez v6, :cond_7b

    .line 223
    array-length v6, v2

    :goto_1a
    if-ge v5, v6, :cond_7b

    aget-object v1, v2, v5

    .line 225
    .local v1, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 226
    .local v3, "profile":Lcom/lge/mdm/config/LGMDMVpnProfile;
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VPN_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 227
    .local v0, "getVpnKeyStore":[B
    if-eqz v0, :cond_3f

    .line 228
    invoke-static {v1, v0}, Lcom/lge/mdm/config/LGMDMVpnProfile;->decode(Ljava/lang/String;[B)Lcom/lge/mdm/config/LGMDMVpnProfile;

    move-result-object v3

    .line 230
    .end local v3    # "profile":Lcom/lge/mdm/config/LGMDMVpnProfile;
    :cond_3f
    if-nez v3, :cond_77

    .line 231
    const-string/jumbo v7, "VpnController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bad profile: key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VPN_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 223
    :goto_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 234
    :cond_77
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 240
    .end local v0    # "getVpnKeyStore":[B
    .end local v1    # "key":Ljava/lang/String;
    :cond_7b
    return-object v4
.end method

.method private getEnabledVpnInfo(Lcom/lge/mdm/config/LGMDMVpnProfile;)Lcom/android/internal/net/LegacyVpnInfo;
    .registers 9
    .param p1, "nProfile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    .line 368
    const/4 v4, 0x0

    .line 370
    .local v4, "info":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 372
    .local v2, "identity":J
    :try_start_5
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 373
    .local v0, "C":Landroid/net/IConnectivityManager;
    if-eqz v0, :cond_12

    .line 374
    const-string/jumbo v5, "com.lge.mdm"

    invoke-interface {v0, v5}, Landroid/net/IConnectivityManager;->getLegacyVpnInfoForLGMDM(Ljava/lang/String;)Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_16
    .catchall {:try_start_5 .. :try_end_11} :catchall_25

    move-result-object v4

    .line 380
    .end local v4    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :cond_12
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    .end local v0    # "C":Landroid/net/IConnectivityManager;
    :goto_15
    return-object v4

    .line 376
    .restart local v4    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catch_16
    move-exception v1

    .line 377
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_17
    const-string/jumbo v5, "VpnController"

    const-string/jumbo v6, "Failed talking with LGMDM controller"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_25

    .line 378
    const/4 v4, 0x0

    .line 380
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    .line 379
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_25
    move-exception v5

    .line 380
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    throw v5
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMVpnController;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lcom/lge/mdm/controller/LGMDMVpnController;->instance:Lcom/lge/mdm/controller/LGMDMVpnController;

    if-nez v0, :cond_b

    .line 77
    new-instance v0, Lcom/lge/mdm/controller/LGMDMVpnController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMVpnController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMVpnController;->instance:Lcom/lge/mdm/controller/LGMDMVpnController;

    .line 80
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMVpnController;->instance:Lcom/lge/mdm/controller/LGMDMVpnController;

    return-object v0
.end method

.method private keyStoreTest()Z
    .registers 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_2c

    .line 360
    const-string/jumbo v0, "VpnController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keyStoreTest(): keystore is not unlocked! keystore state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x0

    return v0

    .line 364
    :cond_2c
    const/4 v0, 0x1

    return v0
.end method

.method private sendLgVpnConnectResultNoti(Ljava/lang/String;I)V
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "result"    # I

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.mdm.intent.action.VPN_CONFIGURATION_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, "intent":Landroid/content/Intent;
    if-nez p1, :cond_14

    .line 578
    const-string/jumbo v1, "VpnController"

    const-string/jumbo v2, "sendLgVpnConnectResultNoti : mCommand is null"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    return-void

    .line 582
    :cond_14
    const-string/jumbo v1, "LgVpnCommand"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string/jumbo v1, "LgVpnStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 574
    return-void
.end method

.method private sendVpnConfigResultNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "failReason"    # Ljava/lang/String;

    .prologue
    .line 386
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mdm.intent.action.VPN_CONFIGURATION_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, "intent":Landroid/content/Intent;
    if-nez p1, :cond_14

    .line 389
    const-string/jumbo v2, "VpnController"

    const-string/jumbo v3, "sendVpnConfigResultNotification : mCommand is null"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void

    .line 393
    :cond_14
    const-string/jumbo v2, "configCommand"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    if-eqz p2, :cond_58

    .line 395
    const-string/jumbo v2, "configResult"

    const-string/jumbo v3, "fail"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string/jumbo v2, "failReason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendVpnConfigResultNotification : command = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_50
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    return-void

    .line 400
    :cond_58
    const-string/jumbo v2, "configResult"

    const-string/jumbo v3, "success"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendVpnConfigResultNotification : command = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mdm.intent.action.VPN_POLICY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "changeIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_50
.end method

.method private updateVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;ZI)V
    .registers 23
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;
    .param p3, "newProfile"    # Z
    .param p4, "userHandle"    # I

    .prologue
    .line 110
    if-eqz p3, :cond_15

    const-string/jumbo v4, "addProfile"

    .line 111
    .local v4, "cmd":Ljava/lang/String;
    :goto_5
    const/4 v5, 0x0

    .line 113
    .local v5, "failReason":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->keyStoreTest()Z

    move-result v13

    if-nez v13, :cond_19

    .line 114
    const-string/jumbo v13, "keyStore_fail"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/lge/mdm/controller/LGMDMVpnController;->sendVpnConfigResultNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void

    .line 110
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "failReason":Ljava/lang/String;
    :cond_15
    const-string/jumbo v4, "modifyProfile"

    .restart local v4    # "cmd":Ljava/lang/String;
    goto :goto_5

    .line 119
    .restart local v5    # "failReason":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p2

    iget v13, v0, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_25

    .line 120
    const/4 v13, 0x5

    move-object/from16 v0, p2

    iput v13, v0, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    .line 123
    :cond_25
    if-eqz p3, :cond_6a

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 126
    .local v8, "millis":J
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    iput-object v13, v0, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    .line 127
    const-string/jumbo v13, "VpnController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateVpnProfile(): make profile key = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v8    # "millis":J
    :cond_51
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMVpnController;->validateVpnProfile(Lcom/lge/mdm/config/LGMDMVpnProfile;)Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "failReason":Ljava/lang/String;
    if-eqz v5, :cond_b2

    .line 153
    const-string/jumbo v13, "VpnController"

    const-string/jumbo v14, "updateVpnProfile(): fail to validate profile"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lge/mdm/controller/LGMDMVpnController;->sendVpnConfigResultNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void

    .line 130
    .local v5, "failReason":Ljava/lang/String;
    :cond_6a
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v13, v2}, Lcom/lge/mdm/controller/LGMDMVpnController;->enumVpnProfile(Landroid/content/ComponentName;ZI)Ljava/util/List;

    move-result-object v12

    .line 131
    .local v12, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMVpnProfile;>;"
    const/4 v6, 0x0

    .line 133
    .local v6, "findProfile":Z
    if-eqz v12, :cond_9e

    .line 134
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "p$iterator":Ljava/util/Iterator;
    :cond_7c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/mdm/config/LGMDMVpnProfile;

    .line 135
    .local v10, "p":Lcom/lge/mdm/config/LGMDMVpnProfile;
    iget-object v13, v10, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7c

    .line 136
    const-string/jumbo v13, "VpnController"

    const-string/jumbo v14, "updateVpnProfile(): found profile"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v6, 0x1

    .line 142
    .end local v10    # "p":Lcom/lge/mdm/config/LGMDMVpnProfile;
    .end local v11    # "p$iterator":Ljava/util/Iterator;
    :cond_9e
    if-nez v6, :cond_51

    .line 144
    const-string/jumbo v13, "VpnController"

    const-string/jumbo v14, "updateVpnProfile(): not_found_profile"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v13, "not_found_profile"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/lge/mdm/controller/LGMDMVpnController;->sendVpnConfigResultNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 159
    .end local v6    # "findProfile":Z
    .end local v12    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMVpnProfile;>;"
    .local v5, "failReason":Ljava/lang/String;
    :cond_b2
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/lge/mdm/config/LGMDMVpnProfile;->username:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e1

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/lge/mdm/config/LGMDMVpnProfile;->password:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e1

    .line 165
    :goto_c6
    if-nez p3, :cond_105

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/mdm/controller/LGMDMVpnController;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v14, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 168
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/mdm/controller/LGMDMVpnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    .end local v7    # "msg":Landroid/os/Message;
    :goto_da
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/lge/mdm/controller/LGMDMVpnController;->sendVpnConfigResultNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 160
    :cond_e1
    const-string/jumbo v13, "VpnController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateVpnProfile(): profile.username = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/lge/mdm/config/LGMDMVpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v13, 0x1

    move-object/from16 v0, p2

    iput-boolean v13, v0, Lcom/lge/mdm/config/LGMDMVpnProfile;->saveLogin:Z

    goto :goto_c6

    .line 171
    :cond_105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/mdm/controller/LGMDMVpnController;->mKeyStore:Landroid/security/KeyStore;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "VPN_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/lge/mdm/config/LGMDMVpnProfile;->encode()[B

    move-result-object v15

    const/16 v16, -0x1

    .line 172
    const/16 v17, 0x1

    .line 171
    invoke-virtual/range {v13 .. v17}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    goto :goto_da
.end method

.method private validateCertification(Lcom/lge/mdm/config/LGMDMVpnProfile;)Ljava/lang/String;
    .registers 8
    .param p1, "profile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    const/4 v5, 0x0

    .line 245
    iget v3, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    packed-switch v3, :pswitch_data_80

    .line 251
    :pswitch_6
    return-object v5

    .line 256
    :pswitch_7
    iget-object v3, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 257
    iget v3, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    packed-switch v3, :pswitch_data_8c

    .line 275
    :cond_14
    :pswitch_14
    iget-object v3, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 276
    const-string/jumbo v3, "CACERT_"

    .line 277
    iget-object v4, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 276
    invoke-direct {p0, v3, v4}, Lcom/lge/mdm/controller/LGMDMVpnController;->validateCertificationSearch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 278
    .local v0, "foundCaCert":Z
    if-nez v0, :cond_50

    .line 279
    const-string/jumbo v3, "VpnController"

    .line 280
    const-string/jumbo v4, "validateCertification : FAIL_REASON_NOT_FOUND_CA_CERT : foundCaCert = false"

    .line 279
    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v3, "not_found_ca_cert"

    return-object v3

    .line 260
    .end local v0    # "foundCaCert":Z
    :pswitch_34
    const-string/jumbo v3, "blank_user_cert"

    return-object v3

    .line 265
    :cond_38
    const-string/jumbo v3, "USRCERT_"

    .line 266
    iget-object v4, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 265
    invoke-direct {p0, v3, v4}, Lcom/lge/mdm/controller/LGMDMVpnController;->validateCertificationSearch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 267
    .local v2, "foundUserCert":Z
    if-nez v2, :cond_14

    .line 268
    const-string/jumbo v3, "VpnController"

    .line 269
    const-string/jumbo v4, "validateCertification : FAIL_REASON_NOT_FOUND_USER_CERT : foundUserCert"

    .line 268
    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v3, "not_found_user_cert"

    return-object v3

    .line 286
    .end local v2    # "foundUserCert":Z
    :cond_50
    iget-object v3, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 287
    iget v3, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_62

    .line 288
    iget v3, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7a

    .line 289
    :cond_62
    const-string/jumbo v3, "USRCERT_"

    .line 290
    iget-object v4, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 289
    invoke-direct {p0, v3, v4}, Lcom/lge/mdm/controller/LGMDMVpnController;->validateCertificationSearch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 291
    .local v1, "foundServerCert":Z
    if-nez v1, :cond_7f

    .line 292
    const-string/jumbo v3, "VpnController"

    .line 293
    const-string/jumbo v4, "validateCertification : FAIL_REASON_NOT_FOUND_SERVER_CERT : foundServerCert = false"

    .line 292
    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string/jumbo v3, "not_found_server_cert"

    return-object v3

    .line 288
    .end local v1    # "foundServerCert":Z
    :cond_7a
    iget v3, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_62

    .line 297
    :cond_7f
    return-object v5

    .line 245
    :pswitch_data_80
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 257
    :pswitch_data_8c
    .packed-switch 0x2
        :pswitch_34
        :pswitch_14
        :pswitch_34
    .end packed-switch
.end method

.method private validateCertificationSearch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "profileType"    # Ljava/lang/String;

    .prologue
    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "foundServerCert":Z
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "certificateList":[Ljava/lang/String;
    if-eqz v0, :cond_c

    array-length v3, v0

    if-nez v3, :cond_27

    .line 305
    :cond_c
    const-string/jumbo v3, "VpnController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateCertification : FAIL_REASON_NOT_FOUND certificateList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return v1

    .line 310
    :cond_27
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    array-length v3, v0

    if-ge v2, v3, :cond_34

    .line 311
    aget-object v3, v0, v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 312
    const/4 v1, 0x1

    .line 316
    :cond_34
    return v1

    .line 310
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_28
.end method

.method private validateVpnProfile(Lcom/lge/mdm/config/LGMDMVpnProfile;)Ljava/lang/String;
    .registers 6
    .param p1, "profile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    const/4 v3, 0x0

    .line 320
    const/4 v0, 0x0

    .line 323
    .local v0, "failReason":Ljava/lang/String;
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 324
    const-string/jumbo v1, "blank_profile_name"

    return-object v1

    .line 328
    :cond_e
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->server:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 329
    const-string/jumbo v1, "blank_profile_server"

    return-object v1

    .line 333
    :cond_1a
    iget v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    if-ltz v1, :cond_23

    iget v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_27

    .line 334
    :cond_23
    const-string/jumbo v1, "unknown_type"

    return-object v1

    .line 338
    :cond_27
    iget v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    packed-switch v1, :pswitch_data_40

    .line 349
    :cond_2c
    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMVpnController;->validateCertification(Lcom/lge/mdm/config/LGMDMVpnProfile;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "failReason":Ljava/lang/String;
    if-eqz v0, :cond_3f

    .line 351
    return-object v0

    .line 341
    .local v0, "failReason":Ljava/lang/String;
    :pswitch_33
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 342
    const-string/jumbo v1, "blank_psk"

    return-object v1

    .line 354
    .local v0, "failReason":Ljava/lang/String;
    :cond_3f
    return-object v3

    .line 338
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2c
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method protected addLGVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMLgVpnProfile;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;
    .param p3, "userHandle"    # I

    .prologue
    .line 875
    const/4 v1, 0x0

    .line 877
    .local v1, "result":I
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 878
    if-nez p2, :cond_12

    .line 879
    const-string/jumbo v2, "VpnController"

    const-string/jumbo v3, "addLGVpnProfile() profile is null"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    return v1

    .line 882
    :cond_12
    sget-boolean v2, Lcom/lge/mdm/controller/LGMDMVpnController;->sIsAuthentec:Z

    if-nez v2, :cond_20

    .line 883
    const-string/jumbo v2, "VpnController"

    const-string/jumbo v3, "LGVPN is not supported on current device."

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    return v1

    .line 887
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    invoke-interface {v2, p2}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;->addProfile(Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I

    move-result v1

    .line 888
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addLGVpnProfile(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_40} :catch_41

    .line 893
    :goto_40
    return v1

    .line 889
    :catch_41
    move-exception v0

    .line 890
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException in addLGVpnProfile()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method addVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;
    .param p3, "userHandle"    # I

    .prologue
    .line 92
    const-string/jumbo v0, "VpnController"

    const-string/jumbo v1, "addVpnProfile():"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lge/mdm/controller/LGMDMVpnController;->updateVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;ZI)V

    .line 91
    return-void
.end method

.method protected connectVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I
    .registers 6
    .param p1, "nProfile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;
    .param p2, "lProfile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, "result":I
    const-string/jumbo v1, "VpnController"

    const-string/jumbo v2, "connectVpn"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    if-eqz p1, :cond_11

    .line 611
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMVpnController;->connectNativeVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;)I

    move-result v0

    .line 616
    :goto_10
    return v0

    .line 613
    :cond_11
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMVpnController;->connetLgeVpn(Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I

    move-result v0

    goto :goto_10
.end method

.method protected deleteLGVpnProfile(Landroid/content/ComponentName;Ljava/lang/String;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 919
    const/4 v1, 0x0

    .line 921
    .local v1, "result":I
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 922
    if-nez p2, :cond_12

    .line 923
    const-string/jumbo v2, "VpnController"

    const-string/jumbo v3, "deleteLGVpnProfile() pName is null"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return v1

    .line 926
    :cond_12
    sget-boolean v2, Lcom/lge/mdm/controller/LGMDMVpnController;->sIsAuthentec:Z

    if-nez v2, :cond_20

    .line 927
    const-string/jumbo v2, "VpnController"

    const-string/jumbo v3, "LGVPN is not supported on current device."

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    return v1

    .line 931
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    invoke-interface {v2, p2}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;->removeProfile(Ljava/lang/String;)I

    move-result v1

    .line 932
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteLGVpnProfile(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_40} :catch_41

    .line 937
    :goto_40
    return v1

    .line 933
    :catch_41
    move-exception v0

    .line 934
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException in deleteLGVpnProfile()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method deleteVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;I)V
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 181
    const-string/jumbo v4, "VpnController"

    const-string/jumbo v5, "deleteVpnProfile():"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 185
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->keyStoreTest()Z

    move-result v4

    if-nez v4, :cond_20

    .line 186
    const-string/jumbo v4, "deleteProfile"

    .line 187
    const-string/jumbo v5, "keyStore_fail"

    .line 186
    invoke-direct {p0, v4, v5}, Lcom/lge/mdm/controller/LGMDMVpnController;->sendVpnConfigResultNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void

    .line 191
    :cond_20
    invoke-direct {p0, p1, v6, p3}, Lcom/lge/mdm/controller/LGMDMVpnController;->enumVpnProfile(Landroid/content/ComponentName;ZI)Ljava/util/List;

    move-result-object v3

    .line 193
    .local v3, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMVpnProfile;>;"
    if-eqz v3, :cond_52

    .line 194
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "p$iterator":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/config/LGMDMVpnProfile;

    .line 195
    .local v1, "p":Lcom/lge/mdm/config/LGMDMVpnProfile;
    iget-object v4, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    iget-object v5, p2, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 197
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    const-string/jumbo v4, "deleteProfile"

    invoke-direct {p0, v4, v7}, Lcom/lge/mdm/controller/LGMDMVpnController;->sendVpnConfigResultNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void

    .line 207
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "p":Lcom/lge/mdm/config/LGMDMVpnProfile;
    .end local v2    # "p$iterator":Ljava/util/Iterator;
    :cond_52
    const-string/jumbo v4, "deleteProfile"

    .line 208
    const-string/jumbo v5, "not_found_profile"

    .line 207
    invoke-direct {p0, v4, v5}, Lcom/lge/mdm/controller/LGMDMVpnController;->sendVpnConfigResultNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method protected disconnectVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I
    .registers 5
    .param p1, "nProfile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;
    .param p2, "lProfile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .prologue
    .line 750
    const/4 v0, 0x0

    .line 751
    .local v0, "result":I
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lge/mdm/controller/LGMDMVpnController;->sIsCurrentVpn:Z

    .line 753
    if-eqz p1, :cond_b

    .line 754
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnectNativeVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;)I

    move-result v0

    .line 759
    :goto_a
    return v0

    .line 756
    :cond_b
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnetLgeVpn(Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I

    move-result v0

    goto :goto_a
.end method

.method protected enumLGVpnAvailableCertificate(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1033
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1034
    sget-boolean v2, Lcom/lge/mdm/controller/LGMDMVpnController;->sIsAuthentec:Z

    if-nez v2, :cond_14

    .line 1035
    const-string/jumbo v2, "VpnController"

    const-string/jumbo v3, "LGVPN is not supported on current device."

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    return-object v4

    .line 1039
    :cond_14
    const/4 v0, 0x0

    .line 1041
    .local v0, "availableListCertificate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_15
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    invoke-interface {v2}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;->getAvailableCertificateList()Ljava/util/List;

    move-result-object v0

    .line 1042
    .local v0, "availableListCertificate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_27

    .line 1043
    const-string/jumbo v2, "VpnController"

    .line 1044
    const-string/jumbo v3, "Remote enumLGVpnAvailableCertificate() returned null"

    .line 1043
    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    .end local v0    # "availableListCertificate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_26
    return-object v0

    .line 1045
    .restart local v0    # "availableListCertificate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    .line 1046
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1047
    sget-object v3, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->OK:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    invoke-virtual {v3}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1046
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1053
    :cond_41
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enumLGVpnAvailableCertificate() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1054
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 1053
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_5f} :catch_60

    goto :goto_26

    .line 1056
    .end local v0    # "availableListCertificate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_60
    move-exception v1

    .line 1057
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException in enumLGVpnAvailableCertificate()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1049
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "availableListCertificate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7c
    :try_start_7c
    const-string/jumbo v3, "VpnController"

    .line 1050
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remote enumLGVpnAvailableCertificate() returned : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1051
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1050
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1049
    invoke-static {v3, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_9d} :catch_60

    goto :goto_26
.end method

.method protected enumLGVpnInstalledCertificate(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1065
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1066
    const/4 v1, 0x0

    .line 1067
    .local v1, "listCertificate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/lge/mdm/controller/LGMDMVpnController;->sIsAuthentec:Z

    if-nez v2, :cond_15

    .line 1068
    const-string/jumbo v2, "VpnController"

    const-string/jumbo v3, "LGVPN is not supported on current device."

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    return-object v4

    .line 1072
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    invoke-interface {v2}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;->getInstalledCertificateList()Ljava/util/List;

    move-result-object v1

    .line 1073
    .local v1, "listCertificate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_27

    .line 1074
    const-string/jumbo v2, "VpnController"

    const-string/jumbo v3, "Remote enumLGVpnInstalledCertificate() returned null"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    .end local v1    # "listCertificate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_26
    return-object v1

    .line 1075
    .restart local v1    # "listCertificate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->OK:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    invoke-virtual {v3}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1078
    :cond_41
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enumLGVpnInstalledCertificate() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_5f} :catch_60

    goto :goto_26

    .line 1080
    .end local v1    # "listCertificate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_60
    move-exception v0

    .line 1081
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException in enumLGVpnInstalledCertificate()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1076
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "listCertificate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7c
    :try_start_7c
    const-string/jumbo v3, "VpnController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remote enumLGVpnInstalledCertificate() returned : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_9d} :catch_60

    goto :goto_26
.end method

.method protected enumLGVpnProfile(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMLgVpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 942
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 943
    const/4 v1, 0x0

    .line 944
    .local v1, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMLgVpnProfile;>;"
    sget-boolean v4, Lcom/lge/mdm/controller/LGMDMVpnController;->sIsAuthentec:Z

    if-nez v4, :cond_15

    .line 945
    const-string/jumbo v4, "VpnController"

    const-string/jumbo v5, "LGVPN is not supported on current device."

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    return-object v6

    .line 949
    :cond_15
    :try_start_15
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    invoke-interface {v4}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;->getProfileList()Ljava/util/List;

    move-result-object v1

    .line 950
    .local v1, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMLgVpnProfile;>;"
    if-nez v1, :cond_27

    .line 951
    const-string/jumbo v4, "VpnController"

    const-string/jumbo v5, "enumLGVpnProfile() returned null"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .end local v1    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMLgVpnProfile;>;"
    :goto_26
    return-object v1

    .line 952
    .restart local v1    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMLgVpnProfile;>;"
    :cond_27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_97

    .line 953
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    invoke-virtual {v4}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->getProfileResult()I

    move-result v4

    sget-object v5, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;->OK:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;

    invoke-virtual {v5}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;->getCode()I

    move-result v5

    if-eq v4, v5, :cond_97

    .line 954
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    invoke-virtual {v4}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->getProfileResult()I

    move-result v2

    .line 956
    .local v2, "result":I
    invoke-static {v2}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->getProfileResultAsEnum(I)Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;

    move-result-object v3

    .line 959
    .local v3, "result_getProfile":Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;
    if-eqz v3, :cond_8d

    .line 960
    const-string/jumbo v4, "VpnController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enumLGVpnProfile() returned : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 961
    invoke-virtual {v3}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;->toString()Ljava/lang/String;

    move-result-object v6

    .line 960
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_70} :catch_71

    goto :goto_26

    .line 968
    .end local v1    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMLgVpnProfile;>;"
    .end local v2    # "result":I
    .end local v3    # "result_getProfile":Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;
    :catch_71
    move-exception v0

    .line 969
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "VpnController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RemoteException in enumLGVpnProfile()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 963
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMLgVpnProfile;>;"
    .restart local v2    # "result":I
    .restart local v3    # "result_getProfile":Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;
    :cond_8d
    :try_start_8d
    const-string/jumbo v4, "VpnController"

    const-string/jumbo v5, "enumLGVpnProfile() returned : is null "

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 966
    .end local v2    # "result":I
    .end local v3    # "result_getProfile":Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;
    :cond_97
    const-string/jumbo v4, "VpnController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enumLGVpnProfile() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_b5} :catch_71

    goto/16 :goto_26
.end method

.method enumVpnProfile(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMVpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/lge/mdm/controller/LGMDMVpnController;->enumVpnProfile(Landroid/content/ComponentName;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getAllowVPNSplitTunneling(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 545
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 546
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpnSplitTunneling:Z

    :cond_e
    return v4

    .line 549
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 550
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 551
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpnSplitTunneling:Z

    if-nez v5, :cond_19

    .line 552
    const/4 v4, 0x0

    return v4

    .line 555
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowVpn(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 503
    const/4 v0, 0x0

    .line 505
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 506
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 507
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpn:I

    :cond_e
    return v4

    .line 510
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 511
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 512
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpn:I

    if-eqz v5, :cond_19

    .line 513
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpn:I

    return v4

    .line 516
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2c
    return v4
.end method

.method public getConnectivityService()Landroid/net/IConnectivityManager;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->cService:Landroid/net/IConnectivityManager;

    if-nez v0, :cond_11

    .line 86
    const-string/jumbo v0, "connectivity"

    .line 85
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->cService:Landroid/net/IConnectivityManager;

    .line 88
    :cond_11
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->cService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method protected getCurrentConnectionLgVpn()Ljava/lang/String;
    .registers 6

    .prologue
    .line 819
    const/4 v1, 0x0

    .line 820
    .local v1, "profileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    if-eqz v2, :cond_25

    .line 822
    :try_start_5
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    invoke-interface {v2}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;->getCurrentConnectionProfileName()Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, "profileName":Ljava/lang/String;
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get LGVPN Current Connection ProfileName(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_25} :catch_26

    .line 830
    .end local v1    # "profileName":Ljava/lang/String;
    :cond_25
    :goto_25
    return-object v1

    .line 825
    :catch_26
    move-exception v0

    .line 826
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException in connetLgeVpn()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method protected getCurrentConnectionVpn(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 834
    const/4 v4, 0x0

    .line 836
    .local v4, "profileName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/lge/mdm/controller/LGMDMVpnController;->getEnabledVpnInfo(Lcom/lge/mdm/config/LGMDMVpnProfile;)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 837
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v0, :cond_4a

    iget v5, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4a

    .line 838
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5, p2}, Lcom/lge/mdm/controller/LGMDMVpnController;->enumVpnProfile(Landroid/content/ComponentName;ZI)Ljava/util/List;

    move-result-object v3

    .line 839
    .local v3, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMVpnProfile;>;"
    if-eqz v3, :cond_4a

    .line 840
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "p$iterator":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/config/LGMDMVpnProfile;

    .line 841
    .local v1, "p":Lcom/lge/mdm/config/LGMDMVpnProfile;
    iget-object v5, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 842
    iget-object v4, v1, Lcom/lge/mdm/config/LGMDMVpnProfile;->name:Ljava/lang/String;

    .line 843
    .local v4, "profileName":Ljava/lang/String;
    const-string/jumbo v5, "VpnController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Connected Profile name is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    .end local v1    # "p":Lcom/lge/mdm/config/LGMDMVpnProfile;
    .end local v2    # "p$iterator":Ljava/util/Iterator;
    .end local v3    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMVpnProfile;>;"
    .end local v4    # "profileName":Ljava/lang/String;
    :cond_4a
    if-nez v4, :cond_55

    .line 850
    const-string/jumbo v5, "VpnController"

    const-string/jumbo v6, "Connected Profile is null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_55
    return-object v4
.end method

.method getProfile(Lcom/lge/mdm/config/LGMDMVpnProfile;)Lcom/android/internal/net/VpnProfile;
    .registers 4
    .param p1, "lProfile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    .line 620
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 623
    iget v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->type:I

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 624
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->server:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 625
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 626
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->password:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 627
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->searchDomains:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 628
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->dnsServers:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 629
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->routes:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 630
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_54

    .line 651
    :goto_2c
    iget-boolean v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->saveLogin:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 652
    return-object v0

    .line 632
    :pswitch_31
    iget-boolean v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->mppe:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_2c

    .line 635
    :pswitch_36
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->l2tpSecret:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 637
    :pswitch_3a
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 638
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecSecret:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_2c

    .line 641
    :pswitch_43
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->l2tpSecret:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 643
    :pswitch_47
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecUserCert:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 645
    :pswitch_4b
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecUserCert:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 646
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMVpnProfile;->ipsecServerCert:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_2c

    .line 630
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_31
        :pswitch_36
        :pswitch_43
        :pswitch_3a
        :pswitch_47
        :pswitch_4b
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 413
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/mdm/config/LGMDMVpnProfile;

    .line 415
    .local v0, "profile":Lcom/lge/mdm/config/LGMDMVpnProfile;
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mHandler:Landroid/os/Handler;

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 416
    const-string/jumbo v1, "VpnController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage : msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_7e

    .line 448
    :cond_2f
    :goto_2f
    return v5

    .line 420
    :pswitch_30
    if-eqz v0, :cond_2f

    .line 423
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnectCurrentNativeVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;)V

    .line 424
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VPN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMVpnProfile;->encode()[B

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    goto :goto_2f

    .line 428
    :pswitch_56
    if-eqz v0, :cond_2f

    .line 431
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnectCurrentNativeVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;)V

    .line 432
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VPN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/lge/mdm/config/LGMDMVpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    goto :goto_2f

    .line 435
    :pswitch_77
    if-nez v0, :cond_2f

    goto :goto_2f

    .line 440
    :pswitch_7a
    if-nez v0, :cond_2f

    goto :goto_2f

    .line 418
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_30
        :pswitch_56
        :pswitch_77
        :pswitch_7a
    .end packed-switch
.end method

.method protected installLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 977
    const/4 v1, 0x0

    .line 979
    .local v1, "result":I
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 980
    sget-boolean v2, Lcom/lge/mdm/controller/LGMDMVpnController;->sIsAuthentec:Z

    if-nez v2, :cond_14

    .line 981
    const-string/jumbo v2, "VpnController"

    const-string/jumbo v3, "LGVPN is not supported on current device."

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    return v1

    .line 985
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    invoke-interface {v2, p2, p3}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;->installCertificate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 986
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installLGVpnCertificate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_34} :catch_35

    .line 991
    :goto_34
    return v1

    .line 987
    :catch_35
    move-exception v0

    .line 988
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException in installLGVpnCertificate()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public isAuthentecVpn(I)Z
    .registers 11
    .param p1, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 452
    const/4 v4, 0x0

    .line 453
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    .line 455
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 457
    .local v2, "identity":J
    :try_start_7
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_42

    .line 458
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 459
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v6, "com.ipsec.service"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 460
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v7, "com.ipsec.service"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 461
    const-string/jumbo v6, "VpnController"

    const-string/jumbo v7, "LGVPN is supported on current device."

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    if-nez v6, :cond_34

    .line 463
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->bindLGVpnService()V
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_34} :catch_54
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_34} :catch_46
    .catchall {:try_start_7 .. :try_end_34} :catchall_62

    .line 465
    :cond_34
    const/4 v6, 0x1

    .line 478
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    return v6

    .line 467
    :cond_39
    :try_start_39
    const-string/jumbo v6, "VpnController"

    const-string/jumbo v7, "LGVPN is not supported on current device."

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_42} :catch_54
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_42} :catch_46
    .catchall {:try_start_39 .. :try_end_42} :catchall_62

    .line 478
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 480
    return v8

    .line 474
    :catch_46
    move-exception v1

    .line 475
    .local v1, "e":Ljava/lang/Exception;
    :try_start_47
    const-string/jumbo v6, "VpnController"

    const-string/jumbo v7, "Exception is : "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_62

    .line 478
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 476
    return v8

    .line 470
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_54
    move-exception v0

    .line 471
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_55
    const-string/jumbo v6, "VpnController"

    const-string/jumbo v7, "NameNotFoundException is : "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_62

    .line 478
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    return v8

    .line 477
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_62
    move-exception v6

    .line 478
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 477
    throw v6
.end method

.method protected modifyLGVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMLgVpnProfile;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;
    .param p3, "userHandle"    # I

    .prologue
    .line 897
    const/4 v1, 0x0

    .line 899
    .local v1, "result":I
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 900
    if-nez p2, :cond_12

    .line 901
    const-string/jumbo v2, "VpnController"

    const-string/jumbo v3, "modifyLGVpnProfile() profile is null"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return v1

    .line 904
    :cond_12
    sget-boolean v2, Lcom/lge/mdm/controller/LGMDMVpnController;->sIsAuthentec:Z

    if-nez v2, :cond_20

    .line 905
    const-string/jumbo v2, "VpnController"

    const-string/jumbo v3, "LGVPN is not supported on current device."

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return v1

    .line 909
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    invoke-interface {v2, p2}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;->updateProfile(Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I

    move-result v1

    .line 910
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "modifyLGVpnProfile(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_40} :catch_41

    .line 915
    :goto_40
    return v1

    .line 911
    :catch_41
    move-exception v0

    .line 912
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException in modifyLGVpnProfile()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method modifyVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;
    .param p3, "userHandle"    # I

    .prologue
    .line 99
    const-string/jumbo v0, "VpnController"

    const-string/jumbo v1, "modifyVpnProfile():"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lge/mdm/controller/LGMDMVpnController;->updateVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;ZI)V

    .line 98
    return-void
.end method

.method protected setAllowVPNSplitTunneling(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 559
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 561
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v1, "VpnController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowVPNSplitTunneling : allow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpnSplitTunneling:Z

    if-ne v1, p2, :cond_2e

    .line 564
    const-string/jumbo v1, "VpnController"

    const-string/jumbo v2, "setAllowVPNSplitTunneling : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void

    .line 568
    :cond_2e
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpnSplitTunneling:Z

    .line 569
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnetCurrentVpnLgeVpn()V

    .line 570
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnectCurrentNativeVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;)V

    .line 558
    return-void
.end method

.method protected setAllowVpn(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allowType"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 520
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 522
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v1, "VpnController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowVpn : allowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpn:I

    if-ne v1, p2, :cond_2f

    .line 525
    const-string/jumbo v1, "VpnController"

    const-string/jumbo v2, "setAllowVpn : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void

    .line 529
    :cond_2f
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpn:I

    .line 531
    const/4 v1, 0x1

    if-ne p2, v1, :cond_38

    .line 532
    invoke-direct {p0, v4}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnectCurrentNativeVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;)V

    .line 519
    :cond_37
    :goto_37
    return-void

    .line 533
    :cond_38
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3f

    .line 534
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnetCurrentVpnLgeVpn()V

    goto :goto_37

    .line 535
    :cond_3f
    const/4 v1, 0x3

    if-ne p2, v1, :cond_37

    .line 536
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnetCurrentVpnLgeVpn()V

    .line 537
    invoke-direct {p0, v4}, Lcom/lge/mdm/controller/LGMDMVpnController;->disconnectCurrentNativeVpn(Lcom/lge/mdm/config/LGMDMVpnProfile;)V

    goto :goto_37
.end method

.method protected unInstallLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 995
    const/4 v1, 0x0

    .line 997
    .local v1, "result":I
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 998
    sget-boolean v2, Lcom/lge/mdm/controller/LGMDMVpnController;->sIsAuthentec:Z

    if-nez v2, :cond_14

    .line 999
    const-string/jumbo v2, "VpnController"

    const-string/jumbo v3, "LGVPN is not supported on current device."

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    return v1

    .line 1003
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    invoke-interface {v2, p2}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;->uninstallCertificate(Ljava/lang/String;)I

    move-result v1

    .line 1004
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unInstallLGVpnCertificate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_34} :catch_35

    .line 1009
    :goto_34
    return v1

    .line 1005
    :catch_35
    move-exception v0

    .line 1006
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException in unInstallLGVpnCertificate()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method protected updateLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "newCertName"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "oldCertName"    # Ljava/lang/String;
    .param p5, "userHandle"    # I

    .prologue
    .line 1013
    const/4 v1, 0x0

    .line 1015
    .local v1, "result":I
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1016
    sget-boolean v2, Lcom/lge/mdm/controller/LGMDMVpnController;->sIsAuthentec:Z

    if-nez v2, :cond_14

    .line 1017
    const-string/jumbo v2, "VpnController"

    const-string/jumbo v3, "LGVPN is not supported on current device."

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    return v1

    .line 1021
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    invoke-interface {v2, p2, p3, p4}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;->updateCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1022
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "upDateLGVpnCertificate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_34} :catch_35

    .line 1027
    :goto_34
    return v1

    .line 1023
    :catch_35
    move-exception v0

    .line 1024
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VpnController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException in updateLGVpnCertificate()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method
