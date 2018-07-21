.class public Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RUDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/launcher3/recentuninstall/RUAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRecentUninstallAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/recentuninstall/RUAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mResource:I

.field private mViewHolder:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/launcher3/recentuninstall/RUActivity;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/lge/launcher3/recentuninstall/RUActivity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/recentuninstall/RUAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    iput p3, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mResource:I

    .line 26
    iput-object p4, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mRecentUninstallAppInfoList:Ljava/util/List;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public getSelectedCount()I
    .registers 4

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mRecentUninstallAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 37
    return v1

    .line 32
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;

    .line 33
    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;

    .line 56
    if-nez p2, :cond_66

    .line 57
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mResource:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v1, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;-><init>(Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;)V

    iput-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;

    .line 59
    iget-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;

    const v1, 0x7f0e00be

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-static {v2, v1}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;->access$0(Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;Landroid/widget/CheckBox;)V

    .line 60
    iget-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;

    const v1, 0x7f0e00bc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;->access$1(Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;Landroid/widget/TextView;)V

    .line 61
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_39
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;

    invoke-static {v1}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;->access$2(Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 67
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;

    invoke-static {v1}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;->access$2(Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 68
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;

    invoke-static {v1}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;->access$2(Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;

    invoke-static {v1}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;->access$3(Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-object p2

    .line 63
    :cond_66
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;

    iput-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;

    goto :goto_39
.end method

.method public setChecked(I)V
    .registers 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mRecentUninstallAppInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;

    .line 42
    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0, v1}, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->setSelected(Z)V

    .line 43
    return-void

    .line 42
    :cond_13
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public setSelectAll(Z)V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->mRecentUninstallAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 49
    return-void

    .line 46
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;

    .line 47
    invoke-virtual {v0, p1}, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->setSelected(Z)V

    goto :goto_6
.end method
