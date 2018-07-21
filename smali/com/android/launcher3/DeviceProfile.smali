.class public Lcom/android/launcher3/DeviceProfile;
.super Ljava/lang/Object;
.source "DeviceProfile.java"


# instance fields
.field public allAppsButtonVisualSize:I

.field public final allAppsIconSizePx:I

.field public final allAppsIconTextSizePx:I

.field public allAppsNumCols:I

.field public allAppsNumPredictiveCols:I

.field public final availableHeightPx:I

.field public final availableWidthPx:I

.field public cellHeightPx:I

.field public cellWidthPx:I

.field private final defaultPageSpacingPx:I

.field public final defaultWidgetPadding:Landroid/graphics/Rect;

.field protected desiredWorkspaceLeftRightMarginPx:I

.field private dragViewScale:F

.field public final edgeMarginPx:I

.field public folderBackgroundOffset:I

.field public folderCellHeightPx:I

.field public folderCellWidthPx:I

.field public folderIconSizePx:I

.field public final heightPx:I

.field protected hotseatBarHeightPx:I

.field public hotseatCellHeightPx:I

.field public hotseatCellWidthPx:I

.field public hotseatIconSizePx:I

.field public iconDrawablePaddingOriginalPx:I

.field public iconDrawablePaddingPx:I

.field public iconSizePx:I

.field public iconTextSizePx:I

.field public final inv:Lcom/android/launcher3/InvariantDeviceProfile;

.field public final isLandscape:Z

.field public final isLargeTablet:Z

.field public final isPhone:Z

.field public final isTablet:Z

.field private final overviewModeBarItemWidthPx:I

.field private final overviewModeBarSpacerWidthPx:I

.field private final overviewModeIconZoneRatio:F

.field private final overviewModeMaxIconZoneHeightPx:I

.field private final overviewModeMinIconZoneHeightPx:I

.field private final overviewModeScaleFactor:F

.field protected pageIndicatorHeightPx:I

.field protected searchBarSpaceHeightPx:I

.field protected searchBarSpaceWidthPx:I

.field public final transposeLayoutWithOrientation:Z

.field public final widthPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V
    .registers 14

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 107
    iput-boolean p7, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 113
    const v0, 0x7f0d0001

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    .line 114
    const v0, 0x7f0d0002

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    .line 115
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_d7

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    if-nez v0, :cond_d7

    const/4 v0, 0x1

    :goto_2c
    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    .line 119
    const v0, 0x7f0d0005

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 118
    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    .line 121
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    .line 124
    const v0, 0x7f09001f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 125
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 127
    const v0, 0x7f090022

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 126
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorHeightPx:I

    .line 129
    const v0, 0x7f090024

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 128
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    .line 131
    const v0, 0x7f090025

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 130
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeMinIconZoneHeightPx:I

    .line 133
    const v0, 0x7f090026

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 132
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeMaxIconZoneHeightPx:I

    .line 135
    const v0, 0x7f090027

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 134
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeBarItemWidthPx:I

    .line 137
    const v0, 0x7f090028

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 136
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeBarSpacerWidthPx:I

    .line 139
    const/high16 v0, 0x7f0c0000

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    .line 138
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeIconZoneRatio:F

    .line 141
    const v0, 0x7f0c0001

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    .line 140
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeScaleFactor:F

    .line 143
    const v0, 0x7f090023

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 142
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    .line 146
    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    invoke-static {v0, v2}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:I

    .line 149
    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    invoke-static {v0, v2}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 152
    iput p5, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 153
    iput p6, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 154
    if-eqz p7, :cond_da

    .line 155
    iget v0, p4, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    .line 156
    iget v0, p3, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    .line 163
    :goto_d0
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->computeAllAppsButtonSize(Landroid/content/Context;)V

    .line 165
    return-void

    .line 115
    :cond_d7
    const/4 v0, 0x0

    goto/16 :goto_2c

    .line 158
    :cond_da
    iget v0, p3, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    .line 159
    iget v0, p4, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    goto :goto_d0
.end method

.method public static calculateCellHeight(II)I
    .registers 3

    .prologue
    .line 367
    div-int v0, p0, p1

    return v0
.end method

.method public static calculateCellWidth(II)I
    .registers 3

    .prologue
    .line 364
    div-int v0, p0, p1

    return v0
.end method

.method private getCurrentHeight()I
    .registers 3

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_d

    .line 511
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 510
    :goto_c
    return v0

    .line 512
    :cond_d
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_c
.end method

.method private getCurrentWidth()I
    .registers 3

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_d

    .line 505
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 504
    :goto_c
    return v0

    .line 506
    :cond_d
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_c
.end method

