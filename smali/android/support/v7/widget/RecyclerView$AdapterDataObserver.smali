.class public abstract Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdapterDataObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    .prologue
    .line 8828
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 3

    .prologue
    .line 8832
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 8837
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 8838
    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 3

    .prologue
    .line 8842
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4

    .prologue
    .line 8850
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 3

    .prologue
    .line 8846
    return-void
.end method
