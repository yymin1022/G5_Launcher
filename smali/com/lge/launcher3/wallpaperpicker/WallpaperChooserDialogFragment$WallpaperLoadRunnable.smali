.class public Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;
.super Ljava/lang/Object;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperLoadRunnable"
.end annotation


# instance fields
.field private mPosition:I

.field final synthetic this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;I)V
    .registers 3

    .prologue
    .line 358
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput p2, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;->mPosition:I

    .line 360
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    iget-object v0, v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    iget-object v0, v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_11

    .line 381
    :cond_10
    :goto_10
    return-void

    .line 367
    :cond_11
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    iget-object v0, v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    iget v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    .line 368
    iget-boolean v1, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->isExternalItem:Z

    if-eqz v1, :cond_2d

    .line 369
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$6(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_10

    .line 371
    :cond_2d
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-static {v1, v0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$3(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;)Landroid/content/Context;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_10

    .line 373
    const-string v2, "com.lge.launcher2.theme.optimus"

    iget-object v3, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 374
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$6(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10

    .line 377
    :cond_53
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$6(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10
.end method
