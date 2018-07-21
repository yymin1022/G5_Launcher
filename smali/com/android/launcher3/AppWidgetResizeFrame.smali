.class public Lcom/android/launcher3/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# static fields
.field private static final DIMMED_HANDLE_ALPHA:F = 0.0f

.field protected static final RESIZE_THRESHOLD:F = 0.66f

.field private static final SNAP_DURATION:I = 0x96

.field private static sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field protected mBottomBorderActive:Z

.field protected final mBottomHandle:Landroid/widget/ImageView;

.field private mBottomTouchRegionAdjustment:I

.field protected final mCellLayout:Lcom/android/launcher3/CellLayout;

.field protected mDeltaX:I

.field protected mDeltaXAddOn:I

.field protected mDeltaY:I

.field protected mDeltaYAddOn:I

.field protected final mDirectionVector:[I

.field private final mDragLayer:Lcom/android/launcher3/DragLayer;

.field protected final mLastDirectionVector:[I

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field protected mLeftBorderActive:Z

.field protected final mLeftHandle:Landroid/widget/ImageView;

.field protected mMinHSpan:I

.field protected mMinVSpan:I

.field protected mResizeMode:I

.field protected mRightBorderActive:Z

.field protected final mRightHandle:Landroid/widget/ImageView;

.field protected mRunningHInc:I

.field protected mRunningVInc:I

.field private final mTmpPt:[I

.field protected mTopBorderActive:Z

.field protected final mTopHandle:Landroid/widget/ImageView;

.field private mTopTouchRegionAdjustment:I

.field protected final mTouchTargetWidth:I

.field private final mWidgetPadding:Landroid/graphics/Rect;

.field protected final mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DragLayer;)V
    .registers 13

    .prologue
    const v7, 0x7f02007c

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    .line 43
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    .line 44
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTmpPt:[I

    .line 66
    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 67
    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    move-object v0, p1

    .line 73
    check-cast v0, Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 74
    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 75
    iput-object p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 77
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 76
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 78
    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->resizeMode:I

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    .line 79
    iput-object p4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/DragLayer;

    .line 81
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getMinSpanX(Lcom/android/launcher3/Launcher;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    .line 82
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getMinSpanY(Lcom/android/launcher3/Launcher;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    .line 84
    const v1, 0x7f0200e0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->setBackgroundResource(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/launcher3/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 90
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 91
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 93
    const/16 v3, 0x13

    .line 92
    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 94
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 95
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 98
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    const/16 v3, 0x15

    .line 99
    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 101
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 102
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 105
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    const/16 v3, 0x31

    .line 106
    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 108
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 109
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 112
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    const/16 v3, 0x51

    .line 113
    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 115
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 116
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-boolean v0, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-nez v0, :cond_105

    .line 120
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v1, 0x0

    .line 119
    invoke-static {p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    .line 127
    :goto_db
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_118

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    :cond_ea
    :goto_ea
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 135
    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 137
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 143
    return-void

    .line 122
    :cond_105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 123
    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    goto :goto_db

    .line 130
    :cond_118
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    if-ne v0, v5, :cond_ea

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ea
.end method

.method public static getWidgetSizeRanges(Lcom/android/launcher3/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 12

    .prologue
    .line 347
    if-nez p3, :cond_7

    .line 348
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 350
    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/Workspace;->getCellLayoutMetrics(Lcom/android/launcher3/Launcher;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 351
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/launcher3/Workspace;->getCellLayoutMetrics(Lcom/android/launcher3/Launcher;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 352
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 355
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 356
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 357
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 358
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 359
    mul-int/2addr v3, p1

    add-int/lit8 v6, p1, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    .line 360
    mul-int/2addr v4, p2

    add-int/lit8 v5, p2, -0x1

    mul-int/2addr v0, v5

    add-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 363
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 364
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 365
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 366
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 367
    mul-int/2addr v4, p1

    add-int/lit8 v7, p1, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    .line 368
    mul-int/2addr v5, p2

    add-int/lit8 v6, p2, -0x1

    mul-int/2addr v1, v6

    add-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 369
    invoke-virtual {p3, v4, v0, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 370
    return-object p3
.end method

.method protected static updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V
    .registers 10

    .prologue
    .line 341
    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/android/launcher3/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 342
    const/4 v1, 0x0

    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 343
    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    .line 342
    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 344
    return-void
.end method

.method private visualizeResizeForDelta(IIZ)V
    .registers 7

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 203
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    .line 205
    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_34

    .line 206
    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->x:I

    .line 207
    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    .line 212
    :cond_1b
    :goto_1b
    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_40

    .line 213
    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->y:I

    .line 214
    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    .line 219
    :cond_2d
    :goto_2d
    invoke-virtual {p0, p3}, Lcom/android/launcher3/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    .line 221
    return-void

    .line 208
    :cond_34
    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_1b

    .line 209
    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    goto :goto_1b

    .line 215
    :cond_40
    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_2d

    .line 216
    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    goto :goto_2d
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .registers 11

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_99

    move v0, v1

    .line 147
    :goto_c
    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9c

    move v3, v1

    .line 149
    :goto_13
    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p1, v4, :cond_9f

    if-eqz v0, :cond_9f

    move v4, v1

    :goto_1a
    iput-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidth()I

    move-result v4

    iget v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v4, v7

    if-le p1, v4, :cond_a2

    if-eqz v0, :cond_a2

    move v0, v1

    :goto_28
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 151
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    add-int/2addr v0, v4

    if-ge p2, v0, :cond_a4

    if-eqz v3, :cond_a4

    move v0, v1

    :goto_34
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHeight()I

    move-result v0

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    add-int/2addr v0, v4

    if-le p2, v0, :cond_a6

    .line 153
    if-eqz v3, :cond_a6

    move v0, v1

    .line 152
    :goto_45
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 155
    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v0, :cond_a8

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v0, :cond_a8

    .line 156
    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v0, :cond_a8

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v0, :cond_a8

    .line 158
    :goto_57
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:I

    .line 161
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:I

    .line 163
    if-eqz v2, :cond_98

    .line 164
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_aa

    move v0, v5

    :goto_78
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 165
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_ac

    move v0, v5

    :goto_82
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 166
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v0, :cond_ae

    move v0, v5

    :goto_8c
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_b0

    :goto_95
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 169
    :cond_98
    return v2

    :cond_99
    move v0, v2

    .line 146
    goto/16 :goto_c

    :cond_9c
    move v3, v2

    .line 147
    goto/16 :goto_13

    :cond_9f
    move v4, v2

    .line 149
    goto/16 :goto_1a

    :cond_a2
    move v0, v2

    .line 150
    goto :goto_28

    :cond_a4
    move v0, v2

    .line 151
    goto :goto_34

    :cond_a6
    move v0, v2

    .line 153
    goto :goto_45

    :cond_a8
    move v2, v1

    .line 155
    goto :goto_57

    :cond_aa
    move v0, v6

    .line 164
    goto :goto_78

    :cond_ac
    move v0, v6

    .line 165
    goto :goto_82

    :cond_ae
    move v0, v6

    .line 166
    goto :goto_8c

    :cond_b0
    move v5, v6

    .line 167
    goto :goto_95
.end method

.method public commitResize()V
    .registers 2

    .prologue
    .line 378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    .line 380
    return-void
.end method

.method public onTouchUp()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 383
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getWidthGap()I

    move-result v1

    add-int/2addr v0, v1

    .line 384
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getHeightGap()I

    move-result v2

    add-int/2addr v1, v2

    .line 386
    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXAddOn:I

    .line 387
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYAddOn:I

    .line 388
    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 389
    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 391
    new-instance v0, Lcom/android/launcher3/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 397
    return-void
.end method

.method protected resizeWidgetIfNeeded(Z)V
    .registers 16

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getWidthGap()I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getHeightGap()I

    move-result v2

    add-int/2addr v1, v2

    .line 230
    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int/2addr v2, v3

    .line 231
    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int/2addr v3, v4

    .line 233
    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v2, v2

    mul-float/2addr v2, v4

    int-to-float v0, v0

    div-float v0, v2, v0

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    .line 234
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v3, v3

    mul-float/2addr v0, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    .line 236
    const/4 v0, 0x0

    .line 237
    const/4 v7, 0x0

    .line 238
    const/4 v4, 0x0

    .line 239
    const/4 v6, 0x0

    .line 241
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v9

    .line 242
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v10

    .line 244
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v5, 0x3f28f5c3    # 0.66f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1c7

    .line 245
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v1, v0

    .line 247
    :goto_5b
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3f28f5c3    # 0.66f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6a

    .line 248
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 251
    :cond_6a
    if-nez p1, :cond_71

    if-nez v1, :cond_71

    if-nez v7, :cond_71

    .line 337
    :cond_70
    :goto_70
    return-void

    .line 254
    :cond_71
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 256
    iget v11, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 257
    iget v12, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 258
    iget-boolean v0, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v0, :cond_15c

    iget v0, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 259
    :goto_84
    iget-boolean v2, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_160

    iget v2, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 261
    :goto_8a
    const/4 v3, 0x0

    .line 262
    const/4 v5, 0x0

    .line 266
    iget-boolean v13, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v13, :cond_164

    .line 267
    neg-int v3, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 268
    iget v4, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v9, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v4, v9

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 269
    mul-int/lit8 v1, v1, -0x1

    .line 270
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 271
    iget v4, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v9, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v4, v9

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 272
    neg-int v1, v4

    move v9, v1

    move v1, v3

    move v3, v4

    .line 280
    :goto_b2
    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v4, :cond_17f

    .line 281
    neg-int v4, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 282
    iget v5, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 283
    mul-int/lit8 v4, v7, -0x1

    .line 284
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 285
    iget v6, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v6, v7

    neg-int v6, v6

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 286
    neg-int v4, v6

    move v10, v4

    move v4, v5

    move v5, v6

    .line 293
    :goto_d8
    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v7, 0x0

    const/4 v13, 0x0

    aput v13, v6, v7

    .line 294
    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v7, 0x1

    const/4 v13, 0x0

    aput v13, v6, v7

    .line 296
    iget-boolean v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v6, :cond_ec

    iget-boolean v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v6, :cond_1b9

    .line 297
    :cond_ec
    add-int/2addr v3, v11

    .line 298
    add-int/2addr v1, v0

    .line 299
    if-eqz v9, :cond_fa

    .line 300
    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_19a

    const/4 v0, -0x1

    :goto_f8
    aput v0, v6, v7

    .line 304
    :cond_fa
    :goto_fa
    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v0, :cond_102

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v0, :cond_1b6

    .line 305
    :cond_102
    add-int/2addr v5, v12

    .line 306
    add-int/2addr v2, v4

    .line 307
    if-eqz v10, :cond_110

    .line 308
    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v0, :cond_19d

    const/4 v0, -0x1

    :goto_10e
    aput v0, v4, v6

    :cond_110
    move v4, v5

    .line 312
    :goto_111
    if-nez p1, :cond_117

    if-nez v10, :cond_117

    if-eqz v9, :cond_70

    .line 316
    :cond_117
    if-eqz p1, :cond_1a0

    .line 317
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v0, v5

    .line 318
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v0, v5

    .line 324
    :goto_12d
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 325
    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    move v7, p1

    .line 324
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v0

    .line 325
    if-eqz v0, :cond_155

    .line 326
    iput v1, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 327
    iput v2, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 328
    iput v3, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 329
    iput v4, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 330
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    .line 331
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    .line 332
    if-nez p1, :cond_155

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1, v3, v4}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    .line 336
    :cond_155
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->requestLayout()V

    goto/16 :goto_70

    .line 258
    :cond_15c
    iget v0, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    goto/16 :goto_84

    .line 259
    :cond_160
    iget v2, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    goto/16 :goto_8a

    .line 274
    :cond_164
    iget-boolean v13, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v13, :cond_1c2

    .line 275
    add-int v3, v0, v11

    sub-int v3, v9, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 276
    iget v3, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v9, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v3, v9

    neg-int v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v9, v1

    move v3, v1

    move v1, v4

    .line 277
    goto/16 :goto_b2

    .line 287
    :cond_17f
    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v4, :cond_1bd

    .line 288
    add-int v4, v2, v12

    sub-int v4, v10, v4

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 289
    iget v5, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v5, v7

    neg-int v5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v10, v4

    move v5, v4

    move v4, v6

    .line 290
    goto/16 :goto_d8

    .line 300
    :cond_19a
    const/4 v0, 0x1

    goto/16 :goto_f8

    .line 308
    :cond_19d
    const/4 v0, 0x1

    goto/16 :goto_10e

    .line 320
    :cond_1a0
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v0, v5

    .line 321
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v0, v5

    goto/16 :goto_12d

    :cond_1b6
    move v4, v12

    goto/16 :goto_111

    :cond_1b9
    move v1, v0

    move v3, v11

    goto/16 :goto_fa

    :cond_1bd
    move v10, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_d8

    :cond_1c2
    move v9, v3

    move v3, v1

    move v1, v4

    goto/16 :goto_b2

    :cond_1c7
    move v1, v0

    goto/16 :goto_5b
.end method

.method public snapToWidget(Z)V
    .registers 15

    .prologue
    const/4 v12, 0x3

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 400
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    .line 401
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getShirinkFactor(Lcom/android/launcher3/Workspace;)F

    move-result v1

    .line 404
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 405
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 404
    sub-float/2addr v2, v3

    .line 405
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    .line 404
    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 406
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 407
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 406
    sub-float/2addr v1, v3

    .line 407
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 406
    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 409
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTmpPt:[I

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getLeft()I

    move-result v4

    aput v4, v3, v8

    .line 410
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTmpPt:[I

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getTop()I

    move-result v4

    aput v4, v3, v9

    .line 411
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/DragLayer;

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTmpPt:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 413
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTmpPt:[I

    aget v3, v3, v8

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 414
    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTmpPt:[I

    aget v4, v4, v9

    iget v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    .line 419
    if-gez v4, :cond_c8

    .line 421
    neg-int v5, v4

    iput v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 425
    :goto_90
    add-int v5, v4, v1

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/DragLayer;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_cb

    .line 427
    add-int v5, v4, v1

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/DragLayer;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    neg-int v5, v5

    iput v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    .line 432
    :goto_a6
    if-nez p1, :cond_ce

    .line 433
    iput v2, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    .line 434
    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    .line 435
    iput v3, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->x:I

    .line 436
    iput v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->y:I

    .line 437
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 438
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 439
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 440
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 441
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    .line 471
    :goto_c7
    return-void

    .line 423
    :cond_c8
    iput v8, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    goto :goto_90

    .line 429
    :cond_cb
    iput v8, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    goto :goto_a6

    .line 443
    :cond_ce
    const-string v5, "width"

    new-array v6, v10, [I

    iget v7, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    aput v7, v6, v8

    aput v2, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 444
    const-string v5, "height"

    new-array v6, v10, [I

    iget v7, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    aput v7, v6, v8

    .line 445
    aput v1, v6, v9

    .line 444
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 446
    const-string v5, "x"

    new-array v6, v10, [I

    iget v7, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->x:I

    aput v7, v6, v8

    aput v3, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 447
    const-string v5, "y"

    new-array v6, v10, [I

    iget v7, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->y:I

    aput v7, v6, v8

    aput v4, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 449
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v5, v8

    aput-object v1, v5, v9

    aput-object v3, v5, v10

    aput-object v4, v5, v12

    invoke-static {v0, p0, v5}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v3, v9, [F

    aput v11, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 451
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v9, [F

    aput v11, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 452
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const-string v4, "alpha"

    new-array v5, v9, [F

    aput v11, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 453
    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v11, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 454
    new-instance v5, Lcom/android/launcher3/AppWidgetResizeFrame$2;

    invoke-direct {v5, p0}, Lcom/android/launcher3/AppWidgetResizeFrame$2;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 459
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 460
    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    if-ne v6, v10, :cond_16a

    .line 461
    new-array v1, v12, [Landroid/animation/Animator;

    aput-object v0, v1, v8

    aput-object v3, v1, v9

    aput-object v4, v1, v10

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 468
    :goto_160
    const-wide/16 v0, 0x96

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 469
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_c7

    .line 462
    :cond_16a
    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    if-ne v6, v9, :cond_17a

    .line 463
    new-array v3, v12, [Landroid/animation/Animator;

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    aput-object v2, v3, v10

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_160

    .line 465
    :cond_17a
    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v8

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    aput-object v3, v6, v12

    const/4 v0, 0x4

    aput-object v4, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_160
.end method

.method public updateDeltas(II)V
    .registers 6

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_39

    .line 178
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 179
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 185
    :cond_1c
    :goto_1c
    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v0, :cond_60

    .line 186
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:I

    neg-int v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 187
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 192
    :cond_38
    :goto_38
    return-void

    .line 180
    :cond_39
    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_1c

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 182
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    goto :goto_1c

    .line 188
    :cond_60
    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v0, :cond_38

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 190
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineHeight:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    goto :goto_38
.end method

.method public visualizeResizeForDelta(II)V
    .registers 4

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(IIZ)V

    .line 196
    return-void
.end method
