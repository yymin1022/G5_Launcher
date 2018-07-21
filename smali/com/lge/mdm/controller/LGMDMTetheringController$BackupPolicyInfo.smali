.class public Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;
.super Ljava/lang/Object;
.source "LGMDMTetheringController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMTetheringController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BackupPolicyInfo"
.end annotation


# instance fields
.field admin:Lcom/lge/mdm/admin/LGMDMadminlist;

.field backupPolicy:Z

.field isHotspotPolicy:Z

.field sync:Ljava/lang/Object;

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMTetheringController;

.field userHandle:I


# direct methods
.method protected constructor <init>(Lcom/lge/mdm/controller/LGMDMTetheringController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMTetheringController;

    .prologue
    const/4 v0, 0x0

    .line 506
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->this$0:Lcom/lge/mdm/controller/LGMDMTetheringController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 508
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->isHotspotPolicy:Z

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->backupPolicy:Z

    .line 506
    return-void
.end method
