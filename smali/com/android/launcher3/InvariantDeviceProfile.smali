.class public Lcom/android/launcher3/InvariantDeviceProfile;
.super Ljava/lang/Object;
.source "InvariantDeviceProfile.java"


# static fields
.field private static DEFAULT_ICON_SIZE_DP:F = 0.0f

.field private static final ICON_SIZE_DEFINED_IN_APP_DP:F = 48.0f

.field private static KNEARESTNEIGHBOR:F

.field private static WEIGHT_EFFICIENT:F

.field private static WEIGHT_POWER:F


# instance fields
.field protected defaultLayoutId:I

.field public fillResIconDpi:I

.field protected hotseatAllAppsRank:I

.field protected hotseatIconSize:F

.field iconBitmapSize:I

.field protected iconSize:F

.field protected iconTextSize:F

.field public landscapeProfile:Lcom/android/launcher3/DeviceProfile;

.field protected minAllAppsPredictionColumns:I

.field protected minHeightDps:F

.field protected minWidthDps:F

.field protected name:Ljava/lang/String;

.field public numColumns:I

.field public numFolderColumns:I

.field public numFolderRows:I

.field public numHotseatIcons:F

.field public numRows:I

.field public portraitProfile:Lcom/android/launcher3/DeviceProfile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lcom/android/launcher3/InvariantDeviceProfile;->DEFAULT_ICON_SIZE_DP:F

    .line 43
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/android/launcher3/InvariantDeviceProfile;->KNEARESTNEIGHBOR:F

    .line 44
    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lcom/android/launcher3/InvariantDeviceProfile;->WEIGHT_POWER:F

    .line 47
    const v0, 0x47c35000    # 100000.0f

    sput v0, Lcom/android/launcher3/InvariantDeviceProfile;->WEIGHT_EFFICIENT:F

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 19
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-string v2, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 125
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 126
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 127
    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 129
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 130
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 131
    invoke-virtual {v3, v5, v6}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 134
    iget v2, v5, Landroid/graphics/Point;->x:I

    iget v7, v5, Landroid/graphics/Point;->y:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Lcom/android/launcher3/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    .line 135
    iget v2, v6, Landroid/graphics/Point;->x:I

    iget v7, v6, Landroid/graphics/Point;->y:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Lcom/android/launcher3/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    .line 140
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v8}, Lcom/android/launcher3/InvariantDeviceProfile;->findClosestDeviceProfiles(FFLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 142
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(FFLjava/util/ArrayList;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v7

    .line 144
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 145
    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 146
    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 147
    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:F

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:F

    .line 148
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatAllAppsRank:I

    .line 149
    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    .line 150
    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    .line 151
    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    .line 152
    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    .line 154
    iget v2, v7, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    .line 155
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    invoke-static {v2, v4}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 156
    iget v2, v7, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    .line 157
    iget v2, v7, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    .line 158
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getLauncherIconDensity(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->applyPartnerDeviceProfileOverrides(Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    .line 164
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 165
    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 168
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 169
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 171
    new-instance v2, Lcom/android/launcher3/DeviceProfile;

    .line 172
    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V

    .line 171
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    .line 173
    new-instance v9, Lcom/android/launcher3/DeviceProfile;

    .line 174
    const/16 v16, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p0

    move-object v12, v5

    move-object v13, v6

    move v14, v8

    move v15, v7

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V

    .line 173
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 16

    .prologue
    .line 92
    iget-object v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v3, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    iget v4, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v5, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 93
    iget v6, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iget v7, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget v8, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    .line 94
    iget v9, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    iget v10, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    iget v11, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:F

    iget v12, p1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    .line 95
    iget v13, p1, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;FFIIIIIFFFFI)V
    .registers 16

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-nez v0, :cond_1a

    const/high16 v0, 0x40000000    # 2.0f

    rem-float v0, p11, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1a

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All Device Profiles must have an odd number of hotseat spaces"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1a
    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->name:Ljava/lang/String;

    .line 107
    iput p2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    .line 108
    iput p3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    .line 109
    iput p4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 110
    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 111
    iput p6, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    .line 112
    iput p7, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    .line 113
    iput p8, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    .line 114
    iput p9, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    .line 115
    iput p10, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    .line 116
    iput p11, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:F

    .line 117
    iput p12, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    .line 118
    iput p13, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    .line 119
    return-void
.end method

.method private add(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 4

    .prologue
    .line 291
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    .line 292
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    .line 293
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    .line 294
    return-void
.end method

.method public static ajc$get$defaultLayoutId(Lcom/android/launcher3/InvariantDeviceProfile;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    return v0
.end method

.method public static ajc$set$defaultLayoutId(Lcom/android/launcher3/InvariantDeviceProfile;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    return-void
.end method

.method private applyPartnerDeviceProfileOverrides(Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .registers 4

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_d

    .line 243
    invoke-virtual {v0, p0, p2}, Lcom/android/launcher3/Partner;->applyInvariantDeviceProfileOverrides(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/util/DisplayMetrics;)V

    .line 245
    :cond_d
    return-void
.end method

.method private getLauncherIconDensity(I)I
    .registers 8

    .prologue
    .line 213
    const/4 v0, 0x7

    new-array v2, v0, [I

    fill-array-data v2, :array_24

    .line 223
    const/16 v1, 0x280

    .line 224
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_e
    if-gez v1, :cond_11

    .line 232
    return v0

    .line 225
    :cond_11
    const/high16 v3, 0x42400000    # 48.0f

    aget v4, v2, v1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 226
    const/high16 v4, 0x43200000    # 160.0f

    .line 225
    div-float/2addr v3, v4

    .line 227
    int-to-float v4, p1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_21

    .line 228
    aget v0, v2, v1

    .line 224
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 213
    :array_24
    .array-data 4
        0x78
        0xa0
        0xd5
        0xf0
        0x140
        0x1e0
        0x280
    .end array-data
.end method

.method private multiply(F)Lcom/android/launcher3/InvariantDeviceProfile;
    .registers 3

    .prologue
    .line 297
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    .line 298
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    .line 299
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    .line 300
    return-object p0
.end method

.method private weight(FFFFF)F
    .registers 12

    .prologue
    .line 304
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v0

    .line 305
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_e

    .line 306
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 308
    :goto_d
    return v0

    :cond_e
    sget v1, Lcom/android/launcher3/InvariantDeviceProfile;->WEIGHT_EFFICIENT:F

    float-to-double v2, v1

    float-to-double v0, v0

    float-to-double v4, p5

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double v0, v2, v0

    double-to-float v0, v0

    goto :goto_d
.end method


# virtual methods
.method dist(FFFF)F
    .registers 9

    .prologue
    .line 248
    sub-float v0, p3, p1

    float-to-double v0, v0

    sub-float v2, p4, p2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method findClosestDeviceProfiles(FFLjava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile$1;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;FF)V

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 267
    return-object p3
.end method

.method protected getPredefinedDeviceProfiles(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v1, "Super Short Stubby"

    .line 184
    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v3, 0x43960000    # 300.0f

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x3

    const/high16 v9, 0x42400000    # 48.0f

    const/high16 v10, 0x41500000    # 13.0f

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v12, 0x42400000    # 48.0f

    const v13, 0x7f07000b

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 183
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v1, "Shorter Stubby"

    .line 186
    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v3, 0x43c80000    # 400.0f

    const/4 v4, 0x3

    const/4 v5, 0x3

    const/4 v6, 0x3

    const/4 v7, 0x3

    const/4 v8, 0x3

    const/high16 v9, 0x42400000    # 48.0f

    const/high16 v10, 0x41500000    # 13.0f

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v12, 0x42400000    # 48.0f

    const v13, 0x7f07000b

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 185
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v1, "Short Stubby"

    .line 188
    const v2, 0x43898000    # 275.0f

    const/high16 v3, 0x43d20000    # 420.0f

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/high16 v9, 0x42400000    # 48.0f

    const/high16 v10, 0x41500000    # 13.0f

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v12, 0x42400000    # 48.0f

    const v13, 0x7f07000b

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 187
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v1, "Stubby"

    .line 190
    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v3, 0x43e10000    # 450.0f

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/high16 v9, 0x42400000    # 48.0f

    const/high16 v10, 0x41500000    # 13.0f

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v12, 0x42400000    # 48.0f

    const v13, 0x7f07000b

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 189
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v1, "Nexus S"

    .line 192
    const/high16 v2, 0x43940000    # 296.0f

    const v3, 0x43f5aa3d

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/high16 v9, 0x42400000    # 48.0f

    const/high16 v10, 0x41500000    # 13.0f

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v12, 0x42400000    # 48.0f

    const v13, 0x7f07000b

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 191
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v1, "Nexus 4"

    .line 194
    const v2, 0x43a78000    # 335.0f

    const v3, 0x440dc000    # 567.0f

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    sget v9, Lcom/android/launcher3/InvariantDeviceProfile;->DEFAULT_ICON_SIZE_DP:F

    const/high16 v10, 0x41500000    # 13.0f

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v12, 0x42600000    # 56.0f

    const v13, 0x7f07000b

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 193
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v1, "Nexus 5"

    .line 196
    const v2, 0x43b38000    # 359.0f

    const v3, 0x440dc000    # 567.0f

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    sget v9, Lcom/android/launcher3/InvariantDeviceProfile;->DEFAULT_ICON_SIZE_DP:F

    const/high16 v10, 0x41500000    # 13.0f

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v12, 0x42600000    # 56.0f

    const v13, 0x7f07000b

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 195
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v1, "Large Phone"

    .line 198
    const/high16 v2, 0x43cb0000    # 406.0f

    const v3, 0x442d8000    # 694.0f

    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/high16 v9, 0x42800000    # 64.0f

    const v10, 0x41666666    # 14.4f

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v12, 0x42600000    # 56.0f

    const v13, 0x7f07000c

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 197
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v1, "Nexus 7"

    .line 202
    const v2, 0x440fc000    # 575.0f

    const/high16 v3, 0x44620000    # 904.0f

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/high16 v9, 0x42900000    # 72.0f

    const v10, 0x41666666    # 14.4f

    const/high16 v11, 0x40e00000    # 7.0f

    const/high16 v12, 0x42700000    # 60.0f

    const v13, 0x7f07000d

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 201
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v1, "Nexus 10"

    .line 205
    const v2, 0x4435c000    # 727.0f

    const v3, 0x4496e000    # 1207.0f

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/high16 v9, 0x42980000    # 76.0f

    const v10, 0x41666666    # 14.4f

    const/high16 v11, 0x40e00000    # 7.0f

    const/high16 v12, 0x42800000    # 64.0f

    const v13, 0x7f07000d

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 204
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v1, "20-inch Tablet"

    .line 207
    const v2, 0x44bee000    # 1527.0f

    const v3, 0x451df000    # 2527.0f

    const/4 v4, 0x7

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v11, 0x40e00000    # 7.0f

    const/high16 v12, 0x42900000    # 72.0f

    const v13, 0x7f07000b

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 206
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    return-object v14
.end method

.method invDistWeightedInterpolate(FFLjava/util/ArrayList;)Lcom/android/launcher3/InvariantDeviceProfile;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            ">;)",
            "Lcom/android/launcher3/InvariantDeviceProfile;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 275
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 276
    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_15

    .line 287
    :goto_14
    return-object v0

    .line 280
    :cond_15
    new-instance v8, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v8}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>()V

    move v6, v1

    move v7, v2

    .line 281
    :goto_1c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_29

    int-to-float v0, v6

    sget v1, Lcom/android/launcher3/InvariantDeviceProfile;->KNEARESTNEIGHBOR:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_31

    .line 287
    :cond_29
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v7

    invoke-direct {v8, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->multiply(F)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    goto :goto_14

    .line 282
    :cond_31
    new-instance v9, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v9, v0}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 283
    iget v3, v9, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v4, v9, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    sget v5, Lcom/android/launcher3/InvariantDeviceProfile;->WEIGHT_POWER:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/InvariantDeviceProfile;->weight(FFFFF)F

    move-result v0

    .line 284
    add-float v1, v7, v0

    .line 285
    invoke-direct {v9, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->multiply(F)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->add(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 281
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1c
.end method
