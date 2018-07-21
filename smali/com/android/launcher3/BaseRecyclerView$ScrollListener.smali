.class Lcom/android/launcher3/BaseRecyclerView$ScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BaseRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/BaseRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/BaseRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseRecyclerView;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/launcher3/BaseRecyclerView$ScrollListener;->this$0:Lcom/android/launcher3/BaseRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 86
    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView$ScrollListener;->this$0:Lcom/android/launcher3/BaseRecyclerView;

    iput p3, v0, Lcom/android/launcher3/BaseRecyclerView;->mDy:I

    .line 95
    return-void
.end method
