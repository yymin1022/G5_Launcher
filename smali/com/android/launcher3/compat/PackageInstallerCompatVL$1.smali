.class Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "PackageInstallerCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/compat/PackageInstallerCompatVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;


# direct methods
.method constructor <init>(Lcom/android/launcher3/compat/PackageInstallerCompatVL;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    .line 87
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method

.method private pushSessionDisplayToLauncher(I)V
    .registers 5

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v0, v0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_24

    .line 128
    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->addSessionInfoToCahce(Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 129
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_24

    .line 132
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherModel;->updateSessionDisplayInfo(Ljava/lang/String;)V

    .line 135
    :cond_24
    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .registers 3

    .prologue
    .line 118
    return-void
.end method

.method public onBadgingChanged(I)V
    .registers 2

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->pushSessionDisplayToLauncher(I)V

    .line 123
    return-void
.end method

.method public onCreated(I)V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->pushSessionDisplayToLauncher(I)V

    .line 92
    return-void
.end method

.method public onFinished(IZ)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v0, v0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v1, v1, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 101
    if-eqz v0, :cond_21

    .line 102
    iget-object v3, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    new-instance v4, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    .line 103
    if-eqz p2, :cond_22

    move v1, v2

    :goto_1b
    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;-><init>(Ljava/lang/String;II)V

    .line 102
    invoke-virtual {v3, v4}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->sendUpdate(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 105
    :cond_21
    return-void

    .line 103
    :cond_22
    const/4 v1, 0x2

    goto :goto_1b
.end method

.method public onProgressChanged(IF)V
    .registers 9

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v0, v0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_21

    .line 111
    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    new-instance v2, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    .line 112
    const/4 v4, 0x1

    .line 113
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v2, v3, v4, v0}, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;-><init>(Ljava/lang/String;II)V

    .line 111
    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->sendUpdate(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 115
    :cond_21
    return-void
.end method
