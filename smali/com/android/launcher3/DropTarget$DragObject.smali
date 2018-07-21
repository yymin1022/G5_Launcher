.class public Lcom/android/launcher3/DropTarget$DragObject;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragObject"
.end annotation


# instance fields
.field public accessibleDrag:Z

.field public cancelled:Z

.field public deferDragViewCleanupPostAnimation:Z

.field public dragComplete:Z

.field public dragInfo:Ljava/lang/Object;

.field public dragSource:Lcom/android/launcher3/DragSource;

.field public dragView:Lcom/android/launcher3/DragView;

.field public postAnimationRunnable:Ljava/lang/Runnable;

.field public x:I

.field public xOffset:I

.field public y:I

.field public yOffset:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 32
    iput v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 35
    iput v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    .line 38
    iput v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    .line 44
    iput-boolean v2, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 47
    iput-object v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    .line 50
    iput-object v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 53
    iput-object v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 59
    iput-object v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 62
    iput-boolean v2, p0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 68
    return-void
.end method


# virtual methods
.method public final getVisualCenter([F)[F
    .registers 6

    .prologue
    .line 77
    if-nez p1, :cond_5

    const/4 v0, 0x2

    new-array p1, v0, [F

    .line 83
    :cond_5
    iget v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v0, v1

    .line 84
    iget v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    iget v2, p0, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    sub-int/2addr v1, v2

    .line 87
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    aput v0, p1, v2

    .line 88
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p1, v0

    .line 90
    return-object p1
.end method
