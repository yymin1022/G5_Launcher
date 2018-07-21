.class public Lcom/android/launcher3/compat/PackageInstallerCompatVL;
.super Lcom/android/launcher3/compat/PackageInstallerCompat;
.source "PackageInstallerCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field final mActiveSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lcom/android/launcher3/IconCache;

.field private final mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

.field final mInstaller:Landroid/content/pm/PackageInstaller;

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/launcher3/compat/PackageInstallerCompat;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;-><init>(Lcom/android/launcher3/compat/PackageInstallerCompatVL;)V

    iput-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mCache:Lcom/android/launcher3/IconCache;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mWorker:Landroid/os/Handler;

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    iget-object v2, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 51
    return-void
.end method


# virtual methods
.method addSessionInfoToCahce(Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 7

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_13

    .line 70
    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 71
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 70
    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/android/launcher3/IconCache;->cachePackageInstallInfo(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 73
    :cond_13
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 78
    return-void
.end method

.method sendUpdate(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .registers 3

    .prologue
    .line 81
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_d

    .line 83
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->setPackageState(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 85
    :cond_d
    return-void
.end method

.method public updateAndGetActiveSessionCache()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v2

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 64
    return-object v1

    .line 57
    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 58
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->addSessionInfoToCahce(Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 59
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 60
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v4, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v5

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_13
.end method