.method private getSearchBarTopOffset()I
    .registers 2

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_f

    .line 248
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v0, v0, 0x4

    .line 250
    :goto_e
    return v0

    :cond_f
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_e
.end method

.method private getVisibleChildCount(Landroid/view/ViewGroup;)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 384
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_9

    .line 389
    return v1

    .line 385
    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_17

    .line 386
    add-int/lit8 v1, v1, 0x1

    .line 384
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private getWorkspacePageSpacing(Z)I
    .registers 4

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-nez v0, :cond_c

    :cond_8
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    if-eqz v0, :cond_f

    .line 329
    :cond_c
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    .line 334
    :goto_e
    return v0

    :cond_f
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_e
.end method


# virtual methods
.method protected computeAllAppsButtonSize(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 173
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 174
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatIconSizePx:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsButtonVisualSize:I

    .line 175
    return-void
.end method

.method public configViewEditmode(Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getOverviewModeButtonBarRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 489
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 490
    const/16 v2, 0x51

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 492
    invoke-direct {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getVisibleChildCount(Landroid/view/ViewGroup;)I

    move-result v2

    .line 493
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeBarItemWidthPx:I

    mul-int/2addr v3, v2

    .line 494
    add-int/lit8 v2, v2, -0x1

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeBarSpacerWidthPx:I

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 496
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 497
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 498
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    return-void
.end method

.method getHotseatRect()Landroid/graphics/Rect;
    .registers 6

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 355
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    sub-int/2addr v1, v2

    .line 356
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    .line 355
    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 358
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    sub-int/2addr v1, v2

    .line 359
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    .line 358
    invoke-direct {v0, v3, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_16
.end method

.method getOverviewModeButtonBarRect()Landroid/graphics/Rect;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 339
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeIconZoneRatio:F

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 340
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeMaxIconZoneHeightPx:I

    .line 341
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeMinIconZoneHeightPx:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 340
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 342
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    sub-int v0, v2, v0

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-direct {v1, v3, v0, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getOverviewModeScale(Z)F
    .registers 6

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getOverviewModeButtonBarRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 348
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    .line 349
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeScaleFactor:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method public getSearchBarBounds(Z)Landroid/graphics/Rect;
    .registers 8

    .prologue
    .line 256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 257
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_2f

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz v1, :cond_2f

    .line 258
    if-eqz p1, :cond_21

    .line 259
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 260
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v4, v5

    .line 259
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 284
    :goto_20
    return-object v0

    .line 262
    :cond_21
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    .line 263
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v4, v5

    .line 262
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_20

    .line 266
    :cond_2f
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_61

    .line 269
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCurrentWidth()I

    move-result v1

    .line 272
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 273
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v2, v3

    .line 272
    sub-int/2addr v1, v2

    .line 273
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    .line 272
    div-int/2addr v1, v2

    .line 274
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v2, v1

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getSearchBarTopOffset()I

    move-result v3

    .line 275
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v1, v5

    sub-int v1, v4, v1

    .line 276
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    .line 274
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_20

    .line 278
    :cond_61
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 279
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getSearchBarTopOffset()I

    move-result v2

    .line 280
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 281
    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 280
    sub-int/2addr v3, v4

    .line 281
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    .line 278
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_20
.end method

.method protected getWorkspacePadding(Z)Landroid/graphics/Rect;
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getSearchBarBounds(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 290
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 291
    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v2, :cond_32

    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz v2, :cond_32

    .line 293
    if-eqz p1, :cond_24

    .line 294
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 295
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 294
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 323
    :goto_23
    return-object v1

    .line 297
    :cond_24
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 298
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 297
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_23

    .line 301
    :cond_32
    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v2, :cond_85

    .line 304
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->dragViewScale:F

    sub-float/2addr v2, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    .line 305
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCurrentWidth()I

    move-result v3

    .line 306
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCurrentHeight()I

    move-result v4

    .line 307
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 308
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorHeightPx:I

    add-int/2addr v5, v6

    .line 309
    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    .line 310
    iget-object v7, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v7, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    int-to-float v7, v7

    mul-float/2addr v2, v7

    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    int-to-float v7, v7

    mul-float/2addr v2, v7

    add-float/2addr v2, v6

    float-to-int v2, v2

    sub-int v2, v3, v2

    .line 309
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 311
    sub-int v3, v4, v0

    sub-int/2addr v3, v5

    .line 312
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/lit8 v4, v4, 0x2

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    mul-int/2addr v4, v6

    sub-int/2addr v3, v4

    .line 311
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 313
    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v0, v6

    .line 314
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    .line 313
    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_23

    .line 317
    :cond_85
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 318
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 319
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 320
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorHeightPx:I

    add-int/2addr v4, v5

    .line 317
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_23
.end method

.method public isVerticalBarLayout()Z
    .registers 2

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public layout(Lcom/android/launcher3/Launcher;)V
    .registers 14

    .prologue
    const/16 v11, 0x50

    const/16 v6, 0x30

    const/4 v10, -0x2

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    .line 395
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    .line 398
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSearchBar()Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v4

    .line 399
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 400
    if-eqz v2, :cond_b3

    .line 403
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 404
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 406
    const v1, 0x7f0e00c6

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 407
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 408
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 409
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 410
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 420
    :goto_3d
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    const v0, 0x7f0e0012

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView;

    .line 424
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 425
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 426
    invoke-virtual {p0, v3}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 427
    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/launcher3/PagedView;->setPadding(IIII)V

    .line 429
    invoke-direct {p0, v3}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePageSpacing(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    .line 432
    const v0, 0x7f0e0054

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 433
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 434
    if-eqz v2, :cond_cc

    .line 437
    const/4 v3, 0x5

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 438
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 439
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 440
    const v3, 0x7f0e0047

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v8, v4, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 458
    :goto_96
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    const v0, 0x7f0e0053

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 462
    if-eqz v1, :cond_a9

    .line 463
    if-eqz v2, :cond_101

    .line 465
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 480
    :cond_a9
    :goto_a9
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/ViewGroup;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_b2

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeviceProfile;->configViewEditmode(Landroid/view/ViewGroup;)V

    .line 484
    :cond_b2
    return-void

    .line 414
    :cond_b3
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 415
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 417
    const v1, 0x7f0e00c6

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 418
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->searchBarSpaceWidthPx:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3d

    .line 441
    :cond_cc
    iget-boolean v3, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v3, :cond_ea

    .line 443
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 444
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 445
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 446
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    .line 447
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 448
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v5, v5, 0x2

    .line 446
    invoke-virtual {v1, v3, v8, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_96

    .line 452
    :cond_ea
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 453
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 454
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 455
    const v3, 0x7f0e0047

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 456
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 455
    invoke-virtual {v3, v5, v8, v4, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_96

    .line 468
    :cond_101
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 469
    const/16 v2, 0x51

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 470
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 472
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 473
    const v3, 0x7f09000a

    .line 472
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 474
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 475
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a9
.end method

.method shouldFadeAdjacentWorkspaceScreens()Z
    .registers 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public updateAppsViewNumCols(Landroid/content/res/Resources;I)V
    .registers 6

    .prologue
    .line 234
    const v0, 0x7f09004a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 236
    const v1, 0x7f090052

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 237
    if-lez p2, :cond_23

    .line 238
    :goto_10
    sub-int v0, p2, v0

    .line 239
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    add-int/2addr v1, v2

    .line 238
    div-int/2addr v0, v1

    .line 240
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 241
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsNumCols:I

    .line 242
    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsNumPredictiveCols:I

    .line 243
    return-void

    .line 237
    :cond_23
    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    goto :goto_10
.end method

.method protected updateAvailableDimensions(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 181
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    .line 182
    invoke-virtual {p0, v2, v1, p2, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 183
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 187
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v5, v4

    .line 188
    int-to-float v5, v4

    cmpl-float v5, v3, v5

    if-lez v5, :cond_28

    .line 189
    int-to-float v1, v4

    div-float/2addr v1, v3

    .line 192
    :goto_24
    invoke-virtual {p0, v1, v0, p2, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 193
    return-void

    :cond_28
    move v0, v1

    move v1, v2

    goto :goto_24
.end method

.method protected updateIconSize(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .registers 9

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    invoke-static {v0, p4}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    invoke-static {v0, p4}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    .line 199
    iput p2, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    invoke-static {v0, p4}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatIconSizePx:I

    .line 203
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 204
    const v1, 0x7f090020

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 203
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->searchBarSpaceWidthPx:I

    .line 205
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getSearchBarTopOffset()I

    move-result v0

    .line 206
    const v1, 0x7f090021

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    .line 209
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 210
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 211
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 212
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    .line 213
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 214
    const v0, 0x7f09006b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 215
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->dragViewScale:F

    .line 218
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    .line 219
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellWidthPx:I

    .line 220
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    .line 223
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    .line 224
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    .line 225
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderBackgroundOffset:I

    .line 226
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderBackgroundOffset:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    .line 227
    return-void
.end method
