.class public final Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;
.super Ljava/lang/Object;
.source "LGWallpaperManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LGWallpaperItem"
.end annotation


# instance fields
.field public bitmapDrawableRes:Landroid/graphics/Bitmap;

.field public bitmapDrawableThumbRes:Landroid/graphics/Bitmap;

.field displayLabel:Ljava/lang/CharSequence;

.field public isExternalItem:Z

.field public mDrawableImage:Landroid/graphics/drawable/Drawable;

.field public mPackageName:Ljava/lang/String;

.field public mThumbDrawableImage:Landroid/graphics/drawable/Drawable;

.field public resImage:I

.field public resThumb:I

.field final synthetic this$0:Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;Ljava/lang/CharSequence;IILjava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 200
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->this$0:Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-boolean v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->isExternalItem:Z

    .line 185
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    .line 186
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableThumbRes:Landroid/graphics/Bitmap;

    .line 201
    iput-object p2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->displayLabel:Ljava/lang/CharSequence;

    .line 202
    iput p3, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resThumb:I

    .line 203
    iput p4, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    .line 204
    iput-boolean v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->isExternalItem:Z

    .line 205
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    .line 206
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableThumbRes:Landroid/graphics/Bitmap;

    .line 207
    iput-object p5, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->mPackageName:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->mThumbDrawableImage:Landroid/graphics/drawable/Drawable;

    .line 209
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->mDrawableImage:Landroid/graphics/drawable/Drawable;

    .line 210
    return-void
.end method

.method public constructor <init>(Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 188
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->this$0:Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->isExternalItem:Z

    .line 185
    iput-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    .line 186
    iput-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableThumbRes:Landroid/graphics/Bitmap;

    .line 189
    iput-object p2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->displayLabel:Ljava/lang/CharSequence;

    .line 190
    iput v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resThumb:I

    .line 191
    iput v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->isExternalItem:Z

    .line 193
    iput-object p4, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    .line 194
    iput-object p3, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableThumbRes:Landroid/graphics/Bitmap;

    .line 195
    iput-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->mThumbDrawableImage:Landroid/graphics/drawable/Drawable;

    .line 196
    iput-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->mDrawableImage:Landroid/graphics/drawable/Drawable;

    .line 197
    return-void
.end method


# virtual methods
.method public destoryItem()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 214
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    iput-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    .line 217
    :cond_c
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableThumbRes:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    .line 218
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableThumbRes:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    iput-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableThumbRes:Landroid/graphics/Bitmap;

    .line 221
    :cond_17
    return-void
.end method
