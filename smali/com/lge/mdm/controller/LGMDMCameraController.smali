.class public Lcom/lge/mdm/controller/LGMDMCameraController;
.super Ljava/lang/Object;
.source "LGMDMCameraController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMCameraController;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMCameraController;->instance:Lcom/lge/mdm/controller/LGMDMCameraController;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 27
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private getGlobalCameraWhitelist(I)Ljava/util/List;
    .registers 11
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/4 v4, 0x0

    .line 152
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 153
    .local v5, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    if-nez v6, :cond_9

    .line 154
    return-object v7

    .line 156
    :cond_9
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 157
    .local v5, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v1, "i":I
    :goto_f
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v6

    if-ge v1, v6, :cond_7a

    .line 158
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 159
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->setAllowCameraWhitelist:Z

    if-eqz v6, :cond_46

    .line 160
    const-string/jumbo v6, "CameraController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getGlobalCameraWhitelist check pass:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 161
    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 160
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 164
    :cond_46
    iget-object v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    if-eqz v6, :cond_43

    .line 165
    iget-object v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageName$iterator":Ljava/util/Iterator;
    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    const-string/jumbo v6, "CameraController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getGlobalCameraWhitelist add package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 171
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageName$iterator":Ljava/util/Iterator;
    :cond_7a
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_85

    .line 172
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 174
    :cond_85
    return-object v4
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMCameraController;
    .registers 2

    .prologue
    .line 31
    const-string/jumbo v0, "CameraController"

    const-string/jumbo v1, "start LGMDMCameraContoller"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/lge/mdm/controller/LGMDMCameraController;->instance:Lcom/lge/mdm/controller/LGMDMCameraController;

    if-nez v0, :cond_14

    .line 33
    new-instance v0, Lcom/lge/mdm/controller/LGMDMCameraController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMCameraController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMCameraController;->instance:Lcom/lge/mdm/controller/LGMDMCameraController;

    .line 36
    :cond_14
    sget-object v0, Lcom/lge/mdm/controller/LGMDMCameraController;->instance:Lcom/lge/mdm/controller/LGMDMCameraController;

    return-object v0
.end method

