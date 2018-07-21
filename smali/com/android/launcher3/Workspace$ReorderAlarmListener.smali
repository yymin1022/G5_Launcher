.class Lcom/android/launcher3/Workspace$ReorderAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderAlarmListener"
.end annotation


# instance fields
.field child:Landroid/view/View;

.field dragView:Lcom/android/launcher3/DragView;

.field dragViewCenter:[F

.field minSpanX:I

.field minSpanY:I

.field spanX:I

.field spanY:I

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/DragView;Landroid/view/View;)V
    .registers 9

    .prologue
    .line 3639
    iput-object p1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    .line 3638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3640
    iput-object p2, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragViewCenter:[F

    .line 3641
    iput p3, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    .line 3642
    iput p4, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    .line 3643
    iput p5, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    .line 3644
    iput p6, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    .line 3645
    iput-object p8, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    .line 3646
    iput-object p7, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragView:Lcom/android/launcher3/DragView;

    .line 3647
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 15

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3650
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 3651
    iget-object v7, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v11

    float-to-int v1, v1

    .line 3652
    iget-object v2, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v10

    float-to-int v2, v2

    iget v3, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v4, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iget-object v5, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v5, v5, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 3653
    iget-object v6, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v6, v6, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3651
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3654
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v11

    iput v1, v0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 3655
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v10

    iput v1, v0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 3657
    iget-object v12, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v11

    float-to-int v1, v1

    .line 3658
    iget-object v2, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v10

    float-to-int v2, v2

    iget v3, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v4, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iget v5, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    iget v6, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    .line 3659
    iget-object v7, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v8, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3657
    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v12, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3661
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v11

    if-ltz v0, :cond_75

    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v10

    if-gez v0, :cond_c2

    .line 3662
    :cond_75
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 3667
    :cond_7c
    :goto_7c
    aget v0, v9, v11

    iget v1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    if-ne v0, v1, :cond_d3

    aget v0, v9, v10

    iget v1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    if-ne v0, v1, :cond_d3

    move v12, v11

    .line 3668
    :goto_89
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 3669
    iget-object v3, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v3, v3, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v3, v11

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v4, v4, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v4, v4, v10

    float-to-int v4, v4

    .line 3670
    iget-object v5, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v5, v5, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v5, v5, v11

    iget-object v6, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v6, v6, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v6, v6, v10

    aget v7, v9, v11

    aget v8, v9, v10

    .line 3671
    iget-object v9, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v9}, Lcom/android/launcher3/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v10

    iget-object v9, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v9}, Lcom/android/launcher3/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v11

    move v9, v12

    .line 3668
    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 3672
    return-void

    .line 3663
    :cond_c2
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 3664
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    goto :goto_7c

    :cond_d3
    move v12, v10

    .line 3667
    goto :goto_89
.end method
