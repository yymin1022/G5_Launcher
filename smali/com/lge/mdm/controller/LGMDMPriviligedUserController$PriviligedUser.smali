.class Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;
.super Ljava/lang/Object;
.source "LGMDMPriviligedUserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMPriviligedUserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PriviligedUser"
.end annotation


# instance fields
.field final callingUid:I

.field final identity:J

.field final userHandle:I


# direct methods
.method constructor <init>(II)V
    .registers 5
    .param p1, "_userHandle"    # I
    .param p2, "_callingUid"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->identity:J

    .line 78
    iput p1, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->userHandle:I

    .line 79
    iput p2, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->callingUid:I

    .line 76
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 83
    if-eqz p1, :cond_18

    instance-of v2, p1, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;

    if-eqz v2, :cond_18

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;

    .line 88
    .local v0, "rrhs":Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;
    iget v2, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->userHandle:I

    iget v3, v0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->userHandle:I

    if-ne v2, v3, :cond_17

    .line 89
    iget v2, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->callingUid:I

    iget v3, v0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->callingUid:I

    if-ne v2, v3, :cond_17

    const/4 v1, 0x1

    .line 88
    :cond_17
    return v1

    .line 84
    .end local v0    # "rrhs":Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;
    :cond_18
    return v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 93
    iget v0, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->userHandle:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->callingUid:I

    add-int/2addr v0, v1

    return v0
.end method
