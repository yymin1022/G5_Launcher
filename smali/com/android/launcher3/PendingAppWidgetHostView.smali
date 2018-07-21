.class public Lcom/android/launcher3/PendingAppWidgetHostView;
.super Lcom/android/launcher3/LauncherAppWidgetHostView;
.source "PendingAppWidgetHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sPreloaderTheme:Landroid/content/res/Resources$Theme;


# instance fields
.field private mCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDefaultView:Landroid/view/View;

.field private final mDisabledForSafeMode:Z

.field private mDrawableSizeChanged:Z

.field private mIcon:Landroid/graphics/Bitmap;

.field private final mIconLookupIntent:Landroid/content/Intent;

.field private final mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mRect:Landroid/graphics/Rect;

.field private mSetupTextLayout:Landroid/text/Layout;

.field private final mStartState:I

.field private mTopCornerDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetInfo;Z)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    .line 62
    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 63
    iput-object p2, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 64
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    iput v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mStartState:I

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIconLookupIntent:Landroid/content/Intent;

    .line 66
    iput-boolean p3, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    .line 68
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    .line 71
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 70
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 72
    const v0, 0x7f0200be

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PendingAppWidgetHostView;->setBackgroundResource(I)V

    .line 73
    invoke-virtual {p0, v3}, Lcom/android/launcher3/PendingAppWidgetHostView;->setWillNotDraw(Z)V

    .line 74
    return-void
.end method


# virtual methods
.method public applyState()V
    .registers 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 157
    :cond_12
    return-void
.end method

.method protected getDefaultView()Landroid/view/View;
    .registers 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_18

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->applyState()V

    .line 89
    :cond_18
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    return-object v0
.end method

.method public isReadyForClickSetup()Z
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_12

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12

    .line 169
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isReinflateRequired()Z
    .registers 3

    .prologue
    .line 100
    iget v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mStartState:I

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_9

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 166
    :cond_9
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_7

    .line 256
    :goto_6
    return-void

    .line 180
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_a8

    .line 182
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    if-eqz v1, :cond_9b

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lcom/android/launcher3/PreloadIconDrawable;

    if-eqz v1, :cond_a6

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/android/launcher3/PreloadIconDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/PreloadIconDrawable;->getOutset()I

    move-result v1

    .line 185
    :goto_2d
    iget v2, v9, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 186
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 194
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 196
    :cond_9b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    .line 184
    :cond_a6
    const/4 v1, 0x0

    goto :goto_2d

    .line 199
    :cond_a8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    if-eqz v1, :cond_168

    .line 200
    iget v10, v9, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getPaddingTop()I

    move-result v11

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getPaddingBottom()I

    move-result v12

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getPaddingLeft()I

    move-result v13

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getPaddingRight()I

    move-result v14

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v13

    sub-int v4, v1, v14

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v11

    sub-int v15, v1, v12

    .line 210
    new-instance v1, Landroid/text/StaticLayout;

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    .line 212
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 210
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_182

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    sub-int v1, v15, v1

    .line 215
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 220
    iget v4, v9, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 219
    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 218
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iput v13, v1, Landroid/graphics/Rect;->left:I

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v9, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 242
    :goto_163
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 245
    :cond_168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-nez v1, :cond_1f8

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    .line 229
    :cond_182
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v13

    sub-int/2addr v1, v14

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v11

    sub-int/2addr v2, v12

    .line 230
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 237
    div-int/lit8 v1, v1, 0x2

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 237
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 240
    add-int v3, v13, v1

    add-int/2addr v1, v11

    .line 239
    invoke-virtual {v2, v13, v11, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_163

    .line 249
    :cond_1f8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherAppWidgetHostView;->onSizeChanged(IIII)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 107
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 95
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .registers 6

    .prologue
    .line 80
    return-void
.end method

.method public updateIcon(Lcom/android/launcher3/IconCache;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIconLookupIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/IconCache;->getIcon(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    if-ne v1, v0, :cond_11

    .line 146
    :cond_10
    :goto_10
    return-void

    .line 114
    :cond_11
    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 117
    iput-object v3, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 124
    iget-boolean v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    if-eqz v0, :cond_3a

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->createIconDrawable(Landroid/graphics/Bitmap;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable$State;->DISABLED:Lcom/android/launcher3/FastBitmapDrawable$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->setState(Lcom/android/launcher3/FastBitmapDrawable$State;)Z

    .line 127
    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    iput-object v3, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    :goto_37
    iput-boolean v4, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    goto :goto_10

    .line 129
    :cond_3a
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_37

    .line 133
    :cond_57
    sget-object v0, Lcom/android/launcher3/PendingAppWidgetHostView;->sPreloaderTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_6d

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/PendingAppWidgetHostView;->sPreloaderTheme:Landroid/content/res/Resources$Theme;

    .line 135
    sget-object v0, Lcom/android/launcher3/PendingAppWidgetHostView;->sPreloaderTheme:Landroid/content/res/Resources$Theme;

    const v1, 0x7f10000e

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 138
    :cond_6d
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->createIconDrawable(Landroid/graphics/Bitmap;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/android/launcher3/PreloadIconDrawable;

    sget-object v2, Lcom/android/launcher3/PendingAppWidgetHostView;->sPreloaderTheme:Landroid/content/res/Resources$Theme;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/PreloadIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    iput-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 141
    iput-object v3, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->applyState()V

    goto :goto_37
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_c

    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method
