.class public Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils;
.super Ljava/lang/Object;
.source "UninstallBadgeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;
    }
.end annotation


# static fields
.field private static sUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils;->sUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUninstallBadgeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    sget-object v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils;->sUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_a

    .line 30
    sget-object v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils;->sUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 51
    :goto_9
    return-object v0

    .line 33
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 34
    const v0, 0x7f090001

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    .line 36
    const v0, 0x7f020009

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    if-nez v0, :cond_23

    move-object v0, v1

    .line 38
    goto :goto_9

    .line 41
    :cond_23
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 42
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 44
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 45
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 46
    invoke-virtual {v0, v5, v5, v3, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 47
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 50
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils;->sUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 51
    sget-object v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils;->sUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_9
.end method
