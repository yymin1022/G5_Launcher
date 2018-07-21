.class public Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;
.super Landroid/widget/LinearLayout;
.source "DynamicGridPannelView.java"


# static fields
.field private static final INVALID_INDEX:I = -0x1

.field private static final mMaxTableCount:I = 0x3


# instance fields
.field private mApplyButton:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mDefaultString:[Ljava/lang/String;

.field private mDynamicGrid:Lcom/lge/launcher3/dynamicgrid/DynamicGrid;

.field private mDynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOriginalIndex:I

.field private mSelectedGridIndex:I

.field private mTableLayoutIcon:[Landroid/view/View;

.field private mTableLayouts:[Landroid/widget/TableLayout;

.field private mTableList:[Landroid/widget/LinearLayout;

.field private mTextViews:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mItemWidth:I

    .line 46
    const/16 v0, 0x28

    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mItemHeight:I

    .line 47
    iput v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mOriginalIndex:I

    .line 48
    iput v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mSelectedGridIndex:I

    .line 52
    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 53
    new-instance v0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mSelectedGridIndex:I

    return v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;I)V
    .registers 2

    .prologue
    .line 48
    iput p1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mSelectedGridIndex:I

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;I)V
    .registers 2

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->setDynamicGridTableBorder(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;IZ)V
    .registers 3

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->setTalkbackItem(IZ)V

    return-void
.end method

.method static synthetic access$4(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;IIZ)V
    .registers 4

    .prologue
    .line 237
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->applyPreviewGrid(IIZ)V

    return-void
.end method

.method static synthetic access$5(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)[Landroid/view/View;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableLayoutIcon:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mOriginalIndex:I

    return v0
.end method

.method static synthetic access$7(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private applyPreviewGrid(IIZ)V
    .registers 8

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    if-nez v0, :cond_5

    .line 258
    :goto_4
    return-void

    .line 243
    :cond_5
    invoke-direct {p0, p2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->getGridInfoByIndex(I)Lcom/lge/launcher3/dynamicgrid/GridInfo;

    move-result-object v1

    .line 244
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0e0012

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 245
    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->getRepresentScreenId(IILcom/android/launcher3/Workspace;)J

    move-result-wide v2

    .line 247
    invoke-virtual {v1}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->getPageOrders()Ljava/util/ArrayList;

    move-result-object v1

    .line 248
    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->insertPreviewScreen(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V

    .line 249
    invoke-direct {p0, p2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->changePreviewWidgetSize(I)V

    .line 250
    invoke-direct {p0, p2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->changePreviewScreenGrid(I)V

    .line 251
    invoke-virtual {p0, p2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->moveItemForSelectedGrid(I)V

    .line 252
    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->removeUnusedPreviewScreen(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V

    .line 253
    if-eqz v0, :cond_30

    .line 254
    invoke-static {v0, p3}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$showAllCrossHair(Lcom/android/launcher3/Workspace;Z)V

    .line 257
    :cond_30
    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->snapToPageImmediately(I)V

    goto :goto_4
.end method

.method private calcValue(II)V
    .registers 6

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 427
    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 428
    invoke-virtual {p0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 429
    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 431
    div-int/2addr v0, p1

    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mItemWidth:I

    .line 432
    div-int v0, v1, p2

    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mItemHeight:I

    .line 433
    return-void
.end method

.method private changePreviewScreenGrid(I)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 283
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->getGrids()Ljava/util/ArrayList;

    move-result-object v5

    .line 284
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0e0012

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    move v3, v4

    .line 285
    :goto_13
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-lt v3, v1, :cond_1a

    .line 289
    return-void

    .line 286
    :cond_1a
    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v6, v2, v4

    .line 287
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v7, 0x1

    aget v2, v2, v7

    .line 286
    invoke-static {v1, v6, v2}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$updateGridSize(Lcom/android/launcher3/CellLayout;II)V

    .line 285
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_13
.end method

.method private changePreviewWidgetSize(I)V
    .registers 13

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 292
    invoke-direct {p0, p1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->getGridInfoByIndex(I)Lcom/lge/launcher3/dynamicgrid/GridInfo;

    move-result-object v5

    .line 294
    if-nez v5, :cond_9

    .line 326
    :cond_8
    return-void

    .line 298
    :cond_9
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0e0012

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    move v2, v3

    .line 299
    :goto_15
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 300
    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 301
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    move v4, v3

    .line 302
    :goto_26
    invoke-virtual {v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    if-lt v4, v1, :cond_30

    .line 299
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_15

    .line 303
    :cond_30
    invoke-virtual {v6, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 304
    instance-of v1, v7, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-eqz v1, :cond_6f

    .line 305
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 306
    iget-wide v8, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->id:J

    invoke-virtual {v5, v8, v9}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->getItemInfo(J)Lcom/android/launcher3/ItemInfo;

    move-result-object v8

    .line 308
    if-eqz v8, :cond_6f

    .line 309
    iget v1, v8, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ge v1, v10, :cond_4e

    iget v1, v8, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-lt v1, v10, :cond_73

    .line 310
    :cond_4e
    invoke-direct {p0, v7}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->showItem(Landroid/view/View;)V

    .line 312
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 311
    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 313
    iget v7, v8, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v7, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 314
    iget v7, v8, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v7, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 315
    iget v7, v8, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v7, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 316
    iget v7, v8, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v7, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 317
    iget v7, v8, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v7, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 318
    iget v7, v8, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v7, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 302
    :cond_6f
    :goto_6f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_26

    .line 320
    :cond_73
    invoke-direct {p0, v7}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->hidItem(Landroid/view/View;)V

    goto :goto_6f
.end method

.method private getGridInfoByIndex(I)Lcom/lge/launcher3/dynamicgrid/GridInfo;
    .registers 5

    .prologue
    .line 275
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->getGrids()Ljava/util/ArrayList;

    move-result-object v1

    .line 276
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v2, 0x0

    aget v2, v0, v2

    .line 277
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 278
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDynamicGrid:Lcom/lge/launcher3/dynamicgrid/DynamicGrid;

    invoke-virtual {v1, v2, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->getGridInfo(II)Lcom/lge/launcher3/dynamicgrid/GridInfo;

    move-result-object v0

    .line 279
    return-object v0
.end method

.method private getRepresentScreenId(IILcom/android/launcher3/Workspace;)J
    .registers 8

    .prologue
    .line 262
    invoke-virtual {p3}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    .line 263
    invoke-direct {p0, p2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->getGridInfoByIndex(I)Lcom/lge/launcher3/dynamicgrid/GridInfo;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->getPageOrders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 271
    :goto_1a
    return-wide v0

    .line 269
    :cond_1b
    invoke-direct {p0, p1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->getGridInfoByIndex(I)Lcom/lge/launcher3/dynamicgrid/GridInfo;

    move-result-object v2

    .line 270
    invoke-virtual {v2, v0, v1}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->getRepresentScreenId(J)J

    move-result-wide v0

    goto :goto_1a
.end method

.method private hidItem(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 330
    return-void
.end method

.method private insertPreviewScreen(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 398
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->hasFullscreen(Lcom/android/launcher3/Workspace;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    move v1, v0

    .line 400
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_16

    .line 406
    return-void

    :cond_14
    move v1, v2

    .line 398
    goto :goto_d

    .line 401
    :cond_16
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 402
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 403
    add-int v0, v2, v1

    .line 402
    invoke-virtual {p1, v4, v5, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(JI)J

    .line 400
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method private removeUnusedPreviewScreen(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 383
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_b
    if-gez v2, :cond_e

    .line 394
    return-void

    .line 384
    :cond_e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, -0xc9

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2e

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, -0x12d

    cmp-long v0, v0, v4

    if-nez v0, :cond_32

    .line 383
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_b

    .line 387
    :cond_32
    invoke-virtual {p1, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 388
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 390
    if-nez v1, :cond_2e

    .line 391
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p1, v4, v5, v0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$removeWorkspaceScreen(Lcom/android/launcher3/Workspace;JLcom/android/launcher3/CellLayout;)J

    goto :goto_2e
.end method

.method private setDynamicGridTableBorder(I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 129
    :goto_2
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableLayouts:[Landroid/widget/TableLayout;

    array-length v2, v2

    if-lt v0, v2, :cond_8

    .line 136
    return-void

    .line 130
    :cond_8
    if-ne p1, v0, :cond_17

    .line 131
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableLayoutIcon:[Landroid/view/View;

    aget-object v2, v2, v0

    const v3, 0x7f020040

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 133
    :cond_17
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableLayoutIcon:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_14
.end method

.method private setTalkbackItem(IZ)V
    .registers 9

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 140
    const-string v2, ""

    .line 141
    const/4 v0, 0x0

    :goto_9
    iget-object v3, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTextViews:[Landroid/widget/TextView;

    array-length v3, v3

    if-lt v0, v3, :cond_1e

    .line 148
    if-eqz p2, :cond_1d

    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTextViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1d

    .line 149
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTextViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/TalkBackUtils;->setTalkBack(Landroid/view/View;Ljava/lang/String;)V

    .line 151
    :cond_1d
    return-void

    .line 142
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f0f00da

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v4, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDefaultString:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v4, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTextViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private setupView()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 154
    new-array v0, v5, [Landroid/view/View;

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableLayoutIcon:[Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableLayoutIcon:[Landroid/view/View;

    const v2, 0x7f0e00a6

    invoke-virtual {p0, v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 156
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableLayoutIcon:[Landroid/view/View;

    const v2, 0x7f0e00aa

    invoke-virtual {p0, v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v3

    .line 157
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableLayoutIcon:[Landroid/view/View;

    const v2, 0x7f0e00ae

    invoke-virtual {p0, v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v4

    .line 159
    new-array v0, v5, [Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableLayouts:[Landroid/widget/TableLayout;

    .line 160
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableLayouts:[Landroid/widget/TableLayout;

    const v0, 0x7f0e00a7

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    aput-object v0, v2, v1

    .line 161
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableLayouts:[Landroid/widget/TableLayout;

    const v0, 0x7f0e00ab

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    aput-object v0, v2, v3

    .line 162
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableLayouts:[Landroid/widget/TableLayout;

    const v0, 0x7f0e00af

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    aput-object v0, v2, v4

    .line 164
    new-array v0, v5, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTextViews:[Landroid/widget/TextView;

    .line 165
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTextViews:[Landroid/widget/TextView;

    const v0, 0x7f0e00a8

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v1

    .line 166
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTextViews:[Landroid/widget/TextView;

    const v0, 0x7f0e00ac

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v3

    .line 167
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTextViews:[Landroid/widget/TextView;

    const v0, 0x7f0e00b0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v4

    .line 169
    new-array v0, v5, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableList:[Landroid/widget/LinearLayout;

    .line 170
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableList:[Landroid/widget/LinearLayout;

    const v0, 0x7f0e00a5

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    .line 171
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableList:[Landroid/widget/LinearLayout;

    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v3

    .line 172
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableList:[Landroid/widget/LinearLayout;

    const v0, 0x7f0e00ad

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v4

    move v0, v1

    .line 174
    :goto_ab
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableList:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-lt v0, v1, :cond_db

    .line 203
    const v0, 0x7f0e00b2

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mApplyButton:Landroid/widget/Button;

    .line 204
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mApplyButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$3;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$3;-><init>(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v0, 0x7f0e00b1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mCancelButton:Landroid/widget/Button;

    .line 218
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$4;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$4;-><init>(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-void

    .line 176
    :cond_db
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableList:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    new-instance v2, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$1;-><init>(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableList:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    new-instance v2, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$2;

    invoke-direct {v2, p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView$2;-><init>(Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_ab
.end method

.method private showItem(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 333
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 334
    return-void
.end method

.method private startDynamicGrid()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->init()V

    .line 120
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->getCurrentGridIndex()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mSelectedGridIndex:I

    .line 121
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->getDynamicGrid()Lcom/lge/launcher3/dynamicgrid/DynamicGrid;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDynamicGrid:Lcom/lge/launcher3/dynamicgrid/DynamicGrid;

    .line 123
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->getCurrentGridIndex()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mOriginalIndex:I

    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mSelectedGridIndex:I

    .line 124
    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mOriginalIndex:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->setTalkbackItem(IZ)V

    .line 125
    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mOriginalIndex:I

    invoke-direct {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->setDynamicGridTableBorder(I)V

    .line 126
    return-void
.end method


# virtual methods
.method public hasFullscreen(Lcom/android/launcher3/Workspace;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 409
    if-nez p1, :cond_5

    move v0, v1

    .line 422
    :goto_4
    return v0

    .line 413
    :cond_5
    invoke-virtual {p1, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 414
    if-nez v0, :cond_d

    move v0, v1

    .line 415
    goto :goto_4

    .line 418
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 419
    if-nez v0, :cond_17

    move v0, v1

    .line 420
    goto :goto_4

    .line 422
    :cond_17
    iget-boolean v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    goto :goto_4
.end method

.method public initDynamicGridView(Landroid/view/View;)V
    .registers 16

    .prologue
    const/4 v13, -0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->getGrids()Ljava/util/ArrayList;

    move-result-object v5

    .line 64
    invoke-direct {p0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->setupView()V

    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDefaultString:[Ljava/lang/String;

    if-nez v0, :cond_18

    .line 67
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->getPresetArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDefaultString:[Ljava/lang/String;

    .line 70
    :cond_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v2

    .line 71
    :goto_1d
    if-lt v4, v6, :cond_20

    .line 96
    return-void

    .line 72
    :cond_20
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 73
    aget v1, v0, v12

    if-lez v1, :cond_8e

    move v1, v2

    .line 74
    :goto_2b
    aget v3, v0, v12

    if-lt v1, v3, :cond_3e

    .line 93
    :goto_2f
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTextViews:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mDefaultString:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1d

    .line 75
    :cond_3e
    new-instance v7, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v3, v13, v13}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 76
    invoke-virtual {v7, v3}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    aget v3, v0, v2

    aget v8, v0, v12

    invoke-direct {p0, v3, v8}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->calcValue(II)V

    move v3, v2

    .line 81
    :goto_57
    aget v8, v0, v2

    if-lt v3, v8, :cond_6c

    .line 87
    iget-object v3, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableLayouts:[Landroid/widget/TableLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object v3, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableList:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 82
    :cond_6c
    new-instance v8, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;

    invoke-virtual {p0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;-><init>(Landroid/content/Context;)V

    .line 83
    iget v9, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mItemWidth:I

    iget v10, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mItemHeight:I

    invoke-virtual {v8, v9, v10}, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;->setSize(II)V

    .line 84
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    iget v10, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mItemWidth:I

    iget v11, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mItemHeight:I

    invoke-direct {v9, v10, v11}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {v7, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 91
    :cond_8e
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mTableList:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v4

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2f
.end method

.method protected moveItemForSelectedGrid(I)V
    .registers 21

    .prologue
    .line 338
    invoke-direct/range {p0 .. p1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->getGridInfoByIndex(I)Lcom/lge/launcher3/dynamicgrid/GridInfo;

    move-result-object v16

    .line 340
    if-nez v16, :cond_7

    .line 379
    :cond_6
    return-void

    .line 344
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f0e0012

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Workspace;

    .line 346
    const/4 v3, 0x0

    move v14, v3

    :goto_16
    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    if-ge v14, v3, :cond_6

    .line 347
    invoke-virtual {v2, v14}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/launcher3/CellLayout;

    .line 348
    invoke-virtual {v12}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v17

    .line 349
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v15, v3

    :goto_2e
    if-gez v15, :cond_34

    .line 346
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_16

    .line 350
    :cond_34
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 351
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/launcher3/ItemInfo;

    .line 352
    if-eqz v13, :cond_b3

    .line 353
    iget-wide v4, v13, Lcom/android/launcher3/ItemInfo;->id:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->getItemInfo(J)Lcom/android/launcher3/ItemInfo;

    move-result-object v18

    .line 354
    if-eqz v18, :cond_b3

    .line 355
    iget-wide v4, v13, Lcom/android/launcher3/ItemInfo;->screenId:J

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_67

    .line 356
    iget v4, v13, Lcom/android/launcher3/ItemInfo;->cellX:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    if-ne v4, v5, :cond_67

    .line 357
    iget v4, v13, Lcom/android/launcher3/ItemInfo;->cellY:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-eq v4, v5, :cond_b3

    .line 358
    :cond_67
    invoke-virtual {v12, v3}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 359
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 360
    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 361
    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 359
    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 362
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    iput-wide v4, v13, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 363
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v4, v13, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 364
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v4, v13, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 365
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v4, v13, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 366
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v4, v13, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 369
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 368
    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 370
    if-eqz v3, :cond_b3

    .line 371
    iget v4, v13, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 372
    iget v4, v13, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 349
    :cond_b3
    add-int/lit8 v3, v15, -0x1

    move v15, v3

    goto/16 :goto_2e
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 59
    invoke-virtual {p0, p0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->initDynamicGridView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public restoreOriginalGrid()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 229
    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mOriginalIndex:I

    if-ne v0, v3, :cond_6

    .line 235
    :goto_5
    return-void

    .line 233
    :cond_6
    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mSelectedGridIndex:I

    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mOriginalIndex:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->applyPreviewGrid(IIZ)V

    .line 234
    iput v3, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mOriginalIndex:I

    goto :goto_5
.end method

.method public setVisibility(I)V
    .registers 4

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 103
    if-nez p1, :cond_18

    .line 104
    invoke-direct {p0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->startDynamicGrid()V

    .line 105
    if-eqz v0, :cond_17

    .line 106
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$showAllCrossHair(Lcom/android/launcher3/Workspace;Z)V

    .line 107
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    .line 116
    :cond_17
    :goto_17
    return-void

    .line 110
    :cond_18
    invoke-virtual {p0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridPannelView;->restoreOriginalGrid()V

    .line 111
    if-eqz v0, :cond_17

    .line 112
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    .line 113
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$showAllCrossHair(Lcom/android/launcher3/Workspace;Z)V

    goto :goto_17
.end method
