.class public Lcom/android/launcher3/ShortcutAndWidgetContainer;
.super Landroid/view/ViewGroup;
.source "ShortcutAndWidgetContainer.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CellLayoutChildren"

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mCountX:I

.field private mCountY:I

.field private mHeightGap:I

.field private mInvertIfRtl:Z

.field private mIsHotseatLayout:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    move-object v0, p1

    .line 56
    check-cast v0, Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 57
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 58
    return-void
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "ShortcutAndWidgetContainer.java"

    const-class v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "dispatchDraw"

    const-string v3, "com.android.launcher3.ShortcutAndWidgetContainer"

    const-string v4, "android.graphics.Canvas"

    const-string v5, "canvas"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x55

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .registers 4

    .prologue
    .line 220
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 224
    const/4 v0, 0x0

    :goto_8
    if-lt v0, v1, :cond_b

    .line 228
    return-void

    .line 225
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 99
    :try_start_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_11

    .line 100
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->aspectOf()Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$1$1276f481(Landroid/graphics/Canvas;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_11
    move-exception v1

    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->aspectOf()Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$1$1276f481(Landroid/graphics/Canvas;Lorg/aspectj/lang/JoinPoint;)V

    throw v1
.end method

.method getCellContentHeight()I
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mIsHotseatLayout:Z

    if-eqz v2, :cond_15

    .line 141
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    .line 140
    :goto_10
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 141
    :cond_15
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    goto :goto_10
.end method

.method getCellContentWidth()I
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mIsHotseatLayout:Z

    if-eqz v2, :cond_15

    .line 135
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->hotseatCellWidthPx:I

    .line 134
    :goto_10
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 135
    :cond_15
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    goto :goto_10
.end method

.method public getChildAt(II)Landroid/view/View;
    .registers 9

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 72
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-lt v2, v3, :cond_a

    .line 81
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 73
    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 76
    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_2c

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_2c

    .line 77
    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_2c

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v0, v4

    if-ge p2, v0, :cond_2c

    move-object v0, v1

    .line 78
    goto :goto_9

    .line 72
    :cond_2c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6
.end method

.method public invertLayoutHorizontally()Z
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public measureChild(Landroid/view/View;)V
    .registers 13

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    .line 146
    iget v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 147
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 149
    iget-boolean v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    if-nez v3, :cond_56

    .line 150
    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mHeightGap:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v5

    .line 151
    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    .line 150
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIIIZI)V

    .line 153
    instance-of v1, p1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-nez v1, :cond_46

    instance-of v1, p1, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;

    if-nez v1, :cond_46

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v1

    .line 158
    const/4 v2, 0x0

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 159
    iget v2, v7, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    float-to-int v2, v2

    .line 160
    invoke-virtual {p1, v2, v1, v2, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 168
    :cond_46
    :goto_46
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 169
    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 171
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 172
    return-void

    .line 163
    :cond_56
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getLeft()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 164
    iput v9, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    goto :goto_46
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v8

    .line 181
    const/4 v0, 0x0

    move v7, v0

    :goto_6
    if-lt v7, v8, :cond_9

    .line 201
    return-void

    .line 182
    :cond_9
    invoke-virtual {p0, v7}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_54

    .line 184
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 185
    iget v3, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 186
    iget v5, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 187
    iget v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v3

    iget v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    add-int/2addr v2, v5

    invoke-virtual {v1, v3, v5, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 189
    iget-boolean v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_54

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->dropped:Z

    .line 192
    iget-object v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 193
    invoke-virtual {p0, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getLocationOnScreen([I)V

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 195
    const-string v2, "android.home.drop"

    .line 196
    const/4 v9, 0x0

    aget v9, v6, v9

    add-int/2addr v3, v9

    iget v9, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v3, v9

    .line 197
    const/4 v9, 0x1

    aget v6, v6, v9

    add-int/2addr v5, v6

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 194
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 181
    :cond_54
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .registers 8

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 107
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 108
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setMeasuredDimension(II)V

    .line 110
    const/4 v0, 0x0

    :goto_10
    if-lt v0, v1, :cond_13

    .line 116
    return-void

    .line 111
    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_22

    .line 113
    invoke-virtual {p0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 110
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 210
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 211
    if-eqz p1, :cond_10

    .line 212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 216
    :cond_10
    return-void
.end method

.method public setCellDimensions(IIIIII)V
    .registers 7

    .prologue
    .line 62
    iput p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 63
    iput p2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 64
    iput p3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWidthGap:I

    .line 65
    iput p4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mHeightGap:I

    .line 66
    iput p5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    .line 67
    iput p6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    .line 68
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 6

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 233
    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_8

    .line 241
    return-void

    .line 234
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 235
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 237
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_1b

    if-eqz p1, :cond_1b

    .line 238
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 233
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .registers 2

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 246
    return-void
.end method

.method public setInvertIfRtl(Z)V
    .registers 2

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    .line 126
    return-void
.end method

.method public setIsHotseat(Z)V
    .registers 2

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mIsHotseatLayout:Z

    .line 130
    return-void
.end method

.method public setupLp(Lcom/android/launcher3/CellLayout$LayoutParams;)V
    .registers 9

    .prologue
    .line 119
    iget v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mHeightGap:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v5

    .line 120
    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    move-object v0, p1

    .line 119
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIIIZI)V

    .line 121
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method
