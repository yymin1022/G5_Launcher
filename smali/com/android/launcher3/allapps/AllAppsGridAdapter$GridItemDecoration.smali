.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridItemDecoration"
.end annotation


# static fields
.field private static final DEBUG_SECTION_MARGIN:Z

.field private static final FADE_OUT_SECTIONS:Z


# instance fields
.field private mCachedSectionBounds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .registers 3

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->mCachedSectionBounds:Ljava/util/HashMap;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->mTmpBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private getAndCacheSectionBounds(Ljava/lang/String;)Landroid/graphics/PointF;
    .registers 6

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->mCachedSectionBounds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 224
    if-nez v0, :cond_31

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 226
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 227
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->mCachedSectionBounds:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_31
    return-object v0
.end method

.method private isValidHolderAndChild(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;Landroid/view/View;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 238
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 240
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 252
    :goto_e
    return v0

    .line 244
    :cond_f
    if-nez p1, :cond_13

    move v0, v1

    .line 245
    goto :goto_e

    .line 248
    :cond_13
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->getPosition()I

    move-result v0

    .line 249
    if-ltz v0, :cond_1f

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_21

    :cond_1f
    move v0, v1

    .line 250
    goto :goto_e

    .line 252
    :cond_21
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private shouldDrawItemDivider(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->getPosition()I

    move-result v0

    .line 261
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private shouldDrawItemSection(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;ILjava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 269
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->getPosition()I

    move-result v3

    .line 270
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 273
    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-eq v0, v2, :cond_12

    move v0, v1

    .line 277
    :goto_11
    return v0

    :cond_12
    if-eqz p2, :cond_22

    .line 278
    add-int/lit8 v0, v3, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-eqz v0, :cond_22

    move v0, v1

    .line 277
    goto :goto_11

    :cond_22
    move v0, v2

    goto :goto_11
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 5

    .prologue
    .line 217
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 27

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v1

    if-nez v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    if-nez v1, :cond_15

    .line 211
    :cond_14
    return-void

    .line 123
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v12

    .line 124
    const/4 v11, 0x0

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionNamesMargin:I

    if-lez v1, :cond_4f

    const/4 v1, 0x1

    move v7, v1

    .line 126
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v13

    .line 127
    const/4 v9, 0x0

    .line 128
    const/4 v8, 0x0

    .line 129
    const/4 v10, 0x0

    :goto_31
    if-ge v10, v13, :cond_14

    .line 130
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 131
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    .line 132
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14, v12}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->isValidHolderAndChild(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;Landroid/view/View;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_52

    move v1, v10

    move v2, v11

    .line 129
    :goto_4b
    add-int/lit8 v10, v1, 0x1

    move v11, v2

    goto :goto_31

    .line 125
    :cond_4f
    const/4 v1, 0x0

    move v7, v1

    goto :goto_2a

    .line 136
    :cond_52
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->shouldDrawItemDivider(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_94

    if-nez v11, :cond_94

    .line 138
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v2, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictionBarDividerOffset:I

    add-int/2addr v1, v2

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v3, v1

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v1

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v6, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 139
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 142
    const/4 v1, 0x1

    move v2, v1

    move v1, v10

    .line 144
    goto :goto_4b

    :cond_94
    if-eqz v7, :cond_1b6

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10, v12}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->shouldDrawItemSection(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1b6

    .line 146
    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    mul-int/lit8 v15, v2, 0x2

    .line 147
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->getPosition()I

    move-result v4

    .line 148
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 149
    iget-object v0, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    move-object/from16 v16, v0

    .line 152
    iget-object v3, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 153
    iget v2, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    move v5, v4

    move v6, v8

    move-object v4, v3

    move v8, v9

    move v3, v2

    :goto_bb
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    if-lt v3, v2, :cond_cf

    .line 208
    :cond_c1
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    iget v1, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    sub-int v1, v2, v1

    add-int/2addr v1, v10

    move v9, v8

    move v2, v11

    move v8, v6

    goto/16 :goto_4b

    .line 154
    :cond_cf
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 155
    iget-object v9, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 156
    iget-object v2, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    move-object/from16 v0, v16

    if-ne v2, v0, :cond_c1

    .line 159
    iget v2, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    if-le v3, v2, :cond_ee

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 153
    :goto_e7
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    goto :goto_bb

    .line 165
    :cond_ee
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->getAndCacheSectionBounds(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v17

    .line 168
    int-to-float v2, v15

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v18, v0

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-boolean v2, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIsRtl:Z

    if-eqz v2, :cond_1a8

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v4, v4, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v4, v4, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionNamesMargin:I

    sub-int/2addr v2, v4

    .line 172
    :goto_119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v4, v4, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionNamesMargin:I

    int-to-float v4, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    sub-float v4, v4, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v4, v4, v19

    float-to-int v4, v4

    add-int v19, v2, v4

    .line 173
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    add-int v4, v2, v18

    .line 178
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v2, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 179
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    move/from16 v21, v0

    add-int v21, v21, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    move/from16 v22, v0

    rem-int v2, v2, v22

    sub-int v2, v21, v2

    .line 179
    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 181
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 182
    iget-object v2, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b2

    const/4 v2, 0x0

    .line 183
    :goto_176
    if-nez v2, :cond_1b4

    .line 184
    move/from16 v0, v18

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 189
    :goto_17e
    if-lez v6, :cond_188

    add-int v4, v8, v6

    if-gt v2, v4, :cond_188

    .line 190
    sub-int v4, v8, v2

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    .line 202
    :cond_188
    move/from16 v0, v19

    int-to-float v4, v0

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v8, v8, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v4, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 205
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v6, v6, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionHeaderOffset:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    float-to-int v6, v4

    move-object v4, v9

    move v8, v2

    .line 206
    goto/16 :goto_e7

    .line 171
    :cond_1a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto/16 :goto_119

    .line 182
    :cond_1b2
    const/4 v2, 0x1

    goto :goto_176

    :cond_1b4
    move v2, v4

    goto :goto_17e

    :cond_1b6
    move v1, v10

    move v2, v11

    goto/16 :goto_4b
.end method
