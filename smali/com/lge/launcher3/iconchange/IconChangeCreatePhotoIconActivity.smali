.class public Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;
.super Landroid/app/Activity;
.source "IconChangeCreatePhotoIconActivity.java"


# static fields
.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String;

.field public static final EXTRA_PHOTO_ICON_PATH:Ljava/lang/String; = "photoIconPath"

.field public static final EXTRA_PHOTO_ICON_THUMBNAIL_PATH:Ljava/lang/String; = "photoIconThumbnailPath"

.field public static final EXTRA_REQUEST_CODE:Ljava/lang/String; = "requestCode"

.field public static final EXTRA_SPAN_X:Ljava/lang/String; = "spanX"

.field public static final EXTRA_SPAN_Y:Ljava/lang/String; = "spanY"

.field private static final INTENT_ACTION_CROP_FROM_GALLERY:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final PHOTO_ICON_PATH:Ljava/lang/String;

.field private static final REQUEST_CODE_CAMERA:I = 0x1

.field private static final REQUEST_CODE_CROP_FROM_GALLERY:I = 0x3

.field private static final REQUEST_CODE_GALLERY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LGIconChangeCreatePhotoIconActivity"

.field private static sSelection:I

.field private static sSmallIconSize:I

.field private static sThumbnailIconLongLength:I


# instance fields
.field private final mDialogFirstFuctionFlow:Z

.field private mPhotoIconHeight:I

.field private mPhotoIconWidth:I

.field private mPhotoUriFromGallery:Landroid/net/Uri;

.field private mRequestCode:I

.field private mResultPhotoIconPath:Ljava/lang/String;

.field private mResultPhotoIconThumbnailPath:Ljava/lang/String;

.field private mSpanX:I

.field private mSpanY:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Home/photoIcons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->PHOTO_ICON_PATH:Ljava/lang/String;

    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->sSelection:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mDialogFirstFuctionFlow:Z

    .line 29
    return-void
.end method

