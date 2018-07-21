.class public Lcom/lge/launcher3/iconchange/IconChangeManager;
.super Ljava/lang/Object;
.source "IconChangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;
    }
.end annotation


# static fields
.field protected static sInstance:Lcom/lge/launcher3/iconchange/IconChangeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOriginIconShortcutInfo:Lcom/android/launcher3/ShortcutInfo;

.field private mOriginView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeManager;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private static checkOverMaxRange(Ljava/util/ArrayList;IIIII)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;IIIII)V"
        }
    .end annotation

    .prologue
    move v0, p3

    .line 51
    :goto_1
    if-ge v0, p5, :cond_10

    .line 59
    :cond_3
    add-int/lit8 v0, p4, -0x1

    :goto_5
    if-ge v0, p5, :cond_1d

    .line 67
    :cond_7
    add-int/lit8 v0, p5, 0x1

    :goto_9
    if-le v0, p3, :cond_2a

    .line 75
    :cond_b
    add-int/lit8 v0, p5, 0x1

    :goto_d
    if-lt v0, p4, :cond_37

    .line 82
    :cond_f
    return-void

    .line 52
    :cond_10
    if-ge p2, p1, :cond_3

    .line 56
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, p4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 60
    :cond_1d
    if-ge p2, p1, :cond_7

    .line 64
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p5, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 68
    :cond_2a
    if-ge p2, p1, :cond_b

    .line 72
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, p5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 76
    :cond_37
    if-ge p2, p1, :cond_f

    .line 80
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p3, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method private static findBestPlacement(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;Landroid/view/View;II)Lcom/lge/launcher3/iconchange/Area;
    .registers 16

    .prologue
    .line 131
    invoke-virtual {p1, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 133
    const/4 v3, 0x0

    .line 134
    new-instance v2, Lcom/lge/launcher3/iconchange/Area;

    invoke-direct {v2}, Lcom/lge/launcher3/iconchange/Area;-><init>()V

    .line 135
    invoke-static {p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getOccupied(Lcom/android/launcher3/CellLayout;)[[Z

    move-result-object v4

    .line 136
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 139
    invoke-static {p3, p4}, Lcom/lge/launcher3/iconchange/IconChangeManager;->getOutwardSpiralPath(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 140
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_41

    .line 148
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_60

    move-object v8, v3

    .line 156
    :goto_31
    invoke-virtual {p1, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 159
    if-nez v8, :cond_40

    .line 160
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3a
    :goto_3a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_75

    .line 183
    :cond_40
    :goto_40
    return-object v8

    .line 141
    :cond_41
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 142
    iget v7, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v8, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v8, p3

    add-int/2addr v7, v8

    .line 143
    iget v8, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, p4

    add-int/2addr v1, v8

    .line 144
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v7, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 148
    :cond_60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 149
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v6, v0, p3, p4}, Lcom/lge/launcher3/iconchange/Area;->set(IIII)V

    .line 150
    invoke-virtual {v2, v4}, Lcom/lge/launcher3/iconchange/Area;->vacant([[Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    move-object v8, v2

    .line 152
    goto :goto_31

    .line 160
    :cond_75
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 161
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v1, v3, p3, p4}, Lcom/lge/launcher3/iconchange/Area;->set(IIII)V

    .line 163
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_3a

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_3a

    .line 169
    invoke-static {p0, p1, v0, p3, p4}, Lcom/lge/launcher3/iconchange/IconChangeManager;->getLargeArea(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;Landroid/graphics/Point;II)Lcom/lge/launcher3/iconchange/Area;

    move-result-object v9

    .line 170
    if-eqz v9, :cond_a8

    .line 173
    :goto_90
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 174
    iget v1, v9, Lcom/lge/launcher3/iconchange/Area;->Left:I

    iget v2, v9, Lcom/lge/launcher3/iconchange/Area;->Top:I

    iget v3, v9, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    .line 175
    iget v4, v9, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    .line 176
    const/4 v7, 0x0

    move-object v0, p1

    move-object v5, p2

    .line 174
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v0

    .line 176
    if-eqz v0, :cond_a6

    move-object v8, v9

    .line 178
    goto :goto_40

    :cond_a6
    move-object v2, v9

    goto :goto_3a

    :cond_a8
    move-object v9, v2

    goto :goto_90
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lge/launcher3/iconchange/IconChangeManager;
    .registers 3

    .prologue
    .line 41
    const-class v1, Lcom/lge/launcher3/iconchange/IconChangeManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeManager;->sInstance:Lcom/lge/launcher3/iconchange/IconChangeManager;

    if-nez v0, :cond_e

    .line 42
    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeManager;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/iconchange/IconChangeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/iconchange/IconChangeManager;->sInstance:Lcom/lge/launcher3/iconchange/IconChangeManager;

    .line 45
    :cond_e
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeManager;->sInstance:Lcom/lge/launcher3/iconchange/IconChangeManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getLargeArea(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;Landroid/graphics/Point;II)Lcom/lge/launcher3/iconchange/Area;
    .registers 10

    .prologue
    .line 110
    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 111
    iget v1, p2, Landroid/graphics/Point;->y:I

    .line 112
    invoke-static {p0}, Lcom/lge/launcher3/infos/HomeConfiguration;->getCellCountX(Landroid/content/Context;)I

    move-result v3

    .line 113
    invoke-static {p0}, Lcom/lge/launcher3/infos/HomeConfiguration;->getCellCountY(Landroid/content/Context;)I

    move-result v2

    .line 114
    if-gt p3, v3, :cond_10

    if-le p4, v2, :cond_12

    .line 115
    :cond_10
    const/4 v0, 0x0

    .line 125
    :goto_11
    return-object v0

    .line 118
    :cond_12
    add-int v4, v1, p4

    if-le v4, v2, :cond_26

    .line 119
    sub-int v1, v2, p4

    move v2, v1

    .line 122
    :goto_19
    add-int v1, v0, p3

    if-le v1, v3, :cond_1f

    .line 123
    sub-int v0, v3, p3

    .line 125
    :cond_1f
    new-instance v1, Lcom/lge/launcher3/iconchange/Area;

    invoke-direct {v1, v0, v2, p3, p4}, Lcom/lge/launcher3/iconchange/Area;-><init>(IIII)V

    move-object v0, v1

    goto :goto_11

    :cond_26
    move v2, v1

    goto :goto_19
.end method

.method private getOriginView()Landroid/view/View;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeManager;->mOriginView:Landroid/view/View;

    return-object v0
.end method

.method private static getOutwardSpiralPath(II)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    if-ltz p0, :cond_a

    if-gez p1, :cond_b

    .line 105
    :cond_a
    return-object v0

    .line 91
    :cond_b
    mul-int v1, p0, p1

    .line 94
    add-int/lit8 v3, p0, -0x1

    .line 95
    add-int/lit8 v4, p1, -0x1

    move v5, v2

    .line 97
    :goto_12
    if-ltz v3, :cond_a

    if-ltz v4, :cond_a

    .line 98
    invoke-static/range {v0 .. v5}, Lcom/lge/launcher3/iconchange/IconChangeManager;->checkOverMaxRange(Ljava/util/ArrayList;IIIII)V

    .line 101
    add-int/lit8 v3, v3, -0x1

    .line 102
    add-int/lit8 v4, v4, -0x1

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_12
.end method

.method private setOriginView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 323
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeManager;->mOriginView:Landroid/view/View;

    .line 324
    return-void
.end method


# virtual methods
.method public changeIcon(Lcom/lge/launcher3/iconchange/IconChangeInfo;)V
    .registers 20

    .prologue
    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/launcher3/iconchange/IconChangeManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_5b

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/lge/launcher3/iconchange/IconChangeManager;->getOriginIconShortcutInfo()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v3

    .line 192
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/ShortcutInfo;->setUserCustomizedIcon(Landroid/graphics/Bitmap;)V

    .line 193
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/ShortcutInfo;->setIconId(Ljava/lang/String;)V

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/lge/launcher3/iconchange/IconChangeManager;->getOriginView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v12, v2

    .line 197
    check-cast v12, Lcom/android/launcher3/CellLayout;

    .line 198
    invoke-virtual {v12}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 199
    const/16 v2, -0x65

    .line 198
    :goto_31
    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/launcher3/iconchange/IconChangeManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-direct/range {p0 .. p0}, Lcom/lge/launcher3/iconchange/IconChangeManager;->getOriginView()Landroid/view/View;

    move-result-object v4

    .line 203
    move-object/from16 v0, p1

    iget v5, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    .line 202
    invoke-static {v2, v12, v4, v5, v6}, Lcom/lge/launcher3/iconchange/IconChangeManager;->findBestPlacement(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;Landroid/view/View;II)Lcom/lge/launcher3/iconchange/Area;

    move-result-object v15

    .line 204
    if-nez v15, :cond_5f

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/launcher3/iconchange/IconChangeManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00f7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 257
    :cond_5b
    :goto_5b
    return-void

    .line 200
    :cond_5c
    const/16 v2, -0x64

    goto :goto_31

    .line 211
    :cond_5f
    iget v2, v15, Lcom/lge/launcher3/iconchange/Area;->Left:I

    iput v2, v3, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 212
    iget v2, v15, Lcom/lge/launcher3/iconchange/Area;->Top:I

    iput v2, v3, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 213
    move-object/from16 v0, p1

    iget v2, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    iput v2, v3, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    .line 214
    move-object/from16 v0, p1

    iget v2, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    iput v2, v3, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/launcher3/iconchange/IconChangeManager;->mContext:Landroid/content/Context;

    .line 218
    iget v4, v3, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v5, v3, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 219
    iget v6, v3, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iget v7, v3, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    .line 217
    invoke-static/range {v2 .. v7}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;IIII)V

    .line 222
    if-eqz v12, :cond_8b

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/lge/launcher3/iconchange/IconChangeManager;->getOriginView()Landroid/view/View;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$removeViewWithoutMarkingCells(Lcom/android/launcher3/CellLayout;Landroid/view/View;)V

    .line 227
    :cond_8b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/launcher3/iconchange/IconChangeManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v13

    .line 229
    instance-of v2, v13, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;

    if-eqz v2, :cond_a3

    .line 230
    move-object/from16 v0, p1

    iget v4, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->adaptiveTextColor:I

    move-object v2, v13

    .line 231
    check-cast v2, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;

    invoke-virtual {v2, v4}, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->setPhotoIconTextColor(I)V

    .line 234
    :cond_a3
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 235
    if-eqz v14, :cond_5b

    .line 238
    iget v2, v3, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iput v2, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 239
    iget v2, v3, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iput v2, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 240
    iget v2, v3, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iput v2, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 241
    iget v2, v3, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    iput v2, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 242
    const/4 v2, 0x2

    new-array v10, v2, [I

    .line 244
    iget v5, v15, Lcom/lge/launcher3/iconchange/Area;->Left:I

    iget v6, v15, Lcom/lge/launcher3/iconchange/Area;->Top:I

    iget v7, v15, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    iget v8, v15, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/lge/launcher3/iconchange/IconChangeManager;->getOriginView()Landroid/view/View;

    move-result-object v9

    .line 246
    const/4 v11, 0x1

    move-object v4, v12

    .line 244
    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v2

    .line 246
    if-eqz v2, :cond_db

    .line 247
    iget v2, v15, Lcom/lge/launcher3/iconchange/Area;->Left:I

    iput v2, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 248
    iget v2, v15, Lcom/lge/launcher3/iconchange/Area;->Top:I

    iput v2, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 252
    :cond_db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/launcher3/iconchange/IconChangeManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    .line 253
    iget-wide v6, v3, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    .line 254
    iget v8, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v9, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v10, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v11, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v12, 0x1

    move-object v3, v13

    move-wide/from16 v4, v16

    .line 253
    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    goto/16 :goto_5b
.end method

.method public getOriginIconShortcutInfo()Lcom/android/launcher3/ShortcutInfo;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeManager;->mOriginIconShortcutInfo:Lcom/android/launcher3/ShortcutInfo;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/iconchange/IconChangeManager;->setOriginIconShortcutInfo(Lcom/android/launcher3/ShortcutInfo;)V

    .line 261
    invoke-direct {p0, v0}, Lcom/lge/launcher3/iconchange/IconChangeManager;->setOriginView(Landroid/view/View;)V

    .line 263
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeManager;->mContext:Landroid/content/Context;

    .line 264
    sput-object v0, Lcom/lge/launcher3/iconchange/IconChangeManager;->sInstance:Lcom/lge/launcher3/iconchange/IconChangeManager;

    .line 265
    return-void
.end method

.method public setOriginIconShortcutInfo(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 2

    .prologue
    .line 315
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeManager;->mOriginIconShortcutInfo:Lcom/android/launcher3/ShortcutInfo;

    .line 316
    return-void
.end method

.method public startIconChangeActivity(Landroid/app/Activity;Lcom/android/launcher3/ShortcutInfo;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 302
    invoke-virtual {p0, p2}, Lcom/lge/launcher3/iconchange/IconChangeManager;->setOriginIconShortcutInfo(Lcom/android/launcher3/ShortcutInfo;)V

    .line 303
    invoke-direct {p0, p3}, Lcom/lge/launcher3/iconchange/IconChangeManager;->setOriginView(Landroid/view/View;)V

    .line 305
    new-instance v0, Landroid/content/Intent;

    .line 306
    const-class v1, Lcom/lge/launcher3/iconchange/IconChangeActivity;

    .line 305
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    return-void
.end method
