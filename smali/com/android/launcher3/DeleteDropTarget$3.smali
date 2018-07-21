.class Lcom/android/launcher3/DeleteDropTarget$3;
.super Ljava/lang/Object;
.source "DeleteDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/DeleteDropTarget;->onFlingToDelete(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DeleteDropTarget;

.field private final synthetic val$d:Lcom/android/launcher3/DropTarget$DragObject;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DeleteDropTarget$3;->this$0:Lcom/android/launcher3/DeleteDropTarget;

    iput-object p2, p0, Lcom/android/launcher3/DeleteDropTarget$3;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget$3;->this$0:Lcom/android/launcher3/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragMode()V

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget$3;->this$0:Lcom/android/launcher3/DeleteDropTarget;

    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget$3;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeleteDropTarget;->completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget$3;->this$0:Lcom/android/launcher3/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/DragController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget$3;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragController;->onDeferredEndFling(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 172
    return-void
.end method
