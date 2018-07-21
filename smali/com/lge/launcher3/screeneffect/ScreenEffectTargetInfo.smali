.class public Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;
.super Ljava/lang/Object;
.source "ScreenEffectTargetInfo.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I


# instance fields
.field public mChild:Landroid/view/View;

.field private mIsRtL:Z

.field public mOverscrollState:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

.field public mParent:Landroid/view/ViewGroup;

.field public mScrollDirection:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

.field public mScrollRatio:F

.field public mScrollX:I

.field public mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I
    .registers 3

    .prologue
    .line 29
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->values()[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40

    :goto_27
    :try_start_27
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e

    :goto_30
    :try_start_30
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c

    :goto_39
    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

    goto :goto_4

    :catch_3c
    move-exception v1

    goto :goto_39

    :catch_3e
    move-exception v1

    goto :goto_30

    :catch_40
    move-exception v1

    goto :goto_27

    :catch_42
    move-exception v1

    goto :goto_1e

    :catch_44
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    .line 31
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    .line 33
    iput v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollX:I

    .line 35
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollDirection:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    .line 36
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 37
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mOverscrollState:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollRatio:F

    .line 41
    iput-boolean v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mIsRtL:Z

    .line 47
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mIsRtL:Z

    .line 48
    return-void
.end method

.method private getMaxScroll()I
    .registers 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 524
    const/4 v0, 0x0

    .line 531
    :cond_5
    :goto_5
    return v0

    .line 527
    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 528
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/launcher3/PagedView;

    if-eqz v1, :cond_5

    .line 529
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/launcher3/PagedView;

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getMaxScrollX(Lcom/android/launcher3/PagedView;)I

    move-result v0

    goto :goto_5
.end method

.method private getOverscrollState(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;
    .registers 4

    .prologue
    .line 130
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 151
    :pswitch_d
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    .line 154
    :goto_f
    return-object v0

    .line 132
    :pswitch_10
    iget v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollX:I

    if-gtz v0, :cond_17

    .line 133
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->INNER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    goto :goto_f

    .line 135
    :cond_17
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->OUTER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    goto :goto_f

    .line 140
    :pswitch_1a
    iget v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollX:I

    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getMaxScroll()I

    move-result v1

    if-lt v0, v1, :cond_25

    .line 141
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->INNER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    goto :goto_f

    .line 143
    :cond_25
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->OUTER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    goto :goto_f

    .line 130
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_1a
    .end packed-switch
.end method

.method private getScrollDirection(I)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;
    .registers 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getCurrentPage()I

    move-result v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollOffsetForPage(I)I

    move-result v0

    .line 90
    if-ge p1, v0, :cond_d

    .line 91
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->TO_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    .line 97
    :goto_c
    return-object v0

    .line 92
    :cond_d
    if-ge v0, p1, :cond_12

    .line 93
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->TO_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    goto :goto_c

    .line 95
    :cond_12
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    goto :goto_c
.end method

.method private getScrollX()I
    .registers 3

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/launcher3/PagedView;

    if-eqz v1, :cond_11

    .line 503
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 505
    :cond_11
    return v0
.end method

.method private getWhichPageToDraw(I)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;
    .registers 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isOverscrollLeft()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 107
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 121
    :goto_8
    return-object v0

    .line 108
    :cond_9
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isOverscrollRight()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 109
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    goto :goto_8

    .line 111
    :cond_12
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollOffsetForPage()I

    move-result v0

    .line 113
    if-ge v0, p1, :cond_1b

    .line 114
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    goto :goto_8

    .line 115
    :cond_1b
    if-ge p1, v0, :cond_20

    .line 116
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    goto :goto_8

    .line 118
    :cond_20
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    goto :goto_8
.end method

.method private indexOfHead()I
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mIsRtL:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_5
.end method

.method private indexOfTail()I
    .registers 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mIsRtL:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isOverscrollRunning()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 602
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/launcher3/PagedView;

    if-eqz v1, :cond_11

    .line 603
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScroller()Lcom/android/launcher3/LauncherScroller;

    move-result-object v1

    .line 604
    if-nez v1, :cond_12

    .line 617
    :cond_11
    :goto_11
    return v0

    .line 608
    :cond_12
    invoke-static {v1}, Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherScrollerItds$com_android_launcher3_LauncherScroller$getInterpolator(Lcom/android/launcher3/LauncherScroller;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 609
    if-eqz v1, :cond_11

    .line 613
    instance-of v1, v1, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorSpring;

    if-eqz v1, :cond_11

    .line 614
    const/4 v0, 0x1

    goto :goto_11
.end method


# virtual methods
.method public computeScrollRatio(I)F
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 167
    const/4 v0, 0x0

    .line 169
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I

    move-result-object v2

    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v3}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_62

    move v2, v0

    move v0, v1

    .line 197
    :goto_13
    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollWidthForPage(Landroid/view/View;)I

    move-result v3

    .line 198
    if-nez v3, :cond_5a

    .line 204
    :goto_1b
    return v1

    .line 171
    :pswitch_1c
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollOffsetForPage(I)I

    move-result v0

    sub-int v0, p1, v0

    move v2, v0

    move v0, v1

    .line 172
    goto :goto_13

    .line 175
    :pswitch_2b
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->indexOfPrevChild()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollOffsetForPage(I)I

    move-result v0

    sub-int v0, p1, v0

    move v2, v0

    move v0, v1

    .line 176
    goto :goto_13

    .line 179
    :pswitch_38
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->indexOfHead()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollWidthForPage(I)I

    move-result v0

    add-int v2, v0, p1

    .line 180
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mOverscrollState:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    sget-object v3, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->OUTER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    if-ne v0, v3, :cond_5f

    .line 181
    const/high16 v0, -0x40800000    # -1.0f

    .line 183
    goto :goto_13

    .line 186
    :pswitch_4b
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getMaxScroll()I

    move-result v0

    sub-int v2, p1, v0

    .line 187
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mOverscrollState:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    sget-object v3, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->OUTER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    if-ne v0, v3, :cond_5f

    .line 188
    const/high16 v0, 0x3f800000    # 1.0f

    .line 190
    goto :goto_13

    .line 202
    :cond_5a
    int-to-float v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    .line 203
    add-float/2addr v1, v0

    .line 204
    goto :goto_1b

    :cond_5f
    move v0, v1

    goto :goto_13

    .line 169
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_38
        :pswitch_1c
        :pswitch_2b
        :pswitch_4b
    .end packed-switch
.end method

.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    .line 657
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    .line 658
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getChildHeight()I
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildHeight(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 408
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getChildTop()I
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getChildWidth()I
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildWidth(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 393
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getCurrentPage()I
    .registers 3

    .prologue
    .line 512
    const/4 v0, -0x1

    .line 513
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/launcher3/PagedView;

    if-eqz v1, :cond_13

    .line 514
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    .line 516
    :cond_13
    return v0
.end method

.method public getCustomScreenEffect()Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getCustomScreenEffect(Landroid/view/View;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    return-object v0
.end method

.method public getCustomScreenEffect(Landroid/view/View;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
    .registers 3

    .prologue
    .line 471
    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/lge/launcher3/screeneffect/IScreenEffectable;

    if-nez v0, :cond_8

    .line 472
    :cond_6
    const/4 v0, 0x0

    .line 474
    :goto_7
    return-object v0

    :cond_8
    check-cast p1, Lcom/lge/launcher3/screeneffect/IScreenEffectable;

    invoke-interface {p1}, Lcom/lge/launcher3/screeneffect/IScreenEffectable;->getCustomScreenEffect()Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    goto :goto_7
.end method

.method public getCustomScreenEffectForNextChild()Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
    .registers 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getNextChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getCustomScreenEffect(Landroid/view/View;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    return-object v0
.end method

.method public getCustomScreenEffectForPrevChild()Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
    .registers 2

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getPrevChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getCustomScreenEffect(Landroid/view/View;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    return-object v0
.end method

.method public getDrawState(Z)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->VIEW_SELF:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    .line 213
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I

    move-result-object v0

    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v3}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_46

    .line 236
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->VIEW_SELF:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    .line 248
    :cond_15
    :goto_15
    return-object v0

    .line 216
    :pswitch_16
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->NORMAL_SCREEN_EFFECT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    goto :goto_15

    .line 221
    :pswitch_19
    sget-object v3, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->OVERSCROLL_SCREEN_EFFECT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    .line 223
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    sget-object v4, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    if-ne v0, v4, :cond_3f

    move v0, v1

    .line 224
    :goto_22
    iget-object v4, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    sget-object v5, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    if-ne v4, v5, :cond_41

    .line 225
    :goto_28
    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isHeadPage()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_30
    if-eqz v1, :cond_43

    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isTailPage()Z

    move-result v0

    if-nez v0, :cond_43

    .line 226
    :cond_38
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->SKIP:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    .line 229
    :goto_3a
    if-eqz p1, :cond_15

    .line 230
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->NORMAL_SCREEN_EFFECT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    goto :goto_15

    :cond_3f
    move v0, v2

    .line 223
    goto :goto_22

    :cond_41
    move v1, v2

    .line 224
    goto :goto_28

    :cond_43
    move-object v0, v3

    goto :goto_3a

    .line 213
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .registers 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/launcher3/PagedView;

    if-eqz v0, :cond_13

    .line 569
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 571
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getNextChild()Landroid/view/View;
    .registers 2

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isHeadPage()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 492
    const/4 v0, 0x0

    .line 494
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->indexOfNextChild()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_7
.end method

.method public getParentPivot(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 367
    if-eqz p1, :cond_b

    .line 368
    :goto_3
    invoke-virtual {p1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 370
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_11

    .line 378
    :cond_a
    :goto_a
    return-object p1

    .line 367
    :cond_b
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    goto :goto_3

    .line 374
    :cond_11
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/launcher3/PagedView;

    if-eqz v0, :cond_a

    .line 375
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    neg-int v1, v0

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isFullscreen(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    :goto_2c
    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 376
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_a

    .line 375
    :cond_42
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public getPrevChild()Landroid/view/View;
    .registers 2

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isHeadPage()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 482
    const/4 v0, 0x0

    .line 484
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->indexOfPrevChild()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_7
.end method

.method public getScrollDelta()I
    .registers 3

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/launcher3/PagedView;

    if-eqz v1, :cond_e

    .line 307
    iget v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollX:I

    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollOffsetForPage()I

    move-result v1

    sub-int/2addr v0, v1

    .line 309
    :cond_e
    return v0
.end method

.method public getScrollOffsetForPage()I
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollOffsetForPage(I)I

    move-result v0

    return v0
.end method

.method public getScrollOffsetForPage(I)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 290
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_6

    .line 298
    :cond_5
    :goto_5
    return v0

    .line 295
    :cond_6
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/launcher3/PagedView;

    if-eqz v1, :cond_5

    .line 296
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/launcher3/PagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    goto :goto_5
.end method

.method public getScrollWidthForPage(I)I
    .registers 3

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollWidthForPage(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getScrollWidthForPage(Landroid/view/View;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 265
    if-nez p1, :cond_4

    .line 275
    :goto_3
    return v0

    .line 269
    :cond_4
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildWidth(Landroid/view/View;)I

    move-result v2

    .line 270
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/launcher3/PagedView;

    if-eqz v1, :cond_2e

    .line 271
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isFullscreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v0

    .line 272
    :goto_19
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getChildGap()I

    move-result v0

    .line 273
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_3

    .line 271
    :cond_24
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/launcher3/PagedView;

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPageSpacing(Lcom/android/launcher3/PagedView;)I

    move-result v0

    move v1, v0

    goto :goto_19

    :cond_2e
    move v0, v2

    goto :goto_3
.end method

.method public getScroller()Lcom/android/launcher3/LauncherScroller;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/launcher3/PagedView;

    if-eqz v0, :cond_13

    .line 550
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/launcher3/PagedView;

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;

    move-result-object v0

    .line 552
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getViewportWidth()I
    .registers 3

    .prologue
    .line 538
    const/4 v0, 0x0

    .line 539
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/launcher3/PagedView;

    if-eqz v1, :cond_13

    .line 540
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v0

    .line 542
    :cond_13
    return v0
.end method

.method public hasCustomScreenEffect()Z
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getCustomScreenEffect(Landroid/view/View;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public indexOfChild(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public indexOfNextChild()I
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 334
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isTailPage()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 337
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-boolean v2, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mIsRtL:Z

    if-nez v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    add-int/2addr v0, v1

    goto :goto_7
.end method

.method public indexOfPrevChild()I
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 324
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isHeadPage()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 327
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-boolean v2, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mIsRtL:Z

    if-nez v2, :cond_14

    :goto_12
    add-int/2addr v0, v1

    goto :goto_7

    :cond_14
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public isFullscreen(Landroid/view/View;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 429
    if-nez p1, :cond_5

    move v0, v1

    .line 436
    :goto_4
    return v0

    .line 432
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 433
    if-nez v0, :cond_f

    move v0, v1

    .line 434
    goto :goto_4

    .line 436
    :cond_f
    iget-boolean v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    goto :goto_4
.end method

.method public isHeadPage()Z
    .registers 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->indexOfHead()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOverscroll()Z
    .registers 2

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isOverscrollLeft()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isOverscrollRight()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public isOverscrollLeft()Z
    .registers 2

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollX()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isOverscrollRight()Z
    .registers 3

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getMaxScroll()I

    move-result v0

    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollX()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isScrolling()Z
    .registers 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/launcher3/PagedView;

    if-eqz v0, :cond_13

    .line 579
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/launcher3/PagedView;

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isScrolling(Lcom/android/launcher3/PagedView;)Z

    move-result v0

    .line 581
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isTailPage()Z
    .registers 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->indexOfTail()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/launcher3/PagedView;

    if-eqz v0, :cond_11

    .line 560
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/launcher3/PagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/PagedView;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    .line 562
    :cond_11
    return-void
.end method

.method public updateAllPagesToOpaque()V
    .registers 5

    .prologue
    .line 644
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/launcher3/PagedView;

    if-eqz v0, :cond_12

    .line 645
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildCount()I

    move-result v2

    .line 646
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-lt v1, v2, :cond_13

    .line 651
    :cond_12
    return-void

    .line 647
    :cond_13
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 648
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/android/launcher3/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 646
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10
.end method

.method public updateInfo(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    .line 56
    :cond_6
    const/4 v0, 0x0

    .line 78
    :goto_7
    return v0

    .line 59
    :cond_8
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mChild:Landroid/view/View;

    .line 61
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollX:I

    .line 63
    iget v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollX:I

    invoke-direct {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getScrollDirection(I)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollDirection:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    .line 64
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isOverscrollRunning()Z

    move-result v0

    if-nez v0, :cond_26

    .line 65
    iget v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollX:I

    invoke-direct {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getWhichPageToDraw(I)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 67
    :cond_26
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getOverscrollState(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mOverscrollState:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    .line 69
    iget v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollX:I

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->computeScrollRatio(I)F

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mScrollRatio:F

    .line 78
    const/4 v0, 0x1

    goto :goto_7
.end method
