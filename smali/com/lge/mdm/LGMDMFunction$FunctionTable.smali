.class Lcom/lge/mdm/LGMDMFunction$FunctionTable;
.super Ljava/lang/Object;
.source "LGMDMFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/LGMDMFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FunctionTable"
.end annotation


# static fields
.field public static final aFunctionTable:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

.field public static final aFunctionTableKR:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;


# instance fields
.field private funcname:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x75f8

    const v6, 0x9c40

    const/16 v5, 0x4ee8

    const/16 v4, 0x4e20

    const/16 v3, 0x2710

    .line 57
    const/16 v0, 0x164

    new-array v0, v0, [Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    .line 62
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowWifi"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 63
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowWifi"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 65
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getConfiguredNetworks"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 66
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "addWifiNetwork"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 67
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "updateWifiNetwork"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 68
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "removeWifiNetwork"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 69
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "enableWifiNetwork"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 70
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "disableWifiNetwork"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 71
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "disconnectWifi"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 72
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "saveWifiConfiguration"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 74
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowTethering"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 75
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowTethering"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 77
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowGPSLocation"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 78
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowGPSLocation"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 80
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowWirelessLocation"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 81
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowWirelessLocation"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 83
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowExternalMemorySlot"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 84
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowExternalMemorySlot"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 86
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowBluetooth"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 87
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowBluetooth"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 89
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowUsb"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 90
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowUsb"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 93
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowSimplePassword"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 94
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowSimplePassword"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 96
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setEncryptionPolicy"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 97
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEncryptionPolicy"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 98
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setEncryptionPolicyForEas"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 99
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEncryptionPolicyForEas"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 100
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getStorageEncryptionStatus"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 102
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setPasswordRecoveryEnabled"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 103
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getPasswordRecoveryEnabled"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 105
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setEnforcePasswordChange"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 106
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEnforcePasswordChange"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 108
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setLockoutNow"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 109
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setUnlockoutNow"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 110
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getLockoutLevel"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 111
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getLockoutDescript"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 112
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getLockoutNow"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 114
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowBrowser"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 115
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowBrowser"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 117
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowDataRoaming"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 118
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowDataRoaming"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 120
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowMobileNetwork"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 121
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowMobileNetwork"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 123
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowScreenCapture"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 124
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowScreenCapture"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 126
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowSendingSms"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 127
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowSendingSms"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 129
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowWipeData"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 130
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowWipeData"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 132
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "wipeData"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 134
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "addPOPIMAPConfig"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 135
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "modifyPOPIMAPConfig"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 136
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "deletePOPIMAPConfig"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 138
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "addExchangeConfig"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 139
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "modifyExchangeConfig"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 140
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "deleteExchangeConfig"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 141
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "listen"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 143
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowConsumerEmail"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 144
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowConsumerEmail"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 146
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowPOPIMAPEmail"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 147
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowPOPIMAPEmail"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 149
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setManualSyncWhenRoaming"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 150
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getManualSyncWhenRoaming"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 152
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getActiveSyncID"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 154
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowUnknownSourceInstallation"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 155
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowUnknownSourceInstallation"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 157
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "wipeApplicationData"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 158
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "wipeApplicationCache"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 159
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "wipeApplicationDefault"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 161
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowRemoveDeviceAdmin"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 162
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowRemoveDeviceAdmin"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 164
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "installApplication"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 166
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "uninstallApplication"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 168
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowInstallApplication"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 169
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowInstallApplication"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 171
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowUninstallApplication"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 172
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowUninstallApplication"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 174
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setApplicationState"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 175
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getApplicationState"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 177
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowUnsignedApplication"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 178
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowUnsignedApplication"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 180
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "addVpnProfile"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 181
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "modifyVpnProfile"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 182
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "deleteVpnProfile"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 183
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "enumVpnProfile"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 184
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "isAuthentecVpn"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 186
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "initializeCertificate"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 187
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "enumCertificateId"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 188
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "installCertificate"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 189
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "resetCredentials"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 190
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "uninstallCertificate"

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 195
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowHotspot"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 196
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowHotspot"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 198
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowUSBTethering"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 199
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowUSBTethering"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 201
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowBluetoothTethering"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 202
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowBluetoothTethering"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x61

    aput-object v1, v0, v2

    .line 204
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowWirelessLocationWithWhitelist"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 205
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowWirelessLocationWithWhitelist"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x63

    aput-object v1, v0, v2

    .line 207
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setEnforceGPSLocationEnabled"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x64

    aput-object v1, v0, v2

    .line 208
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEnforceGPSLocationEnabled"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x65

    aput-object v1, v0, v2

    .line 210
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowMockLocation"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x66

    aput-object v1, v0, v2

    .line 211
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowMockLocation"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x67

    aput-object v1, v0, v2

    .line 213
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowScreenCaptureWithBlacklist"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x68

    aput-object v1, v0, v2

    .line 214
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowScreenCaptureWithBlacklist"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x69

    aput-object v1, v0, v2

    .line 215
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getScreenCaptureBlacklist"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    .line 216
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowScreenCaptureBlacklistWithoutADB"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    .line 217
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowScreenCaptureBlacklistWithoutADB"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    .line 219
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowScreenCaptureWithoutADB"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    .line 220
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowScreenCaptureWithoutADB"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    .line 222
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setEnforceMobileNetworkEnabled"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    .line 223
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEnforceMobileNetworkEnabled"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x70

    aput-object v1, v0, v2

    .line 225
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowUSBDebugging"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x71

    aput-object v1, v0, v2

    .line 226
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowUSBDebugging"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x72

    aput-object v1, v0, v2

    .line 228
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "startApplication"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x73

    aput-object v1, v0, v2

    .line 229
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "stopApplication"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x74

    aput-object v1, v0, v2

    .line 231
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowLockdownApps"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x75

    aput-object v1, v0, v2

    .line 232
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowLockdownApps"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x76

    aput-object v1, v0, v2

    .line 233
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getLockdownAppsPackage"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x77

    aput-object v1, v0, v2

    .line 235
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowProcessWatcherandKeeper"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x78

    aput-object v1, v0, v2

    .line 236
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowProcessWatcherandKeeper"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x79

    aput-object v1, v0, v2

    .line 237
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getProcessWatcherandKeeperList"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    .line 239
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowSignatureState"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    .line 240
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowSignatureState"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    .line 241
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getSignatureStateList"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    .line 242
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "uninstallSignatureApp"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    .line 244
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowNfc"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    .line 245
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowNfc"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x80

    aput-object v1, v0, v2

    .line 247
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowAirplaneModeOn"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x81

    aput-object v1, v0, v2

    .line 248
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowAirplaneModeOn"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x82

    aput-object v1, v0, v2

    .line 250
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowCameraWithWhitelist"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x83

    aput-object v1, v0, v2

    .line 251
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowCameraWithWhitelist"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x84

    aput-object v1, v0, v2

    .line 252
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getCameraWhitelist"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x85

    aput-object v1, v0, v2

    .line 254
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getWIFIDataUsageInformation"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x86

    aput-object v1, v0, v2

    .line 256
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "get3G4GDataUsageInformation"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x87

    aput-object v1, v0, v2

    .line 258
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setWiFiSecurityLevel"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x88

    aput-object v1, v0, v2

    .line 259
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getWiFiSecurityLevel"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x89

    aput-object v1, v0, v2

    .line 261
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowSpecificApplication"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    .line 262
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowSpecificApplication"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    .line 264
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "turnOnOffGPS"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    .line 266
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "turnOn3G4GDataNetwork"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    .line 268
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setBluetoothScanMode"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    .line 270
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowListForInternetAccess"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    .line 271
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowListForInternetAccess"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x90

    aput-object v1, v0, v2

    .line 272
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getListForInternetAccess"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x91

    aput-object v1, v0, v2

    .line 274
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "checkRootDetection"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x92

    aput-object v1, v0, v2

    .line 276
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEmailAccountList"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x93

    aput-object v1, v0, v2

    .line 278
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "gotoOSUpdateActivity"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x94

    aput-object v1, v0, v2

    .line 280
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowMicrophone"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x95

    aput-object v1, v0, v2

    .line 281
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowMicrophone"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x96

    aput-object v1, v0, v2

    .line 283
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setMicrophoneWhitelist"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x97

    aput-object v1, v0, v2

    .line 284
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getMicrophoneWhitelist"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x98

    aput-object v1, v0, v2

    .line 286
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowHardwareFactoryreset"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x99

    aput-object v1, v0, v2

    .line 287
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowHardwareFactoryreset"

    invoke-direct {v1, v4, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    .line 292
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowWiFiSSIDList"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    .line 293
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowWiFiSSIDList"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    .line 294
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowWiFiSSIDListType"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    .line 296
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowBluetoothProfiles"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    .line 297
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowBluetoothProfiles"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    .line 299
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setBluetoothMaxVisiblityTimeOut"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    .line 300
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getBluetoothMaxVisiblityTimeOut"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    .line 302
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setBluetoothSearchedDeviceType"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    .line 303
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getBluetoothSearchedDeviceType"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    .line 305
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowBluetoothPairing"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    .line 306
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowBluetoothPairing"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    .line 308
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowBluetoothVisible"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    .line 309
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowBluetoothVisible"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    .line 311
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowUSBMtp"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    .line 312
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowUSBMtp"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    .line 314
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowUSBPtp"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    .line 315
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowUSBPtp"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xab

    aput-object v1, v0, v2

    .line 317
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowUSBStorage"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xac

    aput-object v1, v0, v2

    .line 318
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowUSBStorage"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xad

    aput-object v1, v0, v2

    .line 320
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowSpecificKey"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xae

    aput-object v1, v0, v2

    .line 321
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowSpecificKey"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    .line 323
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "eraseStorage"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    .line 327
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "addApn"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    .line 328
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "modifyApn"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    .line 329
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "deleteApn"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    .line 330
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getConfiguredApnList"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    .line 331
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "activateApn"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    .line 333
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowClipboard"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    .line 334
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowClipboard"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    .line 336
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowWifiDirect"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    .line 337
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowWifiDirect"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    .line 339
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowRemoveGoogleAccount"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xba

    aput-object v1, v0, v2

    .line 340
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowRemoveGoogleAccount"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    .line 342
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setEnforceBackgroundDataRestricted"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    .line 343
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEnforceBackgroundDataRestricted"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    .line 345
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowGoogleBackup"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    .line 346
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowGoogleBackup"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    .line 348
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowAutoRestore"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    .line 349
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowAutoRestore"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    .line 351
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowWiFiProfileManagement"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    .line 352
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowWiFiProfileManagement"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    .line 354
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowWirelessStorage"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    .line 355
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowWirelessStorage"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    .line 357
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowPasswordTypingVisible"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    .line 358
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowPasswordTypingVisible"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    .line 360
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowAutoSync"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    .line 361
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowAutoSync"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    .line 363
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowStatusBarExpansion"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xca

    aput-object v1, v0, v2

    .line 364
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowStatusBarExpansion"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    .line 366
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setNotifyRemoveGoogleAccountDisabled"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    .line 367
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getNotifyRemoveGoogleAccountDisabled"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    .line 369
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "devicePowerOff"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xce

    aput-object v1, v0, v2

    .line 371
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowVerizonLocation"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    .line 372
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowVerizonLocation"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    .line 374
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowUSBHostStorage"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    .line 375
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowUSBHostStorage"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    .line 377
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setEnforceEmergencyCallOnly"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    .line 378
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEnforceEmergencyCallOnly"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    .line 380
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowCallInRoaming"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    .line 381
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowCallInRoaming"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    .line 383
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowPassiveProvider"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    .line 384
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowPassiveProvider"

    invoke-direct {v1, v5, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    .line 389
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowMultiUser"

    const/16 v3, 0x4f4c

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    .line 390
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowMultiUser"

    const/16 v3, 0x4f4c

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xda

    aput-object v1, v0, v2

    .line 395
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getScreenCaptureWhitelist"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    .line 396
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowScreenCaptureWhitelistWithoutADB"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    .line 397
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowScreenCaptureWhitelistWithoutADB"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    .line 399
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowBackgroundProcessLimit"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xde

    aput-object v1, v0, v2

    .line 400
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowBackgroundProcessLimit"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    .line 402
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "enumCertificateInfo"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    .line 404
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowMiracast"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    .line 405
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowMiracast"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    .line 407
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowNotifySpecificProcessKillEvent"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    .line 408
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowNotifySpecificProcessKillEvent"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    .line 409
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getNotifySpecificProcessKillEventList"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    .line 411
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowAndroidBeam"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    .line 412
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowAndroidBeam"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    .line 414
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowVpn"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    .line 415
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowVpn"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    .line 417
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowWifiScan"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xea

    aput-object v1, v0, v2

    .line 418
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowWifiScan"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    .line 420
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowCommandForInternetAccess"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xec

    aput-object v1, v0, v2

    .line 421
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowCommandForInternetAccess"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xed

    aput-object v1, v0, v2

    .line 422
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getCommandListForInternetAccess"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xee

    aput-object v1, v0, v2

    .line 424
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowNonWebkitBrowser"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xef

    aput-object v1, v0, v2

    .line 425
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowNonWebkitBrowser"

    const/16 v3, 0x7530

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    .line 430
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowPasswordVisible"

    const/16 v3, 0x7594

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    .line 431
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowPasswordVisible"

    const/16 v3, 0x7594

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    .line 433
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowOwnerInfo"

    const/16 v3, 0x7594

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    .line 434
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowOwnerInfo"

    const/16 v3, 0x7594

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    .line 435
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setOwnerInfo"

    const/16 v3, 0x7594

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    .line 436
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getOwnerInfo"

    const/16 v3, 0x7594

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    .line 441
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowWiFiMacAddressList"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    .line 442
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowWiFiMacAddressList"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    .line 443
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowWiFiMacAddressListType"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    .line 445
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowGoogleErrorReport"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    .line 446
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowGoogleErrorReport"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    .line 448
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowWifiAutoConnection"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    .line 449
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowWifiAutoConnection"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    .line 451
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getExternalMemoryCID"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    .line 453
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowCIDWithWhitelist"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xff

    aput-object v1, v0, v2

    .line 454
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowCIDWithWhitelist"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x100

    aput-object v1, v0, v2

    .line 455
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getCIDWithWhitelist"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x101

    aput-object v1, v0, v2

    .line 457
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowDownloadMode"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x102

    aput-object v1, v0, v2

    .line 458
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowDownloadMode"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x103

    aput-object v1, v0, v2

    .line 460
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowDataTransmissionViaAudioPort"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x104

    aput-object v1, v0, v2

    .line 461
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowDataTransmissionViaAudioPort"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x105

    aput-object v1, v0, v2

    .line 463
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowChangeDateAndTime"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x106

    aput-object v1, v0, v2

    .line 464
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowChangeDateAndTime"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x107

    aput-object v1, v0, v2

    .line 465
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowChangeTimezone"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x108

    aput-object v1, v0, v2

    .line 466
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowChangeTimezone"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x109

    aput-object v1, v0, v2

    .line 468
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowChangingMobileDataUsageCycle"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x10a

    aput-object v1, v0, v2

    .line 469
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowChangingMobileDataUsageCycle"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x10b

    aput-object v1, v0, v2

    .line 471
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setEnforceLimitMobileDataUsage"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x10c

    aput-object v1, v0, v2

    .line 472
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEnforceLimitMobileDataUsage"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x10d

    aput-object v1, v0, v2

    .line 474
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setEnforceAlertMobileDataUsage"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x10e

    aput-object v1, v0, v2

    .line 475
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEnforceAlertMobileDataUsage"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x10f

    aput-object v1, v0, v2

    .line 477
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getMobileDataUsageInfo"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x110

    aput-object v1, v0, v2

    .line 478
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getMobileDataUsageInformation"

    invoke-direct {v1, v7, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x111

    aput-object v1, v0, v2

    .line 483
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowDLNADiscovery"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x112

    aput-object v1, v0, v2

    .line 484
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowDLNADiscovery"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x113

    aput-object v1, v0, v2

    .line 486
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowVPNSplitTunneling"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x114

    aput-object v1, v0, v2

    .line 487
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowVPNSplitTunneling"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x115

    aput-object v1, v0, v2

    .line 489
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowMaximumRepeatedPassword"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x116

    aput-object v1, v0, v2

    .line 490
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowMaximumRepeatedPassword"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x117

    aput-object v1, v0, v2

    .line 492
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowMaximuSequentialPassword"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x118

    aput-object v1, v0, v2

    .line 493
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowMaximuSequentialPassword"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x119

    aput-object v1, v0, v2

    .line 495
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setPasswordMinimumChange"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x11a

    aput-object v1, v0, v2

    .line 496
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getPasswordMinimumChange"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x11b

    aput-object v1, v0, v2

    .line 498
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowReceivingSmsMms"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x11c

    aput-object v1, v0, v2

    .line 499
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowReceivingSmsMms"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x11d

    aput-object v1, v0, v2

    .line 501
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowBluetoothWithMACWhitelist"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x11e

    aput-object v1, v0, v2

    .line 502
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getBluetoothMACWhitelist"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x11f

    aput-object v1, v0, v2

    .line 503
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowBluetoothWithMACWhitelist"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x120

    aput-object v1, v0, v2

    .line 505
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowContactInfoAccess"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x121

    aput-object v1, v0, v2

    .line 506
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowContactInfoAccess"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x122

    aput-object v1, v0, v2

    .line 508
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setWarningMsg"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x123

    aput-object v1, v0, v2

    .line 509
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getWarningMsg"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x124

    aput-object v1, v0, v2

    .line 510
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getWarningMsgStr"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x125

    aput-object v1, v0, v2

    .line 512
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowDeveloperMode"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x126

    aput-object v1, v0, v2

    .line 513
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowDeveloperMode"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x127

    aput-object v1, v0, v2

    .line 514
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "resetDeveloperOptions"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x128

    aput-object v1, v0, v2

    .line 516
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setEnforcePowerButtonLocks"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x129

    aput-object v1, v0, v2

    .line 517
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEnforcePowerButtonLocks"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x12a

    aput-object v1, v0, v2

    .line 519
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowInfraredPort"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x12b

    aput-object v1, v0, v2

    .line 520
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowInfraredPort"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x12c

    aput-object v1, v0, v2

    .line 522
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setEnforceMuteDuringCall"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x12d

    aput-object v1, v0, v2

    .line 523
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEnforceMuteDuringCall"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x12e

    aput-object v1, v0, v2

    .line 525
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAppVersionState"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x12f

    aput-object v1, v0, v2

    .line 526
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAppVersionState"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x130

    aput-object v1, v0, v2

    .line 528
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setEnforceUsbModeAsNone"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x131

    aput-object v1, v0, v2

    .line 529
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEnforceUsbModeAsNone"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x132

    aput-object v1, v0, v2

    .line 531
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "enumCertificateIdSelectUsetype"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x133

    aput-object v1, v0, v2

    .line 532
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "installCertificateSelectUsetype"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x134

    aput-object v1, v0, v2

    .line 533
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "uninstallCertificateSelectUsetype"

    invoke-direct {v1, v6, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x135

    aput-object v1, v0, v2

    .line 538
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowNativeVpn"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x136

    aput-object v1, v0, v2

    .line 539
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowNativeVpn"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x137

    aput-object v1, v0, v2

    .line 541
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "addEmailCertConfig"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x138

    aput-object v1, v0, v2

    .line 542
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "deleteEmailCertConfig"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x139

    aput-object v1, v0, v2

    .line 544
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setEnforceAirplaneMode"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x13a

    aput-object v1, v0, v2

    .line 545
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getEnforceAirplaneMode"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x13b

    aput-object v1, v0, v2

    .line 547
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowLGVpn"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x13c

    aput-object v1, v0, v2

    .line 548
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowLGVpn"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x13d

    aput-object v1, v0, v2

    .line 550
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowDualWindow"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x13e

    aput-object v1, v0, v2

    .line 551
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowDualWindow"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x13f

    aput-object v1, v0, v2

    .line 553
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowPowerOff"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x140

    aput-object v1, v0, v2

    .line 554
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowPowerOff"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x141

    aput-object v1, v0, v2

    .line 556
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowQuickCircle"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x142

    aput-object v1, v0, v2

    .line 557
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowQuickCircle"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x143

    aput-object v1, v0, v2

    .line 559
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowShortcutKey"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x144

    aput-object v1, v0, v2

    .line 560
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowShortcutKey"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x145

    aput-object v1, v0, v2

    .line 562
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowSafeMode"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x146

    aput-object v1, v0, v2

    .line 563
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowSafeMode"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x147

    aput-object v1, v0, v2

    .line 565
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getCommonCriteriaMode"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x148

    aput-object v1, v0, v2

    .line 566
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setCommonCriteriaMode"

    const v3, 0x9ca4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x149

    aput-object v1, v0, v2

    .line 571
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowScreenPin"

    const v3, 0x9d08

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x14a

    aput-object v1, v0, v2

    .line 572
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowScreenPin"

    const v3, 0x9d08

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x14b

    aput-object v1, v0, v2

    .line 574
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowReadyToConnectInBluetooth"

    const v3, 0x9d08

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x14c

    aput-object v1, v0, v2

    .line 575
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowReadyToConnectInBluetooth"

    const v3, 0x9d08

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x14d

    aput-object v1, v0, v2

    .line 577
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setGranularControlOnCCMode"

    const v3, 0x9d08

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x14e

    aput-object v1, v0, v2

    .line 578
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getGranularControlOnCCMode"

    const v3, 0x9d08

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x14f

    aput-object v1, v0, v2

    .line 583
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "connectNativeVpn"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x150

    aput-object v1, v0, v2

    .line 584
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "connectLgVpn"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x151

    aput-object v1, v0, v2

    .line 586
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "disconnectNativeVpn"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x152

    aput-object v1, v0, v2

    .line 587
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "disconnectLgVpn"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x153

    aput-object v1, v0, v2

    .line 588
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getCurrentConnectionLgVpn"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x154

    aput-object v1, v0, v2

    .line 589
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getCurrentConnectionVpn"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x155

    aput-object v1, v0, v2

    .line 592
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "addLGVpnProfile"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x156

    aput-object v1, v0, v2

    .line 593
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "modifyLGVpnProfile"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x157

    aput-object v1, v0, v2

    .line 594
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "deleteLGVpnProfile"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x158

    aput-object v1, v0, v2

    .line 595
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "enumLGVpnProfile"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x159

    aput-object v1, v0, v2

    .line 597
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "installLGVpnCertificate"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x15a

    aput-object v1, v0, v2

    .line 598
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "unInstallLGVpnCertificate"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x15b

    aput-object v1, v0, v2

    .line 599
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "updateLGVpnCertificate"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x15c

    aput-object v1, v0, v2

    .line 600
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "enumLGVpnAvailableCertificate"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x15d

    aput-object v1, v0, v2

    .line 601
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "enumLGVpnInstalledCertificate"

    const v3, 0xc350

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x15e

    aput-object v1, v0, v2

    .line 606
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setRuntimePermissionGrantState"

    const v3, 0xc3b4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x15f

    aput-object v1, v0, v2

    .line 607
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getRuntimePermissionGrantState"

    const v3, 0xc3b4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x160

    aput-object v1, v0, v2

    .line 609
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "ExportCCauditLogFile"

    const v3, 0xc3b4

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x161

    aput-object v1, v0, v2

    .line 614
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "isDeviceOwnerProvisioned"

    const v3, 0xc418

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x162

    aput-object v1, v0, v2

    .line 615
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "isProfileOwnerProvisioned"

    const v3, 0xc418

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x163

    aput-object v1, v0, v2

    .line 57
    sput-object v0, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTable:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    .line 618
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    .line 620
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "setAllowOSUpdate"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 621
    new-instance v1, Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    const-string/jumbo v2, "getAllowOSUpdate"

    const/16 v3, 0x4e84

    invoke-direct {v1, v3, v2}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 618
    sput-object v0, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTableKR:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "ver"    # I
    .param p2, "fname"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->version:I

    .line 38
    iput-object p2, p0, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->funcname:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getFuncName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->funcname:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->version:I

    return v0
.end method

.method public setFuncName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->funcname:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setVersion(I)V
    .registers 2
    .param p1, "ver"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->version:I

    .line 41
    return-void
.end method
