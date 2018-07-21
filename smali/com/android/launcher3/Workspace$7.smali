.class Lcom/android/launcher3/Workspace$7;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$dropTargetLayout:Lcom/android/launcher3/CellLayout;

.field private final synthetic val$hasMovedIntoHotseat:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;ZLcom/android/launcher3/CellLayout;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$7;->this$0:Lcom/android/launcher3/Workspace;

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace$7;->val$hasMovedIntoHotseat:Z

    iput-object p3, p0, Lcom/android/launcher3/Workspace$7;->val$dropTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 2838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2841
    iget-object v0, p0, Lcom/android/launcher3/Workspace$7;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2842
    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2843
    iget-object v1, p0, Lcom/android/launcher3/Workspace$7;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 2844
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace$7;->val$hasMovedIntoHotseat:Z

    if-eqz v0, :cond_23

    .line 2845
    iget-object v0, p0, Lcom/android/launcher3/Workspace$7;->val$dropTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-static {v0, v3}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    .line 2847
    :cond_23
    return-void
.end method
