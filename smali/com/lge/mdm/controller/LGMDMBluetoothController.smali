.class public Lcom/lge/mdm/controller/LGMDMBluetoothController;
.super Ljava/lang/Object;
.source "LGMDMBluetoothController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;
    }
.end annotation


# static fields
.field private static final MAX_BLUETOOTH_MAC_LENGTH:I = 0x11

.field private static final MSG_CONFIRM_DISABLE_BT:I = 0x3

.field private static final MSG_CONFIRM_ENABLE_BT:I = 0x4

.field private static final MSG_DISABLE_BT:I = 0x0

.field private static final MSG_ENABLE_AUDIO_ONLY_BT:I = 0x2

.field private static final MSG_ENABLE_BT:I = 0x1

.field private static final MSG_READYYOCONNECT_MODE_OFF:I = 0x6

.field private static final MSG_READYYOCONNECT_MODE_ON:I = 0x5

.field private static final READYYOCONNECT_CONTACT_ONLY:I = 0x1

.field private static final READYYOCONNECT_MODE_ANYONE:I = 0x2

.field private static final READYYOCONNECT_MODE_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMBluetoothController;


# instance fields
.field private final MAX_TIMEOUT:I

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field final mService:Ljava/lang/Object;

.field private mSetPolicyLock:Z

.field private mTimeoutBt:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->instance:Lcom/lge/mdm/controller/LGMDMBluetoothController;

    .line 29
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "service"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 33
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 34
    iput-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 37
    iput v1, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 38
    const/16 v0, 0x2710

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->MAX_TIMEOUT:I

    .line 56
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 57
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mContext:Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mService:Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2c

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    .line 62
    :cond_2c
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 55
    return-void
.end method

.method private getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_a

    .line 83
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 85
    :cond_a
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private getBluetoothState()I
    .registers 7

    .prologue
    .line 89
    const/16 v1, 0xa

    .line 90
    .local v1, "state":I
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 91
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_12

    .line 92
    const-string/jumbo v4, "BluetoothController"

    const-string/jumbo v5, "getBluetoothState : bluetoothAdapter is null"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v1

    .line 95
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 97
    .local v2, "identity":J
    :try_start_16
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v1

    .line 98
    const/16 v4, 0xf

    if-ne v1, v4, :cond_29

    .line 99
    const-string/jumbo v4, "BluetoothController"

    const-string/jumbo v5, "Consider internal state as OFF"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_2d

    .line 100
    const/16 v1, 0xa

    .line 103
    :cond_29
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    return v1

    .line 102
    :catchall_2d
    move-exception v4

    .line 103
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    throw v4
.end method

.method private getGlobalBluetoothMACWhitelist(I)Ljava/util/List;
    .registers 10
    .param p1, "userHandle"    # I
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
    const/4 v7, 0x0

    .line 1009
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    if-nez v6, :cond_b

    .line 1012
    return-object v5

    .line 1015
    :cond_b
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1016
    .local v4, "macAddresslist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v7, p1}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 1018
    .local v2, "globalAllow":Z
    if-nez v2, :cond_32

    .line 1019
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1020
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admins$iterator":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1021
    .local v0, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 1024
    .end local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v1    # "admins$iterator":Ljava/util/Iterator;
    .end local v3    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    :cond_32
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 1025
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1027
    :cond_3b
    return-object v5
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMBluetoothController;
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 74
    sget-object v0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->instance:Lcom/lge/mdm/controller/LGMDMBluetoothController;

    if-nez v0, :cond_c

    .line 75
    new-instance v0, Lcom/lge/mdm/controller/LGMDMBluetoothController;

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMBluetoothController;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->instance:Lcom/lge/mdm/controller/LGMDMBluetoothController;

    .line 78
    :cond_c
    sget-object v0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->instance:Lcom/lge/mdm/controller/LGMDMBluetoothController;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/lge/mdm/controller/LGMDMBluetoothController;
    .registers 2
    .param p0, "service"    # Ljava/lang/Object;

    .prologue
    .line 66
    sget-object v0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->instance:Lcom/lge/mdm/controller/LGMDMBluetoothController;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Lcom/lge/mdm/controller/LGMDMBluetoothController;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->instance:Lcom/lge/mdm/controller/LGMDMBluetoothController;

    .line 70
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->instance:Lcom/lge/mdm/controller/LGMDMBluetoothController;

    return-object v0
.end method

