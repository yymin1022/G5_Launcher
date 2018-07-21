.class Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;
.super Ljava/lang/Object;
.source "LGMDMUICameraAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->setCameraState(ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;

.field final synthetic val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

.field final synthetic val$pid:I

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;II)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;
    .param p2, "val$mdm"    # Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .param p3, "val$userHandle"    # I
    .param p4, "val$pid"    # I

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;

    iput-object p2, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;->val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    iput p3, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;->val$userHandle:I

    iput p4, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;->val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    iget v1, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;->val$userHandle:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setCameraStatus(ZI)V

    .line 94
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;->val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    iget v1, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;->val$pid:I

    iget v2, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;->val$userHandle:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->forceStopPackage(Ljava/lang/String;II)V

    .line 95
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;->val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    iget v1, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;->val$userHandle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setCameraStatus(ZI)V

    .line 92
    return-void
.end method
