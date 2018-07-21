.class public Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;
.super Ljava/lang/Object;
.source "LGWallpaperManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;,
        Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$WallpaperComparator;
    }
.end annotation


# static fields
.field private static final CARRIER_WALLPAPERS_XML:I = 0x7f07000a

.field private static final CHAR_TYPE_ENGLISH:I = 0x5

.field private static final CHAR_TYPE_JAPANESE:I = 0x4

.field private static final CHAR_TYPE_KOREAN:I = 0x3

.field private static final CHAR_TYPE_NUMBER:I = 0x2

.field private static final CHAR_TYPE_OTHER:I = 0x6

.field private static final CHAR_TYPE_SYMBOL:I = 0x1

.field private static final COLLATOR:Ljava/text/Collator;

.field private static final ITEM_TAG:Ljava/lang/String; = "item"

.field private static final NETWORK_CODE_TAG:Ljava/lang/String; = "networkcode"

.field private static final TAG:Ljava/lang/String; = "LGWallpaperManagerUtil"

.field private static final WALLPAPER_NAME_TAG:Ljava/lang/String; = "wallpapername"

.field private static sIsJapanese:Z

.field private static sIsKorean:Z


# instance fields
.field final carrierPatitionWallpaperPath:Ljava/lang/String;

.field final carrierWallpaper_ThumbnailPath:Ljava/lang/String;

.field final carrierWallpaper_datapath:Ljava/lang/String;

.field final deviceColorWallpaperNamePrefix:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorWallpaperTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPm:Landroid/content/pm/PackageManager;

.field public mUseCarrierWallpaper:Z

.field protected mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 71
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->sIsKorean:Z

    .line 72
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->sIsJapanese:Z

    .line 173
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->COLLATOR:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    const-string v1, "/data/com.lge.launcher3/files/carrier_default_wallpaper.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->carrierWallpaper_datapath:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    const-string v1, "/data/com.lge.launcher3/files/carrier_default_wallpaper_small.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->carrierWallpaper_ThumbnailPath:Ljava/lang/String;

    .line 60
    const-string v0, "/carrier/media/default_wallpaper.jpg"

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->carrierPatitionWallpaperPath:Ljava/lang/String;

    .line 61
    const-string v0, "device_color_wallpaper_"

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->deviceColorWallpaperNamePrefix:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mUseCarrierWallpaper:Z

    .line 74
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mOperatorWallpaperTable:Ljava/util/LinkedHashMap;

    .line 224
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    .line 226
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 233
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mList:Ljava/util/List;

    .line 235
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 236
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mPm:Landroid/content/pm/PackageManager;

    .line 238
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->findWallpapers()V

    .line 239
    return-void
.end method

