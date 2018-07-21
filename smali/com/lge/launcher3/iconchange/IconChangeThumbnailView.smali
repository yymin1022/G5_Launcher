.class public Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;
.super Landroid/widget/ImageView;
.source "IconChangeThumbnailView.java"


# instance fields
.field private final mCellNumX:I

.field private final mCellNumY:I

.field private final mThumbnailBigCellHeight:I

.field private final mThumbnailBigCellWidth:I

.field private mThumbnailIcon:Landroid/graphics/drawable/Drawable;

.field private final mThumbnailMaxCellHeight:I

.field private final mThumbnailMaxCellWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const v2, 0x7f090019

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mCellNumX:I

    .line 28
    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mCellNumY:I

    .line 30
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailBigCellWidth:I

    .line 31
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailBigCellHeight:I

    .line 33
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailBigCellWidth:I

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mCellNumX:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailMaxCellWidth:I

    .line 34
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailBigCellHeight:I

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mCellNumY:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailMaxCellHeight:I

    .line 36
    return-void
.end method


# virtual methods
.method public setThumbnailIcon(Landroid/graphics/drawable/Drawable;II)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 39
    if-nez p1, :cond_7

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailIcon:Landroid/graphics/drawable/Drawable;

    .line 60
    :goto_6
    return-void

    .line 44
    :cond_7
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailIcon:Landroid/graphics/drawable/Drawable;

    .line 46
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailMaxCellWidth:I

    .line 47
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailMaxCellHeight:I

    .line 49
    if-le p2, p3, :cond_23

    .line 50
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailBigCellWidth:I

    mul-int/2addr v0, p3

    div-int/2addr v0, p2

    .line 51
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailIcon:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailBigCellWidth:I

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->invalidate()V

    goto :goto_6

    .line 52
    :cond_23
    if-le p3, p2, :cond_1a

    .line 53
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailBigCellWidth:I

    mul-int/2addr v0, p2

    div-int/2addr v0, p3

    .line 54
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailIcon:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeThumbnailView;->mThumbnailBigCellWidth:I

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1a
.end method
