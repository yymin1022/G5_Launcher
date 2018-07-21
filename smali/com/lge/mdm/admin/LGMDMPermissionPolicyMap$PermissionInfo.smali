.class public Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;
.super Ljava/lang/Object;
.source "LGMDMPermissionPolicyMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionInfo"
.end annotation


# instance fields
.field private mPolicy:I

.field private mPreState:I

.field final synthetic this$0:Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;


# direct methods
.method public constructor <init>(Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    .param p2, "policy"    # I
    .param p3, "preState"    # I

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;->this$0:Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p2, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;->mPolicy:I

    .line 69
    iput p3, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;->mPreState:I

    .line 67
    return-void
.end method


# virtual methods
.method public getPolicy()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;->mPolicy:I

    return v0
.end method

.method public getPreState()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;->mPreState:I

    return v0
.end method
