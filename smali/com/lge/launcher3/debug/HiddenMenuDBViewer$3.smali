.class Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;
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
    iput-object p1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iput-object p2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;->val$c3:Landroid/database/Cursor;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 457
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->currentpage:I

    add-int/lit8 v0, v0, -0x2

    mul-int/lit8 v0, v0, 0x14

    .line 461
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v1, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget v1, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->currentpage:I

    if-ne v1, v2, :cond_23

    .line 462
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "This is the first page"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 470
    :goto_22
    return-void

    .line 464
    :cond_23
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v1, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v2, v2, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget v2, v2, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->currentpage:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->currentpage:I

    .line 465
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;->val$c3:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 467
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;->val$c3:Landroid/database/Cursor;

    invoke-static {v1, v2}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->access$0(Lcom/lge/launcher3/debug/HiddenMenuDBViewer;Landroid/database/Cursor;)V

    .line 468
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v1, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iput v0, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->index:I

    goto :goto_22
.end method