.method private getRunningPackagesFormPid(I)[Ljava/lang/String;
    .registers 12
    .param p1, "pid"    # I

    .prologue
    const/4 v9, 0x0

    .line 179
    const/4 v6, 0x1

    if-ge p1, v6, :cond_1f

    .line 180
    const-string/jumbo v6, "CameraController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getRunningPackagesFormPid : pid check fail : pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object v9

    .line 183
    :cond_1f
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 184
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_47

    .line 185
    const-string/jumbo v6, "CameraController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getRunningPackagesFormPid : null check fail : ActivityManager = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-object v9

    .line 189
    :cond_47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 191
    .local v2, "identity":J
    :try_start_4b
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_6f

    .line 193
    const-string/jumbo v6, "CameraController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getRunningPackagesFormPid : null check fail : processList = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_4b .. :try_end_6b} :catchall_b5

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    return-object v9

    .line 198
    :cond_6f
    :try_start_6f
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "rapi$iterator":Ljava/util/Iterator;
    :cond_73
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 199
    .local v4, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_73

    .line 200
    const-string/jumbo v6, "CameraController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getRunningPackagesFormPid : found packages = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;
    :try_end_a4
    .catchall {:try_start_6f .. :try_end_a4} :catchall_b5

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    return-object v6

    .line 204
    .end local v4    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_a8
    :try_start_a8
    const-string/jumbo v6, "CameraController"

    const-string/jumbo v7, "getRunningPackagesFormPid : not found packages"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_b5

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    return-object v9

    .line 205
    .end local v1    # "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "rapi$iterator":Ljava/util/Iterator;
    :catchall_b5
    move-exception v6

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    throw v6
.end method


# virtual methods
.method public checkCameraPackageInWhitelist(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 129
    const/4 v3, 0x1

    .line 130
    .local v3, "result":Z
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 131
    .local v2, "adminlist":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 132
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->setAllowCameraWhitelist:Z

    if-nez v4, :cond_b

    .line 135
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    if-nez v4, :cond_21

    .line 136
    const/4 v3, 0x0

    .line 146
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_20
    :goto_20
    return v3

    .line 139
    .restart local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_21
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 140
    const/4 v3, 0x1

    goto :goto_b

    .line 142
    :cond_2b
    const/4 v3, 0x0

    .line 143
    goto :goto_20
.end method

.method public checkPackageNameFromPID(II)Ljava/lang/String;
    .registers 6
    .param p1, "pid"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMCameraController;->getRunningPackagesFormPid(I)[Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "packagelist":[Ljava/lang/String;
    if-eqz v0, :cond_e

    aget-object v1, v0, v2

    if-eqz v1, :cond_e

    .line 214
    aget-object v1, v0, v2

    return-object v1

    .line 216
    :cond_e
    const-string/jumbo v1, ""

    return-object v1
.end method

.method protected getAllowCameraWithWhitelist(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 100
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 101
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->setAllowCameraWhitelist:Z

    :cond_e
    return v4

    .line 103
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 104
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 105
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->setAllowCameraWhitelist:Z

    if-nez v5, :cond_19

    .line 106
    const-string/jumbo v4, "CameraController"

    const-string/jumbo v5, "getAllowCameraWithWhitelist : return false"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v4, 0x0

    return v4

    .line 110
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_34
    return v4
.end method

.method getCameraPid(I)I
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getCameraPid(I)I

    move-result v0

    return v0
.end method

.method getCameraStatus(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getCameraStatus(I)Z

    move-result v0

    return v0
.end method

.method protected getCameraWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 116
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 117
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    :cond_e
    return-object v2

    .line 119
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v1

    .line 120
    .local v1, "listSize":I
    if-nez v1, :cond_21

    .line 121
    const-string/jumbo v3, "CameraController"

    const-string/jumbo v4, "admin list size is zero  "

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-object v2

    .line 124
    :cond_21
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMCameraController;->getGlobalCameraWhitelist(I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected setAllowCameraWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;I)V
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 59
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 60
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v5, "CameraController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAllowCameraWithWhitelist : allow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-boolean v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->setAllowCameraWhitelist:Z

    if-ne v5, p2, :cond_3b

    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    if-eqz v5, :cond_3b

    .line 63
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 62
    if-eqz v5, :cond_3b

    .line 64
    const-string/jumbo v5, "CameraController"

    const-string/jumbo v6, "setAllowCameraWithWhitelist : same policy is called"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 68
    :cond_3b
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.lge.mdm.intent.action.CAMERA_POLICY_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->setAllowCameraWhitelist:Z

    .line 72
    if-eqz p2, :cond_80

    .line 73
    iput-object v8, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    .line 81
    :cond_50
    if-nez p2, :cond_7f

    invoke-virtual {p0, p4}, Lcom/lge/mdm/controller/LGMDMCameraController;->getCameraStatus(I)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 83
    invoke-virtual {p0, p4}, Lcom/lge/mdm/controller/LGMDMCameraController;->getCameraPid(I)I

    move-result v4

    .line 85
    .local v4, "pid":I
    invoke-virtual {p0, v4, p4}, Lcom/lge/mdm/controller/LGMDMCameraController;->checkPackageNameFromPID(II)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    if-eqz v5, :cond_6a

    .line 88
    invoke-virtual {p0, v2, p4}, Lcom/lge/mdm/controller/LGMDMCameraController;->checkCameraPackageInWhitelist(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 89
    :cond_6a
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v2, v6, p4}, Lcom/lge/mdm/controller/LGMDMHandler;->forceStopPackage(Ljava/lang/String;II)V

    .line 90
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v5

    .line 91
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_block_camera_NORMAL:I

    .line 90
    invoke-virtual {v5, v6, p4}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 92
    const/4 v5, 0x0

    invoke-virtual {p0, v5, p4}, Lcom/lge/mdm/controller/LGMDMCameraController;->setCameraStatus(ZI)V

    .line 58
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "pid":I
    :cond_7f
    return-void

    .line 75
    :cond_80
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    .line 77
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageName$iterator":Ljava/util/Iterator;
    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    .restart local v2    # "packageName":Ljava/lang/String;
    const-string/jumbo v5, "CameraController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "admin.cameraWhitelist add package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86
.end method

.method setCameraPid(II)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 53
    const-string/jumbo v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraPid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userHandle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->setCameraPid(II)V

    .line 52
    return-void
.end method

.method setCameraStatus(ZI)V
    .registers 6
    .param p1, "isRunning"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 44
    const-string/jumbo v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userHandle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCameraController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->setCameraStatus(ZI)V

    .line 43
    return-void
.end method
