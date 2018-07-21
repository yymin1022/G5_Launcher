.class Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;
.super Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiftAnimator"
.end annotation


# instance fields
.field private mFinalDragDeltaY:F

.field private mInitDragDeltaY:F

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V
    .registers 4

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 1104
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    .line 1105
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$1(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    .line 1110
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$2(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    .line 1111
    return-void
.end method

.method public onUpdate(FF)V
    .registers 7

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$3(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    .line 1116
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->cancel()V

    .line 1123
    :goto_c
    return-void

    .line 1118
    :cond_d
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    .line 1119
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1118
    invoke-static {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$4(Lcom/mobeta/android/dslv/DragSortListView;I)V

    .line 1120
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$5(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$6(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortListView;->access$1(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1121
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$7(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    goto :goto_c
.end method
