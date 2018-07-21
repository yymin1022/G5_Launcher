.class public Lcom/lge/mdm/admin/LGMDMadministrator;
.super Ljava/lang/Object;
.source "LGMDMadministrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;,
        Lcom/lge/mdm/admin/LGMDMadministrator$1;
    }
.end annotation


# static fields
.field private static final API_AUTHENTICATION_EXCEPTION_ARRAY:[Ljava/lang/String;

.field public static final APP_VERSION_XML:Ljava/lang/String; = "lgmdm_application_version_policies.xml"

.field public static final APP_XML:Ljava/lang/String; = "lgmdm_application_policies.xml"

.field public static final ATCLINET_XML:Ljava/lang/String; = "lgmdm_atclient_policies.xml"

.field public static final GEN_XML:Ljava/lang/String; = "lgmdm_general_policies.xml"

.field public static final GET_ALL_USER_POLICY:I = 0x2

.field public static final GET_SELF_USER_AND_OWNER_POLICY:I = 0x1

.field public static final GET_SELF_USER_POLICY:I = 0x0

.field public static final HW_XML:Ljava/lang/String; = "lgmdm_hardware_policies.xml"

.field public static final INTERNET_ACCESS_LIST_XML:Ljava/lang/String; = "lgmdm_list_ialist_policies.xml"

.field public static final INTERNET_CMDLIST_XML:Ljava/lang/String; = "lgmdm_cmdlist_policies.xml"

.field public static final IS_GEN_XML:Ljava/lang/String; = "lgis_general_policies.xml"

.field public static final SIGNATURE_XML:Ljava/lang/String; = "lgmdm_list_signaturestate_policies.xml"

.field private static final TAG:Ljava/lang/String; = "administrator"

.field public static allFilename:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static instance:Lcom/lge/mdm/admin/LGMDMadministrator;


# instance fields
.field private mAllUserInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLGISGeneralParser:Lcom/lge/mdm/admin/ILGMDMXml;

.field private final mLGMDMATClientParser:Lcom/lge/mdm/admin/ILGMDMXml;

.field private final mLGMDMAppListParser:Lcom/lge/mdm/admin/ILGMDMXml;

.field private final mLGMDMApplicationParser:Lcom/lge/mdm/admin/ILGMDMXml;

.field private final mLGMDMGeneralParser:Lcom/lge/mdm/admin/ILGMDMXml;

.field private final mLGMDMHardwareParser:Lcom/lge/mdm/admin/ILGMDMXml;

.field final mMasterList:Lcom/lge/mdm/admin/LGMDMadminlist;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field public final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;",
            ">;"
        }
    .end annotation
.end field

.field private mUserHandleID:I

.field private signatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/lge/mdm/admin/LGMDMadministrator;I)V
    .registers 2
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->setCurrentUserID(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/admin/LGMDMadministrator;->instance:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/mdm/admin/LGMDMadministrator;->allFilename:Ljava/util/ArrayList;

    .line 137
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 138
    const-string/jumbo v1, "com.lge.email"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "com.android.email"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "com.sprint.extension"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "com.lge.exchange"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 137
    sput-object v0, Lcom/lge/mdm/admin/LGMDMadministrator;->API_AUTHENTICATION_EXCEPTION_ARRAY:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "LGMDMHardwareParser"    # Lcom/lge/mdm/admin/ILGMDMXml;
    .param p3, "LGMDMGeneralParser"    # Lcom/lge/mdm/admin/ILGMDMXml;
    .param p4, "LGMDMApplicationParser"    # Lcom/lge/mdm/admin/ILGMDMXml;
    .param p5, "LGMDMAppListParser"    # Lcom/lge/mdm/admin/ILGMDMXml;
    .param p6, "LGMDMATClientParser"    # Lcom/lge/mdm/admin/ILGMDMXml;
    .param p7, "LGISGeneralParser"    # Lcom/lge/mdm/admin/ILGMDMXml;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    invoke-direct {v0, v4, v4}, Lcom/lge/mdm/admin/LGMDMadminlist;-><init>(Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;Landroid/app/admin/DeviceAdminInfo;)V

    iput-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mMasterList:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 90
    iput v1, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserHandleID:I

    .line 91
    iput-object v4, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mAllUserInfoList:Ljava/util/List;

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserData:Landroid/util/SparseArray;

    .line 159
    new-instance v0, Lcom/lge/mdm/admin/LGMDMadministrator$1;

    invoke-direct {v0, p0}, Lcom/lge/mdm/admin/LGMDMadministrator$1;-><init>(Lcom/lge/mdm/admin/LGMDMadministrator;)V

    iput-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    iput-object p1, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    .line 177
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "administrator"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mHandlerThread:Landroid/os/HandlerThread;

    .line 178
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 179
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->signatureMap:Ljava/util/Map;

    .line 184
    sget-object v0, Lcom/lge/mdm/admin/LGMDMadministrator;->allFilename:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b8

    .line 185
    new-instance v6, Ljava/util/HashSet;

    sget-object v0, Lcom/lge/mdm/admin/LGMDMadministrator;->allFilename:Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 190
    .local v6, "fileNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_52
    const-string/jumbo v0, "lgmdm_hardware_policies.xml"

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    const-string/jumbo v0, "lgmdm_general_policies.xml"

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    const-string/jumbo v0, "lgmdm_application_policies.xml"

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    const-string/jumbo v0, "lgmdm_atclient_policies.xml"

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    const-string/jumbo v0, "lgmdm_list_signaturestate_policies.xml"

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    const-string/jumbo v0, "lgmdm_list_ialist_policies.xml"

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    const-string/jumbo v0, "lgmdm_cmdlist_policies.xml"

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    const-string/jumbo v0, "lgmdm_application_version_policies.xml"

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    const-string/jumbo v0, "lgis_general_policies.xml"

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_95

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/lge/mdm/admin/LGMDMadministrator;->allFilename:Ljava/util/ArrayList;

    .line 204
    :cond_95
    iput-object p2, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMHardwareParser:Lcom/lge/mdm/admin/ILGMDMXml;

    .line 205
    iput-object p3, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMGeneralParser:Lcom/lge/mdm/admin/ILGMDMXml;

    .line 206
    iput-object p4, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMApplicationParser:Lcom/lge/mdm/admin/ILGMDMXml;

    .line 207
    iput-object p5, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMAppListParser:Lcom/lge/mdm/admin/ILGMDMXml;

    .line 208
    iput-object p6, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMATClientParser:Lcom/lge/mdm/admin/ILGMDMXml;

    .line 209
    iput-object p7, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGISGeneralParser:Lcom/lge/mdm/admin/ILGMDMXml;

    .line 211
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 173
    return-void

    .line 187
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "fileNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b8
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .restart local v6    # "fileNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_52
.end method

.method public static getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;
    .registers 1

    .prologue
    .line 156
    sget-object v0, Lcom/lge/mdm/admin/LGMDMadministrator;->instance:Lcom/lge/mdm/admin/LGMDMadministrator;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;)Lcom/lge/mdm/admin/LGMDMadministrator;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "LGMDMHardwareParser"    # Lcom/lge/mdm/admin/ILGMDMXml;
    .param p2, "LGMDMGeneralParser"    # Lcom/lge/mdm/admin/ILGMDMXml;
    .param p3, "LGMDMApplicationParser"    # Lcom/lge/mdm/admin/ILGMDMXml;
    .param p4, "LGMDMAppListParser"    # Lcom/lge/mdm/admin/ILGMDMXml;
    .param p5, "LGMDMATClientParser"    # Lcom/lge/mdm/admin/ILGMDMXml;
    .param p6, "LGISGeneralParser"    # Lcom/lge/mdm/admin/ILGMDMXml;

    .prologue
    .line 147
    sget-object v0, Lcom/lge/mdm/admin/LGMDMadministrator;->instance:Lcom/lge/mdm/admin/LGMDMadministrator;

    if-nez v0, :cond_12

    .line 148
    new-instance v0, Lcom/lge/mdm/admin/LGMDMadministrator;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/lge/mdm/admin/LGMDMadministrator;-><init>(Landroid/content/Context;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;Lcom/lge/mdm/admin/ILGMDMXml;)V

    sput-object v0, Lcom/lge/mdm/admin/LGMDMadministrator;->instance:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 152
    :cond_12
    sget-object v0, Lcom/lge/mdm/admin/LGMDMadministrator;->instance:Lcom/lge/mdm/admin/LGMDMadministrator;

    return-object v0
.end method

