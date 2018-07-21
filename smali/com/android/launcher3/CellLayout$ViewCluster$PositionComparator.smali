.class Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout$ViewCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

.field whichEdge:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout$ViewCluster;)V
    .registers 3

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1598
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .registers 6

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1601
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1602
    iget v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    packed-switch v2, :pswitch_data_44

    .line 1611
    iget v0, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    sub-int/2addr v0, v1

    :goto_22
    return v0

    .line 1604
    :pswitch_23
    iget v2, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    goto :goto_22

    .line 1606
    :pswitch_30
    iget v0, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    sub-int/2addr v0, v1

    goto :goto_22

    .line 1608
    :pswitch_36
    iget v2, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    goto :goto_22

    .line 1602
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_23
        :pswitch_36
        :pswitch_30
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
