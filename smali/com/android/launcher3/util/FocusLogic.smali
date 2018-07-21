.class public Lcom/android/launcher3/util/FocusLogic;
.super Ljava/lang/Object;
.source "FocusLogic.java"


# static fields
.field public static final CURRENT_PAGE_FIRST_ITEM:I = -0x6

.field public static final CURRENT_PAGE_LAST_ITEM:I = -0x7

.field private static final DEBUG:Z = false

.field public static final EMPTY:I = -0x1

.field public static final NEXT_PAGE_FIRST_ITEM:I = -0x8

.field public static final NEXT_PAGE_LEFT_COLUMN:I = -0x9

.field public static final NEXT_PAGE_RIGHT_COLUMN:I = -0xa

.field public static final NOOP:I = -0x1

.field public static final PIVOT:I = 0x64

.field public static final PREVIOUS_PAGE_FIRST_ITEM:I = -0x3

.field public static final PREVIOUS_PAGE_LAST_ITEM:I = -0x4

.field public static final PREVIOUS_PAGE_LEFT_COLUMN:I = -0x5

.field public static final PREVIOUS_PAGE_RIGHT_COLUMN:I = -0x2

.field private static final TAG:Ljava/lang/String; = "FocusLogic"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFullMatrix(II)[[I
    .registers 6

    .prologue
    .line 148
    filled-new-array {p0, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 150
    const/4 v1, 0x0

    :goto_d
    if-lt v1, p0, :cond_10

    .line 153
    return-object v0

    .line 151
    :cond_10
    aget-object v2, v0, v1

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public static createSparseMatrix(Lcom/android/launcher3/CellLayout;)[[I
    .registers 9

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v4

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    .line 165
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v5

    .line 167
    invoke-static {v4, v0}, Lcom/android/launcher3/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object v6

    .line 170
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_1d

    .line 180
    return-object v6

    .line 171
    :cond_1d
    invoke-virtual {v3, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 172
    invoke-virtual {v3, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v7, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 173
    invoke-virtual {v3, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-static {v0}, Lcom/android/launcher3/util/FocusLogic;->isShortCutItem(Lcom/android/launcher3/CellLayout$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 174
    if-eqz v5, :cond_53

    sub-int v0, v4, v2

    add-int/lit8 v0, v0, -0x1

    :goto_4b
    aget-object v0, v6, v0

    aput v1, v0, v7

    .line 170
    :cond_4f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_53
    move v0, v2

    .line 174
    goto :goto_4b
.end method

.method public static createSparseMatrix(Lcom/android/launcher3/CellLayout;II)[[I
    .registers 11

    .prologue
    const/16 v7, 0x64

    const/4 v2, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 260
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object v4

    move v1, v2

    .line 263
    :goto_16
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_23

    .line 275
    if-gez p1, :cond_5c

    .line 276
    aget-object v0, v4, v2

    aput v7, v0, p2

    .line 283
    :goto_22
    return-object v4

    .line 264
    :cond_23
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 265
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v6, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 266
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-static {v0}, Lcom/android/launcher3/util/FocusLogic;->isShortCutItem(Lcom/android/launcher3/CellLayout$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 267
    if-gez p1, :cond_57

    .line 268
    sub-int v0, v5, p1

    aget-object v0, v4, v0

    aput v1, v0, v6

    .line 263
    :cond_53
    :goto_53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 270
    :cond_57
    aget-object v0, v4, v5

    aput v1, v0, v6

    goto :goto_53

    .line 278
    :cond_5c
    aget-object v0, v4, p1

    aput v7, v0, p2

    goto :goto_22
.end method

.method public static createSparseMatrix(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;ZIZ)[[I
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 192
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    .line 193
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 196
    if-eqz p2, :cond_36

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    invoke-static {p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getMaxCount(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v6

    add-int/2addr v0, v6

    .line 203
    :goto_21
    invoke-static {v1, v0}, Lcom/android/launcher3/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object v6

    move v1, v2

    .line 206
    :goto_26
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_4c

    .line 218
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_33
    if-gez v1, :cond_7c

    .line 242
    return-object v6

    .line 200
    :cond_36
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    add-int/2addr v1, v0

    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    invoke-static {p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getMaxCount(Lcom/android/launcher3/CellLayout;)I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_21

    .line 207
    :cond_4c
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v7, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 208
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v8, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 209
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-static {v0}, Lcom/android/launcher3/util/FocusLogic;->isShortCutItem(Lcom/android/launcher3/CellLayout$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 210
    aget-object v0, v6, v7

    aput v1, v0, v8

    .line 206
    :cond_78
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 220
    :cond_7c
    if-eqz p2, :cond_a5

    .line 222
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 221
    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 222
    iget v7, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 223
    if-eqz p4, :cond_8e

    if-ge v7, p3, :cond_92

    .line 224
    :cond_8e
    if-nez p4, :cond_cb

    if-le v7, p3, :cond_cb

    :cond_92
    move v0, v3

    .line 227
    :goto_93
    add-int/2addr v0, v7

    aget-object v0, v6, v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/2addr v8, v1

    aput v8, v0, v7

    .line 218
    :goto_a1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_33

    .line 231
    :cond_a5
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 230
    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 231
    iget v7, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 232
    if-eqz p4, :cond_b5

    if-ge v7, p3, :cond_b9

    .line 233
    :cond_b5
    if-nez p4, :cond_c9

    if-le v7, p3, :cond_c9

    :cond_b9
    move v0, v3

    .line 236
    :goto_ba
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v8

    aget-object v8, v6, v8

    add-int/2addr v0, v7

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    aput v7, v8, v0

    goto :goto_a1

    :cond_c9
    move v0, v2

    goto :goto_ba

    :cond_cb
    move v0, v2

    goto :goto_93
.end method

.method public static getAdjacentChildInNextPage(Lcom/android/launcher3/ShortcutAndWidgetContainer;Landroid/view/View;I)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 500
    const/16 v0, -0x9

    if-ne p2, v0, :cond_1a

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v3

    xor-int/2addr v0, v3

    if-eqz v0, :cond_1c

    :goto_15
    move v3, v1

    .line 503
    :goto_16
    if-gez v3, :cond_29

    .line 511
    const/4 v0, 0x0

    :cond_19
    return-object v0

    :cond_1a
    move v0, v1

    .line 500
    goto :goto_e

    .line 501
    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    goto :goto_15

    :cond_29
    move v1, v2

    .line 504
    :goto_2a
    if-gez v1, :cond_30

    .line 503
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_16

    .line 505
    :cond_30
    invoke-virtual {p0, v3, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 506
    if-nez v0, :cond_19

    .line 504
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2a
.end method

.method private static getStringIndex(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 460
    packed-switch p0, :pswitch_data_20

    .line 470
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 461
    :pswitch_8
    const-string v0, "NOOP"

    goto :goto_7

    .line 462
    :pswitch_b
    const-string v0, "PREVIOUS_PAGE_FIRST"

    goto :goto_7

    .line 463
    :pswitch_e
    const-string v0, "PREVIOUS_PAGE_LAST"

    goto :goto_7

    .line 464
    :pswitch_11
    const-string v0, "PREVIOUS_PAGE_RIGHT_COLUMN"

    goto :goto_7

    .line 465
    :pswitch_14
    const-string v0, "CURRENT_PAGE_FIRST"

    goto :goto_7

    .line 466
    :pswitch_17
    const-string v0, "CURRENT_PAGE_LAST"

    goto :goto_7

    .line 467
    :pswitch_1a
    const-string v0, "NEXT_PAGE_FIRST"

    goto :goto_7

    .line 468
    :pswitch_1d
    const-string v0, "NEXT_PAGE_LEFT_COLUMN"

    goto :goto_7

    .line 460
    :pswitch_data_20
    .packed-switch -0x9
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_3
        :pswitch_e
        :pswitch_b
        :pswitch_11
        :pswitch_8
    .end packed-switch
.end method

.method private static handleDpadHorizontal(III[[II)I
    .registers 13

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 302
    if-nez p3, :cond_c

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dpad navigation requires a matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move v3, v5

    move v6, v4

    move v7, v4

    .line 310
    :goto_f
    if-lt v3, p1, :cond_1f

    .line 324
    add-int v0, v7, p4

    move v2, v0

    move v1, v4

    :goto_15
    if-ltz v2, :cond_19

    if-lt v2, p1, :cond_34

    .line 335
    :cond_19
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    :goto_1c
    if-lt v2, p2, :cond_3f

    .line 347
    :cond_1e
    return v0

    :cond_1f
    move v1, v5

    move v0, v6

    move v2, v7

    .line 311
    :goto_22
    if-lt v1, p2, :cond_29

    .line 310
    add-int/lit8 v3, v3, 0x1

    move v6, v0

    move v7, v2

    goto :goto_f

    .line 312
    :cond_29
    aget-object v6, p3, v3

    aget v6, v6, v1

    if-ne v6, p0, :cond_31

    move v0, v1

    move v2, v3

    .line 311
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 325
    :cond_34
    invoke-static {v2, v6, p1, p2, p3}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v0

    if-ne v0, v4, :cond_1e

    .line 324
    add-int v1, v2, p4

    move v2, v1

    move v1, v0

    goto :goto_15

    .line 336
    :cond_3f
    mul-int v1, v2, p4

    add-int v3, v6, v1

    .line 337
    mul-int v1, v2, p4

    sub-int v5, v6, v1

    .line 338
    add-int v1, v7, p4

    :goto_49
    if-ltz v1, :cond_4d

    if-lt v1, p1, :cond_51

    .line 335
    :cond_4d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1c

    .line 339
    :cond_51
    invoke-static {v1, v3, p1, p2, p3}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v0

    if-ne v0, v4, :cond_1e

    .line 342
    invoke-static {v1, v5, p1, p2, p3}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v0

    if-ne v0, v4, :cond_1e

    .line 338
    add-int/2addr v1, p4

    goto :goto_49
.end method

.method private static handleDpadVertical(III[[II)I
    .registers 13

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 363
    if-nez p3, :cond_c

    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dpad navigation requires a matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move v3, v5

    move v6, v4

    move v7, v4

    .line 369
    :goto_f
    if-lt v3, p1, :cond_21

    .line 384
    add-int v0, v6, p4

    move v2, v0

    move v1, v4

    :goto_15
    if-ltz v2, :cond_1b

    if-ge v2, p2, :cond_1b

    if-gez v2, :cond_36

    .line 395
    :cond_1b
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    :goto_1e
    if-lt v2, p1, :cond_41

    .line 407
    :cond_20
    return v0

    :cond_21
    move v1, v5

    move v0, v6

    move v2, v7

    .line 370
    :goto_24
    if-lt v1, p2, :cond_2b

    .line 369
    add-int/lit8 v3, v3, 0x1

    move v6, v0

    move v7, v2

    goto :goto_f

    .line 371
    :cond_2b
    aget-object v6, p3, v3

    aget v6, v6, v1

    if-ne v6, p0, :cond_33

    move v0, v1

    move v2, v3

    .line 370
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 385
    :cond_36
    invoke-static {v7, v2, p1, p2, p3}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v0

    if-ne v0, v4, :cond_20

    .line 384
    add-int v1, v2, p4

    move v2, v1

    move v1, v0

    goto :goto_15

    .line 396
    :cond_41
    mul-int v1, v2, p4

    add-int v3, v7, v1

    .line 397
    mul-int v1, v2, p4

    sub-int v5, v7, v1

    .line 398
    add-int v1, v6, p4

    :goto_4b
    if-ltz v1, :cond_4f

    if-lt v1, p2, :cond_53

    .line 395
    :cond_4f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1e

    .line 399
    :cond_53
    invoke-static {v3, v1, p1, p2, p3}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v0

    if-ne v0, v4, :cond_20

    .line 402
    invoke-static {v5, v1, p1, p2, p3}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v0

    if-ne v0, v4, :cond_20

    .line 398
    add-int/2addr v1, p4

    goto :goto_4b
.end method

.method public static handleKeyEvent(III[[IIIIZ)I
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 94
    sparse-switch p0, :sswitch_data_54

    move v0, v1

    .line 137
    :cond_6
    :goto_6
    return v0

    .line 96
    :sswitch_7
    invoke-static {p4, p1, p2, p3, v1}, Lcom/android/launcher3/util/FocusLogic;->handleDpadHorizontal(III[[II)I

    move-result v0

    .line 97
    if-nez p7, :cond_13

    if-ne v0, v1, :cond_13

    if-lez p5, :cond_13

    .line 98
    const/4 v0, -0x2

    .line 99
    goto :goto_6

    :cond_13
    if-eqz p7, :cond_6

    if-ne v0, v1, :cond_6

    add-int/lit8 v1, p6, -0x1

    if-ge p5, v1, :cond_6

    .line 100
    const/16 v0, -0xa

    .line 102
    goto :goto_6

    .line 104
    :sswitch_1e
    invoke-static {p4, p1, p2, p3, v0}, Lcom/android/launcher3/util/FocusLogic;->handleDpadHorizontal(III[[II)I

    move-result v0

    .line 105
    if-nez p7, :cond_2d

    if-ne v0, v1, :cond_2d

    add-int/lit8 v2, p6, -0x1

    if-ge p5, v2, :cond_2d

    .line 106
    const/16 v0, -0x9

    .line 107
    goto :goto_6

    :cond_2d
    if-eqz p7, :cond_6

    if-ne v0, v1, :cond_6

    if-lez p5, :cond_6

    .line 108
    const/4 v0, -0x5

    .line 110
    goto :goto_6

    .line 112
    :sswitch_35
    invoke-static {p4, p1, p2, p3, v0}, Lcom/android/launcher3/util/FocusLogic;->handleDpadVertical(III[[II)I

    move-result v0

    goto :goto_6

    .line 115
    :sswitch_3a
    invoke-static {p4, p1, p2, p3, v1}, Lcom/android/launcher3/util/FocusLogic;->handleDpadVertical(III[[II)I

    move-result v0

    goto :goto_6

    .line 118
    :sswitch_3f
    invoke-static {}, Lcom/android/launcher3/util/FocusLogic;->handleMoveHome()I

    move-result v0

    goto :goto_6

    .line 121
    :sswitch_44
    invoke-static {}, Lcom/android/launcher3/util/FocusLogic;->handleMoveEnd()I

    move-result v0

    goto :goto_6

    .line 124
    :sswitch_49
    invoke-static {p5, p6}, Lcom/android/launcher3/util/FocusLogic;->handlePageDown(II)I

    move-result v0

    goto :goto_6

    .line 127
    :sswitch_4e
    invoke-static {p5}, Lcom/android/launcher3/util/FocusLogic;->handlePageUp(I)I

    move-result v0

    goto :goto_6

    .line 94
    nop

    :sswitch_data_54
    .sparse-switch
        0x13 -> :sswitch_3a
        0x14 -> :sswitch_35
        0x15 -> :sswitch_7
        0x16 -> :sswitch_1e
        0x5c -> :sswitch_4e
        0x5d -> :sswitch_49
        0x7a -> :sswitch_3f
        0x7b -> :sswitch_44
    .end sparse-switch
.end method

.method private static handleMoveEnd()I
    .registers 1

    .prologue
    .line 415
    const/4 v0, -0x7

    return v0
.end method

.method private static handleMoveHome()I
    .registers 1

    .prologue
    .line 411
    const/4 v0, -0x6

    return v0
.end method

.method private static handlePageDown(II)I
    .registers 3

    .prologue
    .line 419
    add-int/lit8 v0, p1, -0x1

    if-ge p0, v0, :cond_6

    .line 420
    const/4 v0, -0x8

    .line 422
    :goto_5
    return v0

    :cond_6
    const/4 v0, -0x7

    goto :goto_5
.end method

.method private static handlePageUp(I)I
    .registers 2

    .prologue
    .line 426
    if-lez p0, :cond_4

    .line 427
    const/4 v0, -0x3

    .line 429
    :goto_3
    return v0

    :cond_4
    const/4 v0, -0x6

    goto :goto_3
.end method

.method private static inspectMatrix(IIII[[I)I
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 443
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/util/FocusLogic;->isValid(IIII)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 444
    aget-object v1, p4, p0

    aget v1, v1, p1

    if-eq v1, v0, :cond_11

    .line 445
    aget-object v0, p4, p0

    aget v0, v0, p1

    .line 453
    :cond_11
    return v0
.end method

.method public static isShortCutItem(Lcom/android/launcher3/CellLayout$LayoutParams;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 515
    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v1, v0, :cond_a

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v1, v0, :cond_a

    .line 518
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isValid(IIII)Z
    .registers 5

    .prologue
    .line 438
    if-ltz p0, :cond_a

    if-ge p0, p2, :cond_a

    if-ltz p1, :cond_a

    if-ge p1, p3, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static printMatrix([[I)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 478
    const-string v0, "FocusLogic"

    const-string v2, "\tprintMap:"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    array-length v4, p0

    .line 480
    aget-object v0, p0, v1

    array-length v5, v0

    move v3, v1

    .line 482
    :goto_d
    if-lt v3, v5, :cond_10

    .line 489
    return-void

    .line 483
    :cond_10
    const-string v0, "\t\t"

    move-object v2, v0

    move v0, v1

    .line 484
    :goto_14
    if-lt v0, v4, :cond_1f

    .line 487
    const-string v0, "FocusLogic"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d

    .line 485
    :cond_1f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%3d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aget-object v8, p0, v0

    aget v8, v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method public static shouldConsume(I)Z
    .registers 2

    .prologue
    .line 77
    const/16 v0, 0x15

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x16

    if-eq p0, v0, :cond_2a

    .line 78
    const/16 v0, 0x13

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x14

    if-eq p0, v0, :cond_2a

    .line 79
    const/16 v0, 0x7a

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_2a

    .line 80
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_2a

    .line 81
    const/16 v0, 0x43

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x70

    if-eq p0, v0, :cond_2a

    .line 77
    const/4 v0, 0x0

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x1

    goto :goto_29
.end method
