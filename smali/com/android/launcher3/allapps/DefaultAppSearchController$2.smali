.class Lcom/android/launcher3/allapps/DefaultAppSearchController$2;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsSearchEditView$OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/DefaultAppSearchController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/DefaultAppSearchController;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$2;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackKey()V
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$2;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarEditView:Lcom/android/launcher3/allapps/AllAppsSearchEditView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchEditView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$2;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 98
    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$2;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$2;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    iget-object v2, v2, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mFocusRecyclerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/DefaultAppSearchController;->hideSearchField(ZLjava/lang/Runnable;)V

    .line 100
    :cond_2a
    return-void
.end method
