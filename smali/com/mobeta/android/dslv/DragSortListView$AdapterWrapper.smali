.class Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
    .registers 5

    .prologue
    .line 539
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 540
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 541
    iput-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    .line 543
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper$1;

    invoke-direct {v1, p0}, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper$1;-><init>(Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 552
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 560
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 611
    if-eqz p2, :cond_29

    .line 612
    check-cast p2, Lcom/mobeta/android/dslv/DragSortItemView;

    .line 613
    invoke-virtual {p2, v3}, Lcom/mobeta/android/dslv/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-interface {v1, p1, v0, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 616
    if-eq v1, v0, :cond_1b

    .line 619
    if-eqz v0, :cond_18

    .line 620
    invoke-virtual {p2, v3}, Lcom/mobeta/android/dslv/DragSortItemView;->removeViewAt(I)V

    .line 622
    :cond_18
    invoke-virtual {p2, v1}, Lcom/mobeta/android/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    .line 639
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, Lcom/mobeta/android/dslv/DragSortListView;->access$0(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 641
    return-object p2

    .line 625
    :cond_29
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-interface {v0, p1, v1, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 626
    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_50

    .line 627
    new-instance v0, Lcom/mobeta/android/dslv/DragSortItemViewCheckable;

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mobeta/android/dslv/DragSortItemViewCheckable;-><init>(Landroid/content/Context;)V

    .line 631
    :goto_41
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    .line 632
    const/4 v3, -0x1

    .line 633
    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 631
    invoke-virtual {v0, v2}, Lcom/mobeta/android/dslv/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    move-object p2, v0

    goto :goto_1b

    .line 629
    :cond_50
    new-instance v0, Lcom/mobeta/android/dslv/DragSortItemView;

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mobeta/android/dslv/DragSortItemView;-><init>(Landroid/content/Context;)V

    goto :goto_41
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
