.class Lcom/android/launcher3/Workspace$10;
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

.field private final synthetic val$d:Lcom/android/launcher3/DropTarget$DragObject;

.field private final synthetic val$finalResizeRunnable:Ljava/lang/Runnable;

.field private final synthetic val$isFoundCell:Z

.field private final synthetic val$newItemInfo:Lcom/android/launcher3/ItemInfo;

.field private final synthetic val$oldItemInfo:Lcom/android/launcher3/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Z)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$10;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$10;->val$finalResizeRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$10;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object p4, p0, Lcom/android/launcher3/Workspace$10;->val$oldItemInfo:Lcom/android/launcher3/ItemInfo;

    iput-object p5, p0, Lcom/android/launcher3/Workspace$10;->val$newItemInfo:Lcom/android/launcher3/ItemInfo;

    iput-boolean p6, p0, Lcom/android/launcher3/Workspace$10;->val$isFoundCell:Z

    .line 2997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 3000
    iget-object v0, p0, Lcom/android/launcher3/Workspace$10;->this$0:Lcom/android/launcher3/Workspace;

    iput-boolean v1, v0, Lcom/android/launcher3/Workspace;->mAnimatingViewIntoPlace:Z

    .line 3001
    iget-object v0, p0, Lcom/android/launcher3/Workspace$10;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 3008
    iget-object v0, p0, Lcom/android/launcher3/Workspace$10;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$10;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$10;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v3, p0, Lcom/android/launcher3/Workspace$10;->val$oldItemInfo:Lcom/android/launcher3/ItemInfo;

    .line 3009
    iget-object v4, p0, Lcom/android/launcher3/Workspace$10;->val$newItemInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v5, p0, Lcom/android/launcher3/Workspace$10;->val$finalResizeRunnable:Ljava/lang/Runnable;

    iget-boolean v6, p0, Lcom/android/launcher3/Workspace$10;->val$isFoundCell:Z

    .line 3008
    invoke-static/range {v0 .. v6}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$exitSpringLoadedDragModeOnDrop(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Ljava/lang/Runnable;Z)V

    .line 3010
    return-void
.end method
