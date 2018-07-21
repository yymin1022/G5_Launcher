.class public Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;
.super Landroid/widget/Gallery;
.source "WallpaperChooserGallery.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .registers 5

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 21
    if-gez v0, :cond_c

    .line 35
    :cond_b
    :goto_b
    return p2

    .line 25
    :cond_c
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_12

    move p2, v0

    .line 26
    goto :goto_b

    .line 27
    :cond_12
    add-int/lit8 v1, p1, -0x2

    if-ne p2, v1, :cond_1d

    .line 28
    add-int/lit8 v1, v0, 0x1

    if-eq v1, p1, :cond_b

    .line 31
    add-int/lit8 p2, v0, 0x1

    goto :goto_b

    .line 32
    :cond_1d
    if-lt p2, v0, :cond_b

    .line 33
    add-int/lit8 p2, p2, 0x2

    goto :goto_b
.end method
