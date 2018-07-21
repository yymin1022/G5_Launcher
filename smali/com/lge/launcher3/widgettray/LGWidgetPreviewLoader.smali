.class public Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;
.super Lcom/android/launcher3/WidgetPreviewLoader;
.source "LGWidgetPreviewLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/IconCache;)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/WidgetPreviewLoader;-><init>(Landroid/content/Context;Lcom/android/launcher3/IconCache;)V

    .line 30
    return-void
.end method


# virtual methods
.method public clearCacheDB()V
    .registers 3

    .prologue
    .line 185
    sget-object v0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->TAG:Ljava/lang/String;

    const-string v1, "clearCacheDB()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v1}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 188
    return-void
.end method

.method public generateShortcutPreview(Lcom/android/launcher3/Launcher;Landroid/content/pm/ResolveInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 13

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 164
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 165
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 166
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 170
    iget-object v3, p0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 171
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 175
    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 176
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 177
    invoke-virtual {v3, v5, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 178
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    return-object v2
.end method

.method public generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .registers 23

    .prologue
    .line 53
    if-gez p3, :cond_5

    .line 54
    const p3, 0x7fffffff

    .line 57
    :cond_5
    const/4 v3, 0x0

    .line 58
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    if-eqz v4, :cond_191

    .line 59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 60
    if-eqz v3, :cond_aa

    .line 61
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v10, v3

    .line 70
    :goto_1f
    if-eqz v10, :cond_da

    const/4 v3, 0x1

    .line 71
    :goto_22
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanX(Lcom/android/launcher3/Launcher;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_dd

    const/4 v4, 0x1

    .line 72
    :goto_2e
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanY(Lcom/android/launcher3/Launcher;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_e7

    const/4 v5, 0x1

    move v9, v5

    .line 76
    :goto_3b
    const/4 v5, 0x0

    .line 78
    if-eqz v3, :cond_f2

    .line 79
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 80
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    move-object v8, v5

    move v5, v6

    move v6, v7

    .line 90
    :goto_49
    const/high16 v7, 0x3f800000    # 1.0f

    .line 91
    if-eqz p5, :cond_50

    .line 92
    const/4 v11, 0x0

    aput v6, p5, v11

    .line 94
    :cond_50
    const/4 v11, 0x1

    if-ne v4, v11, :cond_5f

    const/4 v11, 0x1

    if-ne v9, v11, :cond_5f

    .line 95
    if-nez v3, :cond_5f

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    move v6, v5

    .line 101
    :cond_5f
    move/from16 v0, p3

    if-le v6, v0, :cond_68

    .line 102
    move/from16 v0, p3

    int-to-float v7, v0

    int-to-float v11, v6

    div-float/2addr v7, v11

    .line 105
    :cond_68
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v7, v11

    if-eqz v11, :cond_74

    .line 106
    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 107
    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    .line 111
    :cond_74
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11}, Landroid/graphics/Canvas;-><init>()V

    .line 112
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 113
    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    const/4 v13, 0x0

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 117
    if-eqz v3, :cond_107

    .line 118
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    :goto_92
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->mProfileBadgeMargin:I

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v12, v3}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getBadgeBitmap(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 63
    :cond_aa
    sget-object v4, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->TAG:Ljava/lang/String;

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t load widget preview drawable 0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 66
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [I

    .line 63
    invoke-static {v4, v5, v6}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    move-object v10, v3

    goto/16 :goto_1f

    .line 70
    :cond_da
    const/4 v3, 0x0

    goto/16 :goto_22

    .line 71
    :cond_dd
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanX(Lcom/android/launcher3/Launcher;)I

    move-result v4

    goto/16 :goto_2e

    .line 72
    :cond_e7
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanY(Lcom/android/launcher3/Launcher;)I

    move-result v5

    move v9, v5

    goto/16 :goto_3b

    .line 85
    :cond_f2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->setNinepatchToBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v8, v5

    move/from16 v6, p3

    move/from16 v5, p3

    goto/16 :goto_49

    .line 121
    :cond_107
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 122
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    iget v10, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 126
    new-instance v6, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v6, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v7

    .line 129
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v7, v14

    .line 130
    new-instance v14, Landroid/graphics/RectF;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v14, v15, v0, v13, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 132
    const/4 v15, 0x1

    if-ne v4, v15, :cond_143

    const/4 v15, 0x1

    if-eq v9, v15, :cond_146

    .line 133
    :cond_143
    invoke-virtual {v11, v8, v6, v14, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 136
    :cond_146
    const/high16 v8, 0x3f800000    # 1.0f

    .line 138
    :try_start_148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v6}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->loadIcon(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 139
    if-eqz v14, :cond_184

    .line 140
    const/4 v6, 0x0

    .line 141
    const/4 v3, 0x0

    .line 142
    const/4 v15, 0x1

    if-ne v4, v15, :cond_166

    const/4 v4, 0x1

    if-eq v9, v4, :cond_18f

    .line 143
    :cond_166
    int-to-float v3, v10

    mul-float/2addr v3, v8

    sub-float v3, v13, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v4, v3

    .line 144
    int-to-float v3, v10

    mul-float/2addr v3, v8

    sub-float v3, v7, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    float-to-int v3, v3

    .line 146
    :goto_176
    int-to-float v6, v10

    mul-float/2addr v6, v8

    float-to-int v6, v6

    add-int/2addr v6, v4

    .line 147
    int-to-float v7, v10

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v7, v3

    .line 146
    invoke-virtual {v14, v4, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    invoke-virtual {v14, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_184
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_148 .. :try_end_184} :catch_18a

    .line 153
    :cond_184
    :goto_184
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_92

    .line 150
    :catch_18a
    move-exception v3

    .line 151
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_184

    :cond_18f
    move v4, v6

    goto :goto_176

    :cond_191
    move-object v10, v3

    goto/16 :goto_1f
.end method

.method public setNinepatchToBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 36
    const v0, 0x7f020036

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 38
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v6, v6, p2, p3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 41
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 42
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    return-object v1
.end method
