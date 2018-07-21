.class public Lcom/android/launcher3/widget/WidgetCell;
.super Landroid/widget/LinearLayout;
.source "WidgetCell.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/lge/launcher3/widgettray/PreviewAppliable;


# static fields
.field private static final DEBUG:Z = false

.field private static final FADE_IN_DURATION_MS:I = 0x5a

.field private static final PREVIEW_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "WidgetCell"

.field protected static final WIDTH_SCALE:F = 2.6f


# instance fields
.field protected cellSize:I

.field private mActiveRequest:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

.field protected mDimensionsFormatString:Ljava/lang/String;

.field public mInfo:Ljava/lang/Object;

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field protected mPresetPreviewSize:I

.field private mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field protected mWidgetDims:Landroid/widget/TextView;

.field protected mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

.field protected mWidgetName:Landroid/widget/TextView;

.field protected mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 97
    new-instance v1, Lcom/android/launcher3/StylusEventHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 99
    const v1, 0x7f0f0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mDimensionsFormatString:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->setContainerWidth()V

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/WidgetCell;->setWillNotDraw(Z)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/WidgetCell;->setClipToPadding(Z)V

    .line 103
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 104
    return-void
.end method


# virtual methods
.method public applyFromAppWidgetProviderInfo(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/WidgetPreviewLoader;)V
    .registers 9

    .prologue
    .line 146
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 147
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mInfo:Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->loadLabel(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanX(Lcom/android/launcher3/Launcher;)I

    move-result v1

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 151
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanY(Lcom/android/launcher3/Launcher;)I

    move-result v2

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 152
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetCell;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    .line 154
    return-void
.end method

.method public applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher3/WidgetPreviewLoader;)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    .line 161
    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetCell;->mInfo:Ljava/lang/Object;

    .line 162
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iput-object p3, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    .line 166
    return-void
.end method

.method public applyPreview(Landroid/graphics/Bitmap;)V
    .registers 6

    .prologue
    .line 177
    if-eqz p1, :cond_1e

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetImageView;->setAlpha(F)V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 181
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x5a

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 183
    :cond_1e
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    if-eqz v0, :cond_24

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    invoke-virtual {v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->cleanup()V

    .line 135
    iput-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    .line 137
    :cond_24
    return-void
.end method

.method public ensurePreview()V
    .registers 6

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    if-eqz v0, :cond_5

    .line 195
    :goto_4
    return-void

    .line 189
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getPreviewSize()[I

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mInfo:Ljava/lang/Object;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/android/launcher3/WidgetPreviewLoader;->getPreview(Ljava/lang/Object;IILcom/lge/launcher3/widgettray/PreviewAppliable;)Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    goto :goto_4
.end method

.method public getActualItemWidth()I
    .registers 5

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 206
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getPreviewSize()[I

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    .line 209
    const/4 v3, 0x0

    aget v1, v1, v3

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    mul-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getPreviewSize()[I
    .registers 4

    .prologue
    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 171
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mPresetPreviewSize:I

    aput v2, v0, v1

    .line 172
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mPresetPreviewSize:I

    aput v2, v0, v1

    .line 173
    return-object v0
.end method

.method protected getTagToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-nez v0, :cond_10

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_19

    .line 227
    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_18
    return-object v0

    :cond_19
    const-string v0, ""

    goto :goto_18
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 116
    const v0, 0x7f0e00f1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    .line 117
    const v0, 0x7f0e00ee

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0e00ef

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    .line 119
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .prologue
    .line 200
    invoke-virtual {p0, p0}, Lcom/android/launcher3/widget/WidgetCell;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->ensurePreview()V

    .line 202
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 216
    const/4 v0, 0x1

    .line 218
    :cond_d
    return v0
.end method

.method protected setContainerWidth()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 108
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    int-to-float v0, v0

    const v1, 0x40266666    # 2.6f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->cellSize:I

    .line 109
    iget v0, p0, Lcom/android/launcher3/widget/WidgetCell;->cellSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mPresetPreviewSize:I

    .line 110
    return-void
.end method
