.class Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;
.super Ljava/lang/Object;
.source "LGMDMBluetoothController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMBluetoothController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupPolicyInfo"
.end annotation


# instance fields
.field admin:Lcom/lge/mdm/admin/LGMDMadminlist;

.field bTurnOnBt:Z

.field backupPolicy:I

.field backupProfilePolicy:I

.field mBtLESetPolicy:Z

.field mBtLEbackupPolicy:Z

.field mLeccpManager:Lcom/lge/systemservice/core/LeccpManager;

.field mbSetProfile:Z

.field msetProfilePolicy:I

.field sync:Ljava/lang/Object;

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMBluetoothController;

.field userHandle:I


# direct methods
.method private constructor <init>(Lcom/lge/mdm/controller/LGMDMBluetoothController;)V
    .registers 6
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMBluetoothController;

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1141
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->this$0:Lcom/lge/mdm/controller/LGMDMBluetoothController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1143
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mLeccpManager:Lcom/lge/systemservice/core/LeccpManager;

    .line 1144
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    .line 1145
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->backupPolicy:I

    .line 1146
    iput v3, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->backupProfilePolicy:I

    .line 1147
    iput v3, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->msetProfilePolicy:I

    .line 1148
    iput-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mBtLEbackupPolicy:Z

    .line 1149
    iput-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mBtLESetPolicy:Z

    .line 1150
    iput-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->mbSetProfile:Z

    .line 1151
    iput-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;->bTurnOnBt:Z

    .line 1141
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/controller/LGMDMBluetoothController;Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMBluetoothController;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMBluetoothController$BackupPolicyInfo;-><init>(Lcom/lge/mdm/controller/LGMDMBluetoothController;)V

    return-void
.end method
