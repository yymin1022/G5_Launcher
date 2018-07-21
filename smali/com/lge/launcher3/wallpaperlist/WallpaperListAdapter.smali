.class public Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WallpaperListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayout:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPackage:Landroid/content/pm/PackageManager;

.field private mResolveInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewHolder:Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput p2, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mLayout:I

    .line 30
    iput-object p3, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mResolveInfo:Ljava/util/ArrayList;

    .line 31
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mPackage:Landroid/content/pm/PackageManager;

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .prologue
    .line 36
    if-nez p2, :cond_62

    .line 37
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 38
    new-instance v0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;-><init>(Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;)V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mViewHolder:Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;

    .line 39
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mViewHolder:Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;

    const v0, 0x7f0e00e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;->access$0(Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;Landroid/widget/ImageView;)V

    .line 40
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mViewHolder:Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;

    const v0, 0x7f0e00e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;->access$1(Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mViewHolder:Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    :goto_33
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mViewHolder:Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;->access$2(Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mViewHolder:Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;->access$3(Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-object p2

    .line 43
    :cond_62
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;->mViewHolder:Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;

    goto :goto_33
.end method
