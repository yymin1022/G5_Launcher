.class public abstract Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 666
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .registers 6

    .prologue
    .line 772
    const/4 v1, 0x0

    .line 773
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 775
    :goto_9
    if-gt v1, v0, :cond_1d

    .line 776
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 777
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 778
    if-ge v3, p1, :cond_1a

    .line 779
    add-int/lit8 v1, v2, 0x1

    goto :goto_9

    .line 781
    :cond_1a
    add-int/lit8 v0, v2, -0x1

    goto :goto_9

    .line 784
    :cond_1d
    add-int/lit8 v0, v1, -0x1

    .line 785
    if-ltz v0, :cond_30

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 786
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 788
    :goto_2f
    return v0

    :cond_30
    const/4 v0, -0x1

    goto :goto_2f
.end method

.method getCachedSpanIndex(II)I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 705
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_a

    .line 706
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    .line 714
    :cond_9
    :goto_9
    return v0

    .line 708
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 709
    if-ne v0, v1, :cond_9

    .line 712
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    .line 713
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_9
.end method

.method public getSpanGroupIndex(II)I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 804
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    move v4, v2

    move v0, v2

    move v3, v2

    .line 805
    :goto_8
    if-ge v4, p1, :cond_1e

    .line 806
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    .line 807
    add-int/2addr v3, v1

    .line 808
    if-ne v3, p2, :cond_19

    .line 810
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 805
    :goto_14
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto :goto_8

    .line 811
    :cond_19
    if-le v3, p2, :cond_25

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 817
    :cond_1e
    add-int v1, v3, v5

    if-le v1, p2, :cond_24

    .line 818
    add-int/lit8 v0, v0, 0x1

    .line 820
    :cond_24
    return v0

    :cond_25
    move v1, v3

    goto :goto_14
.end method

.method public getSpanIndex(II)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 741
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    .line 742
    if-ne v4, p2, :cond_8

    .line 768
    :cond_7
    :goto_7
    return v1

    .line 748
    :cond_8
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_41

    .line 749
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v0

    .line 750
    if-ltz v0, :cond_41

    .line 751
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 752
    add-int/lit8 v0, v0, 0x1

    :goto_27
    move v3, v0

    .line 755
    :goto_28
    if-ge v3, p1, :cond_3b

    .line 756
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 757
    add-int/2addr v2, v0

    .line 758
    if-ne v2, p2, :cond_37

    move v0, v1

    .line 755
    :cond_32
    :goto_32
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_28

    .line 760
    :cond_37
    if-gt v2, p2, :cond_32

    move v0, v2

    goto :goto_32

    .line 765
    :cond_3b
    add-int v0, v2, v4

    if-gt v0, p2, :cond_7

    move v1, v2

    .line 766
    goto :goto_7

    :cond_41
    move v0, v1

    move v2, v1

    goto :goto_27
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 693
    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .registers 2

    .prologue
    .line 701
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return v0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .registers 2

    .prologue
    .line 684
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 685
    return-void
.end method
