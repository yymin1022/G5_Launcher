.class Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$2;
.super Ljava/lang/Object;
.source "DynamicGridPannelView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$2;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    iput p2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$2;->val$index:I

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$2;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$0(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)I

    move-result v0

    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$2;->val$index:I

    if-eq v0, v1, :cond_1c

    .line 192
    if-eqz p2, :cond_1d

    .line 193
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$2;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$5(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)[Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$2;->val$index:I

    aget-object v0, v0, v1

    .line 194
    const v1, 0x7f020041

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 199
    :cond_1c
    :goto_1c
    return-void

    .line 196
    :cond_1d
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$2;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$5(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)[Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$2;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1c
.end method
