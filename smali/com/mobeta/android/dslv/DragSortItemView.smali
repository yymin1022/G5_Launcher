.class public Lcom/mobeta/android/dslv/DragSortItemView;
.super Landroid/view/ViewGroup;
.source "DragSortItemView.java"


# instance fields
.field private mGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 28
    const/16 v0, 0x30

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortItemView;->mGravity:I

    .line 34
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .line 35
    const/4 v1, -0x1

    .line 36
    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getGravity()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortItemView;->mGravity:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-virtual {p0, v4}, Lcom/mobeta/android/dslv/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 53
    if-nez v0, :cond_8

    .line 62
    :goto_7
    return-void

    .line 57
    :cond_8
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortItemView;->mGravity:I

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1a

    .line 58
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortItemView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    .line 60
    :cond_1a
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortItemView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortItemView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortItemView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 70
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 73
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 75
    invoke-virtual {p0, v5}, Lcom/mobeta/android/dslv/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 76
    if-nez v3, :cond_17

    .line 77
    invoke-virtual {p0, v5, v1}, Lcom/mobeta/android/dslv/DragSortItemView;->setMeasuredDimension(II)V

    .line 98
    :goto_16
    return-void

    .line 81
    :cond_17
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 84
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 83
    invoke-virtual {p0, v3, p1, v4}, Lcom/mobeta/android/dslv/DragSortItemView;->measureChild(Landroid/view/View;II)V

    .line 87
    :cond_24
    if-nez v2, :cond_30

    .line 88
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 90
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_34

    .line 91
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    :cond_30
    :goto_30
    invoke-virtual {p0, v1, v0}, Lcom/mobeta/android/dslv/DragSortItemView;->setMeasuredDimension(II)V

    goto :goto_16

    .line 93
    :cond_34
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_30
.end method

.method public setGravity(I)V
    .registers 2

    .prologue
    .line 42
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortItemView;->mGravity:I

    .line 43
    return-void
.end method
