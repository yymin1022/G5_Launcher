.class public final Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static HSLtoRGB(I[I)I
    .registers 5

    .prologue
    .line 111
    invoke-static {p1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorUtils;->HSLtoRGB([I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static HSLtoRGB([I)I
    .registers 11

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/16 v8, 0xff

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v7, 0x437f0000    # 255.0f

    .line 54
    aget v0, p0, v1

    int-to-float v0, v0

    .line 55
    const/4 v2, 0x1

    aget v2, p0, v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 56
    const/4 v3, 0x2

    aget v3, p0, v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    .line 58
    mul-float v4, v9, v3

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v6, v4

    mul-float/2addr v4, v2

    .line 59
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    sub-float v5, v3, v2

    .line 60
    const/high16 v2, 0x42700000    # 60.0f

    div-float v2, v0, v2

    rem-float/2addr v2, v9

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v6, v2

    mul-float v6, v4, v2

    .line 62
    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x3c

    .line 68
    packed-switch v0, :pswitch_data_de

    move v0, v1

    move v2, v1

    move v3, v1

    .line 103
    :goto_40
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 104
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 105
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 107
    invoke-static {v3, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    .line 70
    :pswitch_5d
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 71
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 72
    mul-float v0, v7, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_40

    .line 75
    :pswitch_72
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 76
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 77
    mul-float v0, v7, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_40

    .line 80
    :pswitch_87
    mul-float v0, v7, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 81
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 82
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_40

    .line 85
    :pswitch_9c
    mul-float v0, v7, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 86
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 87
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_40

    .line 90
    :pswitch_b1
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 91
    mul-float v0, v7, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 92
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_40

    .line 96
    :pswitch_c7
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 97
    mul-float v0, v7, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 98
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_40

    .line 68
    nop

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_72
        :pswitch_87
        :pswitch_9c
        :pswitch_b1
        :pswitch_c7
        :pswitch_c7
    .end packed-switch
.end method

.method public static RGBtoHSL(III[I)V
    .registers 16

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 22
    int-to-float v0, p0

    div-float/2addr v0, v3

    .line 23
    int-to-float v1, p1

    div-float/2addr v1, v3

    .line 24
    int-to-float v2, p2

    div-float/2addr v2, v3

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 28
    sub-float v5, v3, v4

    .line 32
    add-float v6, v3, v4

    div-float/2addr v6, v8

    .line 34
    cmpl-float v4, v3, v4

    if-nez v4, :cond_46

    .line 35
    const/4 v0, 0x0

    move v1, v0

    .line 48
    :goto_2b
    const/4 v2, 0x0

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v1, v3

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v1, v3

    add-float/2addr v1, v7

    float-to-int v1, v1

    aput v1, p3, v2

    .line 49
    const/4 v1, 0x1

    add-float/2addr v0, v7

    float-to-int v0, v0

    aput v0, p3, v1

    .line 50
    const/4 v0, 0x2

    mul-float v1, v6, v10

    add-float/2addr v1, v7

    float-to-int v1, v1

    aput v1, p3, v0

    .line 51
    return-void

    .line 37
    :cond_46
    cmpl-float v4, v3, v0

    if-nez v4, :cond_60

    .line 38
    sub-float v0, v1, v2

    div-float/2addr v0, v5

    const/high16 v1, 0x40c00000    # 6.0f

    rem-float/2addr v0, v1

    .line 45
    :goto_50
    mul-float v1, v5, v10

    mul-float v2, v8, v6

    sub-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v9, v2

    div-float/2addr v1, v2

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_2b

    .line 39
    :cond_60
    cmpl-float v3, v3, v1

    if-nez v3, :cond_69

    .line 40
    sub-float v0, v2, v0

    div-float/2addr v0, v5

    add-float/2addr v0, v8

    .line 41
    goto :goto_50

    .line 42
    :cond_69
    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v0, v1

    goto :goto_50
.end method

.method public static RGBtoHSL(I[I)V
    .registers 5

    .prologue
    .line 115
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorUtils;->RGBtoHSL(III[I)V

    .line 116
    return-void
.end method

.method public static getLightness(I)I
    .registers 3

    .prologue
    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 154
    invoke-static {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorUtils;->RGBtoHSL(I[I)V

    .line 155
    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public static saveBitmapToFile(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz p2, :cond_1b

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x0

    .line 130
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 131
    :cond_49
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 133
    :cond_4c
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 134
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_54} :catch_6f
    .catchall {:try_start_3d .. :try_end_54} :catchall_7e

    .line 135
    :try_start_54
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5b} :catch_92
    .catchall {:try_start_54 .. :try_end_5b} :catchall_8f

    .line 140
    if-eqz v2, :cond_60

    .line 141
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_8a

    .line 148
    :cond_60
    :goto_60
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    return-void

    .line 136
    :catch_6f
    move-exception v0

    .line 137
    :goto_70
    :try_start_70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_7e

    .line 140
    if-eqz v1, :cond_60

    .line 141
    :try_start_75
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_60

    .line 143
    :catch_79
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    .line 138
    :catchall_7e
    move-exception v0

    .line 140
    :goto_7f
    if-eqz v1, :cond_84

    .line 141
    :try_start_81
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    .line 146
    :cond_84
    :goto_84
    throw v0

    .line 143
    :catch_85
    move-exception v1

    .line 144
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_84

    .line 143
    :catch_8a
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    .line 138
    :catchall_8f
    move-exception v0

    move-object v1, v2

    goto :goto_7f

    .line 136
    :catch_92
    move-exception v0

    move-object v1, v2

    goto :goto_70
.end method
