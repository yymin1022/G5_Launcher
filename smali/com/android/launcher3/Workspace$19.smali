.class Lcom/android/launcher3/Workspace$19;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->clearDropTargets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$19;->this$0:Lcom/android/launcher3/Workspace;

    .line 4473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 4476
    instance-of v0, p2, Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_d

    .line 4477
    iget-object v0, p0, Lcom/android/launcher3/Workspace$19;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/DragController;

    check-cast p2, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 4480
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
