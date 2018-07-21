.class Lcom/android/launcher3/Workspace$11;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher3/CellLayout;ZLcom/android/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$cellLayout:Lcom/android/launcher3/CellLayout;

.field private final synthetic val$hasMovedIntoHotseat:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;ZLcom/android/launcher3/CellLayout;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$11;->this$0:Lcom/android/launcher3/Workspace;

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace$11;->val$hasMovedIntoHotseat:Z

    iput-object p3, p0, Lcom/android/launcher3/Workspace$11;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    .line 3743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3746
    iget-object v0, p0, Lcom/android/launcher3/Workspace$11;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 3747
    const/16 v1, 0x12c

    const/4 v2, 0x0

    .line 3746
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 3749
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace$11;->val$hasMovedIntoHotseat:Z

    if-eqz v0, :cond_14

    .line 3750
    iget-object v0, p0, Lcom/android/launcher3/Workspace$11;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    invoke-static {v0, v3}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    .line 3752
    :cond_14
    return-void
.end method
