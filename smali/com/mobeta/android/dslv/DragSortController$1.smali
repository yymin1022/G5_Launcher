.class Lcom/mobeta/android/dslv/DragSortController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DragSortController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortController;


# direct methods
.method constructor <init>(Lcom/mobeta/android/dslv/DragSortController;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    .line 452
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 457
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortController;->access$0(Lcom/mobeta/android/dslv/DragSortController;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortController;->access$1(Lcom/mobeta/android/dslv/DragSortController;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 458
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortController;->access$2(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v0

    .line 459
    div-int/lit8 v0, v0, 0x5

    .line 460
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortController;->access$3(Lcom/mobeta/android/dslv/DragSortController;)F

    move-result v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_40

    .line 461
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortController;->access$4(Lcom/mobeta/android/dslv/DragSortController;)I

    move-result v1

    neg-int v0, v0

    if-le v1, v0, :cond_3a

    .line 462
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortController;->access$2(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v3, p3}, Lcom/mobeta/android/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 469
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v0, v2}, Lcom/mobeta/android/dslv/DragSortController;->access$5(Lcom/mobeta/android/dslv/DragSortController;Z)V

    .line 471
    :cond_3f
    return v2

    .line 464
    :cond_40
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortController;->access$3(Lcom/mobeta/android/dslv/DragSortController;)F

    move-result v1

    neg-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_3a

    .line 465
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortController;->access$4(Lcom/mobeta/android/dslv/DragSortController;)I

    move-result v1

    if-ge v1, v0, :cond_3a

    .line 466
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortController;->access$2(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v3, p3}, Lcom/mobeta/android/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    goto :goto_3a
.end method