.method private getReadyToConnectInBluetooth(Lcom/lge/systemservice/core/LeccpManager;)I
    .registers 4
    .param p1, "sLeccpManager"    # Lcom/lge/systemservice/core/LeccpManager;

    .prologue
    .line 1108
    invoke-virtual {p1}, Lcom/lge/systemservice/core/LeccpManager;->getBLEServerState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_12

    .line 1109
    invoke-virtual {p1}, Lcom/lge/systemservice/core/LeccpManager;->isFriendCheck()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1110
    const/4 v0, 0x1

    return v0

    .line 1112
    :cond_10
    const/4 v0, 0x2

    return v0

    .line 1115
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private isBluetoothLEChaning(Lcom/lge/systemservice/core/LeccpManager;)Z
    .registers 5
    .param p1, "sLeccpManager"    # Lcom/lge/systemservice/core/LeccpManager;

    .prologue
    const/4 v2, 0x0

    .line 1156
    invoke-virtual {p1}, Lcom/lge/systemservice/core/LeccpManager;->getBLEServerState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    .line 1157
    return v2

    .line 1159
    :cond_a
    invoke-virtual {p1}, Lcom/lge/systemservice/core/LeccpManager;->getBLEServerState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_13

    .line 1160
    return v2

    .line 1162
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private sendIntentError(Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V
    .registers 8
    .param p1, "backupInfo"    # Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;

    .prologue
    .line 1166
    const-string/jumbo v2, "BluetoothController"

    const-string/jumbo v3, "SendIntentError"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const/4 v0, 0x0

    .line 1168
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_e

    .line 1169
    iget-object v0, p1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1171
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_e
    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 1172
    iget-object v3, p1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    monitor-enter v3

    .line 1173
    :try_start_15
    iget v2, p1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->backupPolicy:I

    iput v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetooth:I

    .line 1174
    iget v2, p1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->backupProfilePolicy:I

    iput v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothProfile:I

    .line 1175
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const-string/jumbo v4, "lgmdm_hardware_policies.xml"

    .line 1176
    iget v5, p1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->userHandle:I

    .line 1175
    invoke-virtual {v2, v4, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(Ljava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_38

    monitor-exit v3

    .line 1179
    :cond_28
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mdm.intent.action.BLUETOOTH_SET_FAILURE_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 1165
    return-void

    .line 1172
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_38
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setBluetoothEnable(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 110
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_10

    .line 111
    const-string/jumbo v1, "BluetoothController"

    const-string/jumbo v4, "setBluetoothEnable : bluetoothAdapter is null"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 114
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 116
    .local v2, "identity":J
    if-eqz p1, :cond_1d

    .line 117
    :try_start_16
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_21

    .line 122
    :goto_19
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    return-void

    .line 119
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_19

    .line 121
    :catchall_21
    move-exception v1

    .line 122
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    throw v1
.end method

.method private setBluetoothOppServiceEnable(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.mdm.intent.action.ACTION_BLUETOOTH_SET_AUDIOONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1a

    .line 308
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    :goto_12
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 305
    return-void

    .line 310
    :cond_1a
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_12
.end method

.method private setReadyToConnectInBluetooth(ILcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V
    .registers 10
    .param p1, "setMode"    # I
    .param p2, "backupInfo"    # Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;

    .prologue
    .line 1058
    const-string/jumbo v4, "BluetoothController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setReadyToConnectInBluetooth() : mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    new-instance v3, Lcom/lge/systemservice/core/LGContext;

    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 1060
    .local v3, "serviceContext":Lcom/lge/systemservice/core/LGContext;
    if-nez v3, :cond_2d

    .line 1061
    const-string/jumbo v4, "BluetoothController"

    const-string/jumbo v5, "Fail to get LGContext"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    return-void

    .line 1065
    :cond_2d
    const-string/jumbo v4, "leccp"

    .line 1064
    invoke-virtual {v3, v4}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemservice/core/LeccpManager;

    .line 1067
    .local v2, "sLeccpManager":Lcom/lge/systemservice/core/LeccpManager;
    if-nez v2, :cond_42

    .line 1068
    const-string/jumbo v4, "BluetoothController"

    .line 1069
    const-string/jumbo v5, "sLeccpManager is null or same setReadyToConnectInBluetooth is calleded "

    .line 1068
    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    return-void

    .line 1073
    :cond_42
    iput-object v2, p2, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mLeccpManager:Lcom/lge/systemservice/core/LeccpManager;

    .line 1074
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1076
    .local v1, "msgon":Landroid/os/Message;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1079
    .local v0, "msgoff":Landroid/os/Message;
    packed-switch p1, :pswitch_data_b2

    .line 1102
    const-string/jumbo v4, "BluetoothController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMode() : Invalid mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :goto_6f
    return-void

    .line 1081
    :pswitch_70
    invoke-virtual {v2}, Lcom/lge/systemservice/core/LeccpManager;->isFriendCheck()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 1082
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/lge/systemservice/core/LeccpManager;->setFriendCheck(Z)V

    .line 1083
    const-string/jumbo v4, "BluetoothController"

    const-string/jumbo v5, "setMode() : setFriendCheck(false)"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :cond_83
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6f

    .line 1089
    :pswitch_89
    invoke-virtual {v2}, Lcom/lge/systemservice/core/LeccpManager;->isFriendCheck()Z

    move-result v4

    if-nez v4, :cond_9c

    .line 1090
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/lge/systemservice/core/LeccpManager;->setFriendCheck(Z)V

    .line 1091
    const-string/jumbo v4, "BluetoothController"

    const-string/jumbo v5, "setMode() : setFriendCheck(true)"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :cond_9c
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6f

    .line 1098
    :pswitch_a2
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1099
    const-string/jumbo v4, "BluetoothController"

    const-string/jumbo v5, "setMode() : setBLEServerEnabled(false)"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    .line 1079
    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_89
        :pswitch_70
    .end packed-switch
.end method

.method private unpairDeviceExceptAudio()V
    .registers 10

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 279
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_10

    .line 280
    const-string/jumbo v5, "BluetoothController"

    const-string/jumbo v8, "unpairDeviceExceptAudio : getBluetoothAdapter() == null"

    invoke-static {v5, v8}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void

    .line 284
    :cond_10
    const/4 v2, 0x0

    .line 285
    .local v2, "btList":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 287
    .local v6, "identity":J
    :try_start_15
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_28

    move-result-object v2

    .line 289
    .local v2, "btList":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    if-nez v2, :cond_2d

    .line 292
    const-string/jumbo v5, "BluetoothController"

    const-string/jumbo v8, "btList is null "

    invoke-static {v5, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void

    .line 288
    .local v2, "btList":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_28
    move-exception v5

    .line 289
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    throw v5

    .line 296
    .local v2, "btList":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "device$iterator":Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 297
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 298
    .local v1, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_31

    .line 299
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    const/16 v8, 0x400

    if-eq v5, v8, :cond_31

    .line 300
    invoke-virtual {p0, v3}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->unpairDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_31

    .line 277
    .end local v1    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_4f
    return-void
.end method

.method private unpairDeviceExceptMacAddress(Lcom/lge/mdm/admin/LGMDMadminlist;)V
    .registers 16
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 796
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_10

    .line 797
    const-string/jumbo v12, "BluetoothController"

    const-string/jumbo v13, "unpairDeviceExceptAudio : getBluetoothAdapter() == null"

    invoke-static {v12, v13}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    return-void

    .line 801
    :cond_10
    const/4 v1, 0x0

    .line 802
    .local v1, "btList":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 804
    .local v6, "identity":J
    :try_start_15
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_28

    move-result-object v1

    .line 806
    .local v1, "btList":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 808
    if-nez v1, :cond_2d

    .line 809
    const-string/jumbo v12, "BluetoothController"

    const-string/jumbo v13, "btList is null "

    invoke-static {v12, v13}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void

    .line 805
    .local v1, "btList":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_28
    move-exception v12

    .line 806
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 805
    throw v12

    .line 813
    .local v1, "btList":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "device$iterator":Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 814
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 816
    .local v10, "strBluetoothAddr":Ljava/lang/String;
    iget-object v12, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothFullMACWhitelist:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_31

    .line 817
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v5, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v12, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    if-eqz v12, :cond_5a

    .line 819
    iget-object v12, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 818
    if-eqz v12, :cond_5e

    .line 820
    :cond_5a
    invoke-virtual {p0, v3}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->unpairDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_31

    .line 823
    :cond_5e
    const/4 v2, 0x0

    .line 824
    .local v2, "check":Z
    iget-object v12, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "macAddress$iterator":Ljava/util/Iterator;
    :cond_65
    :goto_65
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_82

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 825
    .local v8, "macAddress":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 826
    .local v11, "tempStr":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_65

    .line 827
    const/4 v2, 0x1

    goto :goto_65

    .line 830
    .end local v8    # "macAddress":Ljava/lang/String;
    .end local v11    # "tempStr":Ljava/lang/String;
    :cond_82
    if-nez v2, :cond_31

    .line 831
    invoke-virtual {p0, v3}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->unpairDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_31

    .line 794
    .end local v2    # "check":Z
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "macAddress$iterator":Ljava/util/Iterator;
    .end local v10    # "strBluetoothAddr":Ljava/lang/String;
    :cond_88
    return-void
.end method


# virtual methods
.method protected checkBluetoothMacAddress(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 856
    invoke-virtual {p0, v8, p2}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 857
    return v9

    .line 859
    :cond_a
    if-nez p1, :cond_16

    .line 860
    const-string/jumbo v8, "BluetoothController"

    const-string/jumbo v9, "MDM block address is null"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    return v10

    .line 864
    :cond_16
    const/4 v2, 0x0

    .line 865
    .local v2, "bRet":Z
    move-object v7, p1

    .line 866
    .local v7, "strBluetoothAddr":Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v8, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 867
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admins$iterator":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 868
    .local v0, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v8, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothWithMACWhitelist:Z

    if-nez v8, :cond_22

    .line 869
    iget-object v8, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_44

    .line 870
    const-string/jumbo v8, "BluetoothController"

    const-string/jumbo v9, "MDM block all MAC disallow"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    return v10

    .line 873
    :cond_44
    iget-object v8, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothFullMACWhitelist:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 874
    const/4 v2, 0x0

    goto :goto_22

    .line 876
    :cond_4e
    const/4 v3, 0x0

    .line 877
    .local v3, "compareInPartial":Z
    iget-object v8, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "macAddress$iterator":Ljava/util/Iterator;
    :cond_55
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_71

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 878
    .local v5, "macAddress":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 879
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 880
    const/4 v2, 0x0

    .line 881
    const/4 v3, 0x1

    .line 885
    .end local v5    # "macAddress":Ljava/lang/String;
    :cond_71
    if-nez v3, :cond_22

    .line 886
    const/4 v2, 0x1

    .line 887
    const-string/jumbo v8, "BluetoothController"

    const-string/jumbo v9, "Disable pairing by server policy MAC address"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    return v2

    .line 893
    .end local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v3    # "compareInPartial":Z
    .end local v6    # "macAddress$iterator":Ljava/util/Iterator;
    :cond_7e
    return v2
.end method

.method protected getAllowBluetooth(Landroid/content/ComponentName;I)I
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 129
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 130
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetooth:I

    :goto_d
    return v5

    :cond_e
    const/4 v5, 0x2

    goto :goto_d

    .line 133
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    const/4 v3, 0x2

    .line 134
    .local v3, "allowBluetooth":I
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 135
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 136
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetooth:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 137
    const-string/jumbo v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllowBluetooth : admin.allowBluetooth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetooth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllowBluetooth : Strong allowBluetooth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 140
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_64
    const-string/jumbo v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllowBluetooth : return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return v3
.end method

.method protected getAllowBluetoothPairing(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 779
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 780
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothPairing:Z

    :cond_e
    return v4

    .line 783
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 784
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 785
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothPairing:Z

    if-nez v5, :cond_19

    .line 786
    const-string/jumbo v4, "BluetoothController"

    const-string/jumbo v5, "getBluetoothPairing : return = false"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const/4 v4, 0x0

    return v4

    .line 790
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_34
    const-string/jumbo v5, "BluetoothController"

    const-string/jumbo v6, "getBluetoothPairing : return = true"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return v4
.end method

.method protected getAllowBluetoothProfiles(Landroid/content/ComponentName;I)I
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_11

    .line 648
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 649
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothProfile:I

    :goto_d
    return v5

    .line 650
    :cond_e
    const/16 v5, 0xf

    goto :goto_d

    .line 653
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_11
    const/16 v3, 0xf

    .line 654
    .local v3, "allowBluetoothProfile":I
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 655
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 656
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllowBluetoothProfiles : admin.allowBluetoothProfile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 657
    iget v7, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothProfile:I

    .line 656
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothProfile:I

    and-int/2addr v3, v5

    goto :goto_1d

    .line 660
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_49
    const-string/jumbo v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllowBluetoothProfiles : return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return v3
.end method

.method protected getAllowBluetoothVisible(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 583
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 584
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothVisible:Z

    :cond_e
    return v4

    .line 587
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 588
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

    .line 589
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothVisible:Z

    if-nez v5, :cond_19

    .line 590
    const/4 v4, 0x0

    return v4

    .line 593
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 971
    const/4 v0, 0x0

    .line 972
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 973
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 974
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothWithMACWhitelist:Z

    :cond_e
    return v4

    .line 977
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 978
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 979
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothWithMACWhitelist:Z

    if-nez v5, :cond_19

    .line 980
    const-string/jumbo v4, "BluetoothController"

    const-string/jumbo v5, "getAllowBluetoothWithMACWhitelist : return false"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const/4 v4, 0x0

    return v4

    .line 984
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_34
    return v4
.end method

.method protected getAllowReadyToConnectInBluetooth(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 1121
    const/4 v0, 0x0

    .line 1122
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 1123
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1125
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReadyToConnectInBluetooth:Z

    :cond_e
    return v4

    .line 1128
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1130
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1131
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReadyToConnectInBluetooth:Z

    if-nez v5, :cond_19

    .line 1132
    const-string/jumbo v4, "BluetoothController"

    .line 1133
    const-string/jumbo v5, "getAllowReadyToConnectInBluetooth : return = false"

    .line 1132
    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const/4 v4, 0x0

    return v4

    .line 1137
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_34
    const-string/jumbo v5, "BluetoothController"

    const-string/jumbo v6, "getAllowReadyToConnectInBluetooth : return = true"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    return v4
.end method

.method protected getBluetoothMACWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
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
    .line 988
    const/4 v0, 0x0

    .line 989
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v1, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_18

    .line 991
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 992
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_17

    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    if-eqz v3, :cond_17

    .line 993
    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    return-object v3

    .line 995
    :cond_17
    return-object v1

    .line 999
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_18
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v2

    .line 1000
    .local v2, "listSize":I
    if-nez v2, :cond_2a

    .line 1001
    const-string/jumbo v3, "BluetoothController"

    const-string/jumbo v4, "admin list size is zero  "

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    return-object v1

    .line 1004
    :cond_2a
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getGlobalBluetoothMACWhitelist(I)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method protected getBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;I)I
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 685
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 686
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->maxVisiblityTimeOut:I

    :cond_e
    return v5

    .line 689
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    const/4 v4, 0x0

    .line 690
    .local v4, "maxVisiblityTimeOut":I
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 691
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 693
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->maxVisiblityTimeOut:I

    if-eqz v5, :cond_1a

    .line 695
    if-nez v4, :cond_2f

    .line 696
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->maxVisiblityTimeOut:I

    goto :goto_1a

    .line 699
    :cond_2f
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->maxVisiblityTimeOut:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1a

    .line 701
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_36
    const-string/jumbo v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBluetoothMaxVisiblityTimeOut userHandle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return v4
.end method

.method protected getBluetoothSearchedDeviceType(Landroid/content/ComponentName;I)I
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_11

    .line 748
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 749
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->searchedDeviceType:I

    :goto_d
    return v5

    .line 750
    :cond_e
    const/16 v5, 0x1f

    goto :goto_d

    .line 753
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_11
    const/16 v4, 0x1f

    .line 754
    .local v4, "searchedDeviceType":I
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 755
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 756
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->searchedDeviceType:I

    and-int/2addr v4, v5

    .line 757
    const-string/jumbo v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBluetoothSearchedDeviceType : admin.searchedDeviceType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 758
    iget v7, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->searchedDeviceType:I

    .line 757
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 760
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_49
    const-string/jumbo v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBluetoothSearchedDeviceType : return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return v4
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0xa

    const-wide/16 v12, 0x64

    const/4 v10, 0x1

    const/16 v9, 0x2710

    const/4 v11, 0x0

    .line 317
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;

    .line 319
    .local v0, "backupInfo":Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothState()I

    move-result v1

    .line 321
    .local v1, "btState":I
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_426

    .line 571
    :cond_15
    :goto_15
    return v11

    .line 323
    :pswitch_16
    const/16 v7, 0xc

    if-ne v1, v7, :cond_2c

    .line 325
    invoke-direct {p0, v11}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->setBluetoothEnable(Z)V

    .line 326
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 328
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 329
    .local v3, "disableMsg":Landroid/os/Message;
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15

    .line 330
    .end local v3    # "disableMsg":Landroid/os/Message;
    :cond_2c
    const/16 v7, 0xb

    if-ne v1, v7, :cond_84

    .line 332
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 334
    .local v2, "delayMsg":Landroid/os/Message;
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    add-int/lit8 v7, v7, 0x64

    iput v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 335
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    if-ge v7, v9, :cond_62

    .line 337
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_DISABLE_BT retry : mTimeoutBt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_15

    .line 341
    :cond_62
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_DISABLE_BT fail(timeout) : State = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 343
    iput-boolean v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 345
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V

    goto :goto_15

    .line 350
    .end local v2    # "delayMsg":Landroid/os/Message;
    :cond_84
    iget-boolean v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mbSetProfile:Z

    if-eqz v7, :cond_9c

    .line 351
    iget-object v8, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    monitor-enter v8

    .line 352
    :try_start_8b
    iget-object v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    iget v9, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->msetProfilePolicy:I

    iput v9, v7, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothProfile:I

    .line 353
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const-string/jumbo v9, "lgmdm_hardware_policies.xml"

    .line 354
    iget v10, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->userHandle:I

    .line 353
    invoke-virtual {v7, v9, v10}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(Ljava/lang/String;I)V
    :try_end_9b
    .catchall {:try_start_8b .. :try_end_9b} :catchall_ba

    monitor-exit v8

    .line 358
    :cond_9c
    iput-boolean v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 359
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_DISABLE_BT : Already disabled : State = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 351
    :catchall_ba
    move-exception v7

    monitor-exit v8

    throw v7

    .line 363
    :pswitch_bd
    if-ne v1, v8, :cond_d2

    .line 365
    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->setBluetoothEnable(Z)V

    .line 366
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 368
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 369
    .restart local v3    # "disableMsg":Landroid/os/Message;
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_15

    .line 370
    .end local v3    # "disableMsg":Landroid/os/Message;
    :cond_d2
    const/16 v7, 0xd

    if-ne v1, v7, :cond_129

    .line 372
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 374
    .restart local v2    # "delayMsg":Landroid/os/Message;
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    add-int/lit8 v7, v7, 0x64

    iput v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 375
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    if-ge v7, v9, :cond_109

    .line 377
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_ENABLE_BT retry : mTimeoutBt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_15

    .line 381
    :cond_109
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_ENABLE_BT fail(timeout) : State = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 383
    iput-boolean v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    goto/16 :goto_15

    .line 390
    .end local v2    # "delayMsg":Landroid/os/Message;
    :cond_129
    iput-boolean v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 391
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_ENABLE_BT : Already enabled : State = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 395
    :pswitch_147
    if-eq v1, v8, :cond_16a

    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    if-ge v7, v9, :cond_16a

    .line 396
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 398
    .restart local v2    # "delayMsg":Landroid/os/Message;
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    add-int/lit8 v7, v7, 0x64

    iput v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 399
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 400
    const-string/jumbo v7, "BluetoothController"

    const-string/jumbo v8, "MSG_CONFIRM_DISABLE_BLUETOOTH fail : check again"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 401
    .end local v2    # "delayMsg":Landroid/os/Message;
    :cond_16a
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    if-ge v7, v9, :cond_1a9

    .line 402
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 403
    const-string/jumbo v7, "BluetoothController"

    const-string/jumbo v8, "MSG_CONFIRM_DISABLE_BLUETOOTH success"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-boolean v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->bTurnOnBt:Z

    if-eqz v7, :cond_1a5

    .line 405
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 406
    .local v6, "turnMsg":Landroid/os/Message;
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    iget-boolean v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mbSetProfile:Z

    if-eqz v7, :cond_15

    .line 408
    iget-object v8, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    monitor-enter v8

    .line 409
    :try_start_18f
    iget-object v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    iget v9, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->msetProfilePolicy:I

    iput v9, v7, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothProfile:I

    .line 410
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const-string/jumbo v9, "lgmdm_hardware_policies.xml"

    .line 411
    iget v10, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->userHandle:I

    .line 410
    invoke-virtual {v7, v9, v10}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(Ljava/lang/String;I)V
    :try_end_19f
    .catchall {:try_start_18f .. :try_end_19f} :catchall_1a2

    .end local v6    # "turnMsg":Landroid/os/Message;
    :goto_19f
    monitor-exit v8

    goto/16 :goto_15

    .line 408
    .restart local v6    # "turnMsg":Landroid/os/Message;
    :catchall_1a2
    move-exception v7

    monitor-exit v8

    throw v7

    .line 416
    .end local v6    # "turnMsg":Landroid/os/Message;
    :cond_1a5
    iput-boolean v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    goto/16 :goto_15

    .line 419
    :cond_1a9
    const-string/jumbo v7, "BluetoothController"

    const-string/jumbo v8, "MSG_CONFIRM_DISABLE_BLUETOOTH fail : timeout"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 421
    iput-boolean v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 422
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V

    goto/16 :goto_15

    .line 426
    :pswitch_1bb
    const/16 v7, 0xc

    if-eq v1, v7, :cond_1e0

    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    if-ge v7, v9, :cond_1e0

    .line 427
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 429
    .restart local v2    # "delayMsg":Landroid/os/Message;
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    add-int/lit8 v7, v7, 0x64

    iput v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 430
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 431
    const-string/jumbo v7, "BluetoothController"

    const-string/jumbo v8, "MSG_CONFIRM_ENABLE_BLUETOOTH fail : check again"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 432
    .end local v2    # "delayMsg":Landroid/os/Message;
    :cond_1e0
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    if-ge v7, v9, :cond_1f3

    .line 433
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 434
    iput-boolean v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 435
    const-string/jumbo v7, "BluetoothController"

    const-string/jumbo v8, "MSG_CONFIRM_ENABLE_BLUETOOTH success"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 437
    :cond_1f3
    const-string/jumbo v7, "BluetoothController"

    const-string/jumbo v8, "MSG_CONFIRM_ENABLE_BLUETOOTH fail : timeout"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 439
    iput-boolean v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    goto/16 :goto_15

    .line 444
    :pswitch_202
    const/16 v7, 0xc

    if-ne v1, v7, :cond_22b

    .line 446
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->setBluetoothAudioOnly()V

    .line 447
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_ENABLE_AUDIO_ONLY_BT success : timeout = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 449
    iput-boolean v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    goto/16 :goto_15

    .line 450
    :cond_22b
    if-ne v1, v8, :cond_287

    .line 452
    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->setBluetoothEnable(Z)V

    .line 454
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 456
    .restart local v2    # "delayMsg":Landroid/os/Message;
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    add-int/lit8 v7, v7, 0x64

    iput v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 457
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    if-ge v7, v9, :cond_264

    .line 459
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_ENABLE_AUDIO_ONLY_BT retry : mTimeoutBt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_15

    .line 463
    :cond_264
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_ENABLE_AUDIO_ONLY_BT fail(timeout) : State = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 465
    iput-boolean v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 467
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V

    goto/16 :goto_15

    .line 470
    .end local v2    # "delayMsg":Landroid/os/Message;
    :cond_287
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 472
    .restart local v2    # "delayMsg":Landroid/os/Message;
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    add-int/lit8 v7, v7, 0x64

    iput v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 473
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    if-ge v7, v9, :cond_2bb

    .line 475
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_ENABLE_AUDIO_ONLY_BT retry : mTimeoutBt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_15

    .line 479
    :cond_2bb
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_ENABLE_AUDIO_ONLY_BT fail(timeout) : State = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 481
    iput-boolean v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 483
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V

    goto/16 :goto_15

    .line 488
    .end local v2    # "delayMsg":Landroid/os/Message;
    :pswitch_2de
    iget-object v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mLeccpManager:Lcom/lge/systemservice/core/LeccpManager;

    invoke-direct {p0, v7}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->isBluetoothLEChaning(Lcom/lge/systemservice/core/LeccpManager;)Z

    move-result v7

    if-eqz v7, :cond_336

    .line 489
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    .line 490
    const/4 v8, 0x5

    .line 489
    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 492
    .restart local v2    # "delayMsg":Landroid/os/Message;
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    add-int/lit16 v7, v7, 0x1f4

    iput v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 493
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    if-ge v7, v9, :cond_31c

    .line 495
    const-string/jumbo v7, "BluetoothController"

    .line 496
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "READYYOCONNECT_MODE_ON retry : mTimeoutBt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 497
    iget v9, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 496
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 495
    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_15

    .line 500
    :cond_31c
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 501
    iget-object v8, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    monitor-enter v8

    .line 502
    :try_start_321
    iget-object v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    iget-boolean v9, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mBtLEbackupPolicy:Z

    iput-boolean v9, v7, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReadyToConnectInBluetooth:Z

    .line 503
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 504
    const-string/jumbo v9, "lgmdm_hardware_policies.xml"

    .line 505
    iget v10, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->userHandle:I

    .line 503
    invoke-virtual {v7, v9, v10}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(Ljava/lang/String;I)V
    :try_end_331
    .catchall {:try_start_321 .. :try_end_331} :catchall_333

    goto/16 :goto_19f

    .line 501
    :catchall_333
    move-exception v7

    monitor-exit v8

    throw v7

    .line 509
    .end local v2    # "delayMsg":Landroid/os/Message;
    :cond_336
    iget-boolean v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mBtLEbackupPolicy:Z

    iget-boolean v8, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mBtLESetPolicy:Z

    if-eq v7, v8, :cond_375

    const/4 v5, 0x1

    .line 510
    .local v5, "needChangeIntent":Z
    :goto_33d
    iget-object v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mLeccpManager:Lcom/lge/systemservice/core/LeccpManager;

    invoke-virtual {v7, v10}, Lcom/lge/systemservice/core/LeccpManager;->setBLEServerEnabled(Z)V

    .line 511
    iput-boolean v10, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mBtLEbackupPolicy:Z

    .line 512
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 513
    iget-object v8, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    monitor-enter v8

    .line 514
    :try_start_349
    iget-object v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReadyToConnectInBluetooth:Z

    .line 515
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 516
    const-string/jumbo v9, "lgmdm_hardware_policies.xml"

    iget v10, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->userHandle:I

    .line 515
    invoke-virtual {v7, v9, v10}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(Ljava/lang/String;I)V
    :try_end_358
    .catchall {:try_start_349 .. :try_end_358} :catchall_377

    monitor-exit v8

    .line 518
    if-eqz v5, :cond_36a

    .line 519
    new-instance v4, Landroid/content/Intent;

    .line 520
    const-string/jumbo v7, "com.lge.mdm.intent.action.BLUETOOTH_POLICY_CHANGE"

    .line 519
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 523
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_36a
    const-string/jumbo v7, "BluetoothController"

    const-string/jumbo v8, "setMode() : setBLEServerEnabled(true)"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 509
    .end local v5    # "needChangeIntent":Z
    :cond_375
    const/4 v5, 0x0

    .restart local v5    # "needChangeIntent":Z
    goto :goto_33d

    .line 513
    :catchall_377
    move-exception v7

    monitor-exit v8

    throw v7

    .line 527
    .end local v5    # "needChangeIntent":Z
    :pswitch_37a
    iget-object v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mLeccpManager:Lcom/lge/systemservice/core/LeccpManager;

    invoke-direct {p0, v7}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->isBluetoothLEChaning(Lcom/lge/systemservice/core/LeccpManager;)Z

    move-result v7

    if-eqz v7, :cond_3d2

    .line 528
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    .line 529
    const/4 v8, 0x6

    .line 528
    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 531
    .restart local v2    # "delayMsg":Landroid/os/Message;
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    add-int/lit16 v7, v7, 0x1f4

    iput v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 532
    iget v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    if-ge v7, v9, :cond_3b8

    .line 534
    const-string/jumbo v7, "BluetoothController"

    .line 535
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "READYYOCONNECT_MODE_OFF retry : mTimeoutBt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 536
    iget v9, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 535
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 534
    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_15

    .line 539
    :cond_3b8
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 540
    iget-object v8, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    monitor-enter v8

    .line 541
    :try_start_3bd
    iget-object v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    iget-boolean v9, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mBtLEbackupPolicy:Z

    iput-boolean v9, v7, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReadyToConnectInBluetooth:Z

    .line 542
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 543
    const-string/jumbo v9, "lgmdm_hardware_policies.xml"

    .line 544
    iget v10, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->userHandle:I

    .line 542
    invoke-virtual {v7, v9, v10}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(Ljava/lang/String;I)V
    :try_end_3cd
    .catchall {:try_start_3bd .. :try_end_3cd} :catchall_3cf

    goto/16 :goto_19f

    .line 540
    :catchall_3cf
    move-exception v7

    monitor-exit v8

    throw v7

    .line 548
    .end local v2    # "delayMsg":Landroid/os/Message;
    :cond_3d2
    iget-boolean v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mBtLEbackupPolicy:Z

    iget-boolean v8, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mBtLESetPolicy:Z

    if-eq v7, v8, :cond_420

    const/4 v5, 0x1

    .line 549
    .restart local v5    # "needChangeIntent":Z
    :goto_3d9
    iget-object v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    iget-boolean v7, v7, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReadyToConnectInBluetooth:Z

    if-eqz v7, :cond_3e9

    .line 550
    iget-object v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    iget-object v8, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mLeccpManager:Lcom/lge/systemservice/core/LeccpManager;

    invoke-direct {p0, v8}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getReadyToConnectInBluetooth(Lcom/lge/systemservice/core/LeccpManager;)I

    move-result v8

    iput v8, v7, Lcom/lge/mdm/admin/LGMDMadminlist;->preReadyToConnectInBluetooth:I

    .line 552
    :cond_3e9
    iget-object v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mLeccpManager:Lcom/lge/systemservice/core/LeccpManager;

    invoke-virtual {v7, v11}, Lcom/lge/systemservice/core/LeccpManager;->setBLEServerEnabled(Z)V

    .line 553
    iput v11, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mTimeoutBt:I

    .line 554
    iget-object v8, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    monitor-enter v8

    .line 555
    :try_start_3f3
    iget-object v7, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    iget-boolean v9, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mBtLESetPolicy:Z

    iput-boolean v9, v7, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReadyToConnectInBluetooth:Z

    .line 556
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 557
    const-string/jumbo v9, "lgmdm_hardware_policies.xml"

    iget v10, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->userHandle:I

    .line 556
    invoke-virtual {v7, v9, v10}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(Ljava/lang/String;I)V
    :try_end_403
    .catchall {:try_start_3f3 .. :try_end_403} :catchall_422

    monitor-exit v8

    .line 559
    if-eqz v5, :cond_415

    .line 560
    new-instance v4, Landroid/content/Intent;

    .line 561
    const-string/jumbo v7, "com.lge.mdm.intent.action.BLUETOOTH_POLICY_CHANGE"

    .line 560
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 564
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_415
    const-string/jumbo v7, "BluetoothController"

    const-string/jumbo v8, "setMode() : setBLEServerEnabled(false)"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 548
    .end local v5    # "needChangeIntent":Z
    :cond_420
    const/4 v5, 0x0

    .restart local v5    # "needChangeIntent":Z
    goto :goto_3d9

    .line 554
    :catchall_422
    move-exception v7

    monitor-exit v8

    throw v7

    .line 321
    nop

    :pswitch_data_426
    .packed-switch 0x0
        :pswitch_16
        :pswitch_bd
        :pswitch_202
        :pswitch_147
        :pswitch_1bb
        :pswitch_2de
        :pswitch_37a
    .end packed-switch
.end method

.method protected resetBluetoothProfile(Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 597
    invoke-virtual {p0, p1, p2}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getAllowBluetoothProfiles(Landroid/content/ComponentName;I)I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_b

    .line 598
    return-void

    .line 601
    :cond_b
    iput-boolean v4, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 602
    new-instance v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;

    invoke-direct {v0, p0, v5}, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;-><init>(Lcom/lge/mdm/controller/LGMDMBluetoothController;Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V

    .line 603
    .local v0, "backupInfo":Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mService:Ljava/lang/Object;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mService:Ljava/lang/Object;

    :goto_18
    iput-object v2, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    .line 605
    iput p2, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->userHandle:I

    .line 606
    iput-boolean v4, v0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->bTurnOnBt:Z

    .line 608
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 609
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    return-void

    .end local v1    # "msg":Landroid/os/Message;
    :cond_2b
    move-object v2, p0

    .line 603
    goto :goto_18
.end method

.method protected setAllowBluetooth(Landroid/content/ComponentName;II)Z
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 145
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v7, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 146
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/4 v4, 0x0

    .line 147
    .local v4, "isNeedAudioOnly":Z
    if-ltz p2, :cond_c

    .line 148
    const/4 v7, 0x2

    if-le p2, v7, :cond_26

    .line 149
    :cond_c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Bad setting value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 152
    :cond_26
    iget-boolean v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    if-eqz v7, :cond_39

    .line 153
    const-string/jumbo v7, "BluetoothController"

    const-string/jumbo v8, "setAllowBluetooth : lock"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V

    .line 155
    const/4 v7, 0x0

    return v7

    .line 158
    :cond_39
    iget v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetooth:I

    if-ne v7, p2, :cond_48

    .line 159
    const-string/jumbo v7, "BluetoothController"

    const-string/jumbo v8, "setAllowBluetooth : same policy is called"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v7, 0x0

    return v7

    .line 163
    :cond_48
    new-instance v2, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;-><init>(Lcom/lge/mdm/controller/LGMDMBluetoothController;Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V

    .line 164
    .local v2, "backupInfo":Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;
    iput-object v0, v2, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 165
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mService:Ljava/lang/Object;

    if-eqz v7, :cond_9f

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mService:Ljava/lang/Object;

    :goto_56
    iput-object v7, v2, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    .line 166
    iget v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetooth:I

    iput v7, v2, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->backupPolicy:I

    .line 167
    iget v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothProfile:I

    iput v7, v2, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->backupProfilePolicy:I

    .line 169
    iput p3, v2, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->userHandle:I

    .line 170
    const/4 v7, 0x0

    invoke-virtual {p0, v7, p3}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getAllowBluetooth(Landroid/content/ComponentName;I)I

    move-result v1

    .line 171
    .local v1, "backupGlobalPolicy":I
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetooth:I

    .line 173
    const/4 v7, 0x0

    invoke-virtual {p0, v7, p3}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getAllowBluetooth(Landroid/content/ComponentName;I)I

    move-result v3

    .line 174
    .local v3, "btPolicy":I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_a1

    .line 175
    if-nez v1, :cond_89

    .line 176
    iget-boolean v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateBluetooth:Z

    if-eqz v7, :cond_89

    .line 177
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 178
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 179
    .local v5, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateBluetooth:Z

    .line 183
    .end local v5    # "msg":Landroid/os/Message;
    :cond_89
    const/4 v7, 0x1

    if-ne v1, v7, :cond_9e

    .line 184
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 185
    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->bTurnOnBt:Z

    .line 186
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 187
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    .end local v5    # "msg":Landroid/os/Message;
    :cond_9e
    :goto_9e
    return v4

    .end local v1    # "backupGlobalPolicy":I
    .end local v3    # "btPolicy":I
    :cond_9f
    move-object v7, p0

    .line 165
    goto :goto_56

    .line 189
    .restart local v1    # "backupGlobalPolicy":I
    .restart local v3    # "btPolicy":I
    :cond_a1
    const/4 v7, 0x1

    if-ne v3, v7, :cond_cd

    .line 190
    if-nez v1, :cond_bc

    .line 191
    iget-boolean v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateBluetooth:Z

    if-eqz v7, :cond_bc

    .line 192
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 193
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 194
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateBluetooth:Z

    .line 198
    .end local v5    # "msg":Landroid/os/Message;
    :cond_bc
    const/4 v7, 0x2

    if-ne v1, v7, :cond_9e

    .line 199
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothState()I

    move-result v6

    .line 200
    .local v6, "state":I
    const/16 v7, 0xc

    if-eq v6, v7, :cond_cb

    .line 201
    const/16 v7, 0xb

    if-ne v6, v7, :cond_9e

    .line 202
    :cond_cb
    const/4 v4, 0x1

    goto :goto_9e

    .line 205
    .end local v6    # "state":I
    :cond_cd
    if-nez v3, :cond_9e

    .line 206
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothState()I

    move-result v6

    .line 207
    .restart local v6    # "state":I
    const/16 v7, 0xc

    if-eq v6, v7, :cond_db

    .line 208
    const/16 v7, 0xb

    if-ne v6, v7, :cond_ee

    .line 209
    :cond_db
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateBluetooth:Z

    .line 210
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 211
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 212
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9e

    .line 214
    .end local v5    # "msg":Landroid/os/Message;
    :cond_ee
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateBluetooth:Z

    goto :goto_9e
.end method

.method setAllowBluetoothPairing(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "bAllow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 765
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 767
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothPairing:Z

    if-ne v1, p2, :cond_14

    .line 768
    const-string/jumbo v1, "BluetoothController"

    const-string/jumbo v2, "setBluetoothPairing : already set policy"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    return-void

    .line 772
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothPairing:Z

    .line 764
    return-void
.end method

.method protected setAllowBluetoothProfiles(Landroid/content/ComponentName;II)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "nBluetoothProfile"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 614
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 616
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v3, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    if-eqz v3, :cond_19

    .line 617
    const-string/jumbo v3, "BluetoothController"

    const-string/jumbo v4, "setAllowBluetooth : lock"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-direct {p0, v5}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V

    .line 619
    return-void

    .line 622
    :cond_19
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothProfile:I

    if-ne v3, p2, :cond_27

    .line 623
    const-string/jumbo v3, "BluetoothController"

    const-string/jumbo v4, "setAllowBluetoothProfiles : already set policy"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return-void

    .line 627
    :cond_27
    iput-boolean v4, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mSetPolicyLock:Z

    .line 628
    new-instance v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;

    invoke-direct {v1, p0, v5}, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;-><init>(Lcom/lge/mdm/controller/LGMDMBluetoothController;Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V

    .line 629
    .local v1, "backupInfo":Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;
    iput-object v0, v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 630
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mService:Ljava/lang/Object;

    if-eqz v3, :cond_71

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mService:Ljava/lang/Object;

    :goto_36
    iput-object v3, v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    .line 631
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetooth:I

    iput v3, v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->backupPolicy:I

    .line 632
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothProfile:I

    iput v3, v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->backupProfilePolicy:I

    .line 634
    iput p3, v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->userHandle:I

    .line 635
    iput-boolean v4, v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mbSetProfile:Z

    .line 636
    iput p2, v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->msetProfilePolicy:I

    .line 638
    iput-boolean v4, v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->bTurnOnBt:Z

    .line 639
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 640
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 641
    const-string/jumbo v3, "BluetoothController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAllowBluetoothProfiles admin.allowBluetoothProfile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 642
    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothProfile:I

    .line 641
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void

    .end local v2    # "msg":Landroid/os/Message;
    :cond_71
    move-object v3, p0

    .line 630
    goto :goto_36
.end method

.method protected setAllowBluetoothVisible(Landroid/content/ComponentName;ZI)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 575
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 577
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothVisible:Z

    .line 574
    return-void
.end method

.method protected setAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;ZLjava/util/List;I)V
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "wMaclist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 899
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 900
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 901
    .local v1, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_10

    .line 902
    move-object p3, v1

    .line 905
    :cond_10
    iget-object v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    if-nez v6, :cond_16

    .line 906
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    .line 909
    :cond_16
    iget-object v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    if-nez v6, :cond_1c

    .line 910
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    .line 913
    :cond_1c
    iget-object v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothFullMACWhitelist:Ljava/util/List;

    if-nez v6, :cond_22

    .line 914
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothFullMACWhitelist:Ljava/util/List;

    .line 918
    :cond_22
    iget-object v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 919
    const-string/jumbo v6, "BluetoothController"

    const-string/jumbo v7, "setAllowBluetoothWithMACWhitelist : whitelist containsAll"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_33
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothWithMACWhitelist:Z

    .line 923
    if-nez p2, :cond_40

    const-string/jumbo v6, "*"

    invoke-interface {p3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 924
    :cond_40
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    .line 925
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    .line 926
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothFullMACWhitelist:Ljava/util/List;

    .line 927
    iput-boolean v9, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothWithMACWhitelist:Z

    .line 928
    return-void

    .line 930
    :cond_49
    if-eqz p3, :cond_51

    invoke-interface {p3, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 931
    :cond_51
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    .line 932
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothFullMACWhitelist:Ljava/util/List;

    .line 933
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    .line 934
    const-string/jumbo v6, "BluetoothController"

    const-string/jumbo v7, "setAllowBluetoothWithMACWhitelist : all device is restricted pairing"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    :cond_60
    :goto_60
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    .line 963
    iget-boolean v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothWithMACWhitelist:Z

    if-nez v6, :cond_69

    .line 964
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->unpairDeviceExceptMacAddress(Lcom/lge/mdm/admin/LGMDMadminlist;)V

    .line 966
    :cond_69
    return-void

    .line 935
    :cond_6a
    iget-object v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 936
    const-string/jumbo v6, "BluetoothController"

    const-string/jumbo v7, "setAllowBluetoothWithMACWhitelist : same white list"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    .line 938
    :cond_7c
    const-string/jumbo v6, "BluetoothController"

    const-string/jumbo v7, "setAllowBluetoothWithMACWhitelist : wMaclist is not null"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "macAddress$iterator":Ljava/util/Iterator;
    :goto_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 940
    .local v2, "macAddress":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 941
    .local v4, "nLength":I
    const-string/jumbo v6, "*"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 942
    .local v5, "tempMAC":Ljava/lang/String;
    const-string/jumbo v6, "^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$"

    invoke-virtual {v2, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 943
    iget-object v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothFullMACWhitelist:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 944
    :cond_b6
    if-lez v4, :cond_db

    const/16 v6, 0x11

    if-gt v4, v6, :cond_db

    .line 945
    const/16 v6, 0x2a

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_db

    .line 946
    const-string/jumbo v6, "^[0-9A-Fa-f:]*$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    .line 944
    if-eqz v6, :cond_db

    .line 947
    iget-object v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 949
    :cond_db
    invoke-direct {p0, v8}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V

    .line 951
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    .line 952
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothFullMACWhitelist:Ljava/util/List;

    .line 953
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    .line 954
    iput-boolean v9, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothWithMACWhitelist:Z

    .line 955
    const-string/jumbo v6, "BluetoothController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error setAllowBluetoothWithMACWhitelist macAddress : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method protected setAllowReadyToConnectInBluetooth(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1032
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1035
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReadyToConnectInBluetooth:Z

    if-ne v2, p2, :cond_15

    .line 1036
    const-string/jumbo v2, "BluetoothController"

    const-string/jumbo v3, "setBluetoothPairing : already set policy"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    return-void

    .line 1040
    :cond_15
    new-instance v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;

    invoke-direct {v1, p0, v3}, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;-><init>(Lcom/lge/mdm/controller/LGMDMBluetoothController;Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V

    .line 1041
    .local v1, "backupInfo":Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;
    iput-object v0, v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1042
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mService:Ljava/lang/Object;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mService:Ljava/lang/Object;

    :goto_22
    iput-object v2, v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    .line 1043
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReadyToConnectInBluetooth:Z

    iput-boolean v2, v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mBtLEbackupPolicy:Z

    .line 1044
    iput p3, v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->userHandle:I

    .line 1045
    iput-boolean p2, v1, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mBtLESetPolicy:Z

    .line 1047
    if-eqz p2, :cond_38

    .line 1048
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReadyToConnectInBluetooth:Z

    .line 1049
    iget v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preReadyToConnectInBluetooth:I

    invoke-direct {p0, v2, v1}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->setReadyToConnectInBluetooth(ILcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V

    .line 1031
    :goto_35
    return-void

    :cond_36
    move-object v2, p0

    .line 1042
    goto :goto_22

    .line 1052
    :cond_38
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->setReadyToConnectInBluetooth(ILcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V

    goto :goto_35
.end method

.method protected setBluetoothAudioOnly()V
    .registers 6

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 254
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_10

    .line 255
    const-string/jumbo v1, "BluetoothController"

    const-string/jumbo v4, "setBluetoothAudioOnly : getBluetoothAdapter() == null"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void

    .line 258
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 261
    .local v2, "identity":J
    :try_start_14
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 262
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 265
    :cond_1d
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 268
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->unpairDeviceExceptAudio()V
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_2d

    .line 270
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->setBluetoothOppServiceEnable(Z)V

    .line 252
    return-void

    .line 269
    :catchall_2d
    move-exception v1

    .line 270
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    throw v1
.end method

.method protected setBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;II)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "nSec"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 665
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v1

    .line 667
    .local v1, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->maxVisiblityTimeOut:I

    if-eq v4, p2, :cond_c

    if-gez p2, :cond_16

    .line 668
    :cond_c
    const-string/jumbo v4, "BluetoothController"

    const-string/jumbo v5, "setBluetoothMaxVisiblityTimeOut : already set policy"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    return-void

    .line 672
    :cond_16
    iput p2, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->maxVisiblityTimeOut:I

    .line 673
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 674
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 676
    .local v2, "identity":J
    const/16 v4, 0x15

    :try_start_22
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_29

    .line 678
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    return-void

    .line 677
    :catchall_29
    move-exception v4

    .line 678
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 677
    throw v4
.end method

.method protected setBluetoothScanMode(III)Z
    .registers 14
    .param p1, "mode"    # I
    .param p2, "duration"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 221
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothState()I

    move-result v5

    .line 222
    .local v5, "state":I
    const/16 v6, 0xc

    if-eq v5, v6, :cond_2c

    .line 223
    const-string/jumbo v6, "BluetoothController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBluetoothScanMode is fail : Bluetooth state("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 224
    const-string/jumbo v8, ") is not STATE_ON"

    .line 223
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return v9

    .line 227
    :cond_2c
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 228
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_3c

    .line 229
    const-string/jumbo v6, "BluetoothController"

    const-string/jumbo v7, "setBluetoothScanMode : getBluetoothAdapter() == null"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return v9

    .line 232
    :cond_3c
    const/16 v6, 0x17

    if-ne p1, v6, :cond_5f

    .line 233
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, "discoverableIntent":Landroid/content/Intent;
    const-string/jumbo v6, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string/jumbo v6, "com.lge.mdm.intent.extra.CALLED_FROM_MDM_SERVICE"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 236
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 237
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    return v7

    .line 239
    .end local v1    # "discoverableIntent":Landroid/content/Intent;
    :cond_5f
    const/16 v6, 0x15

    if-ne p1, v6, :cond_83

    .line 240
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 242
    .local v2, "identity":J
    :try_start_67
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "com.lge.mdm.intent.action.ACTION_BLUETOOTH_VISIBLE_OFF"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z
    :try_end_79
    .catchall {:try_start_67 .. :try_end_79} :catchall_7e

    move-result v6

    .line 246
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    return v6

    .line 245
    .end local v4    # "intent":Landroid/content/Intent;
    :catchall_7e
    move-exception v6

    .line 246
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    throw v6

    .line 249
    .end local v2    # "identity":J
    :cond_83
    return v9
.end method

.method setBluetoothSearchedDeviceType(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "nDeviceType"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/16 v4, 0x1f

    .line 707
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 709
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->searchedDeviceType:I

    if-ne v1, p2, :cond_16

    .line 710
    const-string/jumbo v1, "BluetoothController"

    const-string/jumbo v4, "setBluetoothSearchedDeviceType : already set policy"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    return-void

    .line 714
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 716
    .local v2, "identity":J
    if-eq p2, v4, :cond_2d

    .line 717
    :try_start_1c
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 716
    if-eqz v1, :cond_2d

    .line 718
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_88

    .line 721
    :cond_2d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->searchedDeviceType:I

    .line 725
    and-int/lit8 v1, p2, 0x1f

    if-ne v1, v4, :cond_3f

    .line 726
    const-string/jumbo v1, "BluetoothController"

    const-string/jumbo v4, "LGMDMBLUETOOTH_DEVICE_ALL"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_3f
    and-int/lit8 v1, p2, 0x1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4d

    .line 729
    const-string/jumbo v1, "BluetoothController"

    const-string/jumbo v4, "LGMDMBLUETOOTH_DEVICE_HEADSET"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_4d
    and-int/lit8 v1, p2, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5b

    .line 732
    const-string/jumbo v1, "BluetoothController"

    const-string/jumbo v4, "LGMDMBLUETOOTH_DEVICE_MOBILEPHONE"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_5b
    and-int/lit8 v1, p2, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_69

    .line 735
    const-string/jumbo v1, "BluetoothController"

    const-string/jumbo v4, "LGMDMBLUETOOTH_DEVICE_PC"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_69
    and-int/lit8 v1, p2, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_78

    .line 738
    const-string/jumbo v1, "BluetoothController"

    const-string/jumbo v4, "LGMDMBLUETOOTH_DEVICE_HID"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_78
    and-int/lit8 v1, p2, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_87

    .line 741
    const-string/jumbo v1, "BluetoothController"

    const-string/jumbo v4, "LGMDMBLUETOOTH_DEVICE_ETC"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_87
    return-void

    .line 720
    :catchall_88
    move-exception v1

    .line 721
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 720
    throw v1
.end method

.method protected setScanMode()V
    .registers 5

    .prologue
    .line 1184
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1185
    return-void

    .line 1188
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1189
    .local v0, "identity":J
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_20

    .line 1190
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMBluetoothController;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 1192
    :cond_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1183
    return-void
.end method

.method protected unpairDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 838
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    .line 839
    .local v1, "state":I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_b

    .line 840
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 842
    :cond_b
    const/16 v3, 0xa

    if-eq v1, v3, :cond_21

    .line 843
    move-object v0, p1

    .line 844
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_21

    .line 845
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 846
    .local v2, "successful":Z
    if-eqz v2, :cond_22

    .line 847
    const-string/jumbo v3, "BluetoothController"

    const-string/jumbo v4, "Command sent successfully:REMOVE_BOND "

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "successful":Z
    :cond_21
    :goto_21
    return-void

    .line 849
    .restart local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "successful":Z
    :cond_22
    const-string/jumbo v3, "BluetoothController"

    const-string/jumbo v4, "Framework rejected command immediately:REMOVE_BOND "

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method
