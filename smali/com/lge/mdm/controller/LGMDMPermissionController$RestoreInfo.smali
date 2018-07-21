.class public Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;
.super Ljava/lang/Object;
.source "LGMDMPermissionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMPermissionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreInfo"
.end annotation


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mPermission:Ljava/lang/String;

.field public mPreState:I

.field public mUserHandle:I

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMPermissionController;


# direct methods
.method public constructor <init>(Lcom/lge/mdm/controller/LGMDMPermissionController;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMPermissionController;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permssion"    # Ljava/lang/String;
    .param p4, "preState"    # I
    .param p5, "userHandle"    # I

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;->this$0:Lcom/lge/mdm/controller/LGMDMPermissionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;->mPackageName:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;->mPermission:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;->mPreState:I

    .line 54
    iput p5, p0, Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;->mUserHandle:I

    .line 50
    return-void
.end method
