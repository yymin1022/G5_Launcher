.class public Lcom/lge/mdm/frameworks/LGMDMUserManager;
.super Ljava/lang/Object;
.source "LGMDMUserManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGMDMUserManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallingOrCurrentUserId()I
    .registers 10

    .prologue
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 18
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 19
    .local v5, "myUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 20
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 21
    .local v4, "myPid":I
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 22
    .local v0, "application":Landroid/app/Application;
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v3

    .line 24
    .local v3, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v6, 0x0

    .line 26
    .local v6, "retUserID":I
    const-string/jumbo v7, "LGMDMUserManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "callingUid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", myUid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", callingPid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 27
    const-string/jumbo v9, ", myPid:"

    .line 26
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 27
    const-string/jumbo v9, ", application:"

    .line 26
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    if-ne v2, v5, :cond_c6

    if-ne v1, v4, :cond_c6

    .line 31
    const/16 v7, 0x3e8

    if-ne v2, v7, :cond_86

    .line 32
    invoke-virtual {v3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCurrentUserID()I

    move-result v6

    .line 33
    const-string/jumbo v7, "LGMDMUserManager"

    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "callinguid and myuid same and calling pid and mypid same, retUserID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 33
    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return v6

    .line 38
    :cond_86
    if-eqz v0, :cond_a7

    .line 39
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 40
    const-string/jumbo v7, "LGMDMUserManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " application is not null, retUserID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_a6
    return v6

    .line 42
    :cond_a7
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 43
    const-string/jumbo v7, "LGMDMUserManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " application is null, retUserID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a6

    .line 48
    :cond_c6
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 49
    const-string/jumbo v7, "LGMDMUserManager"

    .line 50
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "callinguid and myuid not same or calling pid and mypid not same, retUserID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return v6
.end method
