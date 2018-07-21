.class public Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;
.super Ljava/lang/Object;
.source "LGMDMNfcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMNfcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BackupPolicyInfo"
.end annotation


# instance fields
.field admin:Lcom/lge/mdm/admin/LGMDMadminlist;

.field backupPolicy:I

.field sync:Ljava/lang/Object;

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMNfcController;

.field userHandle:I


# direct methods
.method protected constructor <init>(Lcom/lge/mdm/controller/LGMDMNfcController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMNfcController;

    .prologue
    const/4 v0, 0x0

    .line 373
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;->this$0:Lcom/lge/mdm/controller/LGMDMNfcController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 375
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    .line 376
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMNfcController$BackupPolicyInfo;->backupPolicy:I

    .line 373
    return-void
.end method
