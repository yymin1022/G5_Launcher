.class Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;,
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;,
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EMPTY_SEARCH_VIEW_TYPE:I = 0x3

.field public static final ICON_VIEW_TYPE:I = 0x1

.field public static final PREDICTION_ICON_VIEW_TYPE:I = 0x2

.field public static final SECTION_BREAK_VIEW_TYPE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AppsGridAdapter"


# instance fields
.field mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field mAppsPerRow:I

.field final mBackgroundPadding:Landroid/graphics/Rect;

.field private mEmptySearchText:Ljava/lang/String;

.field private mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

.field private mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field mIsRtl:Z

.field private mItemDecoration:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field mPredictedAppsDividerPaint:Landroid/graphics/Paint;

.field mPredictionBarDividerOffset:I

.field mSectionHeaderOffset:I

.field mSectionNamesMargin:I

.field mSectionTextPaint:Landroid/graphics/Paint;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 11

    .prologue
    const/4 v4, 0x1

    .line 302
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 290
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 306
    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 307
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    .line 308
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v4, v4, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

    .line 309
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 310
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mItemDecoration:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;

    .line 311
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 312
    iput-object p3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 313
    iput-object p4, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 314
    iput-object p5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 315
    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionNamesMargin:I

    .line 316
    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionHeaderOffset:I

    .line 318
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    .line 319
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    .line 320
    const v2, 0x7f09004c

    .line 319
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 321
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 324
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    .line 325
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 326
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x1e000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 329
    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    .line 330
    const v2, 0x7f090051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 329
    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 328
    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictionBarDividerOffset:I

    .line 331
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 439
    const/4 v0, 0x1

    .line 441
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_9
.end method

.method public getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mItemDecoration:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;

    return-object v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 447
    const/4 v0, 0x3

    .line 451
    :goto_9
    return v0

    .line 450
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 451
    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    goto :goto_9
.end method

.method public getLayoutManager()Landroid/support/v7/widget/GridLayoutManager;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->onBindViewHolder(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;I)V
    .registers 5

    .prologue
    .line 415
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    .line 433
    :goto_7
    return-void

    .line 417
    :pswitch_8
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/AppInfo;

    .line 418
    iget-object v0, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 419
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V

    goto :goto_7

    .line 423
    :pswitch_1e
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/AppInfo;

    .line 424
    iget-object v0, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 425
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V

    goto :goto_7

    .line 429
    :pswitch_34
    iget-object v0, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    const v1, 0x7f0e001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 430
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mEmptySearchText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 415
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1e
        :pswitch_34
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 380
    packed-switch p2, :pswitch_data_90

    .line 409
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected view type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :pswitch_d
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040003

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 406
    :goto_1b
    return-object v0

    .line 385
    :pswitch_1c
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_1b

    .line 387
    :pswitch_2b
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 388
    const v1, 0x7f040004

    .line 387
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 389
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 390
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 392
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 393
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 392
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeout(I)V

    .line 394
    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setFocusable(Z)V

    .line 395
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_1b

    .line 398
    :pswitch_5d
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 399
    const v1, 0x7f040005

    .line 398
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 400
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 401
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 403
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 404
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 403
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeout(I)V

    .line 405
    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setFocusable(Z)V

    .line 406
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_1b

    .line 380
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2b
        :pswitch_5d
        :pswitch_d
    .end packed-switch
.end method

.method public setEmptySearchText(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mEmptySearchText:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setNumAppsPerRow(I)V
    .registers 3

    .prologue
    .line 337
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    .line 338
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 339
    return-void
.end method

.method public setRtl(Z)V
    .registers 2

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIsRtl:Z

    .line 346
    return-void
.end method

.method public updateBackgroundPadding(Landroid/graphics/Rect;)V
    .registers 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 361
    return-void
.end method
