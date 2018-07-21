.class public Lcom/android/launcher3/Workspace$WorkspaceItds$1;
.super Ljava/lang/Object;
.source "WorkspaceItds.aj"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->ajc$interFieldInit$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mIndicatorLongClicklistener(Lcom/android/launcher3/Workspace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$WorkspaceItds$1;->this$0:Lcom/android/launcher3/Workspace;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WorkspaceItds$1;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher3/Workspace$WorkspaceItds$1;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isCleanViewState(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 393
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WorkspaceItds$1;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-nez v0, :cond_32

    .line 394
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WorkspaceItds$1;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/VibratorManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/VibratorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/util/VibratorManager;->vibrateIfSystemHapticFeedbackEnabled()V

    .line 397
    :cond_32
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WorkspaceItds$1;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->showOverviewMode(Z)V

    .line 399
    :cond_3b
    return v1
.end method
