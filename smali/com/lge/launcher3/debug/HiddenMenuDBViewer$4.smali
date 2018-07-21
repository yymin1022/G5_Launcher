.class Lcom/lge/launcher3/debug/HiddenMenuDBViewer$4;
.super Ljava/lang/Object;
.source "HiddenMenuDBViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->setListener(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

.field private final synthetic val$c3:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/debug/HiddenMenuDBViewer;Landroid/database/Cursor;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$4;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iput-object p2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$4;->val$c3:Landroid/database/Cursor;

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 482
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$4;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->currentpage:I

    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$4;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v1, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget v1, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->numberofpages:I

    if-lt v0, v1, :cond_1f

    .line 483
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$4;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "This is the last page"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 488
    :goto_1e
    return-void

    .line 485
    :cond_1f
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$4;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$4;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v1, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget v1, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->currentpage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->currentpage:I

    .line 486
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$4;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$4;->val$c3:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->access$0(Lcom/lge/launcher3/debug/HiddenMenuDBViewer;Landroid/database/Cursor;)V

    goto :goto_1e
.end method
