.class Lcom/android/launcher3/allapps/DefaultAppSearchController$3;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/DefaultAppSearchController;->showSearchField()V
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
    iput-object p1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$3;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$3;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarEditView:Lcom/android/launcher3/allapps/AllAppsSearchEditView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchEditView;->requestFocus()Z

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$3;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$3;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    iget-object v1, v1, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarEditView:Lcom/android/launcher3/allapps/AllAppsSearchEditView;

    .line 210
    const/4 v2, 0x1

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 211
    return-void
.end method