.method private checkPhotoIconStorage()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 191
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->PHOTO_ICON_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 194
    const-string v1, "LGIconChangeCreatePhotoIconActivity"

    const-string v2, "Fail to create photo icon folder"

    new-array v3, v0, [I

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 208
    :goto_1d
    return v0

    .line 200
    :cond_1e
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->PHOTO_ICON_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 203
    const-string v1, "LGIconChangeCreatePhotoIconActivity"

    const-string v2, "Fail to create nomedia file"

    new-array v3, v0, [I

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_1d

    .line 208
    :cond_4e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    return-object v0
.end method

.method private getCropFromGalleryIntent(Landroid/net/Uri;II)Landroid/content/Intent;
    .registers 8

    .prologue
    .line 279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v1, "output"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mResultPhotoIconPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    const-string v1, "outputX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v1, "outputY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "scaleUpIfNeeded"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    return-object v0
.end method

.method private getGalleryIntent(II)Landroid/content/Intent;
    .registers 7

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.gallery3d"

    const-string v3, "com.android.gallery3d.app.Gallery"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 272
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    return-object v0
.end method

.method private makePhotoIconPath()V
    .registers 5

    .prologue
    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->PHOTO_ICON_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "icon_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mResultPhotoIconPath:Ljava/lang/String;

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->PHOTO_ICON_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "icon_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_thumb.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mResultPhotoIconThumbnailPath:Ljava/lang/String;

    .line 215
    return-void
.end method

.method private makeThumbnailFile()Z
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mResultPhotoIconPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/lge/launcher3/util/Utilities;->getBitmapFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 219
    if-nez v6, :cond_15

    .line 220
    const-string v0, "LGIconChangeCreatePhotoIconActivity"

    const-string v1, "Fail to create thumbnail file (Reason: Can\'t get photo icon)"

    new-array v2, v4, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    move v0, v4

    .line 259
    :cond_14
    :goto_14
    return v0

    .line 224
    :cond_15
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 225
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 226
    sget v3, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->sThumbnailIconLongLength:I

    .line 227
    sget v1, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->sThumbnailIconLongLength:I

    .line 228
    if-gt v2, v3, :cond_60

    if-gt v0, v1, :cond_60

    move v1, v2

    .line 238
    :goto_26
    invoke-static {v6, v1, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mResultPhotoIconThumbnailPath:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x0

    .line 243
    :try_start_32
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 244
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3a} :catch_6f

    .line 245
    :try_start_3a
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_89

    move v0, v5

    .line 251
    :goto_42
    if-eqz v1, :cond_14

    .line 253
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_14

    .line 254
    :catch_48
    move-exception v1

    .line 255
    const-string v2, "LGIconChangeCreatePhotoIconActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Fail to close outputstream (Reason: IOException)"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [I

    invoke-static {v2, v1, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_14

    .line 231
    :cond_60
    if-le v2, v0, :cond_66

    .line 232
    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    move v1, v3

    .line 233
    goto :goto_26

    :cond_66
    if-ge v2, v0, :cond_8b

    .line 234
    mul-int/2addr v2, v3

    div-int v0, v2, v0

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_26

    .line 246
    :catch_6f
    move-exception v0

    move-object v1, v2

    .line 247
    :goto_71
    const-string v2, "LGIconChangeCreatePhotoIconActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Fail to create thumbnail file (Reason: IOException)"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [I

    invoke-static {v2, v0, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    move v0, v4

    .line 248
    goto :goto_42

    .line 246
    :catch_89
    move-exception v0

    goto :goto_71

    :cond_8b
    move v0, v1

    move v1, v3

    goto :goto_26
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 143
    const-string v0, "LGIconChangeCreatePhotoIconActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->setResult(ILandroid/content/Intent;)V

    .line 147
    packed-switch p1, :pswitch_data_84

    .line 186
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->finish()V

    .line 187
    :cond_2a
    :goto_2a
    return-void

    .line 150
    :pswitch_2b
    if-ne p2, v3, :cond_27

    .line 151
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mPhotoUriFromGallery:Landroid/net/Uri;

    .line 153
    if-ne p2, v3, :cond_2a

    .line 154
    sget v0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->sSelection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    .line 155
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mPhotoUriFromGallery:Landroid/net/Uri;

    .line 156
    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mPhotoIconWidth:I

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mPhotoIconHeight:I

    .line 155
    invoke-direct {p0, v0, v1, v2}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->getCropFromGalleryIntent(Landroid/net/Uri;II)Landroid/content/Intent;

    move-result-object v0

    .line 158
    :try_start_44
    sget v1, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->sSelection:I

    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_49
    .catch Landroid/content/ActivityNotFoundException; {:try_start_44 .. :try_end_49} :catch_4a

    goto :goto_2a

    .line 160
    :catch_4a
    move-exception v0

    .line 161
    const v0, 0x7f0f001e

    .line 160
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2a

    .line 171
    :pswitch_56
    if-ne p2, v3, :cond_27

    .line 172
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->makeThumbnailFile()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    const-string v1, "photoIconPath"

    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mResultPhotoIconPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "photoIconThumbnailPath"

    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mResultPhotoIconThumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v1, "spanX"

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mSpanX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v1, "spanY"

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mSpanY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v3, v0}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_27

    .line 147
    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2b
        :pswitch_56
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0, v3}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->requestWindowFeature(I)Z

    .line 69
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    const v1, 0x7f0c002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->sThumbnailIconLongLength:I

    .line 71
    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->sSmallIconSize:I

    .line 74
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 75
    const-string v2, "requestCode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mRequestCode:I

    .line 76
    const-string v2, "spanX"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mSpanX:I

    .line 77
    const-string v2, "spanY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mSpanY:I

    .line 80
    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mSpanX:I

    if-lt v1, v3, :cond_48

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mSpanY:I

    if-ge v1, v3, :cond_4c

    .line 81
    :cond_48
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->finish()V

    .line 139
    :goto_4b
    return-void

    .line 86
    :cond_4c
    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mSpanX:I

    if-ne v1, v3, :cond_66

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mSpanY:I

    if-ne v1, v3, :cond_66

    .line 87
    sget v0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->sSmallIconSize:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mPhotoIconWidth:I

    .line 88
    sget v0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->sSmallIconSize:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mPhotoIconHeight:I

    .line 100
    :goto_5c
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->checkPhotoIconStorage()Z

    move-result v0

    if-nez v0, :cond_95

    .line 101
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->finish()V

    goto :goto_4b

    .line 91
    :cond_66
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 92
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 94
    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mSpanX:I

    .line 95
    const v3, 0x7f0900c3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    .line 94
    iput v2, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mPhotoIconWidth:I

    .line 96
    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mSpanY:I

    .line 97
    const v3, 0x7f0900c2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 96
    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mPhotoIconHeight:I

    goto :goto_5c

    .line 104
    :cond_95
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->makePhotoIconPath()V

    .line 106
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mPhotoIconWidth:I

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->mPhotoIconHeight:I

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->getGalleryIntent(II)Landroid/content/Intent;

    move-result-object v0

    .line 107
    const/4 v1, 0x3

    sput v1, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->sSelection:I

    .line 108
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4b
.end method
