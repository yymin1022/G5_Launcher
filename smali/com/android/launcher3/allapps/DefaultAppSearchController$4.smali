.class Lcom/android/launcher3/allapps/DefaultAppSearchController$4;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/DefaultAppSearchController;->hideSearchField(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

.field private final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;

.field private final synthetic val$resetTextField:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/DefaultAppSearchController;ZLjava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$4;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$4;->val$resetTextField:Z

    iput-object p3, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$4;->val$postAnimationRunnable:Ljava/lang/Runnable;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$4;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$4;->val$resetTextField:Z

    if-eqz v0, :cond_15

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$4;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarEditView:Lcom/android/launcher3/allapps/AllAppsSearchEditView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsSearchEditView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$4;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mCb:Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$4;->val$postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_25

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$4;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 247
    :cond_25
    return-void
.end method
