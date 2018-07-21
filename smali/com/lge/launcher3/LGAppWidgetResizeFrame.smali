.class public Lcom/lge/launcher3/LGAppWidgetResizeFrame;
.super Lcom/android/launcher3/AppWidgetResizeFrame;
.source "LGAppWidgetResizeFrame.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private cellX:I

.field private cellXInc:I

.field private cellY:I

.field private cellYInc:I

.field private countX:I

.field private countY:I

.field private hSpanDelta:I

.field private hSpanInc:I

.field private spanX:I

.field private spanY:I

.field private vSpanDelta:I

.field private vSpanInc:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DragLayer;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DragLayer;)V

    .line 20
    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    .line 21
    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    .line 22
    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellXInc:I

    .line 23
    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellYInc:I

    .line 25
    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->countX:I

    .line 26
    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->countY:I

    .line 28
    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanX:I

    .line 29
    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanY:I

    .line 30
    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellX:I

    .line 31
    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellY:I

    .line 33
    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanDelta:I

    .line 34
    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanDelta:I

    .line 40
    invoke-virtual {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f010c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    invoke-direct {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->applyOriginalColor()V

    .line 42
    return-void
.end method

.method private applyOriginalColor()V
    .registers 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mContext:Landroid/content/Context;

    const-string v1, "color_accent_ui"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/DDTUtils;->getLGEColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 246
    if-nez v0, :cond_b

    .line 254
    :goto_a
    return-void

    .line 249
    :cond_b
    invoke-virtual {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 250
    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 251
    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 252
    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 253
    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_a
.end method

.method private calculateExpandableBorder()Lcom/android/launcher3/CellLayout$LayoutParams;
    .registers 5

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 161
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanX:I

    .line 162
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanY:I

    .line 163
    iget-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_9f

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    :goto_16
    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellX:I

    .line 164
    iget-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_a3

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    :goto_1e
    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellY:I

    .line 168
    iget-boolean v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_a7

    .line 169
    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellX:I

    neg-int v1, v1

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellXInc:I

    .line 170
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellXInc:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellXInc:I

    .line 171
    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    .line 172
    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellX:I

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    .line 173
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    .line 174
    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    neg-int v1, v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanDelta:I

    .line 182
    :cond_5f
    :goto_5f
    iget-boolean v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_ce

    .line 183
    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellY:I

    neg-int v1, v1

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellYInc:I

    .line 184
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellYInc:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellYInc:I

    .line 185
    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    .line 186
    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellY:I

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    .line 187
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    .line 188
    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    neg-int v1, v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanDelta:I

    .line 194
    :cond_9e
    :goto_9e
    return-object v0

    .line 163
    :cond_9f
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    goto/16 :goto_16

    .line 164
    :cond_a3
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    goto/16 :goto_1e

    .line 176
    :cond_a7
    iget-boolean v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_5f

    .line 177
    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->countX:I

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellX:I

    iget v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanX:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    .line 178
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    .line 179
    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanDelta:I

    goto :goto_5f

    .line 189
    :cond_ce
    iget-boolean v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_9e

    .line 190
    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->countY:I

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellY:I

    iget v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanY:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    .line 191
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    .line 192
    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanDelta:I

    goto :goto_9e
.end method

.method private clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 51
    iput v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    .line 52
    iput v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    .line 53
    iput v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellXInc:I

    .line 54
    iput v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellYInc:I

    .line 56
    iput v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->countX:I

    .line 57
    iput v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->countY:I

    .line 59
    iput v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanX:I

    .line 60
    iput v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanY:I

    .line 61
    iput v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellX:I

    .line 62
    iput v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellY:I

    .line 64
    iput v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanDelta:I

    .line 65
    iput v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanDelta:I

    .line 67
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mDirectionVector:[I

    aput v2, v0, v2

    .line 68
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 70
    invoke-direct {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->applyOriginalColor()V

    .line 71
    return-void
.end method

.method private getSpanInc(F)I
    .registers 4

    .prologue
    .line 228
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f28f5c3    # 0.66f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    .line 229
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 231
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private sendTalkbackAccessibilityEvent()V
    .registers 11

    .prologue
    const v5, 0x7f0f011d

    const v6, 0x7f0f011c

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x1

    .line 198
    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanX:I

    iget v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->countX:I

    if-lt v0, v3, :cond_2b

    move v0, v1

    .line 199
    :goto_10
    iget v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanX:I

    iget v4, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mMinHSpan:I

    if-gt v3, v4, :cond_2d

    move v3, v1

    .line 200
    :goto_17
    iget v4, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanY:I

    iget v8, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->countY:I

    if-lt v4, v8, :cond_2f

    move v4, v1

    .line 201
    :goto_1e
    iget v8, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanY:I

    iget v9, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mMinVSpan:I

    if-gt v8, v9, :cond_25

    move v2, v1

    .line 204
    :cond_25
    iget v8, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mResizeMode:I

    packed-switch v8, :pswitch_data_58

    .line 225
    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    move v0, v2

    .line 198
    goto :goto_10

    :cond_2d
    move v3, v2

    .line 199
    goto :goto_17

    :cond_2f
    move v4, v2

    .line 200
    goto :goto_1e

    .line 206
    :pswitch_31
    if-eqz v3, :cond_3d

    move v0, v5

    :goto_34
    move v5, v0

    .line 222
    :cond_35
    :goto_35
    if-eq v5, v7, :cond_2a

    .line 223
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v5, v1}, Lcom/lge/launcher3/util/TalkBackUtils;->sendAccessibilityEvent(Landroid/content/Context;IZ)V

    goto :goto_2a

    .line 206
    :cond_3d
    if-eqz v0, :cond_41

    move v0, v6

    goto :goto_34

    :cond_41
    move v0, v7

    goto :goto_34

    .line 210
    :pswitch_43
    if-nez v2, :cond_35

    if-eqz v4, :cond_49

    move v5, v6

    goto :goto_35

    :cond_49
    move v5, v7

    goto :goto_35

    .line 214
    :pswitch_4b
    if-eqz v3, :cond_4f

    if-nez v2, :cond_35

    .line 215
    :cond_4f
    if-eqz v0, :cond_55

    if-eqz v4, :cond_55

    move v5, v6

    goto :goto_35

    :cond_55
    move v5, v7

    goto :goto_35

    .line 204
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_31
        :pswitch_43
        :pswitch_4b
    .end packed-switch
.end method

.method private switchAbnormalColor()V
    .registers 4

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 236
    invoke-virtual {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 237
    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 238
    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 239
    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 240
    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 241
    return-void
.end method

.method private updateDimensions()V
    .registers 6

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 141
    iget-boolean v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_26

    .line 142
    :cond_a
    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanX:I

    iget v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanX:I

    .line 143
    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellX:I

    iget v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellXInc:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellX:I

    .line 144
    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanDelta:I

    if-eqz v0, :cond_26

    .line 145
    iget-object v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_49

    move v0, v1

    :goto_24
    aput v0, v3, v4

    .line 149
    :cond_26
    iget-boolean v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v0, :cond_48

    .line 150
    :cond_2e
    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanY:I

    iget v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanY:I

    .line 151
    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellY:I

    iget v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellYInc:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellY:I

    .line 152
    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanDelta:I

    if-eqz v0, :cond_48

    .line 153
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v3, :cond_4b

    :goto_46
    aput v1, v0, v2

    .line 156
    :cond_48
    return-void

    :cond_49
    move v0, v2

    .line 145
    goto :goto_24

    :cond_4b
    move v1, v2

    .line 153
    goto :goto_46
.end method


# virtual methods
.method public getTouchTargetWidth()I
    .registers 2

    .prologue
    .line 257
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    return v0
.end method

.method public onTouchUp()V
    .registers 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->onTouchUp()V

    .line 47
    invoke-direct {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->applyOriginalColor()V

    .line 48
    return-void
.end method

.method protected resizeWidgetIfNeeded(Z)V
    .registers 11

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    invoke-direct {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->clear()V

    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getShirinkFactor(Lcom/android/launcher3/Workspace;)F

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getWidthGap()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 81
    iget-object v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getHeightGap()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 84
    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mDeltaX:I

    iget v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int/2addr v2, v3

    .line 85
    iget v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mDeltaY:I

    iget v4, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int/2addr v3, v4

    .line 87
    int-to-float v2, v2

    mul-float/2addr v2, v7

    int-to-float v1, v1

    div-float v1, v2, v1

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 88
    int-to-float v2, v3

    mul-float/2addr v2, v7

    int-to-float v0, v0

    div-float v0, v2, v0

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 90
    invoke-direct {p0, v1}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getSpanInc(F)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    .line 91
    invoke-direct {p0, v0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getSpanInc(F)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    .line 93
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->countX:I

    .line 94
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->countY:I

    .line 96
    if-nez p1, :cond_7a

    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanInc:I

    if-nez v0, :cond_7a

    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanInc:I

    if-nez v0, :cond_7a

    .line 137
    :goto_79
    return-void

    .line 100
    :cond_7a
    invoke-direct {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->calculateExpandableBorder()Lcom/android/launcher3/CellLayout$LayoutParams;

    move-result-object v8

    .line 102
    invoke-direct {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->updateDimensions()V

    .line 104
    if-nez p1, :cond_8f

    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanDelta:I

    if-nez v0, :cond_8f

    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanDelta:I

    if-nez v0, :cond_8f

    .line 105
    invoke-direct {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->switchAbnormalColor()V

    goto :goto_79

    .line 109
    :cond_8f
    invoke-direct {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->sendTalkbackAccessibilityEvent()V

    .line 113
    if-eqz p1, :cond_ea

    .line 114
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mDirectionVector:[I

    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mLastDirectionVector:[I

    aget v1, v1, v5

    aput v1, v0, v5

    .line 115
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mDirectionVector:[I

    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mLastDirectionVector:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 122
    :goto_a4
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellX:I

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellY:I

    iget v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanX:I

    iget v4, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanY:I

    iget-object v5, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 123
    iget-object v6, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mDirectionVector:[I

    move v7, p1

    .line 122
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v0

    .line 123
    if-eqz v0, :cond_104

    .line 124
    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellX:I

    iput v0, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 125
    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->cellY:I

    iput v0, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 126
    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanX:I

    iput v0, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 127
    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanY:I

    iput v0, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 128
    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mRunningVInc:I

    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->vSpanDelta:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mRunningVInc:I

    .line 129
    iget v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mRunningHInc:I

    iget v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->hSpanDelta:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mRunningHInc:I

    .line 130
    if-nez p1, :cond_e4

    .line 131
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v2, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanX:I

    iget v3, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->spanY:I

    invoke-static {v0, v1, v2, v3}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    .line 136
    :cond_e4
    :goto_e4
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->requestLayout()V

    goto :goto_79

    .line 117
    :cond_ea
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mLastDirectionVector:[I

    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mDirectionVector:[I

    aget v1, v1, v5

    aput v1, v0, v5

    .line 118
    iget-object v0, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mLastDirectionVector:[I

    iget-object v1, p0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->mDirectionVector:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 119
    invoke-virtual {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Home_ResizeWidget"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a4

    .line 134
    :cond_104
    invoke-direct {p0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->switchAbnormalColor()V

    goto :goto_e4
.end method
