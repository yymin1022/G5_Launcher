.class public final Lcom/android/launcher3/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final ALLOW_ROTATION_PREFERENCE_KEY:Ljava/lang/String; = "pref_allowRotation"

.field public static final ATLEAST_JB_MR1:Z

.field public static final ATLEAST_JB_MR2:Z

.field public static final ATLEAST_KITKAT:Z

.field public static final ATLEAST_LOLLIPOP:Z

.field public static final ATLEAST_LOLLIPOP_MR1:Z

.field public static final ATLEAST_MARSHMALLOW:Z

.field private static final FORCE_ENABLE_ROTATION_PROPERTY:Ljava/lang/String; = "launcher_force_rotate"

.field private static final TAG:Ljava/lang/String; = "Launcher.Utilities"

.field public static final USED_FOLDER_RTOL:Z = true

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static sForceEnableRotation:Z

.field private static final sLoc0:[I

.field private static final sLoc1:[I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sTrimPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 80
    const-string v0, "^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 79
    sput-object v0, Lcom/android/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    .line 83
    sget-object v0, Lcom/android/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x4

    .line 84
    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 83
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_80

    sput-object v0, Lcom/android/launcher3/Utilities;->sColors:[I

    .line 87
    sput v2, Lcom/android/launcher3/Utilities;->sColorIndex:I

    .line 89
    new-array v0, v5, [I

    sput-object v0, Lcom/android/launcher3/Utilities;->sLoc0:[I

    .line 90
    new-array v0, v5, [I

    sput-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_74

    move v0, v1

    :goto_3d
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v0, v3, :cond_76

    move v0, v1

    .line 95
    :goto_46
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP_MR1:Z

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_78

    move v0, v1

    .line 98
    :goto_4f
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_7a

    move v0, v1

    .line 101
    :goto_58
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_KITKAT:Z

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_7c

    move v0, v1

    .line 104
    :goto_61
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_7e

    .line 107
    :goto_69
    sput-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_JB_MR2:Z

    .line 115
    const-string v0, "launcher_force_rotate"

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/Utilities;->sForceEnableRotation:Z

    .line 117
    return-void

    :cond_74
    move v0, v2

    .line 93
    goto :goto_3d

    :cond_76
    move v0, v2

    .line 96
    goto :goto_46

    :cond_78
    move v0, v2

    .line 99
    goto :goto_4f

    :cond_7a
    move v0, v2

    .line 102
    goto :goto_58

    :cond_7c
    move v0, v2

    .line 105
    goto :goto_61

    :cond_7e
    move v1, v2

    .line 108
    goto :goto_69

    .line 86
    :array_80
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajc$privMethod$com_lge_launcher3_nativejoin_LauncherAspect$com_android_launcher3_Utilities$isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static assertWorkerThread()V
    .registers 2

    .prologue
    .line 697
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 698
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-eq v0, v1, :cond_18

    .line 699
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 701
    :cond_18
    return-void
.end method

.method public static calculateTextHeight(F)F
    .registers 3

    .prologue
    .line 665
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 666
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 667
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 668
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v1, v1

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    return v0
.end method

.method public static createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 744
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s IN (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, ", "

    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 165
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 167
    const/4 v1, 0x0

    :try_start_5
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_f

    move-result-object v0

    .line 169
    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 203
    invoke-static {}, Lcom/android/launcher3/Utilities;->getIconBitmapSize()I

    move-result v0

    .line 204
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 207
    :goto_10
    return-object p0

    :cond_11
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, p1}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_10
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 12

    .prologue
    .line 214
    sget-object v4, Lcom/android/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v4

    .line 215
    :try_start_3
    invoke-static {}, Lcom/android/launcher3/Utilities;->getIconBitmapSize()I

    move-result v2

    .line 220
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_58

    .line 221
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v1, v0

    .line 222
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 223
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 232
    :cond_15
    :goto_15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 233
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 234
    if-lez v1, :cond_81

    if-lez v3, :cond_81

    .line 236
    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 237
    if-le v1, v3, :cond_79

    .line 238
    int-to-float v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    move v3, v2

    .line 249
    :goto_2a
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 248
    invoke-static {v2, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 250
    sget-object v6, Lcom/android/launcher3/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 251
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    sub-int v7, v2, v3

    div-int/lit8 v7, v7, 0x2

    .line 254
    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 267
    sget-object v8, Lcom/android/launcher3/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 268
    add-int/2addr v3, v7

    add-int/2addr v1, v2

    invoke-virtual {p0, v7, v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 269
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 270
    sget-object v1, Lcom/android/launcher3/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 271
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    monitor-exit v4

    return-object v5

    .line 224
    :cond_58
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_15

    .line 226
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    .line 227
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 228
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_15

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_15

    .line 214
    :catchall_76
    move-exception v1

    monitor-exit v4
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw v1

    .line 239
    :cond_79
    if-le v3, v1, :cond_81

    .line 240
    int-to-float v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    move v3, v1

    move v1, v2

    goto :goto_2a

    :cond_81
    move v1, v2

    move v3, v2

    goto :goto_2a
.end method

.method public static createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 182
    :try_start_5
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_23

    .line 184
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 186
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    .line 187
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 186
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 185
    invoke-static {v1, p2}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_24

    move-result-object v0

    .line 192
    :cond_23
    :goto_23
    return-object v0

    :catch_24
    move-exception v1

    goto :goto_23
.end method

.method public static dpiFromPx(ILandroid/util/DisplayMetrics;)F
    .registers 4

    .prologue
    .line 731
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 732
    int-to-float v1, p0

    div-float v0, v1, v0

    return v0
.end method

.method static findDominantColorByHue(Landroid/graphics/Bitmap;I)I
    .registers 20

    .prologue
    .line 457
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 459
    mul-int v2, v11, v12

    div-int v2, v2, p1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 460
    const/4 v3, 0x1

    if-ge v2, v3, :cond_d6

    .line 461
    const/4 v2, 0x1

    move v3, v2

    .line 465
    :goto_17
    const/4 v2, 0x3

    new-array v13, v2, [F

    .line 469
    const/16 v2, 0x168

    new-array v8, v2, [F

    .line 470
    const/high16 v5, -0x40800000    # -1.0f

    .line 471
    const/4 v10, -0x1

    .line 473
    const/4 v2, 0x0

    move v7, v2

    :goto_23
    if-lt v7, v11, :cond_33

    .line 499
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 500
    const/high16 v6, -0x1000000

    .line 501
    const/high16 v7, -0x40800000    # -1.0f

    .line 505
    const/4 v2, 0x0

    move v9, v2

    :goto_30
    if-lt v9, v11, :cond_7c

    .line 527
    return v6

    .line 474
    :cond_33
    const/4 v2, 0x0

    move v6, v2

    move v2, v10

    :goto_36
    if-lt v6, v12, :cond_3d

    .line 473
    add-int v4, v7, v3

    move v7, v4

    move v10, v2

    goto :goto_23

    .line 475
    :cond_3d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 476
    shr-int/lit8 v9, v4, 0x18

    and-int/lit16 v9, v9, 0xff

    .line 477
    const/16 v10, 0x80

    if-ge v9, v10, :cond_51

    move v4, v5

    .line 474
    :goto_4c
    add-int v5, v6, v3

    move v6, v5

    move v5, v4

    goto :goto_36

    .line 482
    :cond_51
    const/high16 v9, -0x1000000

    or-int/2addr v4, v9

    .line 483
    invoke-static {v4, v13}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 485
    const/4 v4, 0x0

    aget v4, v13, v4

    float-to-int v4, v4

    .line 486
    if-ltz v4, :cond_d3

    array-length v9, v8

    if-lt v4, v9, :cond_62

    move v4, v5

    .line 488
    goto :goto_4c

    .line 490
    :cond_62
    const/4 v9, 0x1

    aget v9, v13, v9

    const/4 v10, 0x2

    aget v10, v13, v10

    mul-float/2addr v9, v10

    .line 491
    aget v10, v8, v4

    add-float/2addr v9, v10

    aput v9, v8, v4

    .line 492
    aget v9, v8, v4

    cmpl-float v9, v9, v5

    if-lez v9, :cond_d3

    .line 493
    aget v2, v8, v4

    move/from16 v17, v4

    move v4, v2

    move/from16 v2, v17

    .line 494
    goto :goto_4c

    .line 506
    :cond_7c
    const/4 v2, 0x0

    move v8, v2

    :goto_7e
    if-lt v8, v12, :cond_84

    .line 505
    add-int v2, v9, v3

    move v9, v2

    goto :goto_30

    .line 507
    :cond_84
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    const/high16 v4, -0x1000000

    or-int v5, v2, v4

    .line 508
    invoke-static {v5, v13}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 509
    const/4 v2, 0x0

    aget v2, v13, v2

    float-to-int v2, v2

    .line 510
    if-ne v2, v10, :cond_d0

    .line 511
    const/4 v2, 0x1

    aget v2, v13, v2

    .line 512
    const/4 v4, 0x2

    aget v4, v13, v4

    .line 513
    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v15, v2

    float-to-int v15, v15

    const v16, 0x461c4000    # 10000.0f

    mul-float v16, v16, v4

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    .line 515
    mul-float/2addr v4, v2

    .line 516
    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 517
    if-nez v2, :cond_ca

    move v2, v4

    .line 518
    :goto_b7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v14, v15, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 519
    cmpl-float v4, v2, v7

    if-lez v4, :cond_d0

    move v4, v2

    move v2, v5

    .line 506
    :goto_c4
    add-int v5, v8, v3

    move v8, v5

    move v6, v2

    move v7, v4

    goto :goto_7e

    .line 517
    :cond_ca
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v4

    goto :goto_b7

    :cond_d0
    move v2, v6

    move v4, v7

    goto :goto_c4

    :cond_d3
    move v4, v5

    goto/16 :goto_4c

    :cond_d6
    move v3, v2

    goto/16 :goto_17
.end method

.method public static findLastVacantCell([IIIII[[Z)Z
    .registers 7

    .prologue
    .line 1
    invoke-static/range {p0 .. p5}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_Utilities$findLastVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method static findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;
    .registers 7
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
    .line 536
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 549
    const/4 v0, 0x0

    :goto_15
    return-object v0

    .line 537
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 538
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_e

    .line 539
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e

    .line 540
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 542
    :try_start_2e
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 543
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_35} :catch_37

    move-result-object v0

    goto :goto_15

    .line 545
    :catch_37
    move-exception v2

    const-string v2, "Launcher.Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to find resources for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public static findVacantCell([IIIII[[Z)Z
    .registers 14

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    move v4, v1

    .line 626
    :goto_3
    add-int v0, v4, p2

    if-le v0, p4, :cond_9

    move v2, v1

    .line 644
    :goto_8
    return v2

    :cond_9
    move v6, v1

    .line 627
    :goto_a
    add-int v0, v6, p1

    if-le v0, p3, :cond_11

    .line 626
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 628
    :cond_11
    aget-object v0, p5, v6

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_24

    move v0, v1

    :goto_18
    move v5, v6

    .line 629
    :goto_19
    add-int v3, v6, p1

    if-lt v5, v3, :cond_26

    .line 636
    :cond_1d
    if-eqz v0, :cond_3f

    .line 637
    aput v6, p0, v1

    .line 638
    aput v4, p0, v2

    goto :goto_8

    :cond_24
    move v0, v2

    .line 628
    goto :goto_18

    :cond_26
    move v3, v4

    .line 630
    :goto_27
    add-int v7, v4, p2

    if-lt v3, v7, :cond_2f

    .line 629
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_19

    .line 631
    :cond_2f
    if-eqz v0, :cond_3d

    aget-object v0, p5, v5

    aget-boolean v0, v0, v3

    if-nez v0, :cond_3d

    move v0, v2

    .line 632
    :goto_38
    if-eqz v0, :cond_1d

    .line 630
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_3d
    move v0, v1

    .line 631
    goto :goto_38

    .line 627
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_a
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .registers 4

    .prologue
    .line 601
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 602
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 604
    :try_start_10
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 605
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 606
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 607
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_20} :catch_22

    move-result-object v0

    .line 610
    :goto_21
    return-object v0

    .line 609
    :catch_22
    move-exception v0

    const-string v0, "Launcher.Utilities"

    const-string v1, "Could not write bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;[I)[I
    .registers 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 386
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc0:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 387
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 389
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc0:[I

    aget v1, v0, v4

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v4

    .line 390
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc0:[I

    aget v1, v0, v5

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v5

    .line 391
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    aget v1, v0, v4

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v4

    .line 392
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    aget v1, v0, v5

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v5

    .line 394
    if-nez p2, :cond_63

    .line 395
    const/4 v0, 0x2

    new-array p2, v0, [I

    .line 398
    :cond_63
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    aget v0, v0, v4

    sget-object v1, Lcom/android/launcher3/Utilities;->sLoc0:[I

    aget v1, v1, v4

    sub-int/2addr v0, v1

    aput v0, p2, v4

    .line 399
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    aget v0, v0, v5

    sget-object v1, Lcom/android/launcher3/Utilities;->sLoc0:[I

    aget v1, v1, v5

    sub-int/2addr v0, v1

    aput v0, p2, v5

    .line 401
    return-object p2
.end method

.method public static getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 292
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 294
    const/4 v0, 0x2

    new-array v5, v0, [F

    aget v0, p2, v2

    int-to-float v0, v0

    aput v0, v5, v2

    aget v0, p2, v9

    int-to-float v0, v0

    aput v0, v5, v9

    move-object v0, p0

    .line 297
    :goto_15
    if-eq v0, p1, :cond_19

    if-nez v0, :cond_37

    .line 301
    :cond_19
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    const/high16 v0, 0x3f800000    # 1.0f

    .line 304
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    move v3, v0

    .line 305
    :goto_24
    if-lt v1, v6, :cond_41

    .line 320
    aget v0, v5, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, v2

    .line 321
    aget v0, v5, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, v9

    .line 322
    return v3

    .line 298
    :cond_37
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_15

    .line 306
    :cond_41
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 309
    if-ne v0, p0, :cond_4b

    if-eqz p3, :cond_5f

    .line 310
    :cond_4b
    aget v7, v5, v2

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v5, v2

    .line 311
    aget v7, v5, v9

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v5, v9

    .line 314
    :cond_5f
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 315
    aget v7, v5, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v5, v2

    .line 316
    aget v7, v5, v9

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v5, v9

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    mul-float/2addr v3, v0

    .line 305
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24
.end method

.method private static getIconBitmapSize()I
    .registers 1

    .prologue
    .line 196
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    return v0
.end method

.method public static getSearchWidgetProvider(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 571
    const-string v0, "search"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 572
    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 573
    if-nez v0, :cond_10

    .line 592
    :cond_f
    :goto_f
    return-object v1

    .line 574
    :cond_10
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 578
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 580
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 581
    sget-boolean v4, Lcom/android/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v4, :cond_48

    .line 582
    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_44

    move-object v1, v0

    .line 583
    goto :goto_f

    .line 584
    :cond_44
    if-nez v1, :cond_20

    move-object v1, v0

    .line 587
    goto :goto_20

    :cond_48
    move-object v1, v0

    .line 588
    goto :goto_f
.end method

.method public static isAllowRotationPrefEnabled(Landroid/content/Context;Z)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_19

    .line 126
    const/4 v0, 0x4

    .line 124
    :goto_8
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    const-string v2, "pref_allowRotation"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 128
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sForceEnableRotation:Z

    if-nez v2, :cond_1b

    if-nez v0, :cond_1b

    :goto_18
    return v1

    :cond_19
    move v0, v1

    .line 126
    goto :goto_8

    .line 128
    :cond_1b
    const/4 v1, 0x1

    goto :goto_18
.end method

.method public static isLauncherAppTarget(Landroid/content/Intent;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 711
    if-eqz p0, :cond_53

    .line 712
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 713
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 714
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 715
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_53

    .line 716
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 717
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 719
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 720
    if-nez v2, :cond_3f

    .line 727
    :cond_3e
    :goto_3e
    return v0

    .line 723
    :cond_3f
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 724
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v0, :cond_51

    const-string v3, "profile"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    :cond_51
    move v0, v1

    goto :goto_3e

    :cond_53
    move v0, v1

    .line 727
    goto :goto_3e
.end method

.method public static isLmpMR1()Z
    .registers 2

    .prologue
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isLmpMR1OrAbove()Z
    .registers 2

    .prologue
    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isLmpOrAbove()Z
    .registers 2

    .prologue
    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isNycOrAbove()Z
    .registers 2

    .prologue
    .line 139
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "DRAG_FLAG_OPAQUE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_7} :catch_9

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isPropertyEnabled(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isRotationAllowedForDevice(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sForceEnableRotation:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public static isRtl(Landroid/content/res/Resources;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 692
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v1, :cond_10

    .line 693
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 692
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 428
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 429
    const/4 v1, 0x0

    .line 430
    if-nez v3, :cond_33

    .line 431
    const/high16 v3, 0x10000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 432
    if-eqz v3, :cond_1c

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1c

    .line 433
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 438
    :cond_1c
    :goto_1c
    if-eqz v1, :cond_32

    .line 440
    const/4 v3, 0x0

    :try_start_1f
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 441
    if-eqz v1, :cond_32

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_32

    .line 442
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_2d} :catch_38

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_32

    .line 441
    const/4 v0, 0x1

    .line 447
    :cond_32
    :goto_32
    return v0

    .line 436
    :cond_33
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 444
    :catch_38
    move-exception v1

    goto :goto_32
.end method

.method public static isViewAttachedToWindow(Landroid/view/View;)Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 554
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_KITKAT:Z

    if-eqz v0, :cond_9

    .line 555
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    .line 558
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[I)F
    .registers 14

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 330
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 332
    const/4 v0, 0x2

    new-array v5, v0, [F

    aget v0, p2, v9

    int-to-float v0, v0

    aput v0, v5, v9

    aget v0, p2, v10

    int-to-float v0, v0

    aput v0, v5, v10

    .line 335
    :goto_14
    if-ne p0, p1, :cond_3a

    .line 339
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const/high16 v2, 0x3f800000    # 1.0f

    .line 342
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 343
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 344
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_27
    if-gez v3, :cond_45

    .line 360
    aget v0, v5, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, v9

    .line 361
    aget v0, v5, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, v10

    .line 362
    return v2

    .line 336
    :cond_3a
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p0, v0

    goto :goto_14

    .line 345
    :cond_45
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 346
    if-lez v3, :cond_93

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 348
    :goto_55
    aget v7, v5, v9

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v5, v9

    .line 349
    aget v7, v5, v10

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v7

    aput v0, v5, v10

    .line 351
    if-eqz v1, :cond_95

    .line 352
    aget v0, v5, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v0, v7

    aput v0, v5, v9

    .line 353
    aget v0, v5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v0, v7

    aput v0, v5, v10

    .line 354
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 355
    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 356
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v0

    mul-float/2addr v0, v2

    .line 344
    :goto_8e
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v2, v0

    goto :goto_27

    .line 346
    :cond_93
    const/4 v1, 0x0

    goto :goto_55

    :cond_95
    move v0, v2

    goto :goto_8e
.end method

.method public static pointInView(Landroid/view/View;FFF)Z
    .registers 5

    .prologue
    .line 372
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_20

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_20

    .line 373
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    .line 372
    cmpg-float v0, p2, v0

    if-gez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static varargs println(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const/4 v0, 0x1

    .line 679
    array-length v4, p1

    move v2, v1

    :goto_11
    if-lt v2, v4, :cond_1d

    .line 687
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 688
    return-void

    .line 679
    :cond_1d
    aget-object v5, p1, v2

    .line 680
    if-eqz v0, :cond_28

    move v0, v1

    .line 685
    :goto_22
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 679
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 683
    :cond_28
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22
.end method

.method public static pxFromDp(FLandroid/util/DisplayMetrics;)I
    .registers 3

    .prologue
    .line 735
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static pxFromSp(FLandroid/util/DisplayMetrics;)I
    .registers 3

    .prologue
    .line 739
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static scaleRect(Landroid/graphics/Rect;F)V
    .registers 4

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 377
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_28

    .line 378
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 379
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 380
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 381
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 383
    :cond_28
    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .registers 6

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 406
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 407
    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 408
    invoke-static {p0, p1}, Lcom/android/launcher3/Utilities;->scaleRect(Landroid/graphics/Rect;F)V

    .line 409
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 410
    return-void
.end method

.method public static startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 6

    .prologue
    const v2, 0x7f0f001e

    const/4 v1, 0x0

    .line 415
    :try_start_4
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_7} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7} :catch_11

    .line 424
    :goto_7
    return-void

    .line 417
    :catch_8
    move-exception v0

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 418
    :catch_11
    move-exception v0

    .line 419
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 420
    const-string v1, "Launcher.Utilities"

    const-string v2, "Launcher does not have the permission to launch . Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 652
    if-nez p0, :cond_4

    .line 653
    const/4 v0, 0x0

    .line 658
    :goto_3
    return-object v0

    .line 657
    :cond_4
    sget-object v0, Lcom/android/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 658
    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