.method private getLGMDMadminMap(Ljava/lang/String;I)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 451
    const-string/jumbo v8, "administrator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getLGMDMadminMap name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " userHandle:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v6

    .line 453
    .local v6, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p0, v8, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->findAdmin(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v2

    .line 454
    .local v2, "info":Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p0, v8, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->findAdminForNative(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v4

    .line 455
    .local v4, "nativeInfo":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v2, :cond_3d

    if-nez v4, :cond_43

    .line 456
    :cond_3d
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 458
    :cond_43
    iget-object v8, v6, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminMaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_ab

    .line 459
    const-string/jumbo v8, "administrator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAdminMaps not exist info.getComponent() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    new-instance v3, Lcom/lge/mdm/admin/LGMDMadminlist;

    invoke-direct {v3, v2, v4}, Lcom/lge/mdm/admin/LGMDMadminlist;-><init>(Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;Landroid/app/admin/DeviceAdminInfo;)V

    .line 461
    .local v3, "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v8, v6, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminMaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const/4 v7, -0x1

    .line 463
    .local v7, "replaceIndex":I
    iget-object v8, v6, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 464
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_83
    if-ge v1, v0, :cond_a0

    .line 465
    iget-object v8, v6, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 466
    .local v5, "oldAdmin":Lcom/lge/mdm/admin/LGMDMadminlist;
    invoke-virtual {v5}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v2}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 467
    move v7, v1

    .line 471
    .end local v5    # "oldAdmin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_a0
    const/4 v8, -0x1

    if-ne v7, v8, :cond_bb

    .line 472
    iget-object v8, v6, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    :goto_a8
    invoke-virtual {p0, v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->checkAPIAuthentication(Lcom/lge/mdm/admin/LGMDMadminlist;I)V

    .line 478
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v7    # "replaceIndex":I
    :cond_ab
    iget-object v8, v6, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminMaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/mdm/admin/LGMDMadminlist;

    return-object v8

    .line 464
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    .restart local v5    # "oldAdmin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .restart local v7    # "replaceIndex":I
    :cond_b8
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 474
    .end local v5    # "oldAdmin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_bb
    iget-object v8, v6, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v8, v7, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a8
.end method

.method private loadSettingsLocked(Ljava/lang/String;Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;I)V
    .registers 27
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "policy"    # Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    .param p3, "userHandle"    # I

    .prologue
    .line 929
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "loadSettingsLocked filename:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", userHandle:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->makeJournaledFile(Ljava/lang/String;I)Lcom/android/internal/util/JournaledFile;

    move-result-object v10

    .line 931
    .local v10, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v15, 0x0

    .line 932
    .local v15, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v10}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v9

    .line 934
    .local v9, "file":Ljava/io/File;
    :try_start_3a
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_41} :catch_5c7
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_41} :catch_5ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_41} :catch_5cd
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_41} :catch_5d0
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_5d3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a .. :try_end_41} :catch_5d6
    .catchall {:try_start_3a .. :try_end_41} :catchall_5c4

    .line 935
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v16, "stream":Ljava/io/FileInputStream;
    :try_start_41
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 936
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 939
    :cond_4e
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .local v18, "type":I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_62

    .line 940
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4e

    .line 943
    :cond_62
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 944
    .local v17, "tag":Ljava/lang/String;
    const-string/jumbo v19, "policies"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c3

    .line 945
    new-instance v19, Lorg/xmlpull/v1/XmlPullParserException;

    .line 946
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Settings do not start with policies tag: found "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 945
    invoke-direct/range {v19 .. v20}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_91
    .catch Ljava/lang/NullPointerException; {:try_start_41 .. :try_end_91} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_91} :catch_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_91} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_91} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_91} :catch_316
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_41 .. :try_end_91} :catch_391
    .catchall {:try_start_41 .. :try_end_91} :catchall_408

    .line 1034
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_91
    move-exception v5

    .local v5, "e":Ljava/lang/NullPointerException;
    move-object/from16 v15, v16

    .line 1035
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :goto_94
    :try_start_94
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_94 .. :try_end_bd} :catchall_5c4

    .line 1049
    if-eqz v15, :cond_c2

    .line 1050
    :try_start_bf
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_5be

    .line 928
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :cond_c2
    :goto_c2
    return-void

    .line 948
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_c3
    :try_start_c3
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .line 949
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 950
    .local v13, "outerDepth":I
    :cond_cb
    :goto_cb
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5b3

    .line 951
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e7

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v13, :cond_5b3

    .line 952
    :cond_e7
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_cb

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_cb

    .line 955
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 957
    const-string/jumbo v19, "password-recovery-by-eas"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f6

    .line 959
    const-string/jumbo v19, "value"

    .line 958
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mPasswordRecoveryByEas:Z

    .line 960
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "loadSettingsLocked: mPasswordRecoveryByEas= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 961
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mPasswordRecoveryByEas:Z

    move/from16 v21, v0

    .line 960
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_13f
    :goto_13f
    const-string/jumbo v19, "admin"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_590

    .line 990
    const-string/jumbo v19, "name"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_158
    .catch Ljava/lang/NullPointerException; {:try_start_c3 .. :try_end_158} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_c3 .. :try_end_158} :catch_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c3 .. :try_end_158} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_c3 .. :try_end_158} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_158} :catch_316
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c3 .. :try_end_158} :catch_391
    .catchall {:try_start_c3 .. :try_end_158} :catchall_408

    move-result-object v12

    .line 994
    .local v12, "name":Ljava/lang/String;
    :try_start_159
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminMap(Ljava/lang/String;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v11

    .line 996
    .local v11, "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mAdminList : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    if-eqz v11, :cond_cb

    .line 1000
    const-string/jumbo v19, "lgmdm_hardware_policies.xml"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_49b

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMHardwareParser:Lcom/lge/mdm/admin/ILGMDMXml;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v14, v11, v1}, Lcom/lge/mdm/admin/ILGMDMXml;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    :try_end_19b
    .catch Ljava/lang/RuntimeException; {:try_start_159 .. :try_end_19b} :catch_19d
    .catch Ljava/lang/NullPointerException; {:try_start_159 .. :try_end_19b} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_159 .. :try_end_19b} :catch_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_159 .. :try_end_19b} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_159 .. :try_end_19b} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_19b} :catch_316
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_159 .. :try_end_19b} :catch_391
    .catchall {:try_start_159 .. :try_end_19b} :catchall_408

    goto/16 :goto_cb

    .line 1026
    .end local v11    # "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    :catch_19d
    move-exception v7

    .line 1027
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_19e
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Failed loading admin "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1be
    .catch Ljava/lang/NullPointerException; {:try_start_19e .. :try_end_1be} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_19e .. :try_end_1be} :catch_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19e .. :try_end_1be} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_19e .. :try_end_1be} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1be} :catch_316
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19e .. :try_end_1be} :catch_391
    .catchall {:try_start_19e .. :try_end_1be} :catchall_408

    goto/16 :goto_cb

    .line 1036
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "outerDepth":I
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_1c0
    move-exception v6

    .local v6, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v15, v16

    .line 1037
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :goto_1c3
    :try_start_1c3
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catchall {:try_start_1c3 .. :try_end_1ec} :catchall_5c4

    .line 1049
    if-eqz v15, :cond_c2

    .line 1050
    :try_start_1ee
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1f1} :catch_1f3

    goto/16 :goto_c2

    .line 1052
    :catch_1f3
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto/16 :goto_c2

    .line 962
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v13    # "outerDepth":I
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_1f6
    :try_start_1f6
    const-string/jumbo v19, "allow-lockout-descript"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_271

    .line 963
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const-string/jumbo v20, "value"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "readFromXml: allow-lockout-descript= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_239
    .catch Ljava/lang/NullPointerException; {:try_start_1f6 .. :try_end_239} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_1f6 .. :try_end_239} :catch_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f6 .. :try_end_239} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_1f6 .. :try_end_239} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_1f6 .. :try_end_239} :catch_316
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f6 .. :try_end_239} :catch_391
    .catchall {:try_start_1f6 .. :try_end_239} :catchall_408

    goto/16 :goto_13f

    .line 1038
    .end local v13    # "outerDepth":I
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_23b
    move-exception v8

    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v15, v16

    .line 1039
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :goto_23e
    :try_start_23e
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_267
    .catchall {:try_start_23e .. :try_end_267} :catchall_5c4

    .line 1049
    if-eqz v15, :cond_c2

    .line 1050
    :try_start_269
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_26c
    .catch Ljava/io/IOException; {:try_start_269 .. :try_end_26c} :catch_26e

    goto/16 :goto_c2

    .line 1052
    :catch_26e
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_c2

    .line 965
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v13    # "outerDepth":I
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_271
    :try_start_271
    const-string/jumbo v19, "wipeData-flag"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2c4

    .line 966
    const-string/jumbo v19, "value"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mWipeDataFlag:I

    .line 967
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "loadSettingsLocked: mWipeDataFlag= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mWipeDataFlag:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b5
    .catch Ljava/lang/NullPointerException; {:try_start_271 .. :try_end_2b5} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_271 .. :try_end_2b5} :catch_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_271 .. :try_end_2b5} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_271 .. :try_end_2b5} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_271 .. :try_end_2b5} :catch_316
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_271 .. :try_end_2b5} :catch_391
    .catchall {:try_start_271 .. :try_end_2b5} :catchall_408

    goto/16 :goto_13f

    .line 1040
    .end local v13    # "outerDepth":I
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_2b7
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    move-object/from16 v15, v16

    .line 1049
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :goto_2ba
    if-eqz v15, :cond_c2

    .line 1050
    :try_start_2bc
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_2bf
    .catch Ljava/io/IOException; {:try_start_2bc .. :try_end_2bf} :catch_2c1

    goto/16 :goto_c2

    .line 1052
    :catch_2c1
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_c2

    .line 968
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v13    # "outerDepth":I
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_2c4
    :try_start_2c4
    const-string/jumbo v19, "pre-auto-sync"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_34c

    .line 969
    const-string/jumbo v19, "value"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set6(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Z)Z

    .line 971
    const-string/jumbo v19, "administrator"

    .line 972
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "loadSettingsLocked: pre-auto-sync= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 973
    const-string/jumbo v21, "value"

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 972
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 970
    invoke-static/range {v19 .. v20}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_314
    .catch Ljava/lang/NullPointerException; {:try_start_2c4 .. :try_end_314} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_2c4 .. :try_end_314} :catch_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c4 .. :try_end_314} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_2c4 .. :try_end_314} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_2c4 .. :try_end_314} :catch_316
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2c4 .. :try_end_314} :catch_391
    .catchall {:try_start_2c4 .. :try_end_314} :catchall_408

    goto/16 :goto_13f

    .line 1043
    .end local v13    # "outerDepth":I
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_316
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object/from16 v15, v16

    .line 1044
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :goto_319
    :try_start_319
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_342
    .catchall {:try_start_319 .. :try_end_342} :catchall_5c4

    .line 1049
    if-eqz v15, :cond_c2

    .line 1050
    :try_start_344
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_347
    .catch Ljava/io/IOException; {:try_start_344 .. :try_end_347} :catch_349

    goto/16 :goto_c2

    .line 1052
    :catch_349
    move-exception v3

    goto/16 :goto_c2

    .line 974
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v13    # "outerDepth":I
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_34c
    :try_start_34c
    const-string/jumbo v19, "allow-lock-down-apps"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3c7

    .line 975
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const-string/jumbo v20, "value"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "readFromXml: allow-lock-down-apps = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38f
    .catch Ljava/lang/NullPointerException; {:try_start_34c .. :try_end_38f} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_34c .. :try_end_38f} :catch_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34c .. :try_end_38f} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_34c .. :try_end_38f} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_34c .. :try_end_38f} :catch_316
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_34c .. :try_end_38f} :catch_391
    .catchall {:try_start_34c .. :try_end_38f} :catchall_408

    goto/16 :goto_13f

    .line 1045
    .end local v13    # "outerDepth":I
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_391
    move-exception v4

    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v15, v16

    .line 1046
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :goto_394
    :try_start_394
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3bd
    .catchall {:try_start_394 .. :try_end_3bd} :catchall_5c4

    .line 1049
    if-eqz v15, :cond_c2

    .line 1050
    :try_start_3bf
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_3c2
    .catch Ljava/io/IOException; {:try_start_3bf .. :try_end_3c2} :catch_3c4

    goto/16 :goto_c2

    .line 1052
    :catch_3c4
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_c2

    .line 977
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v13    # "outerDepth":I
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_3c7
    :try_start_3c7
    const-string/jumbo v19, "browser-proxy-ipaddress"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_411

    .line 978
    const-string/jumbo v19, "value"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set2(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Ljava/lang/String;)Ljava/lang/String;

    .line 979
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "readFromXml: browser-proxy-ipaddress= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get2(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_406
    .catch Ljava/lang/NullPointerException; {:try_start_3c7 .. :try_end_406} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_3c7 .. :try_end_406} :catch_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c7 .. :try_end_406} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_3c7 .. :try_end_406} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_3c7 .. :try_end_406} :catch_316
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3c7 .. :try_end_406} :catch_391
    .catchall {:try_start_3c7 .. :try_end_406} :catchall_408

    goto/16 :goto_13f

    .line 1047
    .end local v13    # "outerDepth":I
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catchall_408
    move-exception v19

    move-object/from16 v15, v16

    .line 1049
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :goto_40b
    if-eqz v15, :cond_410

    .line 1050
    :try_start_40d
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_410
    .catch Ljava/io/IOException; {:try_start_40d .. :try_end_410} :catch_5c1

    .line 1047
    :cond_410
    :goto_410
    throw v19

    .line 980
    .restart local v13    # "outerDepth":I
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_411
    :try_start_411
    const-string/jumbo v19, "browser-proxy-portnumber"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_456

    .line 981
    const-string/jumbo v19, "value"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set3(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;I)I

    .line 982
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "readFromXml: browser-proxy-portnumber= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get3(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13f

    .line 983
    :cond_456
    const-string/jumbo v19, "wifi-need-update"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13f

    .line 985
    const-string/jumbo v19, "value"

    .line 984
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set7(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Z)Z

    .line 986
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "readFromXml: wifi-need-update= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get7(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_499
    .catch Ljava/lang/NullPointerException; {:try_start_411 .. :try_end_499} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_411 .. :try_end_499} :catch_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_411 .. :try_end_499} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_411 .. :try_end_499} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_411 .. :try_end_499} :catch_316
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_411 .. :try_end_499} :catch_391
    .catchall {:try_start_411 .. :try_end_499} :catchall_408

    goto/16 :goto_13f

    .line 1002
    .restart local v11    # "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    .restart local v12    # "name":Ljava/lang/String;
    :cond_49b
    :try_start_49b
    const-string/jumbo v19, "lgmdm_general_policies.xml"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4b9

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMGeneralParser:Lcom/lge/mdm/admin/ILGMDMXml;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v14, v11, v1}, Lcom/lge/mdm/admin/ILGMDMXml;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    goto/16 :goto_cb

    .line 1004
    :cond_4b9
    const-string/jumbo v19, "lgmdm_application_policies.xml"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4d7

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMApplicationParser:Lcom/lge/mdm/admin/ILGMDMXml;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v14, v11, v1}, Lcom/lge/mdm/admin/ILGMDMXml;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    goto/16 :goto_cb

    .line 1006
    :cond_4d7
    const-string/jumbo v19, "lgmdm_atclient_policies.xml"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4f5

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMATClientParser:Lcom/lge/mdm/admin/ILGMDMXml;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v14, v11, v1}, Lcom/lge/mdm/admin/ILGMDMXml;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    goto/16 :goto_cb

    .line 1008
    :cond_4f5
    const-string/jumbo v19, "lgmdm_list_signaturestate_policies.xml"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_514

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMAppListParser:Lcom/lge/mdm/admin/ILGMDMXml;

    move-object/from16 v19, v0

    .line 1010
    const-string/jumbo v20, "lgmdm_list_signaturestate_policies.xml"

    .line 1009
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v14, v11, v1}, Lcom/lge/mdm/admin/ILGMDMXml;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    goto/16 :goto_cb

    .line 1011
    :cond_514
    const-string/jumbo v19, "lgmdm_list_ialist_policies.xml"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_533

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMAppListParser:Lcom/lge/mdm/admin/ILGMDMXml;

    move-object/from16 v19, v0

    .line 1013
    const-string/jumbo v20, "lgmdm_list_ialist_policies.xml"

    .line 1012
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v14, v11, v1}, Lcom/lge/mdm/admin/ILGMDMXml;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    goto/16 :goto_cb

    .line 1014
    :cond_533
    const-string/jumbo v19, "lgmdm_cmdlist_policies.xml"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_552

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMAppListParser:Lcom/lge/mdm/admin/ILGMDMXml;

    move-object/from16 v19, v0

    .line 1016
    const-string/jumbo v20, "lgmdm_cmdlist_policies.xml"

    .line 1015
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v14, v11, v1}, Lcom/lge/mdm/admin/ILGMDMXml;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    goto/16 :goto_cb

    .line 1017
    :cond_552
    const-string/jumbo v19, "lgmdm_application_version_policies.xml"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_571

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMAppListParser:Lcom/lge/mdm/admin/ILGMDMXml;

    move-object/from16 v19, v0

    .line 1019
    const-string/jumbo v20, "lgmdm_application_version_policies.xml"

    .line 1018
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v14, v11, v1}, Lcom/lge/mdm/admin/ILGMDMXml;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    goto/16 :goto_cb

    .line 1020
    :cond_571
    const-string/jumbo v19, "lgis_general_policies.xml"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_cb

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGISGeneralParser:Lcom/lge/mdm/admin/ILGMDMXml;

    move-object/from16 v19, v0

    .line 1022
    const-string/jumbo v20, "lgis_general_policies.xml"

    .line 1021
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v14, v11, v1}, Lcom/lge/mdm/admin/ILGMDMXml;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    :try_end_58e
    .catch Ljava/lang/RuntimeException; {:try_start_49b .. :try_end_58e} :catch_19d
    .catch Ljava/lang/NullPointerException; {:try_start_49b .. :try_end_58e} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_49b .. :try_end_58e} :catch_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49b .. :try_end_58e} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_49b .. :try_end_58e} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_49b .. :try_end_58e} :catch_316
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_49b .. :try_end_58e} :catch_391
    .catchall {:try_start_49b .. :try_end_58e} :catchall_408

    goto/16 :goto_cb

    .line 1030
    .end local v11    # "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v12    # "name":Ljava/lang/String;
    :cond_590
    :try_start_590
    const-string/jumbo v19, "administrator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unknown tag: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5b1
    .catch Ljava/lang/NullPointerException; {:try_start_590 .. :try_end_5b1} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_590 .. :try_end_5b1} :catch_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_590 .. :try_end_5b1} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_590 .. :try_end_5b1} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_590 .. :try_end_5b1} :catch_316
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_590 .. :try_end_5b1} :catch_391
    .catchall {:try_start_590 .. :try_end_5b1} :catchall_408

    goto/16 :goto_cb

    .line 1049
    :cond_5b3
    if-eqz v16, :cond_5b8

    .line 1050
    :try_start_5b5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_5b8
    .catch Ljava/io/IOException; {:try_start_5b5 .. :try_end_5b8} :catch_5bc

    :cond_5b8
    :goto_5b8
    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v15, "stream":Ljava/io/FileInputStream;
    goto/16 :goto_c2

    .line 1052
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_5bc
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_5b8

    .end local v3    # "e":Ljava/io/IOException;
    .end local v13    # "outerDepth":I
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v5    # "e":Ljava/lang/NullPointerException;
    :catch_5be
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_c2

    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :catch_5c1
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_410

    .line 1047
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_5c4
    move-exception v19

    goto/16 :goto_40b

    .line 1034
    .local v15, "stream":Ljava/io/FileInputStream;
    :catch_5c7
    move-exception v5

    .restart local v5    # "e":Ljava/lang/NullPointerException;
    goto/16 :goto_94

    .line 1036
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :catch_5ca
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1c3

    .line 1038
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_5cd
    move-exception v8

    .restart local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_23e

    .line 1040
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5d0
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_2ba

    .line 1043
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_5d3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_319

    .line 1045
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5d6
    move-exception v4

    .restart local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_394
