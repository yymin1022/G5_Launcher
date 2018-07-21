.class public Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;
.super Ljava/lang/Object;
.source "AdaptiveTextUtil.java"


# static fields
.field private static final ACTION_ADAPTIVETEXT_BRIGHTNESS:Ljava/lang/String; = "com.lge.launcher2.adaptivetext"

.field private static final ADAPTIVE_THRESHOLD:I = 0xbe

.field private static final EXTRA_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_SAMPLE_PIXELS:I = 0x4e20

.field private static sExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->LOG_TAG:Ljava/lang/String;

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 103
    invoke-static {p0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->getWallpaperBrightness(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static final calcBrightness(I)I
    .registers 3

    .prologue
    .line 164
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x12b

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x24b

    add-int/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x72

    add-int/2addr v0, v1

    return v0
.end method

.method public static calculateAdaptiveTextColorForBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)I
    .registers 7

    .prologue
    .line 171
    sget-object v0, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start to calculateColor"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {p0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->getDefaultAdaptiveColor(Landroid/content/Context;)I

    move-result v0

    .line 173
    invoke-static {p1}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->getBrightness(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 174
    sget-object v2, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "brightness for bitmap =  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    const/16 v2, 0xbe

    if-le v1, v2, :cond_35

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 182
    :cond_35
    sget-object v1, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPhotoColor =  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v1, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "end to calculateColor"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return v0
.end method

.method public static getAdaptiveTextColor(Landroid/content/Context;)I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 87
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$AdaptiveTextKey;->TEXT_COLOR:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$AdaptiveTextKey;

    .line 86
    invoke-static {p0, v1, v0, v1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getInt(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v0

    .line 88
    if-nez v0, :cond_10

    .line 89
    invoke-static {p0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->runAdaptiveColor(Landroid/content/Context;)V

    .line 90
    invoke-static {p0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->getDefaultAdaptiveColor(Landroid/content/Context;)I

    move-result v0

    .line 92
    :cond_10
    return v0
.end method

.method private static getBrightness(Landroid/graphics/Bitmap;)I
    .registers 17

    .prologue
    .line 121
    if-nez p0, :cond_4

    .line 122
    const/4 v0, -0x1

    .line 152
    :goto_3
    return v0

    .line 125
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 127
    mul-int v0, v3, v11

    invoke-static {v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->getSamplingOffset(I)I

    move-result v12

    .line 128
    const/4 v2, 0x0

    .line 129
    const/4 v0, 0x0

    .line 130
    new-array v1, v3, [I

    .line 131
    const-wide/16 v6, 0x0

    .line 134
    const/4 v5, 0x0

    move-wide v8, v6

    move v10, v0

    :goto_1b
    if-lt v5, v11, :cond_8b

    .line 146
    mul-int/lit16 v0, v10, 0x3e8

    int-to-long v0, v0

    div-long v0, v8, v0

    .line 148
    sget-object v4, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "### resolution "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int/2addr v3, v11

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v3, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "### sub-sampling "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : 1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 150
    mul-int/2addr v2, v10

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v3, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v2, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "### average brightness "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    long-to-int v0, v0

    goto/16 :goto_3

    .line 135
    :cond_8b
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 136
    const/4 v2, 0x0

    .line 137
    const-wide/16 v6, 0x0

    .line 138
    const/4 v0, 0x0

    :goto_98
    if-lt v0, v3, :cond_a4

    .line 142
    int-to-long v14, v2

    div-long/2addr v6, v14

    add-long/2addr v6, v8

    .line 143
    add-int/lit8 v0, v10, 0x1

    .line 134
    add-int/2addr v5, v12

    move-wide v8, v6

    move v10, v0

    goto/16 :goto_1b

    .line 139
    :cond_a4
    aget v4, v1, v0

    invoke-static {v4}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->calcBrightness(I)I

    move-result v4

    int-to-long v14, v4

    add-long/2addr v6, v14

    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 138
    add-int/2addr v0, v12

    goto :goto_98
.end method

.method public static getDefaultAdaptiveColor(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method private static getSamplingOffset(I)I
    .registers 4

    .prologue
    .line 156
    const/4 v0, 0x1

    .line 157
    :goto_1
    mul-int v1, v0, v0

    div-int v1, p0, v1

    const/16 v2, 0x4e20

    if-gt v1, v2, :cond_a

    .line 160
    return v0

    .line 158
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static getWallpaperBrightness(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 104
    new-instance v1, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v1}, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    if-nez v0, :cond_d

    .line 108
    const/4 v0, -0x1

    .line 117
    :goto_c
    return v0

    .line 113
    :cond_d
    invoke-static {v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->getBrightness(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 115
    invoke-virtual {v1}, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->recycleBitmap()V

    goto :goto_c
.end method

.method public static isLiveWallpaperMode(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 96
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static resetAdatativeTextColor(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 81
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$AdaptiveTextKey;->TEXT_COLOR:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$AdaptiveTextKey;

    invoke-static {p0, v1, v0, v1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putInt(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)Z

    .line 83
    return-void
.end method

.method public static runAdaptiveColor(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil$1;

    invoke-direct {v2, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 52
    return-void
.end method

.method public static saveAdaptiveTextColor(Landroid/content/Context;I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 61
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$AdaptiveTextKey;->TEXT_COLOR:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$AdaptiveTextKey;

    invoke-static {p0, v2, v0, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putInt(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)Z

    .line 65
    const-string v0, "adaptiveTextColor"

    .line 64
    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_25

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    if-eq v0, p1, :cond_25

    .line 68
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_26

    .line 69
    sget-object v0, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->LOG_TAG:Ljava/lang/String;

    .line 70
    const-string v1, "Memory is full. so LauncherModel.updateItemInSharingContentTable() is canceled."

    .line 69
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_25
    :goto_25
    return-void

    .line 75
    :cond_26
    const-string v0, "adaptiveTextColor"

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$updateItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public static sendWallpaperBrightness(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.launcher2.adaptivetext"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v1, "brightness"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    return-void
.end method
