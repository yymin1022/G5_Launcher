.class public Lcom/lge/launcher3/badge/BadgeUtils;
.super Ljava/lang/Object;
.source "BadgeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/badge/BadgeUtils$LocationType;
    }
.end annotation


# static fields
.field private static sIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private static sShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/lge/launcher3/badge/BadgeUtils;->sIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 22
    sput-object v0, Lcom/lge/launcher3/badge/BadgeUtils;->sShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIconChangeBadgeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 31
    sget-object v0, Lcom/lge/launcher3/badge/BadgeUtils;->sIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_22

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    const v2, 0x7f02008c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 32
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Lcom/lge/launcher3/badge/BadgeUtils;->sIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 36
    :cond_22
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 38
    sget-object v3, Lcom/lge/launcher3/badge/BadgeUtils;->sIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_45

    .line 39
    sget-object v3, Lcom/lge/launcher3/badge/BadgeUtils;->sIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 40
    sget-object v3, Lcom/lge/launcher3/badge/BadgeUtils;->sIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 41
    sget-object v3, Lcom/lge/launcher3/badge/BadgeUtils;->sIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v4, v4, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 42
    sget-object v1, Lcom/lge/launcher3/badge/BadgeUtils;->sIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    :cond_45
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static createShortcutBadgeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    sget-object v0, Lcom/lge/launcher3/badge/BadgeUtils;->sShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_a

    .line 53
    sget-object v0, Lcom/lge/launcher3/badge/BadgeUtils;->sShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 74
    :goto_9
    return-object v0

    .line 56
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 58
    const v0, 0x7f02005d

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 59
    if-nez v0, :cond_1b

    move-object v0, v1

    .line 60
    goto :goto_9

    .line 63
    :cond_1b
    const v1, 0x7f090001

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 64
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 65
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 68
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 69
    invoke-virtual {v0, v5, v5, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 70
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/lge/launcher3/badge/BadgeUtils;->sShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 74
    sget-object v0, Lcom/lge/launcher3/badge/BadgeUtils;->sShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_9
.end method

.method public static isChanged(Landroid/graphics/drawable/BitmapDrawable;Z)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 83
    if-eqz p1, :cond_11

    if-nez p0, :cond_11

    move v3, v1

    .line 84
    :goto_7
    if-nez p1, :cond_13

    if-eqz p0, :cond_13

    move v2, v1

    .line 85
    :goto_c
    if-nez v3, :cond_15

    if-nez v2, :cond_15

    :goto_10
    return v0

    :cond_11
    move v3, v0

    .line 83
    goto :goto_7

    :cond_13
    move v2, v0

    .line 84
    goto :goto_c

    :cond_15
    move v0, v1

    .line 85
    goto :goto_10
.end method