.method private LGWallpaperCarrierCodeResolver()V
    .registers 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_d

    .line 949
    :cond_c
    :goto_c
    return-void

    .line 948
    :cond_d
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->parseXml(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mOperatorWallpaperTable:Ljava/util/LinkedHashMap;

    goto :goto_c
.end method

.method private SafeDecodeBitmapFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 622
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 624
    const/4 v0, 0x0

    .line 642
    :goto_e
    return-object v0

    .line 627
    :cond_f
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 628
    iput-boolean v9, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 629
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 630
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v1, v2

    mul-int v2, p2, p2

    if-lt v1, v2, :cond_47

    .line 631
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 633
    int-to-double v4, p2

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 634
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    .line 633
    div-double/2addr v4, v6

    .line 632
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    int-to-double v4, v1

    .line 631
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 636
    :cond_47
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 637
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 638
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 639
    iput-boolean v9, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 640
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 641
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_e
.end method

.method private SafeDecodeBitmapFileSampleSize(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 646
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 648
    const/4 v0, 0x0

    .line 658
    :goto_d
    return-object v0

    .line 650
    :cond_e
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 651
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 652
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 653
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 654
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 655
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 656
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 657
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_d
.end method

.method private SaveBackgroundBitmap2ThumbnailFile(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .registers 12

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 566
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 617
    :cond_e
    :goto_e
    return-object v0

    .line 571
    :cond_f
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 573
    :cond_20
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 574
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 575
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 576
    iput p3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 577
    iput p3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 578
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 579
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 580
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 581
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 582
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 583
    if-eqz v2, :cond_a2

    .line 585
    if-eqz p4, :cond_47

    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->isSystemWallpaperExist()Z

    move-result v1

    if-nez v1, :cond_e

    .line 586
    :cond_47
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 590
    :try_start_4d
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 591
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_55} :catch_6e

    .line 592
    :try_start_55
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v0, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 593
    const-string v0, "LGWallpaperManagerUtil"

    const-string v5, "make a carrier wallpaper thumbnail success"

    invoke-static {v0, v5}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_63} :catch_a0

    move-object v0, v2

    .line 604
    :goto_64
    if-eqz v1, :cond_69

    .line 605
    :try_start_66
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_85

    .line 608
    :cond_69
    if-eqz v3, :cond_6b

    .line 611
    :cond_6b
    if-eqz v4, :cond_e

    goto :goto_e

    .line 594
    :catch_6e
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 595
    :goto_72
    const-string v5, "LGWallpaperManagerUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 598
    goto :goto_64

    .line 600
    :cond_7d
    invoke-direct {p0, p2, v2}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->SafeDecodeBitmapFileSampleSize(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_64

    .line 614
    :catch_85
    move-exception v1

    .line 615
    const-string v2, "LGWallpaperManagerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "thumbnailFile close:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 594
    :catch_a0
    move-exception v0

    goto :goto_72

    :cond_a2
    move-object v1, v0

    move-object v0, v2

    goto :goto_64
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->sIsKorean:Z

    return v0
.end method

.method static synthetic access$1()Z
    .registers 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->sIsJapanese:Z

    return v0
.end method

.method static synthetic access$2()Ljava/text/Collator;
    .registers 1

    .prologue
    .line 173
    sget-object v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->COLLATOR:Ljava/text/Collator;

    return-object v0
.end method

.method private addCarrierPartitionWallpaper()V
    .registers 6

    .prologue
    .line 665
    const-string v0, "/carrier/media/default_wallpaper.jpg"

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->getBitmapWallpaperFromCarrierPartition(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 666
    const-string v1, "/carrier/media/default_wallpaper.jpg"

    .line 667
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->carrierWallpaper_ThumbnailPath:Ljava/lang/String;

    const/16 v3, 0xd2

    const/4 v4, 0x0

    .line 666
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->SaveBackgroundBitmap2ThumbnailFile(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 669
    if-eqz v0, :cond_24

    if-eqz v1, :cond_24

    .line 670
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mList:Ljava/util/List;

    new-instance v3, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    const-string v4, "carrier_wallpaper"

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;-><init>(Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mUseCarrierWallpaper:Z

    .line 673
    :cond_24
    return-void
.end method

.method private addCarrierWallpapers()V
    .registers 6

    .prologue
    .line 500
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->carrierWallpaper_datapath:Ljava/lang/String;

    const/16 v1, 0x958

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->saveBackgroundBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->carrierWallpaper_datapath:Ljava/lang/String;

    .line 502
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->carrierWallpaper_ThumbnailPath:Ljava/lang/String;

    const/16 v3, 0xd2

    const/4 v4, 0x1

    .line 501
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->SaveBackgroundBitmap2ThumbnailFile(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 504
    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    .line 505
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mList:Ljava/util/List;

    new-instance v3, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    const-string v4, "carrier_wallpaper"

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;-><init>(Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_23
    return-void
.end method

.method private addDeviceColorWallpapers()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 758
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGOptimusThemeResources;

    move-result-object v0

    .line 759
    const-string v1, "lg_device_color_list"

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 761
    const-string v0, "ro.lge.device_color"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 762
    const-string v0, "LGWallpaperManagerUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "addDeviceColorWallpapers : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    if-eqz v8, :cond_2c

    if-nez v7, :cond_34

    .line 767
    :cond_2c
    const-string v0, "LGWallpaperManagerUtil"

    const-string v1, "addDeviceColorWallpapers : deviceColor is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_33
    return-void

    :cond_34
    move v0, v6

    .line 771
    :goto_35
    array-length v1, v7

    if-lt v0, v1, :cond_a3

    .line 789
    :goto_38
    array-length v0, v7

    if-ge v6, v0, :cond_33

    .line 790
    aget-object v0, v7, v6

    if-eqz v0, :cond_a0

    aget-object v0, v7, v6

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 791
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGOptimusThemeResources;

    move-result-object v0

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "device_color_wallpaper_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 793
    aget-object v3, v7, v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_small"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 792
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 794
    const-string v3, "drawable"

    .line 792
    invoke-virtual {v0, v1, v3}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 795
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGOptimusThemeResources;

    move-result-object v0

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "device_color_wallpaper_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v7, v6

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 797
    const-string v4, "drawable"

    .line 795
    invoke-virtual {v0, v1, v4}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 799
    if-eqz v3, :cond_a0

    if-eqz v4, :cond_a0

    .line 800
    iget-object v9, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mList:Ljava/util/List;

    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    .line 801
    const-string v5, "com.lge.launcher2.theme.optimus"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;-><init>(Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;Ljava/lang/CharSequence;IILjava/lang/String;)V

    .line 800
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    :cond_a0
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 772
    :cond_a3
    aget-object v1, v7, v0

    if-eqz v1, :cond_106

    aget-object v1, v7, v0

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 773
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGOptimusThemeResources;

    move-result-object v1

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "device_color_wallpaper_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_small"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 775
    const-string v4, "drawable"

    .line 773
    invoke-virtual {v1, v3, v4}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 776
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGOptimusThemeResources;

    move-result-object v1

    .line 777
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "device_color_wallpaper_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 778
    const-string v5, "drawable"

    .line 776
    invoke-virtual {v1, v4, v5}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 780
    if-eqz v3, :cond_106

    if-eqz v4, :cond_106

    .line 781
    iget-object v9, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mList:Ljava/util/List;

    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    .line 782
    const-string v5, "com.lge.launcher2.theme.optimus"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;-><init>(Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;Ljava/lang/CharSequence;IILjava/lang/String;)V

    .line 781
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 771
    :cond_106
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_35
.end method

.method private addLGHomeWallpapers()V
    .registers 12

    .prologue
    .line 809
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGOptimusThemeResources;

    move-result-object v7

    .line 810
    const-string v0, "wallpapers"

    invoke-virtual {v7, v0}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 811
    if-nez v8, :cond_f

    .line 825
    :cond_e
    return-void

    .line 814
    :cond_f
    array-length v9, v8

    const/4 v0, 0x0

    move v6, v0

    :goto_12
    if-ge v6, v9, :cond_e

    aget-object v0, v8, v6

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_small"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 816
    const-string v2, "drawable"

    .line 815
    invoke-virtual {v7, v1, v2}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 817
    const-string v1, "drawable"

    invoke-virtual {v7, v0, v1}, Lcom/lge/launcher3/util/LGOptimusThemeResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 818
    if-eqz v3, :cond_e

    .line 819
    iget-object v10, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mList:Ljava/util/List;

    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    const/4 v2, 0x0

    .line 820
    const-string v5, "com.lge.launcher2.theme.optimus"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;-><init>(Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;Ljava/lang/CharSequence;IILjava/lang/String;)V

    .line 819
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_12
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .registers 14

    .prologue
    .line 740
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 741
    if-nez v7, :cond_7

    .line 755
    :cond_6
    return-void

    .line 744
    :cond_7
    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_a
    if-ge v6, v8, :cond_6

    aget-object v0, v7, v6

    .line 745
    const-string v1, "drawable"

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 746
    if-eqz v4, :cond_3e

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_small"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 750
    if-eqz v3, :cond_3e

    .line 751
    iget-object v9, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mList:Ljava/util/List;

    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;-><init>(Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;Ljava/lang/CharSequence;IILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_3e
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_a
.end method

.method private getBitmapWallpaperFromCarrierPartition(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 682
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_12c
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_123
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_11c
    .catchall {:try_start_1 .. :try_end_6} :catchall_115

    .line 683
    :try_start_6
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_131
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_b} :catch_128
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_b} :catch_120
    .catchall {:try_start_6 .. :try_end_b} :catchall_119

    .line 685
    if-eqz v3, :cond_7f

    .line 687
    :try_start_d
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 689
    const/16 v4, 0x5a0

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 690
    const/16 v4, 0x5a0

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 691
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 692
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 693
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 694
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 695
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 696
    const/4 v4, 0x0

    invoke-static {v2, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 697
    if-eqz v0, :cond_34

    .line 698
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 700
    :cond_34
    const/16 v0, 0x5a0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->SafeDecodeBitmapFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_39
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_39} :catch_72
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_39} :catch_b1
    .catchall {:try_start_d .. :try_end_39} :catchall_ed

    move-result-object v0

    .line 707
    if-eqz v3, :cond_3f

    .line 708
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_46
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_3f} :catch_5f
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_3f} :catch_9f
    .catch Ljava/lang/NullPointerException; {:try_start_3c .. :try_end_3f} :catch_db
    .catchall {:try_start_3c .. :try_end_3f} :catchall_f4

    .line 722
    :cond_3f
    :goto_3f
    invoke-static {v3}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->quiteinputStream(Ljava/io/InputStream;)V

    .line 723
    invoke-static {v2}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->quiteinputStream(Ljava/io/InputStream;)V

    .line 726
    :goto_45
    return-object v0

    .line 710
    :catch_46
    move-exception v4

    .line 711
    :try_start_47
    const-string v5, "LGWallpaperManagerUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IOException:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-static {v5, v4, v6}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_5e} :catch_5f
    .catch Ljava/lang/SecurityException; {:try_start_47 .. :try_end_5e} :catch_9f
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_5e} :catch_db
    .catchall {:try_start_47 .. :try_end_5e} :catchall_f4

    goto :goto_3f

    .line 715
    :catch_5f
    move-exception v0

    .line 716
    :goto_60
    :try_start_60
    const-string v4, "LGWallpaperManagerUtil"

    const-string v5, "FileNotFoundException"

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-static {v4, v5, v0, v6}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;[I)V
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_f4

    .line 722
    invoke-static {v3}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->quiteinputStream(Ljava/io/InputStream;)V

    .line 723
    invoke-static {v2}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->quiteinputStream(Ljava/io/InputStream;)V

    :goto_70
    move-object v0, v1

    .line 726
    goto :goto_45

    .line 701
    :catch_72
    move-exception v0

    .line 702
    :try_start_73
    const-string v4, "LGWallpaperManagerUtil"

    const-string v5, "Can\'t decode stream"

    invoke-static {v4, v5, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_ed

    .line 707
    if-eqz v3, :cond_7f

    .line 708
    :try_start_7c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_86
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_7f} :catch_5f
    .catch Ljava/lang/SecurityException; {:try_start_7c .. :try_end_7f} :catch_9f
    .catch Ljava/lang/NullPointerException; {:try_start_7c .. :try_end_7f} :catch_db
    .catchall {:try_start_7c .. :try_end_7f} :catchall_f4

    .line 722
    :cond_7f
    :goto_7f
    invoke-static {v3}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->quiteinputStream(Ljava/io/InputStream;)V

    .line 723
    invoke-static {v2}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_70

    .line 710
    :catch_86
    move-exception v0

    .line 711
    :try_start_87
    const-string v4, "LGWallpaperManagerUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-static {v4, v0, v5}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_9e} :catch_5f
    .catch Ljava/lang/SecurityException; {:try_start_87 .. :try_end_9e} :catch_9f
    .catch Ljava/lang/NullPointerException; {:try_start_87 .. :try_end_9e} :catch_db
    .catchall {:try_start_87 .. :try_end_9e} :catchall_f4

    goto :goto_7f

    .line 717
    :catch_9f
    move-exception v0

    .line 718
    :goto_a0
    :try_start_a0
    const-string v4, "LGWallpaperManagerUtil"

    const-string v5, "SecurityException"

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-static {v4, v5, v0, v6}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;[I)V
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_f4

    .line 722
    invoke-static {v3}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->quiteinputStream(Ljava/io/InputStream;)V

    .line 723
    invoke-static {v2}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_70

    .line 703
    :catch_b1
    move-exception v0

    .line 704
    :try_start_b2
    const-string v4, "LGWallpaperManagerUtil"

    const-string v5, "Image Decoding Error"

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-static {v4, v5, v0, v6}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;[I)V
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_ed

    .line 707
    if-eqz v3, :cond_7f

    .line 708
    :try_start_be
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c2
    .catch Ljava/io/FileNotFoundException; {:try_start_be .. :try_end_c1} :catch_5f
    .catch Ljava/lang/SecurityException; {:try_start_be .. :try_end_c1} :catch_9f
    .catch Ljava/lang/NullPointerException; {:try_start_be .. :try_end_c1} :catch_db
    .catchall {:try_start_be .. :try_end_c1} :catchall_f4

    goto :goto_7f

    .line 710
    :catch_c2
    move-exception v0

    .line 711
    :try_start_c3
    const-string v4, "LGWallpaperManagerUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-static {v4, v0, v5}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_da
    .catch Ljava/io/FileNotFoundException; {:try_start_c3 .. :try_end_da} :catch_5f
    .catch Ljava/lang/SecurityException; {:try_start_c3 .. :try_end_da} :catch_9f
    .catch Ljava/lang/NullPointerException; {:try_start_c3 .. :try_end_da} :catch_db
    .catchall {:try_start_c3 .. :try_end_da} :catchall_f4

    goto :goto_7f

    .line 719
    :catch_db
    move-exception v0

    .line 720
    :goto_dc
    :try_start_dc
    const-string v4, "LGWallpaperManagerUtil"

    const-string v5, "Image Decoding Error"

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-static {v4, v5, v0, v6}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;[I)V
    :try_end_e6
    .catchall {:try_start_dc .. :try_end_e6} :catchall_f4

    .line 722
    invoke-static {v3}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->quiteinputStream(Ljava/io/InputStream;)V

    .line 723
    invoke-static {v2}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_70

    .line 705
    :catchall_ed
    move-exception v0

    .line 707
    if-eqz v3, :cond_f3

    .line 708
    :try_start_f0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_fc
    .catch Ljava/io/FileNotFoundException; {:try_start_f0 .. :try_end_f3} :catch_5f
    .catch Ljava/lang/SecurityException; {:try_start_f0 .. :try_end_f3} :catch_9f
    .catch Ljava/lang/NullPointerException; {:try_start_f0 .. :try_end_f3} :catch_db
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_f4

    .line 713
    :cond_f3
    :goto_f3
    :try_start_f3
    throw v0
    :try_end_f4
    .catch Ljava/io/FileNotFoundException; {:try_start_f3 .. :try_end_f4} :catch_5f
    .catch Ljava/lang/SecurityException; {:try_start_f3 .. :try_end_f4} :catch_9f
    .catch Ljava/lang/NullPointerException; {:try_start_f3 .. :try_end_f4} :catch_db
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f4

    .line 721
    :catchall_f4
    move-exception v0

    .line 722
    :goto_f5
    invoke-static {v3}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->quiteinputStream(Ljava/io/InputStream;)V

    .line 723
    invoke-static {v2}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->quiteinputStream(Ljava/io/InputStream;)V

    .line 724
    throw v0

    .line 710
    :catch_fc
    move-exception v4

    .line 711
    :try_start_fd
    const-string v5, "LGWallpaperManagerUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IOException:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-static {v5, v4, v6}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_114
    .catch Ljava/io/FileNotFoundException; {:try_start_fd .. :try_end_114} :catch_5f
    .catch Ljava/lang/SecurityException; {:try_start_fd .. :try_end_114} :catch_9f
    .catch Ljava/lang/NullPointerException; {:try_start_fd .. :try_end_114} :catch_db
    .catchall {:try_start_fd .. :try_end_114} :catchall_f4

    goto :goto_f3

    .line 721
    :catchall_115
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_f5

    :catchall_119
    move-exception v0

    move-object v2, v1

    goto :goto_f5

    .line 719
    :catch_11c
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_dc

    :catch_120
    move-exception v0

    move-object v2, v1

    goto :goto_dc

    .line 717
    :catch_123
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_a0

    :catch_128
    move-exception v0

    move-object v2, v1

    goto/16 :goto_a0

    .line 715
    :catch_12c
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_60

    :catch_131
    move-exception v0

    move-object v2, v1

    goto/16 :goto_60
.end method

.method public static initWallpaperManager(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;",
            ">;"
        }
    .end annotation

    .prologue
    .line 952
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 954
    new-instance v1, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 961
    :try_start_d
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    .line 966
    :goto_10
    return-object v1

    .line 962
    :catch_11
    move-exception v0

    .line 963
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method private isCarrierCodeWallpaperExist()Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 439
    const-string v0, "ro.build.target_operator"

    const-string v3, "OPEN"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 440
    const-string v0, "ACG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "VDF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 441
    const-string v0, "LRA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    move v0, v1

    .line 444
    :goto_23
    const-string v4, "ACG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    const-string v4, "LRA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 446
    :cond_33
    const-string v3, "ro.carrier_code"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 448
    :try_start_3b
    invoke-direct {p0, v3}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->isValidCarrierCode(Ljava/lang/String;)Z
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_3e} :catch_49

    move-result v3

    if-eqz v3, :cond_b4

    move v3, v2

    .line 480
    :goto_42
    if-eqz v3, :cond_b6

    if-eqz v0, :cond_b6

    .line 483
    :goto_46
    return v2

    :cond_47
    move v0, v2

    .line 440
    goto :goto_23

    .line 451
    :catch_49
    move-exception v3

    .line 452
    const-string v4, "LGWallpaperManagerUtil"

    const-string v5, "carrierCode value is not integer"

    invoke-static {v4, v5, v3}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move v3, v1

    .line 454
    goto :goto_42

    :cond_53
    const-string v4, "VDF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 456
    const-string v3, "persist.sys.first-boot"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 457
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7b

    .line 458
    const-string v3, "persist.sys.first-mcc"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 471
    :cond_73
    :goto_73
    :try_start_73
    invoke-direct {p0, v3}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->isValidCarrierCode(Ljava/lang/String;)Z
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_76} :catch_ac

    move-result v3

    if-eqz v3, :cond_b4

    move v3, v2

    .line 474
    goto :goto_42

    .line 460
    :cond_7b
    const-string v3, "persist.sys.mcc-list"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 461
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 462
    const-string v5, "LGWallpaperManagerUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mccList : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/launcher3/util/LGLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    if-ltz v4, :cond_73

    .line 466
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_73

    .line 474
    :catch_ac
    move-exception v3

    .line 475
    const-string v4, "LGWallpaperManagerUtil"

    const-string v5, "operatorCode value is not integer"

    invoke-static {v4, v5, v3}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_b4
    move v3, v1

    goto :goto_42

    :cond_b6
    move v2, v1

    .line 483
    goto :goto_46
.end method

.method private isCarrierWallpaperExist()Z
    .registers 5

    .prologue
    .line 487
    new-instance v0, Ljava/io/File;

    const-string v1, "/carrier/media/default_wallpaper.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 493
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x28

    cmp-long v0, v0, v2

    if-gez v0, :cond_1f

    .line 494
    :cond_1d
    const/4 v0, 0x0

    .line 496
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public static isPackageUninstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 970
    if-eqz p1, :cond_5

    if-nez p0, :cond_d

    .line 971
    :cond_5
    const-string v1, "LGWallpaperManagerUtil"

    const-string v2, "Invalid Parameters"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :goto_c
    return v0

    .line 975
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 978
    const/16 v2, 0x80

    :try_start_13
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_16} :catch_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_1a

    goto :goto_c

    .line 980
    :catch_17
    move-exception v0

    const/4 v0, 0x1

    goto :goto_c

    .line 981
    :catch_1a
    move-exception v1

    .line 982
    const-string v2, "LGWallpaperManagerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isPackageUninstalled exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private isSystemWallpaperExist()Z
    .registers 3

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    const-string v1, "/data/com.android.settings/files/wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 271
    :cond_28
    const/4 v0, 0x0

    .line 273
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x1

    goto :goto_29
