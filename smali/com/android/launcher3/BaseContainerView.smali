.class public abstract Lcom/android/launcher3/BaseContainerView;
.super Landroid/widget/LinearLayout;
.source "BaseContainerView.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseContainerView"


# instance fields
.field private mContainerBoundsInset:I

.field protected mContentBounds:Landroid/graphics/Rect;

.field protected mContentPadding:Landroid/graphics/Rect;

.field private mFixedSearchBarBounds:Landroid/graphics/Rect;

.field private mHasSearchBar:Z

.field private mInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mContentBounds:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mContentPadding:Landroid/graphics/Rect;

    .line 56
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BaseContainerView;->mContainerBoundsInset:I

    .line 57
    return-void
.end method

.method private isValidSearchBarBounds(Landroid/graphics/Rect;)Z
    .registers 4

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 135
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getMeasuredWidth()I

    move-result v1

    if-gt v0, v1, :cond_18

    .line 136
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getMeasuredHeight()I

    move-result v1

    .line 134
    if-gt v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method protected abstract onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method protected setHasSearchBar()V
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BaseContainerView;->mHasSearchBar:Z

    .line 67
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->updateBackgroundAndPaddings()V

    .line 63
    return-void
.end method

.method public final setSearchBarBounds(Landroid/graphics/Rect;)V
    .registers 5

    .prologue
    .line 73
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, p1}, Lcom/android/launcher3/BaseContainerView;->isValidSearchBarBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 74
    const-string v0, "BaseContainerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid search bar bounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 81
    new-instance v0, Lcom/android/launcher3/BaseContainerView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/BaseContainerView$1;-><init>(Lcom/android/launcher3/BaseContainerView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseContainerView;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method protected updateBackgroundAndPaddings()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 94
    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/launcher3/BaseContainerView;->isValidSearchBarBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v4, v0

    .line 98
    iget-boolean v0, p0, Lcom/android/launcher3/BaseContainerView;->mHasSearchBar:Z

    if-eqz v0, :cond_84

    move v0, v1

    .line 99
    :goto_1e
    iget-object v5, p0, Lcom/android/launcher3/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/android/launcher3/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v5, v6

    .line 100
    iget-object v6, p0, Lcom/android/launcher3/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/android/launcher3/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v6, v7

    .line 97
    invoke-direct {v2, v4, v0, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v0, v4

    .line 105
    iget-object v4, p0, Lcom/android/launcher3/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v4, v5

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/launcher3/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 104
    invoke-virtual {v3, v0, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v2

    .line 115
    :goto_4d
    iget-object v1, p0, Lcom/android/launcher3/BaseContainerView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/android/launcher3/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 116
    :cond_5d
    iget-object v1, p0, Lcom/android/launcher3/BaseContainerView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 117
    iget-object v1, p0, Lcom/android/launcher3/BaseContainerView;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getMeasuredWidth()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getMeasuredHeight()I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    .line 117
    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    iget-object v1, p0, Lcom/android/launcher3/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 121
    iget-object v1, p0, Lcom/android/launcher3/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/BaseContainerView;->onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 123
    :cond_83
    return-void

    .line 98
    :cond_84
    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v0, v5

    goto :goto_1e

    .line 110
    :cond_8c
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 111
    iget-boolean v4, p0, Lcom/android/launcher3/BaseContainerView;->mHasSearchBar:Z

    if-eqz v4, :cond_aa

    .line 112
    :goto_96
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/BaseContainerView;->mFixedSearchBarBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 113
    iget-object v5, p0, Lcom/android/launcher3/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/launcher3/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v5, v6

    .line 110
    invoke-direct {v0, v2, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4d

    .line 111
    :cond_aa
    iget-object v1, p0, Lcom/android/launcher3/BaseContainerView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/launcher3/BaseContainerView;->mContainerBoundsInset:I

    add-int/2addr v1, v4

    goto :goto_96
.end method
