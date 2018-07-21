.class Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;
.super Ljava/lang/Object;
.source "LGMDMWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupPolicyInfo"
.end annotation


# instance fields
.field admin:Lcom/lge/mdm/admin/LGMDMadminlist;

.field backupPolicy:Z

.field sync:Ljava/lang/Object;

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMWifiController;

.field userHandle:I


# direct methods
.method private constructor <init>(Lcom/lge/mdm/controller/LGMDMWifiController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMWifiController;

    .prologue
    const/4 v0, 0x0

    .line 453
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;->this$0:Lcom/lge/mdm/controller/LGMDMWifiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 455
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;->backupPolicy:Z

    .line 453
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/controller/LGMDMWifiController;Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMWifiController;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;-><init>(Lcom/lge/mdm/controller/LGMDMWifiController;)V

    return-void
.end method
