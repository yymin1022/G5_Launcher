.class public Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
.super Ljava/lang/Object;
.source "LGMDMPermissionPolicyMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;
    }
.end annotation


# static fields
.field public static final FLAG_APP_OP_IGNORE:I = 0x4

.field public static final FLAG_BACKUP_PRESTATE:I = 0x1

.field public static final FLAG_REVOKE_ON_UPGRADE:I = 0x8

.field public static final FLAG_RUNTIME_PERMISSION_DENY:I = 0x2


# instance fields
.field final mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->mMap:Landroid/util/ArrayMap;

    .line 5
    return-void
.end method


# virtual methods
.method public getPermissionAt(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy(Ljava/lang/String;)I
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 13
    iget-object v1, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;

    .line 14
    .local v0, "permInfo":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;
    if-nez v0, :cond_c

    .line 15
    const/4 v1, -0x1

    return v1

    .line 17
    :cond_c
    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;->getPolicy()I

    move-result v1

    return v1
.end method

.method public getPolicyAt(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 45
    iget-object v1, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;

    .line 46
    .local v0, "permInfo":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;
    if-nez v0, :cond_c

    .line 47
    const/4 v1, -0x1

    return v1

    .line 49
    :cond_c
    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;->getPolicy()I

    move-result v1

    return v1
.end method

.method public getPreState(Ljava/lang/String;)I
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v1, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;

    .line 22
    .local v0, "permInfo":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;
    if-nez v0, :cond_c

    .line 23
    const/4 v1, -0x1

    return v1

    .line 25
    :cond_c
    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;->getPreState()I

    move-result v1

    return v1
.end method

.method public getPreStateAt(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 53
    iget-object v1, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;

    .line 54
    .local v0, "permInfo":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;
    if-nez v0, :cond_c

    .line 55
    const/4 v1, -0x1

    return v1

    .line 57
    :cond_c
    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;->getPreState()I

    move-result v1

    return v1
.end method

.method public putPolicy(Ljava/lang/String;I)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "policy"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->mMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;-><init>(Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public putPolicy(Ljava/lang/String;II)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "preState"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->mMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;

    invoke-direct {v1, p0, p2, p3}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap$PermissionInfo;-><init>(Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method
