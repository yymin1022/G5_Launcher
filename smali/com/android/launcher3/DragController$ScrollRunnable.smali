.class Lcom/android/launcher3/DragController$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/android/launcher3/DragController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DragController;)V
    .registers 2

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->this$0:Lcom/android/launcher3/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 856
    iget-object v0, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->this$0:Lcom/android/launcher3/DragController;

    iget-object v0, v0, Lcom/android/launcher3/DragController;->mDragScroller:Lcom/android/launcher3/DragScroller;

    if-eqz v0, :cond_46

    .line 857
    iget v0, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_47

    .line 858
    iget-object v0, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->this$0:Lcom/android/launcher3/DragController;

    iget-object v0, v0, Lcom/android/launcher3/DragController;->mDragScroller:Lcom/android/launcher3/DragScroller;

    invoke-interface {v0}, Lcom/android/launcher3/DragScroller;->scrollLeft()V

    .line 862
    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->this$0:Lcom/android/launcher3/DragController;

    iput v2, v0, Lcom/android/launcher3/DragController;->mScrollState:I

    .line 863
    iget-object v0, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->this$0:Lcom/android/launcher3/DragController;

    iput v2, v0, Lcom/android/launcher3/DragController;->mDistanceSinceScroll:I

    .line 864
    iget-object v0, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->this$0:Lcom/android/launcher3/DragController;

    iget-object v0, v0, Lcom/android/launcher3/DragController;->mDragScroller:Lcom/android/launcher3/DragScroller;

    invoke-interface {v0}, Lcom/android/launcher3/DragScroller;->onExitScrollArea()Z

    .line 865
    iget-object v0, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->this$0:Lcom/android/launcher3/DragController;

    iget-object v0, v0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->onExitScrollArea()V

    .line 867
    iget-object v0, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->this$0:Lcom/android/launcher3/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 869
    iget-object v0, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->this$0:Lcom/android/launcher3/DragController;

    iget-object v1, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->this$0:Lcom/android/launcher3/DragController;

    iget-object v1, v1, Lcom/android/launcher3/DragController;->mLastTouch:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->this$0:Lcom/android/launcher3/DragController;

    iget-object v2, v2, Lcom/android/launcher3/DragController;->mLastTouch:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/DragController;->checkScrollState(II)V

    .line 872
    :cond_46
    return-void

    .line 860
    :cond_47
    iget-object v0, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->this$0:Lcom/android/launcher3/DragController;

    iget-object v0, v0, Lcom/android/launcher3/DragController;->mDragScroller:Lcom/android/launcher3/DragScroller;

    invoke-interface {v0}, Lcom/android/launcher3/DragScroller;->scrollRight()V

    goto :goto_12
.end method

.method setDirection(I)V
    .registers 2

    .prologue
    .line 875
    iput p1, p0, Lcom/android/launcher3/DragController$ScrollRunnable;->mDirection:I

    .line 876
    return-void
.end method
