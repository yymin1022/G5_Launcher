.class public Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconChangeDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/launcher3/iconchange/IconItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCheckBoxNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private final mCheckBoxSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mSelectedItemPositionList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mCheckBoxNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mCheckBoxSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 34
    return-void
.end method


# virtual methods
.method public getSelectedCount()I
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedList()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSelectedListIntArray()[I
    .registers 6

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 98
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    .line 103
    return-object v3

    .line 99
    :cond_17
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 100
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    move v1, v2

    goto :goto_10
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .prologue
    .line 38
    if-nez p2, :cond_4b

    .line 39
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_c
    move-object v0, v1

    .line 42
    check-cast v0, Landroid/widget/FrameLayout;

    .line 43
    invoke-static {}, Lcom/lge/launcher3/util/TextUtils;->isRToLLanguage()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 44
    const v2, 0x800033

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 47
    :cond_1b
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 48
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mCheckBoxSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :goto_2c
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/iconchange/IconItemInfo;

    .line 56
    const v2, 0x7f0e006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 55
    check-cast v2, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;

    .line 57
    iget-object v3, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->spanX:I

    iget v0, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->spanY:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->setThumbnailIcon(Landroid/graphics/drawable/Drawable;II)V

    .line 59
    return-object v1

    .line 50
    :cond_45
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mCheckBoxNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_4b
    move-object v1, p2

    goto :goto_c
.end method

.method public setSelectAll(Z)V
    .registers 6

    .prologue
    .line 75
    if-eqz p1, :cond_1b

    .line 76
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 78
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getCount()I

    move-result v1

    .line 79
    const/4 v0, 0x0

    :goto_c
    if-lt v0, v1, :cond_f

    .line 85
    :goto_e
    return-void

    .line 80
    :cond_f
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 83
    :cond_1b
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_e
.end method

.method public setSelected(ILandroid/view/View;)V
    .registers 5

    .prologue
    .line 63
    check-cast p2, Landroid/widget/FrameLayout;

    .line 65
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mCheckBoxNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :goto_1c
    return-void

    .line 69
    :cond_1d
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mCheckBoxSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c
.end method

.method public setSelectedList([I)V
    .registers 6

    .prologue
    .line 107
    if-nez p1, :cond_3

    .line 115
    :cond_2
    return-void

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 112
    array-length v1, p1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_2

    aget v2, p1, v0

    .line 113
    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->mSelectedItemPositionList:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method
