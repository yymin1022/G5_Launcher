.class public final Lcom/lge/launcher3/util/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final APP_LARGE_FACTOR:F = 1.2f

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconTextureHeight:I

.field private static sIconTextureWidth:I

.field private static sIconWidth:I

.field static sLoc0:[I

.field static sLoc1:[I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, -0x1

    .line 57
    sput v0, Lcom/lge/launcher3/util/Utilities;->sIconWidth:I

    .line 58
    sput v0, Lcom/lge/launcher3/util/Utilities;->sIconHeight:I

    .line 59
    sput v0, Lcom/lge/launcher3/util/Utilities;->sIconTextureWidth:I

    .line 60
    sput v0, Lcom/lge/launcher3/util/Utilities;->sIconTextureHeight:I

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 72
    sget-object v0, Lcom/lge/launcher3/util/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/lge/launcher3/util/Utilities;->sColors:[I

    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/lge/launcher3/util/Utilities;->sColorIndex:I

    .line 77
    new-array v0, v3, [I

    sput-object v0, Lcom/lge/launcher3/util/Utilities;->sLoc0:[I

    .line 78
    new-array v0, v3, [I

    sput-object v0, Lcom/lge/launcher3/util/Utilities;->sLoc1:[I

    return-void

    .line 74
    nop

    :array_54
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConstructorFastBitmapDrawable(Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 110
    sget-object v5, Lcom/lge/launcher3/util/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v5

    .line 111
    :try_start_4
    sget v1, Lcom/lge/launcher3/util/Utilities;->sIconWidth:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_c

    .line 112
    invoke-static {p1}, Lcom/lge/launcher3/util/Utilities;->initStatics(Landroid/content/Context;)V

    .line 115
    :cond_c
    sget v4, Lcom/lge/launcher3/util/Utilities;->sIconWidth:I

    .line 116
    sget v3, Lcom/lge/launcher3/util/Utilities;->sIconHeight:I

    .line 118
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_64

    .line 119
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v1, v0

    .line 120
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 121
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 130
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 133
    if-lez v1, :cond_33

    if-lez v6, :cond_33

    .line 134
    int-to-float v7, v1

    int-to-float v8, v6

    div-float/2addr v7, v8

    .line 135
    if-le v1, v6, :cond_85

    .line 136
    int-to-float v1, v4

    div-float/2addr v1, v7

    float-to-int v1, v1

    move v3, v1

    .line 143
    :cond_33
    :goto_33
    sget v6, Lcom/lge/launcher3/util/Utilities;->sIconTextureWidth:I

    .line 144
    sget v7, Lcom/lge/launcher3/util/Utilities;->sIconTextureHeight:I
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_82

    .line 149
    :try_start_37
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 148
    invoke-static {v6, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 150
    sget-object v8, Lcom/lge/launcher3/util/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 151
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    .line 154
    sub-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x2

    .line 156
    sget-object v9, Lcom/lge/launcher3/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 157
    add-int/2addr v4, v6

    add-int/2addr v3, v7

    invoke-virtual {p0, v6, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    invoke-virtual {p0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 159
    sget-object v3, Lcom/lge/launcher3/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 160
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_62} :catch_8c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_37 .. :try_end_62} :catch_93
    .catchall {:try_start_37 .. :try_end_62} :catchall_82

    .line 162
    :try_start_62
    monitor-exit v5

    .line 168
    :goto_63
    return-object v1

    .line 122
    :cond_64
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1e

    .line 124
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    .line 125
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 126
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v6

    if-nez v6, :cond_1e

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_1e

    .line 110
    :catchall_82
    move-exception v1

    monitor-exit v5
    :try_end_84
    .catchall {:try_start_62 .. :try_end_84} :catchall_82

    throw v1

    .line 137
    :cond_85
    if-le v6, v1, :cond_33

    .line 138
    int-to-float v1, v3

    mul-float/2addr v1, v7

    float-to-int v1, v1

    move v4, v1

    goto :goto_33

    .line 163
    :catch_8c
    move-exception v1

    .line 164
    :try_start_8d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    :goto_90
    monitor-exit v5

    move-object v1, v2

    goto :goto_63

    .line 165
    :catch_93
    move-exception v1

    .line 166
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_82

    goto :goto_90
.end method

.method public static findApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 282
    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 286
    :goto_8
    return-object v0

    .line 284
    :catch_9
    move-exception v0

    const-string v0, "findApk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find resources for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .registers 4

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 246
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 248
    :try_start_10
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 249
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 250
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 251
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_20} :catch_22

    move-result-object v0

    .line 254
    :goto_21
    return-object v0

    .line 253
    :catch_22
    move-exception v0

    const-string v0, "Favorite"

    const-string v1, "Could not write icon"

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 254
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static getBitmapFromFile(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 198
    const/4 v0, 0x0

    .line 200
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_29

    move-result-object v0

    .line 207
    :goto_a
    return-object v0

    .line 202
    :catch_b
    move-exception v1

    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to load bitmap "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Reason: FileNotFoundException)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [I

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_a

    .line 204
    :catch_29
    move-exception v1

    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to load bitmap "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  (Reason: IOException)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [I

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_a
.end method

.method public static getBitmapFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 194
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lge/launcher3/util/Utilities;->getBitmapFromFile(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static hasDeviceOwner(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 260
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 259
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 261
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private static initStatics(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 176
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 178
    const v2, 0x7f090019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/lge/launcher3/util/Utilities;->sIconHeight:I

    sput v0, Lcom/lge/launcher3/util/Utilities;->sIconWidth:I

    .line 179
    sget v0, Lcom/lge/launcher3/util/Utilities;->sIconWidth:I

    sput v0, Lcom/lge/launcher3/util/Utilities;->sIconTextureHeight:I

    sput v0, Lcom/lge/launcher3/util/Utilities;->sIconTextureWidth:I

    .line 181
    sget-object v0, Lcom/lge/launcher3/util/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v1, v3

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 182
    sget-object v0, Lcom/lge/launcher3/util/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v1, -0x3d00

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    sget-object v0, Lcom/lge/launcher3/util/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v4, v5}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 184
    sget-object v0, Lcom/lge/launcher3/util/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v1, -0x7200

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    sget-object v0, Lcom/lge/launcher3/util/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v4, v5}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 187
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 188
    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 189
    sget-object v1, Lcom/lge/launcher3/util/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 190
    sget-object v0, Lcom/lge/launcher3/util/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 191
    return-void
.end method

.method public static loadBitmapFromView(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 265
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 267
    if-eqz p1, :cond_1d

    .line 268
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 269
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 268
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 273
    :cond_1d
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 276
    return-object v0
.end method

.method public static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 227
    sget-object v1, Lcom/lge/launcher3/util/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 228
    if-nez p0, :cond_8

    .line 229
    :try_start_5
    monitor-exit v1

    const/4 p0, 0x0

    .line 238
    :goto_7
    return-object p0

    .line 231
    :cond_8
    sget v0, Lcom/lge/launcher3/util/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_10

    .line 232
    invoke-static {p1}, Lcom/lge/launcher3/util/Utilities;->initStatics(Landroid/content/Context;)V

    .line 235
    :cond_10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/lge/launcher3/util/Utilities;->sIconWidth:I

    if-ne v0, v2, :cond_25

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v2, Lcom/lge/launcher3/util/Utilities;->sIconHeight:I

    if-ne v0, v2, :cond_25

    .line 236
    monitor-exit v1

    goto :goto_7

    .line 227
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v0

    .line 238
    :cond_25
    :try_start_25
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, p1}, Lcom/lge/launcher3/util/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_22

    goto :goto_7
.end method

.method public static scaleBitmapDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 81
    if-eqz p1, :cond_6

    if-nez p0, :cond_7

    .line 103
    :cond_6
    :goto_6
    return-object v0

    .line 85
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    .line 86
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 85
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 87
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    .line 92
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    .line 94
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 95
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 97
    float-to-int v2, p2

    float-to-int v3, p3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_6

    .line 103
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method
