.class public Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 243
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 244
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 245
    return-void
.end method

.method private findWallpaperSize(I)V
    .registers 6

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    iget-object v0, v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 335
    :goto_e
    return-void

    .line 321
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    .line 322
    iget-boolean v2, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->isExternalItem:Z

    if-nez v2, :cond_8

    .line 323
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-static {v2, v0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$3(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;)Landroid/content/Context;

    move-result-object v2

    .line 324
    if-eqz v2, :cond_8

    .line 325
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 326
    iget v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resThumb:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_8

    .line 328
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$4(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;I)V

    .line 329
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$5(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;I)V

    goto :goto_e
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    iget-object v0, v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 259
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    const v5, 0x7f0f00d4

    .line 266
    if-nez p2, :cond_f

    .line 267
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 272
    :cond_f
    const v0, 0x7f0e00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 273
    if-nez v0, :cond_1b

    .line 317
    :cond_1a
    :goto_1a
    return-object p2

    .line 276
    :cond_1b
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$0(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "color_accent_ui"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/DDTUtils;->getLGEColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 277
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 278
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    iget-object v1, v1, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    .line 280
    iget-boolean v2, v1, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->isExternalItem:Z

    if-eqz v2, :cond_9a

    .line 281
    if-eqz v0, :cond_1a

    .line 282
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-static {v2}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$1(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)I

    move-result v2

    if-nez v2, :cond_4f

    .line 283
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->findWallpaperSize(I)V

    .line 286
    :cond_4f
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-static {v2}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$1(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)I

    move-result v2

    if-lez v2, :cond_6b

    .line 287
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    iget-object v3, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-static {v3}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$1(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-static {v4}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$2(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_6b
    iget-object v2, v1, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableThumbRes:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_74

    .line 291
    iget-object v1, v1, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableThumbRes:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 295
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-static {v2}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$0(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object p2, v0

    .line 297
    goto :goto_1a

    .line 300
    :cond_9a
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-static {v2, v1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$3(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;)Landroid/content/Context;

    move-result-object v2

    .line 301
    if-eqz v2, :cond_1a

    .line 302
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resThumb:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 304
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-static {v4}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$0(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 306
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 308
    if-eqz v2, :cond_db

    .line 309
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto/16 :goto_1a

    .line 311
    :cond_db
    const-string v0, "Launcher.WallpaperChooserDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error decoding thumbnail resId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resThumb:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    const-string v2, " for wallpaper #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a
.end method
