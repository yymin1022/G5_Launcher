.class Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;
.super Ljava/lang/Object;
.source "DynamicGridPannelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    iput p2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;->val$index:I

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 179
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$0(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)I

    move-result v0

    .line 180
    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;->val$index:I

    if-eq v0, v1, :cond_33

    .line 181
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    iget v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;->val$index:I

    invoke-static {v1, v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$1(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;I)V

    .line 182
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$0(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$2(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;I)V

    .line 183
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$0(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$3(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;IZ)V

    .line 184
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$0(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)I

    move-result v2

    invoke-static {v1, v0, v2, v3}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$4(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;IIZ)V

    .line 186
    :cond_33
    return-void
.end method
