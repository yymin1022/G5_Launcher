.class public Lcom/lge/launcher3/iconchange/IconChangeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconChangeAdapter.java"


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
.field private final mCheckDrawable:Landroid/graphics/drawable/Drawable;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSelectedIconId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    const v5, 0x7f0e008d

    const v4, 0x7f0e006d

    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/iconchange/IconItemInfo;

    .line 38
    iget-object v1, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->source:Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;

    sget-object v2, Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;->DB:Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;

    if-ne v1, v2, :cond_59

    .line 39
    if-eqz p2, :cond_1b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_24

    .line 40
    :cond_1b
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040027

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 45
    :cond_24
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 44
    check-cast v1, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;

    .line 46
    iget-object v2, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->spanX:I

    iget v4, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->spanY:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->setThumbnailIcon(Landroid/graphics/drawable/Drawable;II)V

    move-object v1, p2

    .line 57
    :goto_34
    const/4 v2, 0x0

    .line 59
    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->mSelectedIconId:Ljava/lang/String;

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->mSelectedIconId:Ljava/lang/String;

    iget-object v0, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 60
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    :cond_46
    move-object v0, v1

    .line 64
    check-cast v0, Landroid/widget/FrameLayout;

    .line 66
    invoke-static {}, Lcom/lge/launcher3/util/TextUtils;->isRToLLanguage()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 67
    const v3, 0x800033

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 70
    :cond_55
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-object v1

    .line 48
    :cond_59
    if-eqz p2, :cond_61

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_6a

    .line 49
    :cond_61
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040028

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    :cond_6a
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 54
    iget-object v2, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/lge/launcher3/iconchange/IconChangeUtil;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v1, p2

    goto :goto_34
.end method

.method public setSelectedIconId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->mSelectedIconId:Ljava/lang/String;

    .line 77
    return-void
.end method
