.class public Lcom/lge/launcher3/widgettray/LGWidgetCell;
.super Lcom/android/launcher3/widget/WidgetCell;
.source "LGWidgetCell.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LGWidgetCell"


# instance fields
.field private mRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetDebugText:Landroid/widget/TextView;

.field protected mWidgetGroupImage:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mRequests:Landroid/util/SparseArray;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mRequests:Landroid/util/SparseArray;

    .line 36
    return-void
.end method


# virtual methods
.method public applyFromAppWidgetProviderInfo(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/WidgetPreviewLoader;)V
    .registers 7

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetCell;->applyFromAppWidgetProviderInfo(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/WidgetPreviewLoader;)V

    .line 49
    sget-boolean v0, Lcom/lge/launcher3/config/LGFeatureConfig;->sDebugWidgetSize:Z

    if-eqz v0, :cond_82

    .line 50
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 52
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 53
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mWidgetDebugText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mw:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mh:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 54
    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mrw:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minResizeWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 55
    const-string v3, "  \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mrh:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    int-to-float v3, v3

    div-float v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "resizeMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_82
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/launcher3/widget/WidgetCell;->clear()V

    .line 130
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_c
    if-gez v1, :cond_f

    .line 135
    return-void

    .line 131
    :cond_f
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    .line 132
    invoke-virtual {v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->cleanup()V

    .line 133
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 130
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_c
.end method

.method public ensureGroupItemPreview(ILjava/lang/Object;)V
    .registers 8

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 125
    :cond_8
    :goto_8
    return-void

    .line 103
    :cond_9
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "widget_preview"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    .line 104
    iget-object v3, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    if-eqz v0, :cond_8

    .line 109
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/widgettray/GroupItemPreview;

    .line 110
    if-eqz v0, :cond_8

    .line 114
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->getPreviewSize()[I

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v2, p2, v3, v1, v0}, Lcom/android/launcher3/WidgetPreviewLoader;->getPreview(Ljava/lang/Object;IILcom/lge/launcher3/widgettray/PreviewAppliable;)Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/widgettray/GroupItemPreview;->setBackgroundResource(I)V

    goto :goto_8
.end method

.method public getInfo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getPreview(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->getPreviewSize()[I

    move-result-object v3

    .line 75
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    .line 76
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_1d

    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    move-object v2, p1

    .line 78
    check-cast v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    aget v3, v3, v6

    move-object v5, v4

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/WidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    :goto_1c
    return-object v0

    :cond_1d
    iget-object v5, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    move-object v7, p1

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 81
    aget v8, v3, v6

    const/4 v0, 0x1

    aget v9, v3, v0

    move-object v6, v1

    move-object v10, v4

    .line 80
    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/WidgetPreviewLoader;->generateShortcutPreview(Lcom/android/launcher3/Launcher;Landroid/content/pm/ResolveInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1c
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/launcher3/widget/WidgetCell;->onFinishInflate()V

    .line 41
    const v0, 0x7f0e00f2

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mWidgetGroupImage:Landroid/widget/LinearLayout;

    .line 42
    const v0, 0x7f0e00f7

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mWidgetDebugText:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method protected setContainerWidth()V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 63
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    int-to-float v1, v1

    const v2, 0x40266666    # 2.6f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->cellSize:I

    .line 64
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 65
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mPresetPreviewSize:I

    .line 66
    return-void
.end method

.method public setWidgetDims(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mWidgetDims:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 93
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_9
    return-void
.end method

.method public setWidgetName(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mWidgetName:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 87
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mWidgetName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_9
    return-void
.end method