.end method

.method private isValidCarrierCode(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 425
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mOperatorWallpaperTable:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_7

    .line 435
    :goto_6
    return v0

    .line 428
    :cond_7
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mOperatorWallpaperTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 429
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mOperatorWallpaperTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v2, v0

    .line 430
    :goto_18
    if-eqz v2, :cond_25

    .line 431
    const-string v0, "LGWallpaperManagerUtil"

    const-string v2, "LinkedMap has same key"

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 432
    goto :goto_6

    :cond_23
    move v2, v1

    .line 428
    goto :goto_18

    .line 434
    :cond_25
    const-string v1, "LGWallpaperManagerUtil"

    const-string v2, "LinkedMap has not the key"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private static parseXml(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 857
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 863
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move v1, v3

    move-object v4, v5

    move-object v6, v5

    .line 865
    :cond_16
    :goto_16
    :try_start_16
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_19} :catch_6d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_76

    move-result v8

    if-ne v8, v2, :cond_27

    .line 901
    :goto_1c
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-gtz v1, :cond_26

    .line 902
    invoke-static {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->parseXmlOnlyItem(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 904
    :cond_26
    return-object v0

    .line 866
    :cond_27
    packed-switch v8, :pswitch_data_80

    goto :goto_16

    .line 868
    :pswitch_2b
    :try_start_2b
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 869
    const-string v9, "item"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    move v1, v2

    .line 872
    :cond_38
    if-eqz v1, :cond_16

    .line 873
    const-string v9, "networkcode"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 874
    const/4 v6, 0x0

    invoke-interface {v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_16

    .line 875
    :cond_48
    const-string v9, "wallpapername"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 876
    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_16

    .line 881
    :pswitch_56
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 882
    const-string v9, "item"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 884
    if-eqz v6, :cond_69

    if-eqz v4, :cond_69

    .line 885
    invoke-virtual {v0, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_69} :catch_6d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_69} :catch_76

    :cond_69
    move v1, v3

    move-object v4, v5

    move-object v6, v5

    .line 890
    goto :goto_16

    .line 895
    :catch_6d
    move-exception v1

    .line 896
    const-string v2, "LGWallpaperManagerUtil"

    const-string v3, "Got exception parsing in carrier wallpaper :"

    invoke-static {v2, v3, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1c

    .line 897
    :catch_76
    move-exception v1

    .line 898
    const-string v2, "LGWallpaperManagerUtil"

    const-string v3, "Got exception I/O parsing in carrier wallpaper :"

    invoke-static {v2, v3, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1c

    .line 866
    nop

    :pswitch_data_80
    .packed-switch 0x2
        :pswitch_2b
        :pswitch_56
    .end packed-switch
.end method

.method private static parseXmlOnlyItem(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 908
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 913
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v3, v1

    move-object v4, v1

    .line 915
    :cond_13
    :goto_13
    :pswitch_13
    :try_start_13
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_16} :catch_48
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_51

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_22

    .line 936
    :goto_1a
    if-eqz v4, :cond_5a

    if-eqz v3, :cond_5a

    .line 937
    invoke-virtual {v0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    :goto_21
    return-object v0

    .line 916
    :cond_22
    packed-switch v2, :pswitch_data_5c

    goto :goto_13

    .line 918
    :pswitch_26
    :try_start_26
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 919
    const-string v6, "networkcode"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 920
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 921
    goto :goto_13

    :cond_39
    const-string v6, "wallpapername"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 922
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_45} :catch_48
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_45} :catch_51

    move-result-object v2

    move-object v3, v2

    .line 924
    goto :goto_13

    .line 931
    :catch_48
    move-exception v2

    .line 932
    const-string v5, "LGWallpaperManagerUtil"

    const-string v6, "Got exception parsing in carrier wallpaper :"

    invoke-static {v5, v6, v2}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1a

    .line 933
    :catch_51
    move-exception v2

    .line 934
    const-string v5, "LGWallpaperManagerUtil"

    const-string v6, "Got exception I/O parsing in carrier wallpaper :"

    invoke-static {v5, v6, v2}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1a

    :cond_5a
    move-object v0, v1

    .line 940
    goto :goto_21

    .line 916
    :pswitch_data_5c
    .packed-switch 0x2
        :pswitch_26
        :pswitch_13
    .end packed-switch
.end method

.method private static quiteinputStream(Ljava/io/InputStream;)V
    .registers 5

    .prologue
    .line 731
    if-eqz p0, :cond_5

    .line 732
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 737
    :cond_5
    :goto_5
    return-void

    .line 734
    :catch_6
    move-exception v0

    .line 735
    const-string v1, "LGWallpaperManagerUtil"

    const-string v2, "quiteinputStream IOException"

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-static {v1, v2, v0, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;[I)V

    goto :goto_5
.end method

.method private saveBackgroundBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 511
    if-nez p1, :cond_6

    move-object v0, v2

    .line 558
    :cond_5
    :goto_5
    return-object v0

    .line 515
    :cond_6
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->isSystemWallpaperExist()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    .line 521
    :goto_12
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 522
    :cond_1e
    if-eqz v0, :cond_6b

    .line 523
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getBuiltInDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 524
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 526
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3a

    move-object v0, v2

    .line 527
    goto :goto_5

    :cond_38
    move v0, v1

    .line 519
    goto :goto_12

    .line 532
    :cond_3a
    :try_start_3a
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 533
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_42} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_42} :catch_5f

    .line 534
    :try_start_42
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v3, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_97
    .catch Ljava/lang/NullPointerException; {:try_start_42 .. :try_end_49} :catch_94

    move-object v0, v3

    move-object v2, v1

    .line 546
    :goto_4b
    if-eqz v2, :cond_50

    .line 547
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_70
    .catchall {:try_start_4d .. :try_end_50} :catchall_90

    .line 554
    :cond_50
    if-eqz v4, :cond_5

    goto :goto_5

    .line 535
    :catch_53
    move-exception v0

    .line 536
    :goto_54
    const-string v1, "LGWallpaperManagerUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_4b

    .line 537
    :catch_5f
    move-exception v0

    .line 538
    :goto_60
    const-string v1, "LGWallpaperManagerUtil"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 540
    goto :goto_4b

    .line 542
    :cond_6b
    invoke-direct {p0, p1, v1}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->SafeDecodeBitmapFileSampleSize(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4b

    .line 550
    :catch_70
    move-exception v1

    .line 551
    :try_start_71
    const-string v2, "LGWallpaperManagerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "wallpaperFile close:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8c
    .catchall {:try_start_71 .. :try_end_8c} :catchall_90

    .line 554
    if-eqz v4, :cond_5

    goto/16 :goto_5

    .line 553
    :catchall_90
    move-exception v0

    .line 554
    if-eqz v4, :cond_93

    .line 557
    :cond_93
    throw v0

    .line 537
    :catch_94
    move-exception v0

    move-object v2, v1

    goto :goto_60

    .line 535
    :catch_97
    move-exception v0

    move-object v2, v1

    goto :goto_54
.end method

.method private showToastSetWallpaper()V
    .registers 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 283
    :goto_4
    return-void

    .line 280
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    const-string v1, "null"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    const v2, 0x7f0f00d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method


# virtual methods
.method protected findWallpapers()V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 327
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 330
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_CARRIER_WALLPAPER_ITEM:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 331
    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    .line 332
    if-eqz v0, :cond_92

    .line 333
    const-string v0, "ro.build.target_operator"

    const-string v3, "OPEN"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 334
    const-string v0, "SPR"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 335
    const-string v0, "BM"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    move v0, v1

    .line 336
    :goto_2f
    const-string v3, "ACG"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 337
    const-string v3, "VDF"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    const-string v3, "LRA"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    move v3, v1

    .line 338
    :goto_48
    if-eqz v3, :cond_4d

    .line 340
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->LGWallpaperCarrierCodeResolver()V

    .line 343
    :cond_4d
    if-nez v0, :cond_51

    if-eqz v3, :cond_92

    .line 346
    :cond_51
    const-string v0, "ro.sprint.hfa.flag"

    const-string v3, "none"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    const-string v3, "activationOK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    move v0, v2

    .line 351
    :goto_62
    const-string v3, "ACG"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "LRA"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 353
    :cond_72
    const-string v3, "ro.carrier_code"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    :try_start_7a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/NumberFormatException; {:try_start_7a .. :try_end_7d} :catch_a9

    move-result v3

    .line 357
    if-lez v3, :cond_85

    const/16 v6, 0x29

    if-ge v3, v6, :cond_85

    move v1, v2

    .line 391
    :cond_85
    :goto_85
    if-nez v0, :cond_89

    if-eqz v1, :cond_92

    .line 392
    :cond_89
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->isCarrierWallpaperExist()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 393
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->addCarrierPartitionWallpaper()V

    .line 415
    :cond_92
    :goto_92
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->addDeviceColorWallpapers()V

    .line 418
    const v0, 0x7f0a000a

    invoke-direct {p0, v4, v5, v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 420
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->addLGHomeWallpapers()V

    .line 421
    const v0, 0x7f0a0009

    invoke-direct {p0, v4, v5, v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 422
    return-void

    :cond_a5
    move v0, v2

    .line 334
    goto :goto_2f

    :cond_a7
    move v3, v2

    .line 336
    goto :goto_48

    .line 360
    :catch_a9
    move-exception v2

    .line 361
    const-string v3, "LGWallpaperManagerUtil"

    const-string v6, "nCarrierCode value is not integer"

    invoke-static {v3, v6, v2}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_85

    .line 363
    :cond_b2
    const-string v3, "VDF"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 366
    const-string v3, "persist.sys.first-boot"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_dc

    .line 368
    const-string v3, "persist.sys.first-mcc"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 382
    :cond_d2
    :goto_d2
    :try_start_d2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/lang/NumberFormatException; {:try_start_d2 .. :try_end_d5} :catch_10d

    move-result v3

    .line 383
    const/16 v6, 0x28f

    if-ne v3, v6, :cond_85

    move v1, v2

    .line 386
    goto :goto_85

    .line 370
    :cond_dc
    const-string v3, "persist.sys.mcc-list"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 372
    const-string v7, "LGWallpaperManagerUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mccList : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , length : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/launcher3/util/LGLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    if-ltz v6, :cond_d2

    .line 376
    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_d2

    .line 386
    :catch_10d
    move-exception v2

    .line 387
    const-string v3, "LGWallpaperManagerUtil"

    const-string v6, "nCarrierCode value is not integer"

    invoke-static {v3, v6, v2}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_85

    .line 394
    :cond_117
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->isCarrierCodeWallpaperExist()Z

    move-result v0

    if-eqz v0, :cond_122

    .line 395
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->addCarrierWallpapers()V

    goto/16 :goto_92

    .line 397
    :cond_122
    const-string v0, "ro.cdma.home.operator.numeric"

    .line 398
    const-string v0, "311870"

    .line 399
    const-string v0, "31012"

    .line 400
    const-string v0, "311490"

    .line 403
    const-string v0, "ro.cdma.home.operator.numeric"

    .line 404
    const-string v1, "111111"

    .line 403
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    const-string v1, "311870"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14a

    .line 406
    const-string v1, "31012"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14a

    .line 407
    const-string v1, "311490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 408
    :cond_14a
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->addCarrierWallpapers()V

    goto/16 :goto_92

    :cond_14f
    move v0, v1

    goto/16 :goto_62
.end method

.method public getCurrentWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v1, :cond_b

    .line 253
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 255
    :cond_b
    return-object v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getwallpaperList(I)Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;
    .registers 3

    .prologue
    .line 833
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    .line 834
    return-object v0
.end method

.method public getwallpaperSize()I
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 829
    return v0
.end method

.method public setWallpaper(I)V
    .registers 7

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 287
    const-string v0, "LGWallpaperManagerUtil"

    const-string v1, "setWallpaper : mContext is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_b
    :goto_b
    return-void

    .line 291
    :cond_c
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 292
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    .line 293
    if-eqz v0, :cond_b

    .line 298
    iget-boolean v2, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->isExternalItem:Z

    if-eqz v2, :cond_44

    .line 299
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2e

    .line 300
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperSwitchUtil;->changeWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    goto :goto_b

    .line 303
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    iget-object v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 304
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->showToastSetWallpaper()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3e} :catch_3f

    goto :goto_b

    .line 305
    :catch_3f
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 312
    :cond_44
    iget v1, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    if-eqz v1, :cond_b

    .line 313
    const/4 v1, 0x0

    .line 315
    :try_start_49
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->mPackageName:Ljava/lang/String;

    .line 316
    const/4 v4, 0x2

    .line 315
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_51
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_51} :catch_58

    move-result-object v1

    .line 320
    :goto_52
    iget v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    invoke-static {v1, v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperSwitchUtil;->changeWallpaper(Landroid/content/Context;I)V

    goto :goto_b

    .line 318
    :catch_58
    move-exception v2

    const-string v2, "LGWallpaperManagerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "packageName : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52
.end method
