.class public Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RUReinstallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;
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
.field private mActivity:Lcom/lge/launcher3/recentuninstall/RUActivity;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
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

.field private mViewHolder:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;


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
    .line 26
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 27
    iput p3, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mResource:I

    .line 28
    iput-object p2, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mActivity:Lcom/lge/launcher3/recentuninstall/RUActivity;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object p4, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mList:Ljava/util/List;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;)Ljava/util/List;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;)Lcom/lge/launcher3/recentuninstall/RUActivity;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mActivity:Lcom/lge/launcher3/recentuninstall/RUActivity;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;

    .line 38
    if-nez p2, :cond_90

    .line 39
    new-instance v1, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;-><init>(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;)V

    iput-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    .line 40
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mResource:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 42
    iget-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    const v1, 0x7f0e00bb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->access$0(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;Landroid/widget/ImageView;)V

    .line 43
    iget-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    const v1, 0x7f0e00bc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->access$1(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;Landroid/widget/TextView;)V

    .line 44
    iget-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    const v1, 0x7f0e00bd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v2, v1}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->access$2(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;Landroid/widget/Button;)V

    .line 46
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :goto_48
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    invoke-static {v1}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->access$3(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    invoke-static {v1}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->access$4(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    invoke-static {v1}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->access$5(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 54
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    invoke-static {v1}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->access$5(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 55
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    invoke-static {v1}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->access$5(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;-><init>(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;ILcom/lge/launcher3/recentuninstall/RUAppInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    invoke-static {v0}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->access$5(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 72
    return-object p2

    .line 48
    :cond_90
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    iput-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->mViewHolder:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;

    goto :goto_48
.end method