.end method

.method public static makeJournaledFile(Ljava/lang/String;I)Lcom/android/internal/util/JournaledFile;
    .registers 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "userHandle"    # I

    .prologue
    .line 743
    if-nez p1, :cond_54

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "base":Ljava/lang/String;
    :goto_16
    const-string/jumbo v1, "administrator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeJournaledFile base:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .line 745
    .end local v0    # "base":Ljava/lang/String;
    :cond_54
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_16
.end method

.method private setCurrentUserID(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 307
    iput p1, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserHandleID:I

    .line 308
    const-string/jumbo v0, "administrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ACTION_USER_SWITCHED change userID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method


# virtual methods
.method public addLockoutDescriptComponentList(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1082
    if-nez p1, :cond_3

    .line 1083
    return-void

    .line 1085
    :cond_3
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v1

    .line 1086
    .local v1, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 1087
    .local v0, "mWhoString":Ljava/lang/String;
    iget-object v2, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1088
    iget-object v2, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1090
    :cond_18
    iget-object v2, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    const-string/jumbo v2, "administrator"

    .line 1093
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addLockoutDescriptComponentList componentlistsize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1094
    iget-object v4, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1093
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1091
    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    return-void
.end method

.method public addRunningAppComponentList(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1151
    if-nez p1, :cond_3

    .line 1152
    return-void

    .line 1154
    :cond_3
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v1

    .line 1155
    .local v1, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, "mWhoString":Ljava/lang/String;
    iget-object v2, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1157
    iget-object v2, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1159
    :cond_18
    iget-object v2, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    const-string/jumbo v2, "administrator"

    .line 1161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addRunningAppComponentList componentlistsize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1160
    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    return-void
.end method

.method public checkAPIAuthentication(Lcom/lge/mdm/admin/LGMDMadminlist;I)V
    .registers 14
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1218
    const-string/jumbo v6, "administrator"

    const-string/jumbo v7, "API Authentication checked"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    if-nez p1, :cond_17

    .line 1220
    const-string/jumbo v5, "administrator"

    const-string/jumbo v6, "API Authentication fail. admin is null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    return-void

    .line 1223
    :cond_17
    invoke-virtual {p1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1224
    .local v0, "clientPackage":Ljava/lang/String;
    if-nez v0, :cond_22

    .line 1225
    return-void

    .line 1228
    :cond_22
    sget-object v7, Lcom/lge/mdm/admin/LGMDMadministrator;->API_AUTHENTICATION_EXCEPTION_ARRAY:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_26
    if-ge v6, v8, :cond_59

    aget-object v1, v7, v6

    .line 1229
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 1230
    iput-boolean v10, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->apiAuth:Z

    .line 1231
    const-string/jumbo v5, "administrator"

    const-string/jumbo v6, "API Authentication success."

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const-string/jumbo v5, "administrator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1233
    const-string/jumbo v7, " is one of exception list.API Authentication successful"

    .line 1232
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    return-void

    .line 1228
    :cond_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 1237
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_59
    invoke-static {v0, p2}, Lcom/lge/mdm/util/LGMDMPackageManager;->getRealSignatureKey(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1238
    .local v3, "realSignatureKeys":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getSignatureList()Ljava/util/Map;

    move-result-object v4

    .line 1239
    .local v4, "signatureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_b3

    if-eqz v3, :cond_b3

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_b3

    .line 1240
    array-length v6, v3

    if-lez v6, :cond_b3

    .line 1241
    array-length v7, v3

    move v6, v5

    :goto_70
    if-ge v6, v7, :cond_b3

    aget-object v2, v3, v6

    .line 1242
    .local v2, "realSign":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 1243
    iput-boolean v10, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->apiAuth:Z

    .line 1244
    const-string/jumbo v5, "administrator"

    const-string/jumbo v8, "API Authentication success."

    invoke-static {v5, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const-string/jumbo v8, "administrator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "admin sign key is : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :goto_a5
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_70

    .line 1247
    :cond_a9
    const-string/jumbo v5, "administrator"

    const-string/jumbo v8, "API Authentication fail"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 1217
    .end local v2    # "realSign":Ljava/lang/String;
    :cond_b3
    return-void
.end method

.method public clearLockoutDescriptComponentList(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1110
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1111
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1109
    return-void
.end method

.method public enforceCrossUserPermission(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 1198
    if-gez p1, :cond_1c

    .line 1199
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1201
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1202
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_27

    .line 1203
    return-void

    .line 1197
    :cond_27
    return-void
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;
    .registers 11
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 697
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->enforceCrossUserPermission(I)V

    .line 698
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 699
    .local v3, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 700
    iget-object v4, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    if-nez v4, :cond_19

    .line 701
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "mContext is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 703
    :cond_19
    iget-object v4, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 704
    const/16 v5, 0x80

    .line 703
    invoke-virtual {v4, v3, v5, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 705
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_2d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_47

    .line 706
    :cond_2d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 709
    :cond_47
    :try_start_47
    new-instance v5, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    iget-object v6, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, v6, v4}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_55} :catch_7d
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_55} :catch_56

    return-object v5

    .line 713
    :catch_56
    move-exception v0

    .line 714
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "administrator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    return-object v7

    .line 710
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7d
    move-exception v1

    .line 711
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v4, "administrator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 712
    return-object v7
.end method

.method public findAdminForNative(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;
    .registers 11
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 720
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->enforceCrossUserPermission(I)V

    .line 721
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 722
    .local v3, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 723
    iget-object v4, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    if-nez v4, :cond_19

    .line 724
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "mContext is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 726
    :cond_19
    iget-object v4, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 727
    const/16 v5, 0x80

    .line 726
    invoke-virtual {v4, v3, v5, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 728
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_2d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_47

    .line 729
    :cond_2d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 732
    :cond_47
    :try_start_47
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, v6, v4}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_55} :catch_7d
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_55} :catch_56

    return-object v5

    .line 736
    :catch_56
    move-exception v0

    .line 737
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "administrator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    return-object v7

    .line 733
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7d
    move-exception v1

    .line 734
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v4, "administrator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    return-object v7
.end method

.method public getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 613
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 619
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 620
    .local v5, "userHandle":I
    invoke-virtual {p0, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v4

    .line 621
    .local v4, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    if-eqz p1, :cond_b8

    .line 622
    iget-object v6, v4, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminMaps:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 623
    .local v1, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v1, :cond_32

    .line 624
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No active admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 627
    :cond_32
    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getUid()I

    move-result v6

    if-eq v6, v2, :cond_76

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_76

    .line 628
    const-string/jumbo v6, "com.sprint.extension.admin.SprintExtensionDeviceAdminReceiver"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 630
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not owned by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 631
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 630
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 634
    :cond_76
    if-lez p2, :cond_82

    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 639
    :cond_82
    return-object v1

    .line 635
    :cond_83
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 636
    const-string/jumbo v8, " did not specify uses-policy for: "

    .line 635
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 637
    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v8

    .line 635
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 641
    .end local v1    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_b8
    iget-object v6, v4, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 642
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_bf
    if-ge v3, v0, :cond_e0

    .line 643
    iget-object v6, v4, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 644
    .restart local v1    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getUid()I

    move-result v6

    if-ne v6, v2, :cond_dd

    .line 645
    if-gez p2, :cond_d2

    .line 646
    return-object v1

    .line 648
    :cond_d2
    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 649
    return-object v1

    .line 642
    :cond_dd
    add-int/lit8 v3, v3, 0x1

    goto :goto_bf

    .line 653
    .end local v1    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_e0
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No active admin owned by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 654
    const-string/jumbo v8, " for MDM policy #"

    .line 653
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getActiveAdminForCallerLockedForNativePolicy(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 660
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 661
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 662
    .local v5, "userHandle":I
    invoke-virtual {p0, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v4

    .line 663
    .local v4, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    if-eqz p1, :cond_b6

    .line 664
    iget-object v6, v4, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminMaps:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 665
    .local v1, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v1, :cond_32

    .line 666
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No active admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 669
    :cond_32
    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getUid()I

    move-result v6

    if-eq v6, v2, :cond_76

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_76

    .line 670
    const-string/jumbo v6, "com.sprint.extension.admin.SprintExtensionDeviceAdminReceiver"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 672
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not owned by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 673
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 672
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 676
    :cond_76
    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getNativeDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-nez v6, :cond_b5

    .line 677
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getNativeDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 678
    const-string/jumbo v8, " did not specify uses-policy for: "

    .line 677
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 679
    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getNativeDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v8

    .line 677
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 681
    :cond_b5
    return-object v1

    .line 683
    .end local v1    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_b6
    iget-object v6, v4, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 684
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_bd
    if-ge v3, v0, :cond_db

    .line 685
    iget-object v6, v4, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 686
    .restart local v1    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getUid()I

    move-result v6

    if-ne v6, v2, :cond_d8

    .line 687
    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getNativeDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    .line 686
    if-eqz v6, :cond_d8

    .line 688
    return-object v1

    .line 684
    :cond_d8
    add-int/lit8 v3, v3, 0x1

    goto :goto_bd

    .line 691
    .end local v1    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_db
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No active admin owned by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 692
    const-string/jumbo v8, " for Native policy #"

    .line 691
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 602
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminMaps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 603
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_38

    .line 604
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 604
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 603
    if-eqz v1, :cond_38

    .line 606
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 603
    if-eqz v1, :cond_38

    .line 607
    return-object v0

    .line 609
    :cond_38
    return-object v3
.end method

.method public getAdminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 14
    .param p1, "index"    # I
    .param p2, "getPolicyType"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 372
    move v0, p1

    .line 373
    .local v0, "calcIndex":I
    iget v1, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserHandleID:I

    .line 374
    .local v1, "calcUserHandle":I
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 375
    const/4 v8, 0x2

    if-ne p2, v8, :cond_4f

    .line 376
    invoke-virtual {p0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAllUsers()Ljava/util/List;

    move-result-object v7

    .line 377
    .local v7, "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_38

    .line 378
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 379
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v5

    .line 380
    .local v5, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v8, v5, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_45

    .line 381
    const-string/jumbo v8, "administrator"

    const-string/jumbo v9, "found match Index number"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    .line 397
    .end local v3    # "i":I
    .end local v5    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v7    # "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_38
    invoke-virtual {p0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v5

    .line 398
    .restart local v5    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v8, v5, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/mdm/admin/LGMDMadminlist;

    return-object v8

    .line 385
    .restart local v3    # "i":I
    .restart local v6    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v7    # "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_45
    iget-object v8, v5, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v0, v8

    .line 377
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 388
    .end local v3    # "i":I
    .end local v5    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v7    # "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4f
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v8

    if-eqz v8, :cond_38

    .line 389
    if-ne p2, v9, :cond_38

    .line 390
    new-instance v2, Lcom/lge/mdm/admin/LGMDMadminlist;

    invoke-direct {v2, v10, v10}, Lcom/lge/mdm/admin/LGMDMadminlist;-><init>(Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;Landroid/app/admin/DeviceAdminInfo;)V

    .line 391
    .local v2, "def":Lcom/lge/mdm/admin/LGMDMadminlist;
    invoke-virtual {p0, v9}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 392
    .local v4, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt p1, v8, :cond_67

    .line 393
    return-object v2

    .line 395
    :cond_67
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/mdm/admin/LGMDMadminlist;

    return-object v8
.end method

.method public getAdminListSize(I)I
    .registers 11
    .param p1, "getPolicyType"    # I

    .prologue
    const/4 v8, 0x0

    .line 330
    const/4 v3, 0x0

    .line 331
    .local v3, "totalSize":I
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 332
    const/4 v7, 0x2

    if-ne p1, v7, :cond_2d

    .line 333
    invoke-virtual {p0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAllUsers()Ljava/util/List;

    move-result-object v6

    .line 334
    .local v6, "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "userInfo$iterator":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 335
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 336
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v7, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_13

    .line 338
    .end local v0    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v5    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v6    # "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2d
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 339
    const/4 v7, 0x1

    if-ne p1, v7, :cond_50

    .line 341
    invoke-virtual {p0, v8}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v1

    .line 342
    .local v1, "policy_owner":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v7, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, 0x0

    .line 344
    iget v7, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserHandleID:I

    invoke-virtual {p0, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v2

    .line 345
    .local v2, "policy_user":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v7, v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v3, v7

    .line 350
    .end local v1    # "policy_owner":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    .end local v2    # "policy_user":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    :cond_4f
    :goto_4f
    return v3

    .line 347
    :cond_50
    iget v7, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserHandleID:I

    invoke-virtual {p0, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 348
    .restart local v0    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v7, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_4f
.end method

.method public getAdminLists(I)Ljava/util/ArrayList;
    .registers 10
    .param p1, "getPolicyType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/mdm/admin/LGMDMadminlist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v0, "adminLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 428
    const/4 v7, 0x2

    if-ne p1, v7, :cond_2d

    .line 429
    invoke-virtual {p0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAllUsers()Ljava/util/List;

    move-result-object v6

    .line 430
    .local v6, "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_4b

    .line 431
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 432
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v2

    .line 433
    .local v2, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v7, v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 435
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2d
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 436
    const/4 v7, 0x1

    if-ne p1, v7, :cond_4c

    .line 438
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v3

    .line 439
    .local v3, "policy_owner":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v7, v3, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 441
    iget v7, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserHandleID:I

    invoke-virtual {p0, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v4

    .line 442
    .local v4, "policy_user":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v7, v4, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 447
    .end local v3    # "policy_owner":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    .end local v4    # "policy_user":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    :cond_4b
    :goto_4b
    return-object v0

    .line 444
    :cond_4c
    iget v7, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserHandleID:I

    invoke-virtual {p0, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v2

    .line 445
    .restart local v2    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v7, v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4b
.end method

.method public getAllUsers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mAllUserInfoList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 273
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mAllUserInfoList:Ljava/util/List;

    return-object v0

    .line 275
    :cond_7
    const-string/jumbo v0, "administrator"

    const-string/jumbo v1, "mAllUserInfoList is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getBrowserProxyIPAddress(I)Ljava/lang/String;
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1141
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1142
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get2(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBrowserProxyPortNumber(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1146
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1147
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get3(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)I

    move-result v1

    return v1
.end method

.method public getCameraPid(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1282
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1283
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get0(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)I

    move-result v1

    return v1
.end method

.method public getCameraStatus(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1272
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1273
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get1(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z

    move-result v1

    return v1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentUserID()I
    .registers 2

    .prologue
    .line 312
    iget v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserHandleID:I

    return v0
.end method

.method public getEmergencyCallStatus()Z
    .registers 5

    .prologue
    .line 1297
    iget-object v3, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1298
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_7
    if-ge v0, v2, :cond_1c

    .line 1299
    iget-object v3, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    .line 1300
    .local v1, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get4(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1301
    const/4 v3, 0x1

    return v3

    .line 1298
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1304
    .end local v1    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    :cond_1c
    const/4 v3, 0x0

    return v3
.end method

.method public getLGMDMAdminLists(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/mdm/admin/LGMDMadminlist;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 402
    iget v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserHandleID:I

    if-nez v0, :cond_a

    .line 403
    invoke-virtual {p0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 405
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLGMDMAdminListsAsUser(I)Ljava/util/List;
    .registers 3
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/admin/LGMDMadminlist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLGMDMAdminListsForUserApp(ZI)Ljava/util/ArrayList;
    .registers 9
    .param p1, "alluser"    # Z
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/mdm/admin/LGMDMadminlist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v5

    if-eqz v5, :cond_2d

    if-eqz p1, :cond_2d

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v0, "adminLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-virtual {p0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAllUsers()Ljava/util/List;

    move-result-object v4

    .line 413
    .local v4, "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2c

    .line 414
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 415
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v2

    .line 416
    .local v2, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v5, v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 418
    .end local v2    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2c
    return-object v0

    .line 420
    .end local v0    # "adminLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    .end local v1    # "i":I
    .end local v4    # "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2d
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v2

    .line 421
    .restart local v2    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v5, v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    return-object v5
.end method

.method public getLGMDMMasteradminList()Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mMasterList:Lcom/lge/mdm/admin/LGMDMadminlist;

    return-object v0
.end method

.method public getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 5
    .param p1, "index"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 354
    iget v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserHandleID:I

    if-nez v0, :cond_a

    .line 355
    invoke-virtual {p0, p1, v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    return-object v0

    .line 357
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    return-object v0
.end method

.method public getLGMDMadminList(IIZ)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 5
    .param p1, "index"    # I
    .param p2, "userHandle"    # I
    .param p3, "isAllUser"    # Z

    .prologue
    .line 361
    if-eqz p3, :cond_8

    .line 362
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    return-object v0

    .line 364
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    return-object v0
.end method

.method public getLGMDMadminListsize(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 316
    iget v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserHandleID:I

    if-nez v0, :cond_a

    .line 317
    invoke-virtual {p0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminListSize(I)I

    move-result v0

    return v0

    .line 319
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminListSize(I)I

    move-result v0

    return v0
.end method

.method public getLGMDMadminListsize(IZ)I
    .registers 4
    .param p1, "uerHandle"    # I
    .param p2, "isAllUser"    # Z

    .prologue
    .line 323
    if-eqz p2, :cond_8

    .line 324
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminListSize(I)I

    move-result v0

    return v0

    .line 326
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminListSize(I)I

    move-result v0

    return v0
.end method

.method public getLastLockdownAppsCompnentName(I)Landroid/content/ComponentName;
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 1176
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v2

    .line 1177
    .local v2, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v3, v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_e

    .line 1178
    const/4 v3, 0x0

    return-object v3

    .line 1181
    :cond_e
    iget-object v3, v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1182
    .local v1, "componentName":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1183
    .local v0, "comp":Landroid/content/ComponentName;
    const-string/jumbo v3, "administrator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLastLockdownAppsCompnentName comp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    return-object v0
.end method

.method public getLastLockoutDescriptCompnentName(I)Landroid/content/ComponentName;
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 1115
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v2

    .line 1116
    .local v2, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v3, v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_e

    .line 1117
    const/4 v3, 0x0

    return-object v3

    .line 1120
    :cond_e
    iget-object v3, v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1121
    .local v1, "componentName":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1122
    .local v0, "comp":Landroid/content/ComponentName;
    const-string/jumbo v3, "administrator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLastLockoutDescriptCompnentName comp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    return-object v0
.end method

.method public getPasswordRecoveryByEas(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1062
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1063
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mPasswordRecoveryByEas:Z

    return v1
.end method

.method public getPreAutoSync(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1188
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1189
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get6(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z

    move-result v1

    return v1
.end method

.method public getRecentApplicationToastView(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1313
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1314
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get5(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z

    move-result v1

    return v1
.end method

.method public getSignatureList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->signatureMap:Ljava/util/Map;

    return-object v0
.end method

.method public getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 249
    monitor-enter p0

    .line 250
    :try_start_1
    iget-object v1, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    .line 251
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    if-nez v0, :cond_18

    .line 252
    new-instance v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    .end local v0    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-direct {v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;-><init>(I)V

    .line 253
    .restart local v0    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v1, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 254
    invoke-virtual {p0, v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->loadSettingsLocked(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;I)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    .line 256
    return-object v0

    .line 249
    .end local v0    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getWifiNeedUpdate(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1262
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1263
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get7(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z

    move-result v1

    return v1
.end method

.method public getWipeDataPolicy(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1077
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1078
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mWipeDataFlag:I

    return v1
.end method

.method public handlePackagesChanged(I)V
    .registers 11
    .param p1, "userHandle"    # I

    .prologue
    .line 217
    const/4 v5, 0x0

    .line 218
    .local v5, "removed":Z
    const-string/jumbo v6, "administrator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Handling package changes for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v3

    .line 220
    .local v3, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 222
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-nez v2, :cond_26

    .line 223
    return-void

    .line 225
    :cond_26
    iget-object v6, v3, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_2e
    if-ltz v1, :cond_5f

    .line 226
    iget-object v6, v3, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 228
    .local v0, "aa":Lcom/lge/mdm/admin/LGMDMadminlist;
    :try_start_38
    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_56

    .line 229
    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-nez v6, :cond_5c

    .line 230
    :cond_56
    const/4 v5, 0x1

    .line 231
    iget-object v6, v3, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_5c} :catch_60

    .line 225
    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    .line 216
    .end local v0    # "aa":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_5f
    return-void

    .line 233
    .restart local v0    # "aa":Lcom/lge/mdm/admin/LGMDMadminlist;
    :catch_60
    move-exception v4

    .local v4, "re":Landroid/os/RemoteException;
    goto :goto_5c
.end method

.method public loadSettingsLocked(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;I)Z
    .registers 10
    .param p1, "policy"    # Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v6, 0x1

    .line 752
    const-string/jumbo v3, "administrator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadSettingsLocked userHandle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    if-eqz p1, :cond_34

    .line 754
    sget-object v3, Lcom/lge/mdm/admin/LGMDMadministrator;->allFilename:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "fileName$iterator":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 755
    .local v0, "fileName":Ljava/lang/String;
    invoke-direct {p0, v0, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->loadSettingsLocked(Ljava/lang/String;Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;I)V

    goto :goto_23

    .line 757
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_33
    return v6

    .line 759
    .end local v1    # "fileName$iterator":Ljava/util/Iterator;
    :cond_34
    iget-object v3, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    .line 760
    .local v2, "policy2":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    if-nez v2, :cond_5f

    .line 761
    new-instance v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    .end local v2    # "policy2":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-direct {v2, p2}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;-><init>(I)V

    .line 762
    .restart local v2    # "policy2":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v3, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 764
    sget-object v3, Lcom/lge/mdm/admin/LGMDMadministrator;->allFilename:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "fileName$iterator":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 765
    .restart local v0    # "fileName":Ljava/lang/String;
    invoke-direct {p0, v0, v2, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->loadSettingsLocked(Ljava/lang/String;Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;I)V

    goto :goto_4e

    .line 767
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_5e
    return v6

    .line 770
    .end local v1    # "fileName$iterator":Ljava/util/Iterator;
    :cond_5f
    const/4 v3, 0x0

    return v3
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;Lcom/lge/mdm/admin/LGMDMadminlist;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p3, "userHandle"    # I

    .prologue
    .line 530
    invoke-virtual {p0, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->enforceCrossUserPermission(I)V

    .line 531
    monitor-enter p0

    .line 532
    :try_start_4
    invoke-virtual {p2}, Lcom/lge/mdm/admin/LGMDMadminlist;->getUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v2, v3, :cond_17

    .line 533
    iget-object v2, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    .line 534
    const-string/jumbo v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    .line 533
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_29

    move-result-wide v0

    .line 538
    .local v0, "ident":J
    :try_start_1b
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->removeActiveAdminLocked(Landroid/content/ComponentName;Lcom/lge/mdm/admin/LGMDMadminlist;I)Z
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_24

    move-result v2

    .line 540
    :try_start_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_29

    monitor-exit p0

    .line 538
    return v2

    .line 539
    :catchall_24
    move-exception v2

    .line 540
    :try_start_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    throw v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 531
    .end local v0    # "ident":J
    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public removeActiveAdminLocked(Landroid/content/ComponentName;Lcom/lge/mdm/admin/LGMDMadminlist;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p3, "userHandle"    # I

    .prologue
    .line 546
    if-eqz p2, :cond_17

    .line 547
    monitor-enter p0

    .line 548
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 549
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 550
    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminMaps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_14

    .line 551
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 547
    .end local v0    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1

    .line 554
    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method public removeLockoutDescriptComponentList(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1099
    if-nez p1, :cond_3

    .line 1100
    return-void

    .line 1102
    :cond_3
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v1

    .line 1103
    .local v1, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, "mWhoString":Ljava/lang/String;
    iget-object v2, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1105
    const-string/jumbo v2, "administrator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeLockoutDescriptComponentList componentlistsize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1106
    iget-object v4, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    return-void
.end method

.method public removeRunningAppComponentList(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1165
    if-nez p1, :cond_3

    .line 1166
    return-void

    .line 1168
    :cond_3
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v1

    .line 1169
    .local v1, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "mWhoString":Ljava/lang/String;
    iget-object v2, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1171
    const-string/jumbo v2, "administrator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeRunningAppComponentList componentlistsize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1172
    iget-object v4, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    return-void
.end method

.method public removeUserData(I)V
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    .line 281
    monitor-enter p0

    .line 282
    if-nez p1, :cond_e

    .line 283
    :try_start_3
    const-string/jumbo v4, "administrator"

    const-string/jumbo v5, "Tried to remove device policy file for user 0! Ignoring."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_5a

    monitor-exit p0

    .line 284
    return-void

    .line 286
    :cond_e
    :try_start_e
    iget-object v4, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    .line 287
    .local v2, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    if-eqz v2, :cond_1d

    .line 288
    iget-object v4, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 290
    :cond_1d
    sget-object v4, Lcom/lge/mdm/admin/LGMDMadministrator;->allFilename:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "fileName$iterator":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    .local v0, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    .local v3, "policyFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 293
    const-string/jumbo v4, "administrator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removed device policy file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_e .. :try_end_59} :catchall_5a

    goto :goto_23

    .line 281
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "fileName$iterator":Ljava/util/Iterator;
    .end local v2    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    .end local v3    # "policyFile":Ljava/io/File;
    :catchall_5a
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1    # "fileName$iterator":Ljava/util/Iterator;
    .restart local v2    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    :cond_5d
    monitor-exit p0

    .line 280
    return-void
.end method

.method public resetBrowserProxyInformation(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1134
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1135
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set2(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Ljava/lang/String;)Ljava/lang/String;

    .line 1136
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set3(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;I)I

    .line 1137
    const-string/jumbo v1, "administrator"

    const-string/jumbo v2, "resetBrowserProxyInformation - reset all variables"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    return-void
.end method

.method public resetGlobalValues(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 558
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v1

    .line 559
    .local v1, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-virtual {p0, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->removeRunningAppComponentList(Landroid/content/ComponentName;I)V

    .line 561
    iget-object v2, v1, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 563
    .local v0, "N":I
    if-nez v0, :cond_20

    .line 564
    invoke-virtual {p0, v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->setPasswordRecoveryByEas(ZI)V

    .line 565
    const/4 v2, -0x1

    invoke-virtual {p0, v2, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->setWipeDataPolicy(II)V

    .line 566
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->resetBrowserProxyInformation(I)V

    .line 567
    invoke-virtual {p0, v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->setPreAutoSync(ZI)V

    .line 568
    invoke-virtual {p0, v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->setWifiNeedUpdate(ZI)V

    .line 557
    :cond_20
    return-void
.end method

.method public saveSettingsLocked(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 774
    sget-object v2, Lcom/lge/mdm/admin/LGMDMadministrator;->allFilename:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "fileName$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 776
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(Ljava/lang/String;I)V

    goto :goto_6

    .line 773
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_16
    return-void
.end method

.method public saveSettingsLocked(Ljava/lang/String;I)V
    .registers 21
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 780
    const-string/jumbo v15, "administrator"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "saveSettingsLocked filename:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", userHandle:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v12

    .line 782
    .local v12, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static/range {p1 .. p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->makeJournaledFile(Ljava/lang/String;I)Lcom/android/internal/util/JournaledFile;

    move-result-object v9

    .line 783
    .local v9, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v13, 0x0

    .line 785
    .local v13, "stream":Ljava/io/FileOutputStream;
    :try_start_3a
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_45} :catch_3e4
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_45} :catch_3e7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_45} :catch_3ea

    .line 786
    .local v14, "stream":Ljava/io/FileOutputStream;
    :try_start_45
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    .end local v13    # "stream":Ljava/io/FileOutputStream;
    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 787
    .local v11, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v15, "utf-8"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 788
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 790
    const-string/jumbo v15, "policies"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 792
    const-string/jumbo v15, "lgmdm_general_policies.xml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_183

    .line 794
    iget-boolean v15, v12, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mPasswordRecoveryByEas:Z

    if-eqz v15, :cond_9d

    .line 795
    const-string/jumbo v15, "password-recovery-by-eas"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 796
    const-string/jumbo v15, "value"

    iget-boolean v0, v12, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mPasswordRecoveryByEas:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v11, v0, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 797
    const-string/jumbo v15, "password-recovery-by-eas"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 800
    :cond_9d
    iget-object v15, v12, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_f3

    .line 801
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_a6
    iget-object v15, v12, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v8, v15, :cond_f3

    .line 802
    iget-object v15, v12, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 803
    .local v3, "componentName":Ljava/lang/String;
    const-string/jumbo v15, "allow-lockout-descript"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 804
    const-string/jumbo v15, "value"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 805
    const-string/jumbo v15, "allow-lockout-descript"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 806
    const-string/jumbo v15, "administrator"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "writeToXml: mLockoutDescriptList= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    add-int/lit8 v8, v8, 0x1

    goto :goto_a6

    .line 811
    .end local v3    # "componentName":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_f3
    invoke-static {v12}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get2(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_121

    .line 812
    const-string/jumbo v15, "browser-proxy-ipaddress"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 813
    const-string/jumbo v15, "value"

    invoke-static {v12}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get2(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v11, v0, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 814
    const-string/jumbo v15, "browser-proxy-ipaddress"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 816
    :cond_121
    invoke-static {v12}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get3(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_153

    .line 817
    const-string/jumbo v15, "browser-proxy-portnumber"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 818
    const-string/jumbo v15, "value"

    invoke-static {v12}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get3(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v11, v0, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 819
    const-string/jumbo v15, "browser-proxy-portnumber"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 822
    :cond_153
    iget v15, v12, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mWipeDataFlag:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_183

    .line 823
    const-string/jumbo v15, "wipeData-flag"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 824
    const-string/jumbo v15, "value"

    iget v0, v12, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mWipeDataFlag:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v11, v0, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 825
    const-string/jumbo v15, "wipeData-flag"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 829
    :cond_183
    const-string/jumbo v15, "lgmdm_application_policies.xml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_230

    .line 830
    invoke-static {v12}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get6(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z

    move-result v15

    if-eqz v15, :cond_1da

    .line 831
    const-string/jumbo v15, "pre-auto-sync"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 832
    const-string/jumbo v15, "value"

    invoke-static {v12}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get6(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v11, v0, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 833
    const-string/jumbo v15, "pre-auto-sync"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 834
    const-string/jumbo v15, "administrator"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "saveSettingsLocked pre-auto-sync: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v12}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get6(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_1da
    iget-object v15, v12, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_230

    .line 837
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1e3
    iget-object v15, v12, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v8, v15, :cond_230

    .line 838
    iget-object v15, v12, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 839
    .restart local v3    # "componentName":Ljava/lang/String;
    const-string/jumbo v15, "allow-lock-down-apps"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 840
    const-string/jumbo v15, "value"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 841
    const-string/jumbo v15, "allow-lock-down-apps"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 842
    const-string/jumbo v15, "administrator"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "writeToXml: mRunningAppComponentList= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e3

    .line 847
    .end local v3    # "componentName":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_230
    const-string/jumbo v15, "lgmdm_hardware_policies.xml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_287

    .line 848
    invoke-static {v12}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get7(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z

    move-result v15

    if-eqz v15, :cond_287

    .line 849
    const-string/jumbo v15, "wifi-need-update"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 850
    const-string/jumbo v15, "value"

    invoke-static {v12}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get7(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v11, v0, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 851
    const-string/jumbo v15, "wifi-need-update"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    const-string/jumbo v15, "administrator"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "writeToXml wifi-need-update: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v12}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-get7(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    :cond_287
    iget-object v15, v12, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 857
    .local v2, "N":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_28e
    if-ge v8, v2, :cond_3c2

    .line 858
    iget-object v15, v12, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 860
    .local v10, "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v10, :cond_2dc

    .line 861
    const-string/jumbo v15, "admin"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 862
    const-string/jumbo v15, "name"

    invoke-virtual {v10}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v11, v0, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 867
    const-string/jumbo v15, "lgmdm_hardware_policies.xml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2df

    .line 868
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMHardwareParser:Lcom/lge/mdm/admin/ILGMDMXml;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v15, v11, v10, v0}, Lcom/lge/mdm/admin/ILGMDMXml;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    .line 888
    :cond_2d2
    :goto_2d2
    const-string/jumbo v15, "admin"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 857
    :cond_2dc
    add-int/lit8 v8, v8, 0x1

    goto :goto_28e

    .line 869
    :cond_2df
    const-string/jumbo v15, "lgmdm_general_policies.xml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_301

    .line 870
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMGeneralParser:Lcom/lge/mdm/admin/ILGMDMXml;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v15, v11, v10, v0}, Lcom/lge/mdm/admin/ILGMDMXml;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    :try_end_2f5
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_2f5} :catch_2f6
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_2f5} :catch_318
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_2f5} :catch_33a

    goto :goto_2d2

    .line 898
    .end local v2    # "N":I
    .end local v8    # "i":I
    .end local v10    # "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v11    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_2f6
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    move-object v13, v14

    .line 900
    .end local v14    # "stream":Ljava/io/FileOutputStream;
    :goto_2f8
    if-eqz v13, :cond_2fd

    .line 901
    :try_start_2fa
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2fd
    .catch Ljava/io/IOException; {:try_start_2fa .. :try_end_2fd} :catch_3e1

    .line 906
    :cond_2fd
    :goto_2fd
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 779
    .end local v4    # "e":Ljava/io/IOException;
    :goto_300
    return-void

    .line 871
    .restart local v2    # "N":I
    .restart local v8    # "i":I
    .restart local v10    # "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    .restart local v11    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    :cond_301
    :try_start_301
    const-string/jumbo v15, "lgmdm_application_policies.xml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_323

    .line 872
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMApplicationParser:Lcom/lge/mdm/admin/ILGMDMXml;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v15, v11, v10, v0}, Lcom/lge/mdm/admin/ILGMDMXml;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    :try_end_317
    .catch Ljava/io/IOException; {:try_start_301 .. :try_end_317} :catch_2f6
    .catch Ljava/lang/IllegalStateException; {:try_start_301 .. :try_end_317} :catch_318
    .catch Ljava/lang/IllegalArgumentException; {:try_start_301 .. :try_end_317} :catch_33a

    goto :goto_2d2

    .line 907
    .end local v2    # "N":I
    .end local v8    # "i":I
    .end local v10    # "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v11    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_318
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalStateException;
    move-object v13, v14

    .line 909
    .end local v14    # "stream":Ljava/io/FileOutputStream;
    :goto_31a
    if-eqz v13, :cond_31f

    .line 910
    :try_start_31c
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_31f
    .catch Ljava/io/IOException; {:try_start_31c .. :try_end_31f} :catch_3de

    .line 915
    :cond_31f
    :goto_31f
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_300

    .line 873
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "N":I
    .restart local v8    # "i":I
    .restart local v10    # "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    .restart local v11    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    :cond_323
    :try_start_323
    const-string/jumbo v15, "lgmdm_atclient_policies.xml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_345

    .line 874
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMATClientParser:Lcom/lge/mdm/admin/ILGMDMXml;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v15, v11, v10, v0}, Lcom/lge/mdm/admin/ILGMDMXml;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    :try_end_339
    .catch Ljava/io/IOException; {:try_start_323 .. :try_end_339} :catch_2f6
    .catch Ljava/lang/IllegalStateException; {:try_start_323 .. :try_end_339} :catch_318
    .catch Ljava/lang/IllegalArgumentException; {:try_start_323 .. :try_end_339} :catch_33a

    goto :goto_2d2

    .line 916
    .end local v2    # "N":I
    .end local v8    # "i":I
    .end local v10    # "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v11    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_33a
    move-exception v5

    .local v5, "e":Ljava/lang/IllegalArgumentException;
    move-object v13, v14

    .line 918
    .end local v14    # "stream":Ljava/io/FileOutputStream;
    :goto_33c
    if-eqz v13, :cond_341

    .line 919
    :try_start_33e
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_341
    .catch Ljava/io/IOException; {:try_start_33e .. :try_end_341} :catch_3db

    .line 924
    :cond_341
    :goto_341
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_300

    .line 875
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "N":I
    .restart local v8    # "i":I
    .restart local v10    # "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    .restart local v11    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    :cond_345
    :try_start_345
    const-string/jumbo v15, "lgmdm_list_signaturestate_policies.xml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_35e

    .line 876
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMAppListParser:Lcom/lge/mdm/admin/ILGMDMXml;

    const-string/jumbo v16, "lgmdm_list_signaturestate_policies.xml"

    move-object/from16 v0, v16

    invoke-interface {v15, v11, v10, v0}, Lcom/lge/mdm/admin/ILGMDMXml;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    goto/16 :goto_2d2

    .line 877
    :cond_35e
    const-string/jumbo v15, "lgmdm_list_ialist_policies.xml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_377

    .line 878
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMAppListParser:Lcom/lge/mdm/admin/ILGMDMXml;

    .line 879
    const-string/jumbo v16, "lgmdm_list_ialist_policies.xml"

    .line 878
    move-object/from16 v0, v16

    invoke-interface {v15, v11, v10, v0}, Lcom/lge/mdm/admin/ILGMDMXml;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    goto/16 :goto_2d2

    .line 880
    :cond_377
    const-string/jumbo v15, "lgmdm_cmdlist_policies.xml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_390

    .line 881
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMAppListParser:Lcom/lge/mdm/admin/ILGMDMXml;

    const-string/jumbo v16, "lgmdm_cmdlist_policies.xml"

    move-object/from16 v0, v16

    invoke-interface {v15, v11, v10, v0}, Lcom/lge/mdm/admin/ILGMDMXml;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    goto/16 :goto_2d2

    .line 882
    :cond_390
    const-string/jumbo v15, "lgmdm_application_version_policies.xml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3a9

    .line 883
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGMDMAppListParser:Lcom/lge/mdm/admin/ILGMDMXml;

    const-string/jumbo v16, "lgmdm_application_version_policies.xml"

    move-object/from16 v0, v16

    invoke-interface {v15, v11, v10, v0}, Lcom/lge/mdm/admin/ILGMDMXml;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    goto/16 :goto_2d2

    .line 884
    :cond_3a9
    const-string/jumbo v15, "lgis_general_policies.xml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2d2

    .line 885
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/admin/LGMDMadministrator;->mLGISGeneralParser:Lcom/lge/mdm/admin/ILGMDMXml;

    const-string/jumbo v16, "lgis_general_policies.xml"

    move-object/from16 v0, v16

    invoke-interface {v15, v11, v10, v0}, Lcom/lge/mdm/admin/ILGMDMXml;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    goto/16 :goto_2d2

    .line 892
    .end local v10    # "mAdminList":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_3c2
    const-string/jumbo v15, "policies"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 894
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 895
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 896
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 897
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_3d8
    .catch Ljava/io/IOException; {:try_start_345 .. :try_end_3d8} :catch_2f6
    .catch Ljava/lang/IllegalStateException; {:try_start_345 .. :try_end_3d8} :catch_318
    .catch Ljava/lang/IllegalArgumentException; {:try_start_345 .. :try_end_3d8} :catch_33a

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileOutputStream;
    .local v13, "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_300

    .line 921
    .end local v2    # "N":I
    .end local v8    # "i":I
    .end local v11    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v13    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3db
    move-exception v7

    .local v7, "ex":Ljava/io/IOException;
    goto/16 :goto_341

    .line 912
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v6    # "e":Ljava/lang/IllegalStateException;
    :catch_3de
    move-exception v7

    .restart local v7    # "ex":Ljava/io/IOException;
    goto/16 :goto_31f

    .line 903
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v4    # "e":Ljava/io/IOException;
    :catch_3e1
    move-exception v7

    .restart local v7    # "ex":Ljava/io/IOException;
    goto/16 :goto_2fd

    .line 898
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/io/IOException;
    .local v13, "stream":Ljava/io/FileOutputStream;
    :catch_3e4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto/16 :goto_2f8

    .line 907
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3e7
    move-exception v6

    .restart local v6    # "e":Ljava/lang/IllegalStateException;
    goto/16 :goto_31a

    .line 916
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catch_3ea
    move-exception v5

    .restart local v5    # "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_33c
.end method

.method public sendAdminCommandLocked(Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    .registers 4
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->sendAdminCommandLocked(Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 572
    return-void
.end method

.method public sendAdminCommandLocked(Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .registers 13
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v3, 0x0

    .line 577
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 580
    if-eqz p3, :cond_22

    .line 581
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 582
    const/4 v6, -0x1

    move-object v4, p3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    .line 581
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 576
    :goto_21
    return-void

    .line 584
    :cond_22
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_21
.end method

.method public sendAdminCommandLocked(Ljava/lang/String;II)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 589
    invoke-virtual {p0, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v3

    .line 590
    .local v3, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iget-object v4, v3, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 591
    .local v0, "N":I
    if-lez v0, :cond_27

    .line 592
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_27

    .line 593
    iget-object v4, v3, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 594
    .local v1, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 595
    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->sendAdminCommandLocked(Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V

    .line 592
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 588
    .end local v1    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v2    # "i":I
    :cond_27
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .registers 19
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 482
    const-string/jumbo v12, "com.lge.email"

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_27

    .line 483
    const-string/jumbo v12, "com.android.email"

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 482
    if-nez v12, :cond_27

    .line 484
    const-string/jumbo v12, "com.lge.exchange"

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 482
    if-eqz v12, :cond_66

    .line 485
    :cond_27
    const-string/jumbo v12, "administrator"

    const-string/jumbo v13, "LGEmail setActiveAdmin"

    invoke-static {v12, v13}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :goto_30
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v10

    .line 492
    .local v10, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->findAdmin(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v6

    .line 493
    .local v6, "info":Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->findAdminForNative(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v7

    .line 494
    .local v7, "nativeInfo":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v6, :cond_4a

    if-nez v7, :cond_70

    .line 495
    :cond_4a
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Bad admin: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 487
    .end local v6    # "info":Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;
    .end local v7    # "nativeInfo":Landroid/app/admin/DeviceAdminInfo;
    .end local v10    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    :cond_66
    iget-object v12, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "android.permission.MANAGE_DEVICE_ADMINS"

    .line 488
    const/4 v14, 0x0

    .line 487
    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 497
    .restart local v6    # "info":Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;
    .restart local v7    # "nativeInfo":Landroid/app/admin/DeviceAdminInfo;
    .restart local v10    # "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    :cond_70
    monitor-enter p0

    .line 498
    :try_start_71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_8f

    move-result-wide v4

    .line 500
    .local v4, "ident":J
    if-nez p2, :cond_92

    :try_start_77
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v12

    if-eqz v12, :cond_92

    .line 501
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "Admin is already added"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_8a
    .catchall {:try_start_77 .. :try_end_8a} :catchall_8a

    .line 523
    :catchall_8a
    move-exception v12

    .line 524
    :try_start_8b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 523
    throw v12
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_8f

    .line 497
    .end local v4    # "ident":J
    :catchall_8f
    move-exception v12

    monitor-exit p0

    throw v12

    .line 503
    .restart local v4    # "ident":J
    :cond_92
    :try_start_92
    new-instance v8, Lcom/lge/mdm/admin/LGMDMadminlist;

    invoke-direct {v8, v6, v7}, Lcom/lge/mdm/admin/LGMDMadminlist;-><init>(Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;Landroid/app/admin/DeviceAdminInfo;)V

    .line 504
    .local v8, "newAdmin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v12, v10, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminMaps:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const/4 v11, -0x1

    .line 506
    .local v11, "replaceIndex":I
    if-eqz p2, :cond_c3

    .line 507
    iget-object v12, v10, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 508
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a8
    if-ge v3, v2, :cond_c3

    .line 509
    iget-object v12, v10, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 510
    .local v9, "oldAdmin":Lcom/lge/mdm/admin/LGMDMadminlist;
    invoke-virtual {v9}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_da

    .line 511
    move v11, v3

    .line 516
    .end local v2    # "N":I
    .end local v3    # "i":I
    .end local v9    # "oldAdmin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_c3
    const/4 v12, -0x1

    if-ne v11, v12, :cond_dd

    .line 517
    iget-object v12, v10, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :goto_cb
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(I)V

    .line 522
    move/from16 v0, p3

    invoke-virtual {p0, v8, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->checkAPIAuthentication(Lcom/lge/mdm/admin/LGMDMadminlist;I)V
    :try_end_d5
    .catchall {:try_start_92 .. :try_end_d5} :catchall_8a

    .line 524
    :try_start_d5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_8f

    monitor-exit p0

    .line 481
    return-void

    .line 508
    .restart local v2    # "N":I
    .restart local v3    # "i":I
    .restart local v9    # "oldAdmin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_da
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 519
    .end local v2    # "N":I
    .end local v3    # "i":I
    .end local v9    # "oldAdmin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_dd
    :try_start_dd
    iget-object v12, v10, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    invoke-virtual {v12, v11, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_e2
    .catchall {:try_start_dd .. :try_end_e2} :catchall_8a

    goto :goto_cb
.end method

.method public setAllUserInfoList()V
    .registers 6

    .prologue
    .line 261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 263
    .local v0, "id":J
    :try_start_4
    iget-object v3, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->mAllUserInfoList:Ljava/util/List;
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_10} :catch_14
    .catchall {:try_start_4 .. :try_end_10} :catchall_22

    .line 267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 260
    :goto_13
    return-void

    .line 264
    :catch_14
    move-exception v2

    .line 265
    .local v2, "npe":Ljava/lang/NullPointerException;
    :try_start_15
    const-string/jumbo v3, "administrator"

    const-string/jumbo v4, "UserManagerService is null."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_22

    .line 267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13

    .line 266
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catchall_22
    move-exception v3

    .line 267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    throw v3
.end method

.method public setBrowserProxyInformation(Ljava/lang/String;II)V
    .registers 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1128
    invoke-virtual {p0, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1129
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set2(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Ljava/lang/String;)Ljava/lang/String;

    .line 1130
    invoke-static {v0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set3(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;I)I

    .line 1127
    return-void
.end method

.method public setCameraPid(II)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 1287
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1288
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set0(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;I)I

    .line 1286
    return-void
.end method

.method public setCameraStatus(ZI)V
    .registers 4
    .param p1, "status"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 1277
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1278
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set1(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Z)Z

    .line 1276
    return-void
.end method

.method public setEmergencyCallStatus(ZI)V
    .registers 4
    .param p1, "status"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 1292
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1293
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set4(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Z)Z

    .line 1291
    return-void
.end method

.method public setPasswordRecoveryByEas(ZI)V
    .registers 4
    .param p1, "isEas"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 1067
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1068
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iput-boolean p1, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mPasswordRecoveryByEas:Z

    .line 1066
    return-void
.end method

.method public setPreAutoSync(ZI)V
    .registers 4
    .param p1, "preAutoSync"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 1193
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1194
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set6(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Z)Z

    .line 1192
    return-void
.end method

.method public setRecentApplicationToastView(ZI)V
    .registers 4
    .param p1, "check"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 1308
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1309
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set5(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Z)Z

    .line 1307
    return-void
.end method

.method public setSignatureList(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1254
    .local p1, "signatureList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lge/mdm/admin/LGMDMadministrator;->signatureMap:Ljava/util/Map;

    .line 1253
    return-void
.end method

.method public setWifiNeedUpdate(ZI)V
    .registers 4
    .param p1, "need"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 1267
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1268
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    invoke-static {v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->-set7(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Z)Z

    .line 1266
    return-void
.end method

.method public setWipeDataPolicy(II)V
    .registers 4
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 1072
    invoke-virtual {p0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getUserData(I)Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;

    move-result-object v0

    .line 1073
    .local v0, "policy":Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
    iput p1, v0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mWipeDataFlag:I

    .line 1071
    return-void
.end method
