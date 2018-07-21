.class public Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "AppNotifierBadgeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;)V
    .registers 4

    .prologue
    .line 20
    invoke-static {p2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->access$0(Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 21
    return-void
.end method
