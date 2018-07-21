.class Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$4;
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
    iput-object p1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$4;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$4;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$8(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 222
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$4;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;

    invoke-static {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->access$8(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->onBackPressed()V

    .line 224
    :cond_11
    return-void
.end method
