.class public Lcom/lge/launcher3/profile/LGDeviceProfile;
.super Lcom/android/launcher3/DeviceProfile;
.source "LGDeviceProfile.java"


# instance fields
.field private appWidgetScale:F

.field protected desiredWorkspaceLandAdditionalLeftRightMarginPx:I

.field private realCellHeight:I

.field private realCellWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->appWidgetScale:F

    .line 140
    iput v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellWidth:I

    .line 141
    iput v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellHeight:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->hotseatBarHeightPx:I

    .line 51
    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 50
    iput v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 53
    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 52
    iput v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->pageIndicatorHeightPx:I

    .line 55
    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 54
    iput v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->iconDrawablePaddingOriginalPx:I

    .line 58
    const v1, 0x7f09000f

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLandAdditionalLeftRightMarginPx:I

    .line 60
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 61
    invoke-virtual {p0, v1, v0}, Lcom/lge/launcher3/profile/LGDeviceProfile;->updateAvailableDimensions(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/profile/LGDeviceProfile;->computeAllAppsButtonSize(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private calculateAppWidgetScale(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 154
    invoke-direct {p0}, Lcom/lge/launcher3/profile/LGDeviceProfile;->updateRealCellWidthHeight()V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 158
    const v1, 0x7f090015

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 160
    const v2, 0x7f090014

    .line 159
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 162
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 163
    iget v3, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellWidth:I

    iget-object v4, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    div-int/2addr v3, v4

    .line 164
    iget v4, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellHeight:I

    iget-object v5, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    div-int/2addr v4, v5

    .line 163
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 165
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 166
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellWidth:I

    iget-object v4, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    div-int/2addr v1, v4

    .line 167
    iget v4, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellHeight:I

    iget-object v5, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    div-int/2addr v4, v5

    .line 166
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 170
    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    .line 171
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 169
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 173
    cmpg-float v1, v0, v6

    if-gez v1, :cond_56

    .line 174
    iput v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->appWidgetScale:F

    .line 178
    :cond_55
    :goto_55
    return-void

    .line 175
    :cond_56
    iget v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->appWidgetScale:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_55

    .line 176
    iput v6, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->appWidgetScale:F

    goto :goto_55
.end method

.method private updateRealCellWidthHeight()V
    .registers 4

    .prologue
    .line 144
    iget v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellWidth:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellHeight:I

    if-nez v0, :cond_22

    .line 145
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/profile/LGDeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 146
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->availableHeightPx:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 147
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 146
    iput v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellWidth:I

    .line 148
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->availableWidthPx:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 149
    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v0

    .line 148
    iput v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellHeight:I

    .line 151
    :cond_22
    return-void
.end method


# virtual methods
.method public getAppWidgetScale(Landroid/content/Context;)F
    .registers 4

    .prologue
    .line 181
    iget v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->appWidgetScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    .line 182
    invoke-direct {p0, p1}, Lcom/lge/launcher3/profile/LGDeviceProfile;->calculateAppWidgetScale(Landroid/content/Context;)V

    .line 184
    :cond_a
    iget v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->appWidgetScale:F

    return v0
.end method

.method protected getWorkspacePadding(Z)Landroid/graphics/Rect;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 100
    iget-boolean v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_51

    .line 101
    if-eqz p1, :cond_39

    .line 102
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 103
    iget-boolean v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->isTablet:Z

    if-eqz v1, :cond_27

    .line 104
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 105
    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLandAdditionalLeftRightMarginPx:I

    add-int/2addr v1, v2

    .line 104
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 106
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->hotseatBarHeightPx:I

    add-int/2addr v1, v2

    .line 107
    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLandAdditionalLeftRightMarginPx:I

    add-int/2addr v1, v2

    .line 106
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 114
    :goto_22
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->pageIndicatorHeightPx:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 136
    :goto_26
    return-object v0

    .line 109
    :cond_27
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->hotseatBarHeightPx:I

    add-int/2addr v1, v2

    .line 110
    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLandAdditionalLeftRightMarginPx:I

    add-int/2addr v1, v2

    .line 109
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 111
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 112
    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLandAdditionalLeftRightMarginPx:I

    add-int/2addr v1, v2

    .line 111
    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_22

    .line 116
    :cond_39
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 117
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 118
    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLandAdditionalLeftRightMarginPx:I

    add-int/2addr v1, v2

    .line 117
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 119
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->hotseatBarHeightPx:I

    add-int/2addr v1, v2

    .line 120
    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLandAdditionalLeftRightMarginPx:I

    add-int/2addr v1, v2

    .line 119
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 121
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->pageIndicatorHeightPx:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_26

    .line 124
    :cond_51
    iget-boolean v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->isTablet:Z

    if-eqz v1, :cond_67

    .line 125
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 126
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 127
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 128
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->pageIndicatorHeightPx:I

    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->hotseatBarHeightPx:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_26

    .line 130
    :cond_67
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 131
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 132
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 133
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->pageIndicatorHeightPx:I

    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->hotseatBarHeightPx:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_26
.end method

.method public layout(Lcom/android/launcher3/Launcher;)V
    .registers 12

    .prologue
    const/4 v9, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 189
    invoke-super {p0, p1}, Lcom/android/launcher3/DeviceProfile;->layout(Lcom/android/launcher3/Launcher;)V

    .line 190
    iget-boolean v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_7b

    iget-boolean v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz v0, :cond_7b

    move v3, v4

    .line 194
    :goto_f
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSearchBar()Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v6

    .line 195
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 196
    const v1, 0x7f0e00c6

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 197
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 198
    if-eqz v3, :cond_7d

    .line 201
    const/16 v7, 0x10

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 202
    iget v7, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->searchBarSpaceWidthPx:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 203
    iget v7, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->searchBarSpaceHeightPx:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 204
    iget v7, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLandAdditionalLeftRightMarginPx:I

    int-to-float v7, v7

    const/high16 v8, 0x40c00000    # 6.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v0, v5, v5, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 206
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 208
    const/16 v1, 0x11

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 209
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 219
    :goto_4c
    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    const v0, 0x7f0e0053

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 223
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 224
    const/16 v2, 0x51

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 225
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 227
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f09000a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 228
    if-eqz v3, :cond_8d

    .line 229
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 234
    :goto_74
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 236
    return-void

    :cond_7b
    move v3, v5

    .line 190
    goto :goto_f

    .line 212
    :cond_7d
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 213
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->searchBarSpaceWidthPx:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 214
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->searchBarSpaceHeightPx:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 215
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 217
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_4c

    .line 232
    :cond_8d
    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->hotseatBarHeightPx:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_74
.end method

.method protected updateIconSize(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .registers 13

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 71
    iget-boolean v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_81

    iget-boolean v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz v0, :cond_81

    const/4 v0, 0x1

    .line 72
    :goto_c
    const v1, 0x7f0c0007

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 73
    invoke-direct {p0}, Lcom/lge/launcher3/profile/LGDeviceProfile;->updateRealCellWidthHeight()V

    .line 75
    if-eqz v0, :cond_83

    .line 76
    iget v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->searchBarSpaceWidthPx:I

    .line 77
    iget v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->searchBarSpaceHeightPx:I

    .line 87
    :goto_35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 88
    const v1, 0x7f090007

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    invoke-static {v1, p4}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 91
    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->iconSizePx:I

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 92
    const v1, 0x7f090012

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    iput v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->cellHeightPx:I

    .line 93
    iget v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->cellHeightPx:I

    const v1, 0x7f09001f

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->folderCellHeightPx:I

    .line 94
    iget v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->folderCellHeightPx:I

    int-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->folderCellWidthPx:I

    .line 95
    return-void

    .line 71
    :cond_81
    const/4 v0, 0x0

    goto :goto_c

    .line 79
    :cond_83
    iget-boolean v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->isTablet:Z

    if-eqz v0, :cond_9f

    .line 80
    iget v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->availableWidthPx:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->searchBarSpaceWidthPx:I

    .line 81
    iget v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->searchBarSpaceHeightPx:I

    goto :goto_35

    .line 83
    :cond_9f
    iget v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->availableWidthPx:I

    int-to-double v2, v0

    float-to-double v4, v1

    const-wide v6, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->edgeMarginPx:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->searchBarSpaceWidthPx:I

    .line 84
    iget v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->realCellWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lge/launcher3/profile/LGDeviceProfile;->searchBarSpaceHeightPx:I

    goto/16 :goto_35
.end method
