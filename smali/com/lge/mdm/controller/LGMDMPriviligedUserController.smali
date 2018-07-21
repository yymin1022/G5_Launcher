.class public final enum Lcom/lge/mdm/controller/LGMDMPriviligedUserController;
.super Ljava/lang/Enum;
.source "LGMDMPriviligedUserController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/controller/LGMDMPriviligedUserController;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/controller/LGMDMPriviligedUserController;

.field public static final enum INSTANCE:Lcom/lge/mdm/controller/LGMDMPriviligedUserController;

.field private static final TAG:Ljava/lang/String; = "LGMDMPriviligedUserController"


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mSpecialUser:Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->INSTANCE:Lcom/lge/mdm/controller/LGMDMPriviligedUserController;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/lge/mdm/controller/LGMDMPriviligedUserController;

    sget-object v1, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->INSTANCE:Lcom/lge/mdm/controller/LGMDMPriviligedUserController;

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->$VALUES:[Lcom/lge/mdm/controller/LGMDMPriviligedUserController;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->mLock:Ljava/lang/Object;

    .line 10
    return-void
.end method

.method private systemUid(I)Z
    .registers 3
    .param p1, "callingUid"    # I

    .prologue
    .line 18
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/controller/LGMDMPriviligedUserController;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/controller/LGMDMPriviligedUserController;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->$VALUES:[Lcom/lge/mdm/controller/LGMDMPriviligedUserController;

    return-object v0
.end method


# virtual methods
.method public endDeclawingPolicies(J)V
    .registers 10
    .param p1, "identity"    # J

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 52
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->systemUid(I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 53
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid request at endDeclawingPolicies() callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_24
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 57
    :try_start_27
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->mSpecialUser:Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 58
    const-string/jumbo v1, "LGMDMPriviligedUserController"

    const-string/jumbo v3, "has alreay finished"

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_6c

    monitor-exit v2

    .line 59
    return-void

    .line 62
    :cond_3b
    :try_start_3b
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->mSpecialUser:Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;

    iget-wide v4, v1, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->identity:J

    cmp-long v1, p1, v4

    if-eqz v1, :cond_6f

    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "endless starting declawing identity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mSpecialUser.identity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->mSpecialUser:Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;

    iget-wide v4, v4, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->identity:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6c
    .catchall {:try_start_3b .. :try_end_6c} :catchall_6c

    .line 56
    :catchall_6c
    move-exception v1

    monitor-exit v2

    throw v1

    .line 66
    :cond_6f
    const/4 v1, 0x0

    :try_start_70
    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->mSpecialUser:Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;

    .line 67
    const-string/jumbo v1, "LGMDMPriviligedUserController"

    const-string/jumbo v3, "sucessfull at endDeclawingPolicies()"

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_70 .. :try_end_7b} :catchall_6c

    monitor-exit v2

    .line 50
    return-void
.end method

.method public isDeclawingPolicyMode(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->mSpecialUser:Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 43
    return v0

    .line 46
    :cond_b
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->mSpecialUser:Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;

    iget v1, v1, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->callingUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_1c

    .line 47
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->mSpecialUser:Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;

    iget v1, v1, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->userHandle:I

    if-ne v1, p1, :cond_1c

    const/4 v0, 0x1

    .line 46
    :cond_1c
    return v0
.end method

.method public startDeclawingPolicies(I)J
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 24
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->systemUid(I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 25
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid request at startDeclawingPolicies() callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_24
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 29
    :try_start_27
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->mSpecialUser:Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 31
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "endless starting declawing"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_39

    .line 28
    :catchall_39
    move-exception v1

    monitor-exit v2

    throw v1

    .line 34
    :cond_3c
    :try_start_3c
    new-instance v1, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;

    invoke-direct {v1, p1, v0}, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;-><init>(II)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->mSpecialUser:Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;

    .line 35
    const-string/jumbo v1, "LGMDMPriviligedUserController"

    const-string/jumbo v3, "sucessfull at startDeclawingPolicies()"

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_39

    monitor-exit v2

    .line 38
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPriviligedUserController;->mSpecialUser:Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;

    iget-wide v2, v1, Lcom/lge/mdm/controller/LGMDMPriviligedUserController$PriviligedUser;->identity:J

    return-wide v2
.end method
