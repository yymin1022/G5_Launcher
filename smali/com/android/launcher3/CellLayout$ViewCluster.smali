.class Lcom/android/launcher3/CellLayout$ViewCluster;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCluster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;
    }
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field bottomEdge:[I

.field bottomEdgeDirty:Z

.field boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

.field config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

.field leftEdge:[I

.field leftEdgeDirty:Z

.field rightEdge:[I

.field rightEdgeDirty:Z

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field topEdge:[I

.field topEdgeDirty:Z

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    .line 1403
    iget v0, p1, Lcom/android/launcher3/CellLayout;->mCountY:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    .line 1404
    iget v0, p1, Lcom/android/launcher3/CellLayout;->mCountY:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    .line 1405
    iget v0, p1, Lcom/android/launcher3/CellLayout;->mCountX:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    .line 1406
    iget v0, p1, Lcom/android/launcher3/CellLayout;->mCountX:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    .line 1596
    new-instance v0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;-><init>(Lcom/android/launcher3/CellLayout$ViewCluster;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    .line 1411
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    .line 1412
    iput-object p3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    .line 1413
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    .line 1414
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    .line 1536
    return-void
.end method

.method computeEdge(I[I)V
    .registers 10

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1434
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-lt v2, v3, :cond_b

    .line 1471
    return-void

    .line 1435
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1436
    packed-switch p1, :pswitch_data_80

    .line 1434
    :cond_1e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 1438
    :pswitch_22
    iget v4, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    .line 1439
    iget v1, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    :goto_26
    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v6, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_1e

    .line 1440
    aget v5, p2, v1

    if-lt v4, v5, :cond_35

    aget v5, p2, v1

    if-gez v5, :cond_37

    .line 1441
    :cond_35
    aput v4, p2, v1

    .line 1439
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1446
    :pswitch_3a
    iget v1, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v1

    .line 1447
    iget v1, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    :goto_41
    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v6, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_1e

    .line 1448
    aget v5, p2, v1

    if-le v4, v5, :cond_4e

    .line 1449
    aput v4, p2, v1

    .line 1447
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 1454
    :pswitch_51
    iget v4, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    .line 1455
    iget v1, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    :goto_55
    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_1e

    .line 1456
    aget v5, p2, v1

    if-lt v4, v5, :cond_64

    aget v5, p2, v1

    if-gez v5, :cond_66

    .line 1457
    :cond_64
    aput v4, p2, v1

    .line 1455
    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 1462
    :pswitch_69
    iget v1, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v4, v1

    .line 1463
    iget v1, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    :goto_70
    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_1e

    .line 1464
    aget v5, p2, v1

    if-le v4, v5, :cond_7d

    .line 1465
    aput v4, p2, v1

    .line 1463
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 1436
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_22
        :pswitch_51
        :pswitch_3a
        :pswitch_69
    .end packed-switch
.end method

.method public getBottomEdge()[I
    .registers 3

    .prologue
    .line 1590
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    if-eqz v0, :cond_a

    .line 1591
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1593
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    return-object v0
.end method

.method public getBoundingRect()Landroid/graphics/Rect;
    .registers 9

    .prologue
    .line 1539
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRectDirty:Z

    if-eqz v0, :cond_12

    .line 1540
    const/4 v0, 0x1

    .line 1541
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1551
    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object v0

    .line 1541
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1542
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1543
    if-eqz v1, :cond_3d

    .line 1544
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v0, v6

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1545
    const/4 v0, 0x0

    move v1, v0

    .line 1546
    goto :goto_c

    .line 1547
    :cond_3d
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v6, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v7, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v6, v7

    iget v7, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_c
.end method

.method public getEdge(I)[I
    .registers 3

    .prologue
    .line 1555
    packed-switch p1, :pswitch_data_18

    .line 1564
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->getBottomEdge()[I

    move-result-object v0

    :goto_7
    return-object v0

    .line 1557
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->getLeftEdge()[I

    move-result-object v0

    goto :goto_7

    .line 1559
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->getRightEdge()[I

    move-result-object v0

    goto :goto_7

    .line 1561
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->getTopEdge()[I

    move-result-object v0

    goto :goto_7

    .line 1555
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_8
        :pswitch_12
        :pswitch_d
    .end packed-switch
.end method

.method public getLeftEdge()[I
    .registers 3

    .prologue
    .line 1569
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdgeDirty:Z

    if-eqz v0, :cond_a

    .line 1570
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1572
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    return-object v0
.end method

.method public getRightEdge()[I
    .registers 3

    .prologue
    .line 1576
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdgeDirty:Z

    if-eqz v0, :cond_a

    .line 1577
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1579
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    return-object v0
.end method

.method public getTopEdge()[I
    .registers 3

    .prologue
    .line 1583
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdgeDirty:Z

    if-eqz v0, :cond_a

    .line 1584
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1586
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    return-object v0
.end method

.method isViewTouchingEdge(Landroid/view/View;I)Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    .line 1474
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1476
    invoke-virtual {p0, p2}, Lcom/android/launcher3/CellLayout$ViewCluster;->getEdge(I)[I

    move-result-object v3

    .line 1478
    packed-switch p2, :pswitch_data_6a

    .line 1508
    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    .line 1480
    :pswitch_14
    iget v1, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    :goto_16
    iget v4, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_12

    .line 1481
    aget v4, v3, v1

    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ne v4, v5, :cond_28

    move v0, v2

    .line 1482
    goto :goto_13

    .line 1480
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1487
    :pswitch_2b
    iget v1, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    :goto_2d
    iget v4, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_12

    .line 1488
    aget v4, v3, v1

    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    if-ne v4, v5, :cond_3c

    move v0, v2

    .line 1489
    goto :goto_13

    .line 1487
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1494
    :pswitch_3f
    iget v1, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    :goto_41
    iget v4, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_12

    .line 1495
    aget v4, v3, v1

    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v6, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ne v4, v5, :cond_53

    move v0, v2

    .line 1496
    goto :goto_13

    .line 1494
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 1501
    :pswitch_56
    iget v1, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    :goto_58
    iget v4, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_12

    .line 1502
    aget v4, v3, v1

    iget v5, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    if-ne v4, v5, :cond_67

    move v0, v2

    .line 1503
    goto :goto_13

    .line 1501
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 1478
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_3f
        :pswitch_2b
        :pswitch_56
    .end packed-switch
.end method

.method resetEdges()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    move v0, v1

    .line 1417
    :goto_4
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    iget v2, v2, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-lt v0, v2, :cond_1b

    .line 1421
    :goto_a
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-lt v1, v0, :cond_26

    .line 1425
    iput-boolean v3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdgeDirty:Z

    .line 1426
    iput-boolean v3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdgeDirty:Z

    .line 1427
    iput-boolean v3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    .line 1428
    iput-boolean v3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdgeDirty:Z

    .line 1429
    iput-boolean v3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRectDirty:Z

    .line 1430
    return-void

    .line 1418
    :cond_1b
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aput v4, v2, v0

    .line 1419
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aput v4, v2, v0

    .line 1417
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1422
    :cond_26
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aput v4, v0, v1

    .line 1423
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aput v4, v0, v1

    .line 1421
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method shift(II)V
    .registers 6

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1530
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    .line 1531
    return-void

    .line 1512
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1513
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1514
    packed-switch p1, :pswitch_data_3c

    .line 1526
    iget v2, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    add-int/2addr v2, p2

    iput v2, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    goto :goto_6

    .line 1516
    :pswitch_29
    iget v2, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    sub-int/2addr v2, p2

    iput v2, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    goto :goto_6

    .line 1519
    :pswitch_2f
    iget v2, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    add-int/2addr v2, p2

    iput v2, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    goto :goto_6

    .line 1522
    :pswitch_35
    iget v2, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    sub-int/2addr v2, p2

    iput v2, v0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    goto :goto_6

    .line 1514
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_35
        :pswitch_2f
    .end packed-switch
.end method

.method public sortConfigurationForEdgePush(I)V
    .registers 4

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    iput p1, v0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    .line 1618
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1619
    return-void
.end method
