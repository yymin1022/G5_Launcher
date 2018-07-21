.class Lcom/android/launcher3/ButtonDropTarget$2;
.super Ljava/lang/Object;
.source "ButtonDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/ButtonDropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/ButtonDropTarget;

.field private final synthetic val$d:Lcom/android/launcher3/DropTarget$DragObject;


# direct methods
.method constructor <init>(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget$2;->this$0:Lcom/android/launcher3/ButtonDropTarget;

    iput-object p2, p0, Lcom/android/launcher3/ButtonDropTarget$2;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget$2;->this$0:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget$2;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget$2;->this$0:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v0, v0, Lcom/android/launcher3/ButtonDropTarget;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->onDragEnd()V

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget$2;->this$0:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v0, v0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 240
    return-void
.end method
