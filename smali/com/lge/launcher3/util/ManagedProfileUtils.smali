.class public Lcom/lge/launcher3/util/ManagedProfileUtils;
.super Ljava/lang/Object;
.source "ManagedProfileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ManagedProfileUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasDeviceOwner(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 24
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 25
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static hasProfileOwner(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 29
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 30
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18

    .line 36
    const/4 v0, 0x0

    :goto_17
    return v0

    .line 30
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 31
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasProfileOwnerAsUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 32
    const-string v0, "ManagedProfileUtils"

    const-string v1, "hasProfileOwner"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static hasProfileOwnerAsUser(Landroid/content/Context;I)Z
    .registers 3

    .prologue
    .line 60
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 61
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static hasUserRestriction(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 50
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 51
    const-string v1, "no_uninstall_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 52
    const-string v0, "ManagedProfileUtils"

    const-string v1, "UserRestriction by UserManager "

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static isAFW(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 19
    invoke-static {p0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasProfileOwner(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static isAdminApplication(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 66
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 67
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 69
    if-nez v0, :cond_11

    move v0, v1

    .line 78
    :goto_10
    return v0

    .line 72
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v1

    .line 78
    goto :goto_10

    .line 72
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 73
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 74
    const-string v0, "ManagedProfileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ActiveAdmin : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static isLGMDMAppNotAllowUninstall(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 6

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v1

    .line 84
    .line 85
    const-string v0, "ManagedProfileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LGMDMAppVersionState not allow uninstall : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_1d
    return v0

    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static isUninstallBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 41
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 43
    const-string v0, "ManagedProfileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uninstall blocked by DevicePolicyManager "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method
