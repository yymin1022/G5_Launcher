.class Lcom/android/launcher3/FolderPagedView$1;
.super Ljava/lang/Object;
.source "FolderPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/FolderPagedView;->realTimeReorder(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/FolderPagedView;

.field private final synthetic val$newRank:I

.field private final synthetic val$oldTranslateX:F

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/FolderPagedView;Landroid/view/View;FI)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FolderPagedView$1;->this$0:Lcom/android/launcher3/FolderPagedView;

    iput-object p2, p0, Lcom/android/launcher3/FolderPagedView$1;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/FolderPagedView$1;->val$oldTranslateX:F

    iput p4, p0, Lcom/android/launcher3/FolderPagedView$1;->val$newRank:I

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView$1;->this$0:Lcom/android/launcher3/FolderPagedView;

    iget-object v0, v0, Lcom/android/launcher3/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/FolderPagedView$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView$1;->val$v:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/FolderPagedView$1;->val$oldTranslateX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 652
    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/FolderPagedView$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 653
    iget-object v1, p0, Lcom/android/launcher3/FolderPagedView$1;->this$0:Lcom/android/launcher3/FolderPagedView;

    iget-object v2, p0, Lcom/android/launcher3/FolderPagedView$1;->val$v:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    iget v3, p0, Lcom/android/launcher3/FolderPagedView$1;->val$newRank:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V

    .line 654
    return-void
.end method
