.class public Lcom/android/launcher3/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FocusHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .registers 3

    .prologue
    .line 453
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 454
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    return-object v0
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 21

    .prologue
    .line 186
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/FocusLogic;->shouldConsume(I)Z

    move-result v14

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_d

    if-nez v14, :cond_f

    :cond_d
    move v2, v14

    .line 286
    :goto_e
    return v2

    .line 191
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v15

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 201
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    .line 202
    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/Hotseat;

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0e0012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/launcher3/Workspace;

    .line 205
    invoke-virtual {v10}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v7

    .line 206
    invoke-virtual {v10}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v8

    .line 207
    const/4 v13, -0x1

    .line 208
    const/4 v11, -0x1

    .line 209
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 210
    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    .line 211
    invoke-virtual {v4, v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 210
    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 211
    iget v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    .line 213
    invoke-virtual {v10, v7}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 214
    if-nez v4, :cond_65

    move v2, v14

    .line 218
    goto :goto_e

    .line 220
    :cond_65
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v12

    .line 222
    const/4 v6, 0x0

    .line 223
    const/4 v5, 0x0

    .line 225
    const/16 v17, 0x13

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_e8

    .line 226
    invoke-virtual {v15}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v17

    if-nez v17, :cond_e8

    .line 228
    const/4 v5, 0x1

    iget-object v2, v15, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v6, v2, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatAllAppsRank:I

    .line 229
    iget-object v2, v15, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatAllAppsRank:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_e6

    const/4 v2, 0x1

    .line 227
    :goto_87
    invoke-static {v4, v3, v5, v6, v2}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;ZIZ)[[I

    move-result-object v5

    .line 230
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int v6, v9, v2

    .line 231
    array-length v3, v5

    .line 232
    const/4 v2, 0x0

    aget-object v2, v5, v2

    array-length v4, v2

    move-object v11, v12

    move/from16 v2, p1

    .line 257
    :goto_99
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v9

    .line 256
    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v4

    .line 259
    const/4 v3, 0x0

    .line 260
    const/4 v5, -0x8

    if-ne v4, v5, :cond_b9

    .line 261
    add-int/lit8 v3, v7, 0x1

    invoke-static {v10, v3}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v11

    .line 262
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 265
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v10, v5}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 267
    :cond_b9
    if-ne v11, v12, :cond_c6

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_c6

    .line 268
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    .line 271
    :cond_c6
    const/16 v5, -0x9

    if-ne v4, v5, :cond_14b

    .line 272
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v10, v5}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 277
    :cond_cf
    :goto_cf
    if-eqz v11, :cond_e3

    .line 278
    if-nez v3, :cond_d9

    if-ltz v4, :cond_d9

    .line 279
    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 281
    :cond_d9
    if-eqz v3, :cond_e3

    .line 282
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 283
    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/android/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    :cond_e3
    move v2, v14

    .line 286
    goto/16 :goto_e

    .line 229
    :cond_e6
    const/4 v2, 0x0

    goto :goto_87

    .line 234
    :cond_e8
    const/16 v17, 0x15

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_122

    .line 235
    invoke-virtual {v15}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v17

    if-eqz v17, :cond_122

    .line 237
    const/4 v5, 0x0

    iget-object v2, v15, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v6, v2, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatAllAppsRank:I

    .line 238
    iget-object v2, v15, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatAllAppsRank:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_120

    const/4 v2, 0x1

    .line 236
    :goto_104
    invoke-static {v4, v3, v5, v6, v2}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;ZIZ)[[I

    move-result-object v5

    .line 239
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int v6, v9, v2

    .line 240
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    add-int/2addr v3, v2

    .line 241
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v4

    move-object v11, v12

    move/from16 v2, p1

    .line 243
    goto/16 :goto_99

    .line 238
    :cond_120
    const/4 v2, 0x0

    goto :goto_104

    .line 243
    :cond_122
    const/16 v4, 0x16

    move/from16 v0, p1

    if-ne v0, v4, :cond_138

    .line 244
    invoke-virtual {v15}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-eqz v4, :cond_138

    .line 245
    const/16 p1, 0x5d

    move v4, v11

    move v3, v13

    move/from16 v2, p1

    move-object v11, v6

    move v6, v9

    .line 246
    goto/16 :goto_99

    .line 249
    :cond_138
    invoke-static {v3}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;)[[I

    move-result-object v5

    .line 250
    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v6

    .line 251
    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v4

    move-object v11, v2

    move v3, v6

    move v6, v9

    move/from16 v2, p1

    .line 252
    goto/16 :goto_99

    .line 273
    :cond_14b
    const/4 v5, -0x2

    if-ne v4, v5, :cond_cf

    .line 274
    add-int/lit8 v5, v7, -0x1

    invoke-virtual {v10, v5}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    goto/16 :goto_cf
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 21

    .prologue
    .line 293
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/FocusLogic;->shouldConsume(I)Z

    move-result v15

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_d

    if-nez v15, :cond_f

    :cond_d
    move v2, v15

    .line 441
    :goto_e
    return v2

    .line 298
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Launcher;

    .line 299
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 308
    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 309
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/launcher3/Workspace;

    .line 310
    invoke-virtual {v11}, Lcom/android/launcher3/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 311
    const v4, 0x7f0e0057

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/view/ViewGroup;

    .line 312
    const v4, 0x7f0e0054

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/launcher3/Hotseat;

    .line 314
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 315
    invoke-virtual {v11, v2}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 316
    invoke-virtual {v11}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v8

    .line 317
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v14

    .line 318
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v9

    .line 320
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/android/launcher3/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    .line 321
    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v16

    .line 327
    const/16 v4, 0x14

    move/from16 v0, p1

    if-ne v0, v4, :cond_b9

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-nez v4, :cond_b9

    .line 328
    const/16 v17, 0x1

    .line 329
    iget-object v4, v5, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v4, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatAllAppsRank:I

    .line 330
    invoke-virtual {v13}, Lcom/android/launcher3/Hotseat;->hasIcons()Z

    move-result v4

    if-eqz v4, :cond_b7

    const/4 v4, 0x0

    .line 328
    :goto_81
    move/from16 v0, v17

    invoke-static {v2, v3, v0, v5, v4}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;ZIZ)[[I

    move-result-object v5

    .line 331
    add-int/lit8 v4, v9, 0x1

    move v3, v14

    .line 347
    :goto_8a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v9

    move/from16 v2, p1

    .line 346
    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v6

    .line 348
    const/4 v5, 0x0

    .line 349
    packed-switch v6, :pswitch_data_210

    .line 429
    if-ltz v6, :cond_1ec

    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    if-ge v6, v2, :cond_1ec

    .line 430
    invoke-virtual {v10, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 437
    :cond_a8
    :goto_a8
    if-eqz v12, :cond_b4

    .line 438
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 439
    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    :cond_b4
    move v2, v15

    .line 441
    goto/16 :goto_e

    .line 330
    :cond_b7
    const/4 v4, 0x1

    goto :goto_81

    .line 332
    :cond_b9
    const/16 v4, 0x16

    move/from16 v0, p1

    if-ne v0, v4, :cond_de

    .line 333
    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-eqz v4, :cond_de

    .line 334
    const/16 v17, 0x0

    .line 335
    iget-object v4, v5, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v4, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatAllAppsRank:I

    .line 336
    invoke-virtual {v13}, Lcom/android/launcher3/Hotseat;->hasIcons()Z

    move-result v4

    if-eqz v4, :cond_dc

    const/4 v4, 0x0

    .line 334
    :goto_d2
    move/from16 v0, v17

    invoke-static {v2, v3, v0, v5, v4}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;ZIZ)[[I

    move-result-object v5

    .line 337
    add-int/lit8 v3, v14, 0x1

    move v4, v9

    .line 338
    goto :goto_8a

    .line 336
    :cond_dc
    const/4 v4, 0x1

    goto :goto_d2

    .line 338
    :cond_de
    const/16 v3, 0x43

    move/from16 v0, p1

    if-eq v0, v3, :cond_ea

    const/16 v3, 0x70

    move/from16 v0, p1

    if-ne v0, v3, :cond_ed

    :cond_ea
    move v2, v15

    .line 340
    goto/16 :goto_e

    .line 342
    :cond_ed
    invoke-static {v2}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;)[[I

    move-result-object v5

    move v4, v9

    move v3, v14

    goto :goto_8a

    .line 351
    :pswitch_f4
    const/16 v2, 0x13

    move/from16 v0, p1

    if-eq v0, v2, :cond_a8

    :cond_fa
    move-object v12, v5

    goto :goto_a8

    .line 357
    :pswitch_fc
    add-int/lit8 v2, v7, -0x1

    .line 358
    const/16 v9, -0xa

    if-ne v6, v9, :cond_20d

    .line 359
    add-int/lit8 v7, v7, 0x1

    .line 361
    :goto_104
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 362
    invoke-static {v11, v7}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v10

    .line 363
    invoke-virtual {v11, v7}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 364
    if-eqz v10, :cond_fa

    .line 365
    invoke-virtual {v11, v7}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 366
    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 368
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v5

    .line 367
    invoke-static {v2, v5, v6}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;II)[[I

    move-result-object v5

    .line 369
    add-int/lit8 v3, v3, 0x1

    .line 370
    const/16 v6, 0x64

    .line 371
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v9

    move/from16 v2, p1

    .line 369
    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v2

    .line 372
    invoke-virtual {v10, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 373
    if-nez v12, :cond_a8

    .line 374
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/android/launcher3/Hotseat;->requestFocus(I)Z

    .line 375
    invoke-virtual {v13}, Lcom/android/launcher3/Hotseat;->findFocus()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_a8

    .line 376
    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v11, v2}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    goto/16 :goto_a8

    .line 382
    :pswitch_14f
    add-int/lit8 v2, v7, -0x1

    invoke-static {v11, v2}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 383
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 384
    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v11, v2}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    goto/16 :goto_a8

    .line 387
    :pswitch_161
    add-int/lit8 v2, v7, -0x1

    invoke-static {v11, v2}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 388
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 389
    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v11, v2}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    goto/16 :goto_a8

    .line 392
    :pswitch_178
    add-int/lit8 v2, v7, 0x1

    invoke-static {v11, v2}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 393
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 394
    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v11, v2}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    goto/16 :goto_a8

    .line 398
    :pswitch_18a
    add-int/lit8 v2, v7, 0x1

    .line 399
    const/4 v9, -0x5

    if-ne v6, v9, :cond_20b

    .line 400
    add-int/lit8 v7, v7, -0x1

    .line 402
    :goto_191
    invoke-virtual {v11, v7}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 403
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 404
    invoke-static {v11, v7}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v10

    .line 405
    if-eqz v10, :cond_fa

    .line 406
    invoke-virtual {v11, v7}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 407
    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 408
    const/4 v5, -0x1

    invoke-static {v2, v5, v6}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;II)[[I

    move-result-object v5

    .line 409
    add-int/lit8 v3, v3, 0x1

    .line 410
    const/16 v6, 0x64

    .line 411
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v9

    move/from16 v2, p1

    .line 409
    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v2

    .line 412
    invoke-virtual {v10, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 413
    if-nez v12, :cond_a8

    .line 414
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Lcom/android/launcher3/Hotseat;->requestFocus(I)Z

    .line 415
    invoke-virtual {v13}, Lcom/android/launcher3/Hotseat;->findFocus()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_a8

    .line 416
    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v11, v2}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    goto/16 :goto_a8

    .line 422
    :pswitch_1d9
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_a8

    .line 425
    :pswitch_1e0
    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v10, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_a8

    .line 431
    :cond_1ec
    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    if-gt v2, v6, :cond_fa

    .line 432
    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v6, v2, :cond_fa

    .line 433
    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    sub-int v2, v6, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_a8

    :cond_20b
    move v7, v2

    goto :goto_191

    :cond_20d
    move v7, v2

    goto/16 :goto_104

    .line 349
    :pswitch_data_210
    .packed-switch -0xa
        :pswitch_fc
        :pswitch_18a
        :pswitch_178
        :pswitch_1e0
        :pswitch_1d9
        :pswitch_18a
        :pswitch_161
        :pswitch_14f
        :pswitch_fc
        :pswitch_f4
    .end packed-switch
.end method

.method static playSoundEffect(ILandroid/view/View;)V
    .registers 3

    .prologue
    .line 461
    sparse-switch p0, :sswitch_data_18

    .line 481
    :goto_3
    return-void

    .line 463
    :sswitch_4
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 466
    :sswitch_9
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 471
    :sswitch_e
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 476
    :sswitch_13
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 461
    :sswitch_data_18
    .sparse-switch
        0x13 -> :sswitch_13
        0x14 -> :sswitch_e
        0x15 -> :sswitch_4
        0x16 -> :sswitch_9
        0x5c -> :sswitch_13
        0x5d -> :sswitch_e
        0x7a -> :sswitch_13
        0x7b -> :sswitch_e
    .end sparse-switch
.end method
