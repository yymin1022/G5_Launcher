.class final Lcom/android/launcher3/allapps/DefaultAppSearchController;
.super Lcom/android/launcher3/allapps/AllAppsSearchBarController;
.source "DefaultAppSearchController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ALLOW_SINGLE_APP_LAUNCH:Z = true

.field private static final FADE_IN_DURATION:I = 0xaf

.field private static final FADE_OUT_DURATION:I = 0x64

.field private static final SEARCH_TRANSLATION_X_DP:I = 0x12


# instance fields
.field mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private mContainerView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mDismissSearchButtonView:Landroid/view/View;

.field mFocusRecyclerViewRunnable:Ljava/lang/Runnable;

.field final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field mSearchBarContainerView:Landroid/view/View;

.field mSearchBarEditView:Lcom/android/launcher3/allapps/AllAppsSearchEditView;

.field private mSearchButtonView:Landroid/view/View;

.field private mSearchManager:Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

.field private mSearchView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .registers 6

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;-><init>()V

    .line 59
    new-instance v0, Lcom/android/launcher3/allapps/DefaultAppSearchController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/DefaultAppSearchController$1;-><init>(Lcom/android/launcher3/allapps/DefaultAppSearchController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mFocusRecyclerViewRunnable:Ljava/lang/Runnable;

    .line 68
    iput-object p1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mContext:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 71
    iput-object p2, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mContainerView:Landroid/view/ViewGroup;

    .line 72
    iput-object p3, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 73
    return-void
.end method

.method private showSearchField()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 195
    const/high16 v0, 0x41900000    # 18.0f

    .line 196
    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 199
    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 200
    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 201
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 203
    const-wide/16 v2, 0xaf

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 205
    new-instance v2, Lcom/android/launcher3/allapps/DefaultAppSearchController$3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/DefaultAppSearchController$3;-><init>(Lcom/android/launcher3/allapps/DefaultAppSearchController;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 213
    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 215
    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 216
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 218
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->cancel(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mCb:Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 160
    :goto_15
    return-void

    .line 157
    :cond_16
    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->cancel(Z)V

    .line 158
    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    iget-object v2, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mCb:Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;)V

    goto :goto_15
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 143
    return-void
.end method

.method public focusSearchField()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarEditView:Lcom/android/launcher3/allapps/AllAppsSearchEditView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchEditView;->requestFocus()Z

    .line 108
    invoke-direct {p0}, Lcom/android/launcher3/allapps/DefaultAppSearchController;->showSearchField()V

    .line 109
    return-void
.end method

.method public getView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    const v1, 0x7f040006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    const v1, 0x7f0e0023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchButtonView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const v1, 0x7f0e0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mDismissSearchButtonView:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mDismissSearchButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    check-cast v0, Lcom/android/launcher3/allapps/AllAppsSearchEditView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarEditView:Lcom/android/launcher3/allapps/AllAppsSearchEditView;

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarEditView:Lcom/android/launcher3/allapps/AllAppsSearchEditView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsSearchEditView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarEditView:Lcom/android/launcher3/allapps/AllAppsSearchEditView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsSearchEditView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarEditView:Lcom/android/launcher3/allapps/AllAppsSearchEditView;

    .line 90
    new-instance v1, Lcom/android/launcher3/allapps/DefaultAppSearchController$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/DefaultAppSearchController$2;-><init>(Lcom/android/launcher3/allapps/DefaultAppSearchController;)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsSearchEditView;->setOnBackKeyListener(Lcom/android/launcher3/allapps/AllAppsSearchEditView$OnBackKeyListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    return-object v0
.end method

.method hideSearchField(ZLjava/lang/Runnable;)V
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 224
    iget-object v2, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->cancel(Z)V

    .line 226
    iget-object v2, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarEditView:Lcom/android/launcher3/allapps/AllAppsSearchEditView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsSearchEditView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_76

    .line 227
    :goto_1a
    const/high16 v2, 0x41900000    # 18.0f

    .line 228
    iget-object v3, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 227
    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    .line 229
    if-eqz p1, :cond_78

    .line 231
    iget-object v3, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 232
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 233
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 234
    const-wide/16 v4, 0xaf

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 236
    new-instance v4, Lcom/android/launcher3/allapps/DefaultAppSearchController$4;

    invoke-direct {v4, p0, v0, p2}, Lcom/android/launcher3/allapps/DefaultAppSearchController$4;-><init>(Lcom/android/launcher3/allapps/DefaultAppSearchController;ZLjava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchButtonView:Landroid/view/View;

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 253
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 267
    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 268
    return-void

    :cond_76
    move v0, v1

    .line 226
    goto :goto_1a

    .line 256
    :cond_78
    iget-object v2, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    if-eqz v0, :cond_87

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarEditView:Lcom/android/launcher3/allapps/AllAppsSearchEditView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsSearchEditView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_87
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mCb:Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 261
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchButtonView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchButtonView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 263
    if-eqz p2, :cond_6a

    .line 264
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_6a
.end method

.method public isSearchFieldFocused()Z
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchBarEditView:Lcom/android/launcher3/allapps/AllAppsSearchEditView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchEditView;->isFocused()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 134
    invoke-direct {p0}, Lcom/android/launcher3/allapps/DefaultAppSearchController;->showSearchField()V

    .line 138
    :cond_7
    :goto_7
    return-void

    .line 135
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mDismissSearchButtonView:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 136
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mFocusRecyclerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/DefaultAppSearchController;->hideSearchField(ZLjava/lang/Runnable;)V

    goto :goto_7
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    const/4 v0, 0x6

    if-eq p2, v0, :cond_6

    .line 187
    :cond_5
    :goto_5
    return v2

    .line 173
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getSize()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v4

    move v1, v2

    .line 178
    :goto_15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 179
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 180
    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-ne v0, v3, :cond_3b

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 183
    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move v2, v3

    .line 184
    goto :goto_5

    .line 178
    :cond_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15
.end method

.method protected onInitialize()V
    .registers 3

    .prologue
    .line 118
    new-instance v0, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    .line 119
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 148
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 123
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/DefaultAppSearchController;->hideSearchField(ZLjava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public shouldShowPredictionBar()Z
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method
