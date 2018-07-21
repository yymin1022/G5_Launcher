.class public Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperCache;
.super Ljava/lang/Object;
.source "LGWallpaperCache.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final JPEG_FORMAT:I = 0x1

.field private static final LAUNCHER_FILE_DIR:Ljava/lang/String; = "/data/data/com.lge.launcher2/files"

.field private static final PNG_FORMAT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LGWallpaperCache"

.field private static final TMP_WALLPAPER_TO_CROP_FILENAME:Ljava/lang/String; = "tmp_wallpaper_img"

.field private static final UNKNOWN_FORMAT:I = 0x0

.field private static final WALLPAPER_CACHE_DIR:Ljava/lang/String; = "/data/data/com.lge.launcher2/files/wp_cache/"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearWallpaperCache()V
    .registers 6

    .prologue
    .line 95
    invoke-static {}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperCache;->getWallpaperCacheDir()Ljava/io/File;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_e

    .line 99
    array-length v3, v2

    const/4 v0, 0x0

    :goto_c
    if-lt v0, v3, :cond_f

    .line 106
    :cond_e
    return-void

    .line 99
    :cond_f
    aget-object v4, v2, v0

    .line 100
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 102
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 99
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static getWallpaperCacheDir()Ljava/io/File;
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.lge.launcher2/files/wp_cache/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 80
    :cond_12
    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 81
    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 82
    return-object v0
.end method

.method public static getWallpaperCacheFilePath(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-static {}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperCache;->getWallpaperCacheDir()Ljava/io/File;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_c

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    :cond_c
    return-object v0
.end method

.method public static makeWallpaperCacheUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 28
    const-string v1, "/data/data/com.lge.launcher2/files"

    .line 29
    const-string v1, "tmp_wallpaper_img"

    .line 32
    :try_start_5
    invoke-static {p0, p1}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperCache;->parseImageFormat(Landroid/content/Context;I)I

    move-result v1

    .line 33
    packed-switch v1, :pswitch_data_5e

    move-object v1, v0

    .line 44
    :goto_d
    if-eqz v1, :cond_46

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tmp_wallpaper_img."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperCache;->getWallpaperCacheFilePath(Ljava/lang/String;)Ljava/io/File;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_4d

    move-result-object v2

    .line 49
    :goto_22
    :try_start_22
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.lge.launcher2/files"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 52
    invoke-static {p0, p1, v2}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperCache;->resToFile(Landroid/content/Context;ILjava/io/File;)Z

    .line 53
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_36} :catch_5c

    .line 58
    :goto_36
    if-nez v2, :cond_57

    .line 59
    const-string v1, "LGWallpaperCache"

    const-string v2, "Failed at makeWallpaperCacheUri() : wallpaperFile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_3f
    return-object v0

    .line 35
    :pswitch_40
    :try_start_40
    const-string v1, "jpg"

    goto :goto_d

    .line 38
    :pswitch_43
    const-string v1, "png"

    goto :goto_d

    .line 47
    :cond_46
    const-string v1, "tmp_wallpaper_img"

    invoke-static {v1}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperCache;->getWallpaperCacheFilePath(Ljava/lang/String;)Ljava/io/File;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4b} :catch_4d

    move-result-object v2

    goto :goto_22

    .line 54
    :catch_4d
    move-exception v1

    move-object v2, v0

    .line 55
    :goto_4f
    const-string v3, "LGWallpaperCache"

    const-string v4, "Error at makeWallpaperCacheUri() : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 62
    :cond_57
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3f

    .line 54
    :catch_5c
    move-exception v1

    goto :goto_4f

    .line 33
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_40
        :pswitch_43
    .end packed-switch
.end method

.method public static makeWallpaperCacheUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 67
    if-nez p1, :cond_4

    .line 68
    const/4 v0, 0x0

    .line 72
    :goto_3
    return-object v0

    .line 71
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3
.end method

.method private static parseImageFormat(Landroid/content/Context;I)I
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 113
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_9} :catch_38

    move-result-object v2

    .line 114
    if-nez v2, :cond_d

    .line 138
    :goto_c
    return v0

    .line 118
    :cond_d
    const/16 v3, 0x400

    :try_start_f
    new-array v3, v3, [B

    .line 119
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_51

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_21

    .line 130
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_1b} :catch_38

    goto :goto_c

    .line 132
    :catch_1c
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 122
    :cond_21
    const/4 v4, 0x0

    :try_start_22
    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xff

    if-ne v4, v5, :cond_3d

    const/4 v4, 0x1

    aget-byte v4, v3, v4
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_51

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xd8

    if-ne v4, v5, :cond_3d

    move v0, v1

    .line 130
    :cond_34
    :goto_34
    :try_start_34
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_c

    .line 134
    :catch_38
    move-exception v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_c

    .line 124
    :cond_3d
    const/4 v1, 0x0

    :try_start_3e
    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0x89

    if-ne v1, v4, :cond_34

    const/4 v1, 0x1

    aget-byte v1, v3, v1
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_51

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x50

    if-ne v1, v3, :cond_34

    .line 125
    const/4 v0, 0x2

    .line 126
    goto :goto_34

    .line 129
    :catchall_51
    move-exception v1

    .line 130
    :try_start_52
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 131
    throw v1
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_52 .. :try_end_56} :catch_38
.end method

.method private static resToFile(Landroid/content/Context;ILjava/io/File;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 143
    const/4 v3, 0x0

    .line 145
    if-nez p2, :cond_5

    .line 179
    :goto_4
    return v0

    .line 149
    :cond_5
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 150
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 154
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 155
    if-nez v4, :cond_25

    .line 156
    const-string v1, "LGWallpaperCache"

    const-string v2, "openRawResource() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_1f} :catch_4e

    goto :goto_4

    .line 172
    :catch_20
    move-exception v1

    .line 173
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 160
    :cond_25
    const/16 v1, 0x400

    :try_start_27
    new-array v1, v1, [B

    .line 161
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_53

    .line 163
    :goto_2e
    :try_start_2e
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_44

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3f

    .line 167
    if-eqz v2, :cond_3a

    .line 168
    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 170
    :cond_3a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3d} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3d} :catch_4e

    .line 179
    const/4 v0, 0x1

    goto :goto_4

    .line 164
    :cond_3f
    const/4 v5, 0x0

    :try_start_40
    invoke-virtual {v2, v1, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_2e

    .line 166
    :catchall_44
    move-exception v1

    .line 167
    :goto_45
    if-eqz v2, :cond_4a

    .line 168
    :try_start_47
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 170
    :cond_4a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 171
    throw v1
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4e} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4e} :catch_4e

    .line 175
    :catch_4e
    move-exception v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_4

    .line 166
    :catchall_53
    move-exception v1

    move-object v2, v3

    goto :goto_45
.end method
