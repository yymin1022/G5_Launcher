.class Lcom/android/launcher3/Launcher$23;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field private final synthetic val$successfulDrop:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;ZLjava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$23;->this$0:Lcom/android/launcher3/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher3/Launcher$23;->val$successfulDrop:Z

    iput-object p3, p0, Lcom/android/launcher3/Launcher$23;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 3596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3599
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher$23;->val$successfulDrop:Z

    if-eqz v0, :cond_31

    .line 3605
    iget-object v0, p0, Lcom/android/launcher3/Launcher$23;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsContainerView;->setVisibility(I)V

    .line 3607
    iget-object v0, p0, Lcom/android/launcher3/Launcher$23;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-nez v0, :cond_14

    .line 3620
    :cond_13
    :goto_13
    return-void

    .line 3611
    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/Launcher$23;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$23;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$showWorkspaceForNotFoundCellDrop(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3615
    iget-object v0, p0, Lcom/android/launcher3/Launcher$23;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    .line 3616
    iget-object v1, p0, Lcom/android/launcher3/Launcher$23;->this$0:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/Launcher$23;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/Launcher;->showWorkspace(IZLjava/lang/Runnable;)V

    goto :goto_13

    .line 3618
    :cond_31
    iget-object v0, p0, Lcom/android/launcher3/Launcher$23;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragMode()V

    goto :goto_13
.end method
