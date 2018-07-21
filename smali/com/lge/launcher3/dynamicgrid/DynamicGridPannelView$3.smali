.class Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$3;
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


# direct methods
.method constructor <init>(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$3;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$3;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$0(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)I

    move-result v0

    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$3;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$6(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)I

    move-result v1

    if-eq v0, v1, :cond_35

    .line 208
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$3;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$7(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$3;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$0(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->runDynamicGrid(I)V

    .line 209
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$3;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$8(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    sget v2, Lcom/lge/R$style;->Theme_LGE_White:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 210
    new-instance v1, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-direct {v1, v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x3e8

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->show(I)V

    .line 214
    :goto_34
    return-void

    .line 212
    :cond_35
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$3;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$8(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)V

    goto :goto_34
.end method
