.class public Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;
.super Lcom/android/launcher3/InvariantDeviceProfile;
.source "LGInvariantDeviceProfile.java"


# instance fields
.field public numDefaultColumns:I

.field public numDefaultRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 18

    .prologue
    .line 42
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numDefaultRows:I

    .line 39
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numDefaultColumns:I

    .line 43
    invoke-direct/range {p0 .. p1}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->initResources(Landroid/content/Context;)V

    .line 44
    const-string v1, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 45
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 48
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 50
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 53
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 54
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 55
    invoke-virtual {v1, v4, v5}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 59
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 60
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 63
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 64
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 69
    new-instance v1, Lcom/lge/launcher3/profile/LGDeviceProfile;

    .line 70
    const/4 v8, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/lge/launcher3/profile/LGDeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V

    .line 69
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    .line 71
    new-instance v8, Lcom/lge/launcher3/profile/LGDeviceProfile;

    .line 72
    const/4 v15, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    move-object v11, v4

    move-object v12, v5

    move v13, v7

    move v14, v6

    invoke-direct/range {v8 .. v15}, Lcom/lge/launcher3/profile/LGDeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V

    .line 71
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    .line 73
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v1

    if-eqz v1, :cond_78

    const/16 v1, 0x3e7

    :goto_73
    move-object/from16 v0, p0

    iput v1, v0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->hotseatAllAppsRank:I

    .line 74
    return-void

    .line 73
    :cond_78
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->hotseatAllAppsRank:I

    goto :goto_73
.end method

.method public constructor <init>(Ljava/lang/String;FFIIIIIFFFFI)V
    .registers 15

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct/range {p0 .. p13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 38
    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numDefaultRows:I

    .line 39
    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numDefaultColumns:I

    .line 85
    return-void
.end method

.method private getIconSizeByDynamicGrid(Landroid/content/res/Resources;IIII)F
    .registers 10

    .prologue
    .line 125
    const v0, 0x7f090005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 126
    const v1, 0x7f090006

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 128
    add-int v2, p2, p3

    .line 129
    add-int v3, p4, p5

    .line 131
    if-lt v2, v3, :cond_15

    .line 136
    :cond_14
    :goto_14
    return v0

    .line 133
    :cond_15
    if-ge v2, v3, :cond_14

    .line 134
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_14
.end method

.method public static getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-static {p0, v1, p1, v1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getInt(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v0

    .line 143
    if-nez v0, :cond_e

    .line 144
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->setSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)V

    .line 145
    invoke-static {p0, v1, p1, v1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getInt(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v0

    .line 148
    :cond_e
    return v0
.end method

.method private initResources(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    const v0, 0x7f0f0007

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->name:Ljava/lang/String;

    .line 102
    const v0, 0x7f090003

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->minWidthDps:F

    .line 103
    const v0, 0x7f090004

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->minHeightDps:F

    .line 104
    const v0, 0x7f0c0023

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numDefaultRows:I

    .line 105
    const v0, 0x7f0c0024

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numDefaultColumns:I

    .line 107
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_ROWS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    iget v2, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numDefaultRows:I

    .line 106
    invoke-static {p1, v0, v2}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numRows:I

    .line 109
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_COLUMNS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    iget v2, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numDefaultColumns:I

    .line 108
    invoke-static {p1, v0, v2}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numColumns:I

    .line 110
    const v0, 0x7f0c0025

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numFolderRows:I

    .line 111
    const v0, 0x7f0c0026

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numFolderColumns:I

    .line 113
    const v0, 0x7f0c0027

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 112
    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->minAllAppsPredictionColumns:I

    .line 114
    iget v2, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numDefaultRows:I

    iget v3, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numDefaultColumns:I

    iget v4, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numRows:I

    .line 115
    iget v5, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numColumns:I

    move-object v0, p0

    .line 114
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getIconSizeByDynamicGrid(Landroid/content/res/Resources;IIII)F

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->iconSize:F

    .line 116
    const v0, 0x7f090007

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->iconTextSize:F

    .line 117
    const v0, 0x7f090008

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numHotseatIcons:F

    .line 118
    iget v2, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numDefaultRows:I

    iget v3, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numDefaultColumns:I

    iget v4, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numRows:I

    .line 119
    iget v5, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numColumns:I

    move-object v0, p0

    .line 118
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getIconSizeByDynamicGrid(Landroid/content/res/Resources;IIII)F

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->hotseatIconSize:F

    .line 120
    const-string v0, "default_workspace_items"

    const-string v2, "xml"

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->defaultLayoutId:I

    .line 122
    return-void
.end method

.method public static setSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)V
    .registers 4

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putInt(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)Z

    .line 154
    return-void
.end method


# virtual methods
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
    .line 89
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-direct/range {p0 .. p1}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->initResources(Landroid/content/Context;)V

    .line 92
    new-instance v0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;

    iget-object v1, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->name:Ljava/lang/String;

    iget v2, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->minWidthDps:F

    iget v3, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->minHeightDps:F

    .line 93
    iget v4, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numRows:I

    iget v5, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numColumns:I

    iget v6, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numFolderRows:I

    iget v7, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numFolderColumns:I

    .line 94
    iget v8, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->minAllAppsPredictionColumns:I

    iget v9, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->iconSize:F

    iget v10, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->iconTextSize:F

    .line 95
    iget v11, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numHotseatIcons:F

    iget v12, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->hotseatIconSize:F

    iget v13, p0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->defaultLayoutId:I

    .line 92
    invoke-direct/range {v0 .. v13}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFFFI)V

    .line 91
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    return-object v14
.end method
