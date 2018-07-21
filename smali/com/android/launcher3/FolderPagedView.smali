.class public Lcom/android/launcher3/FolderPagedView;
.super Lcom/android/launcher3/PagedView;
.source "FolderPagedView.java"


# static fields
.field private static final ALLOW_FOLDER_SCROLL:Z = true

.field private static final PAGE_INDICATOR_ANIMATION_DURATION:I = 0x190

.field private static final PAGE_INDICATOR_ANIMATION_STAGGERED_DELAY:I = 0x96

.field private static final PAGE_INDICATOR_ANIMATION_START_DELAY:I = 0x12c

.field private static final PAGE_INDICATOR_OVERSHOOT_TENSION:F = 4.9f

.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field private static final SCROLL_HINT_FRACTION:F = 0.07f

.field private static final START_VIEW_REORDER_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "FolderPagedView"

.field private static final VIEW_REORDER_DELAY_FACTOR:F = 0.9f

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final sTempPosArray:[I


# instance fields
.field private mAllocatedContentSize:I

.field private mFocusIndicatorView:Lcom/android/launcher3/FocusIndicatorView;

.field private mFolder:Lcom/android/launcher3/Folder;

.field private mGridCountX:I

.field private mGridCountY:I

.field private final mIconCache:Lcom/android/launcher3/IconCache;

.field private final mInflater:Landroid/view/LayoutInflater;

.field public final mIsRtl:Z

.field private mKeyListener:Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;

.field protected final mMaxCountX:I

.field protected final mMaxCountY:I

.field private final mMaxItemsPerPage:I

.field private mPageIndicator:Lcom/android/launcher3/PageIndicator;

.field final mPendingAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/android/launcher3/FolderPagedView;->ajc$preClinit()V

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/FolderPagedView;->sTempPosArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    .line 91
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    .line 94
    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iput v2, p0, Lcom/android/launcher3/FolderPagedView;->mMaxCountX:I

    .line 95
    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iput v1, p0, Lcom/android/launcher3/FolderPagedView;->mMaxCountY:I

    .line 97
    iget v1, p0, Lcom/android/launcher3/FolderPagedView;->mMaxCountX:I

    iget v2, p0, Lcom/android/launcher3/FolderPagedView;->mMaxCountY:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    .line 100
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/FolderPagedView;->mIsRtl:Z

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->setImportantForAccessibility(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->setEdgeGlowColor(I)V

    .line 106
    return-void
.end method

.method private static final addViewForRank_aroundBody0(Lcom/android/launcher3/FolderPagedView;Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V
    .registers 10

    .prologue
    .line 223
    iget v0, p0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v0, p3, v0

    .line 224
    iget v1, p0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    div-int v1, p3, v1

    .line 226
    iput p3, p2, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 227
    iget v2, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    rem-int v2, v0, v2

    iput v2, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 228
    iget v2, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    div-int/2addr v0, v2

    iput v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 231
    iget v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iput v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 232
    iget v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iput v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 233
    invoke-virtual {p0, v1}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 234
    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    iget-object v1, v1, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/ItemInfo;)I

    move-result v3

    const/4 v5, 0x1

    move-object v1, p1

    .line 233
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    .line 235
    return-void
.end method

.method private static final addViewForRank_aroundBody1$advice(Lcom/android/launcher3/FolderPagedView;Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;ILcom/lge/launcher3/nativejoin/FolderPagedViewAspect;Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 9

    .prologue
    .line 26
    if-eqz p5, :cond_4

    if-nez p6, :cond_5

    .line 31
    :cond_4
    :goto_4
    return-void

    .line 29
    :cond_5
    invoke-static {p0, p5, p6, p7}, Lcom/android/launcher3/FolderPagedView;->addViewForRank_aroundBody0(Lcom/android/launcher3/FolderPagedView;Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V

    goto :goto_4
.end method

.method public static ajc$get$mFolder(Lcom/android/launcher3/FolderPagedView;)Lcom/android/launcher3/Folder;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    return-object v0
.end method

.method public static ajc$get$mPageIndicator(Lcom/android/launcher3/FolderPagedView;)Lcom/android/launcher3/PageIndicator;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "FolderPagedView.java"

    const-class v2, Lcom/android/launcher3/FolderPagedView;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "createNewView"

    const-string v3, "com.android.launcher3.FolderPagedView"

    const-string v4, "com.android.launcher3.ShortcutInfo"

    const-string v5, "item"

    const-string v6, ""

    const-string v7, "android.view.View"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xee

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/FolderPagedView;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "2"

    const-string v2, "arrangeChildren"

    const-string v3, "com.android.launcher3.FolderPagedView"

    const-string v4, "java.util.ArrayList:int:boolean"

    const-string v5, "list:itemCount:saveChanges"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x13b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/FolderPagedView;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "getPageIndicatorMarker"

    const-string v3, "com.android.launcher3.FolderPagedView"

    const-string v4, "int"

    const-string v5, "pageIndex"

    const-string v6, ""

    const-string v7, "com.android.launcher3.PageIndicator$PageMarkerResources"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/FolderPagedView;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mFolder(Lcom/android/launcher3/FolderPagedView;Lcom/android/launcher3/Folder;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    return-void
.end method

.method public static ajc$set$mPageIndicator(Lcom/android/launcher3/FolderPagedView;Lcom/android/launcher3/PageIndicator;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    return-void
.end method

.method private allocateRankForNewItems(I)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getItemCount()I

    move-result v0

    .line 197
    new-instance v4, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v0

    move v0, v1

    .line 198
    :goto_12
    if-lt v0, p1, :cond_23

    .line 201
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/launcher3/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 202
    iget v0, p0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    div-int v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->setCurrentPage(I)V

    .line 203
    return-void

    .line 199
    :cond_23
    add-int/lit8 v3, v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_12
.end method

.method private arrangeChildren(Ljava/util/ArrayList;IZ)V
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/FolderPagedView;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;

    move-result-object v5

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object v10, v4

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/FolderPagedView;->arrangeChildren_aroundBody5$advice(Lcom/android/launcher3/FolderPagedView;Ljava/util/ArrayList;IZLorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;Ljava/util/ArrayList;IZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method private static final arrangeChildren_aroundBody4(Lcom/android/launcher3/FolderPagedView;Ljava/util/ArrayList;IZLorg/aspectj/lang/JoinPoint;)V
    .registers 22

    .prologue
    .line 316
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 317
    const/4 v2, 0x0

    move v3, v2

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderPagedView;->getChildCount()I

    move-result v2

    if-lt v3, v2, :cond_5a

    .line 322
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher3/FolderPagedView;->setupContentDimensions(I)V

    .line 324
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 325
    const/4 v5, 0x0

    .line 327
    const/4 v4, 0x0

    .line 330
    const/4 v3, 0x0

    .line 331
    const/4 v2, 0x0

    move v12, v2

    move v13, v3

    move v3, v4

    move-object v4, v5

    :goto_20
    move/from16 v0, p2

    if-lt v12, v0, :cond_6c

    .line 368
    const/4 v2, 0x0

    .line 369
    :goto_25
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_105

    .line 373
    if-eqz v2, :cond_33

    .line 374
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderPagedView;->setCurrentPage(I)V

    .line 377
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_113

    const/4 v2, 0x1

    :goto_3b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderPagedView;->setEnableOverscroll(Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_116

    const/4 v2, 0x0

    :goto_4c
    invoke-virtual {v3, v2}, Lcom/android/launcher3/PageIndicator;->setVisibility(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    iget-object v2, v2, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/FolderEditText;->setGravity(I)V

    .line 383
    return-void

    .line 318
    :cond_5a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 319
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->removeAllViews()V

    .line 320
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    .line 332
    :cond_6c
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v12, :cond_fc

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v11, v2

    .line 333
    :goto_7b
    if-eqz v4, :cond_83

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    if-lt v3, v2, :cond_11a

    .line 335
    :cond_83
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_100

    .line 336
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 340
    :goto_8f
    const/4 v3, 0x0

    move v15, v3

    move-object v14, v2

    .line 343
    :goto_92
    if-eqz v11, :cond_f0

    .line 344
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 345
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    rem-int v2, v15, v2

    .line 346
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    div-int v4, v15, v3

    .line 347
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 348
    iget v5, v3, Lcom/android/launcher3/ItemInfo;->cellX:I

    if-ne v5, v2, :cond_b9

    iget v5, v3, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-ne v5, v4, :cond_b9

    iget v5, v3, Lcom/android/launcher3/ItemInfo;->rank:I

    if-eq v5, v13, :cond_d6

    .line 349
    :cond_b9
    iput v2, v3, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 350
    iput v4, v3, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 351
    iput v13, v3, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 352
    if-eqz p3, :cond_d6

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    iget-object v4, v4, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v4, v4, Lcom/android/launcher3/FolderInfo;->id:J

    const-wide/16 v6, 0x0

    iget v8, v3, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v9, v3, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 353
    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 357
    :cond_d6
    iget v2, v3, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v2, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 358
    iget v2, v3, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v2, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 360
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    iget-object v2, v2, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/ItemInfo;)I

    move-result v5

    const/4 v7, 0x1

    move-object v2, v14

    move-object v3, v11

    move-object v6, v10

    .line 359
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    .line 363
    :cond_f0
    add-int/lit8 v3, v13, 0x1

    .line 364
    add-int/lit8 v4, v15, 0x1

    .line 331
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move v13, v3

    move v3, v4

    move-object v4, v14

    goto/16 :goto_20

    .line 332
    :cond_fc
    const/4 v2, 0x0

    move-object v11, v2

    goto/16 :goto_7b

    .line 338
    :cond_100
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/FolderPagedView;->createAndAddNewPage()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    goto :goto_8f

    .line 370
    :cond_105
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderPagedView;->removeView(Landroid/view/View;)V

    .line 371
    const/4 v2, 0x1

    goto/16 :goto_25

    .line 377
    :cond_113
    const/4 v2, 0x0

    goto/16 :goto_3b

    .line 380
    :cond_116
    const/16 v2, 0x8

    goto/16 :goto_4c

    :cond_11a
    move v15, v3

    move-object v14, v4

    goto/16 :goto_92
.end method

.method private static final arrangeChildren_aroundBody5$advice(Lcom/android/launcher3/FolderPagedView;Ljava/util/ArrayList;IZLorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;Ljava/util/ArrayList;IZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 13

    .prologue
    .line 128
    invoke-interface {p10}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderPagedView;

    .line 129
    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->itemsPerPage()I

    move-result v1

    invoke-static {p7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 130
    invoke-static {p0, p6, v1, p8, p4}, Lcom/android/launcher3/FolderPagedView;->arrangeChildren_aroundBody4(Lcom/android/launcher3/FolderPagedView;Ljava/util/ArrayList;IZLorg/aspectj/lang/JoinPoint;)V

    .line 131
    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_FolderPagedView$setFolderNameGravity(Lcom/android/launcher3/FolderPagedView;)V

    .line 133
    return-void
.end method

.method private createAndAddNewPage()Lcom/android/launcher3/CellLayout;
    .registers 4

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 271
    new-instance v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;)V

    .line 272
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/CellLayout;->setCellDimensions(II)V

    .line 273
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setMotionEventSplittingEnabled(Z)V

    .line 274
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 275
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/CellLayout;->setInvertIfRtl(Z)V

    .line 276
    iget v0, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    iget v2, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    .line 277
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->generateDefaultLayoutParams()Lcom/android/launcher3/PagedView$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/launcher3/FolderPagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 278
    return-object v1
.end method

.method private static final createNewView_aroundBody2(Lcom/android/launcher3/FolderPagedView;Lcom/android/launcher3/ShortcutInfo;Lorg/aspectj/lang/JoinPoint;)Landroid/view/View;
    .registers 9

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    .line 240
    const v1, 0x7f040013

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 239
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 241
    iget-object v1, p0, Lcom/android/launcher3/FolderPagedView;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/IconCache;)V

    .line 242
    iget-object v1, p0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v1, p0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 244
    iget-object v1, p0, Lcom/android/launcher3/FolderPagedView;->mFocusIndicatorView:Lcom/android/launcher3/FocusIndicatorView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 245
    iget-object v1, p0, Lcom/android/launcher3/FolderPagedView;->mKeyListener:Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 247
    new-instance v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 248
    iget v2, p1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iget v4, p1, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 247
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->setUninstallTypeForBadgeView(Landroid/view/View;)Z

    .line 251
    return-object v0
.end method

.method private static final createNewView_aroundBody3$advice(Lcom/android/launcher3/FolderPagedView;Lcom/android/launcher3/ShortcutInfo;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/folder/FolderColorAspect;Lcom/android/launcher3/ShortcutInfo;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/view/View;
    .registers 9

    .prologue
    .line 233
    invoke-static {p0, p4, p2}, Lcom/android/launcher3/FolderPagedView;->createNewView_aroundBody2(Lcom/android/launcher3/FolderPagedView;Lcom/android/launcher3/ShortcutInfo;Lorg/aspectj/lang/JoinPoint;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 234
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/FolderPagedView;

    invoke-static {v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderPagedView$getTextColor(Lcom/android/launcher3/FolderPagedView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    .line 235
    return-object v0
.end method

.method private static final getPageIndicatorMarker_aroundBody6(Lcom/android/launcher3/FolderPagedView;ILorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/PageIndicator$PageMarkerResources;
    .registers 6

    .prologue
    .line 421
    new-instance v0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    const v1, 0x7f02006c

    .line 422
    const v2, 0x7f02006e

    .line 421
    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/PageIndicator$PageMarkerResources;-><init>(II)V

    return-object v0
.end method

.method private static final getPageIndicatorMarker_aroundBody7$advice(Lcom/android/launcher3/FolderPagedView;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/PageIndicator$PageMarkerResources;
    .registers 10

    .prologue
    const v3, 0x7f020047

    .line 15
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderPagedView;

    .line 16
    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 17
    invoke-static {v0}, Lcom/android/launcher3/FolderPagedView;->ajc$get$mFolder(Lcom/android/launcher3/FolderPagedView;)Lcom/android/launcher3/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/FolderInfo;->folderColor:I

    .line 16
    invoke-static {v1, v0}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderTextColor(Landroid/content/Context;I)I

    move-result v0

    .line 18
    new-instance v1, Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    .line 19
    const v2, -0x66000001

    and-int/2addr v2, v0

    .line 18
    invoke-direct {v1, v3, v3, v0, v2}, Lcom/android/launcher3/PageIndicator$PageMarkerResources;-><init>(IIII)V

    return-object v1
.end method

.method private setupContentDimensions(I)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    iput p1, p0, Lcom/android/launcher3/FolderPagedView;->mAllocatedContentSize:I

    .line 123
    iget v0, p0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    if-lt p1, v0, :cond_1c

    .line 124
    iget v0, p0, Lcom/android/launcher3/FolderPagedView;->mMaxCountX:I

    iput v0, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    .line 125
    iget v0, p0, Lcom/android/launcher3/FolderPagedView;->mMaxCountY:I

    iput v0, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    move v0, v1

    .line 131
    :goto_11
    if-eqz v0, :cond_1e

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_19
    if-gez v0, :cond_92

    .line 154
    return-void

    :cond_1c
    move v0, v2

    .line 131
    goto :goto_11

    .line 132
    :cond_1e
    iget v0, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    .line 133
    iget v3, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    .line 134
    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    iget v5, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    mul-int/2addr v4, v5

    if-ge v4, p1, :cond_62

    .line 136
    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    iget v5, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    if-le v4, v5, :cond_35

    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    iget v5, p0, Lcom/android/launcher3/FolderPagedView;->mMaxCountY:I

    if-ne v4, v5, :cond_55

    :cond_35
    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    iget v5, p0, Lcom/android/launcher3/FolderPagedView;->mMaxCountX:I

    if-ge v4, v5, :cond_55

    .line 137
    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    .line 141
    :cond_41
    :goto_41
    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    if-nez v4, :cond_4b

    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    .line 147
    :cond_4b
    :goto_4b
    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    if-ne v4, v0, :cond_90

    iget v0, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    if-ne v0, v3, :cond_90

    move v0, v1

    goto :goto_11

    .line 138
    :cond_55
    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    iget v5, p0, Lcom/android/launcher3/FolderPagedView;->mMaxCountY:I

    if-ge v4, v5, :cond_41

    .line 139
    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    goto :goto_41

    .line 142
    :cond_62
    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    mul-int/2addr v4, v5

    if-lt v4, p1, :cond_7c

    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    iget v5, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    if-lt v4, v5, :cond_7c

    .line 143
    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    goto :goto_4b

    .line 144
    :cond_7c
    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    mul-int/2addr v4, v5

    if-lt v4, p1, :cond_4b

    .line 145
    iget v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    goto :goto_4b

    :cond_90
    move v0, v2

    .line 147
    goto :goto_11

    .line 152
    :cond_92
    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    iget v3, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    .line 151
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_19
.end method


# virtual methods
.method public addViewForRank(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V
    .registers 13

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;

    move-result-object v4

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/FolderPagedView;->addViewForRank_aroundBody1$advice(Lcom/android/launcher3/FolderPagedView;Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;ILcom/lge/launcher3/nativejoin/FolderPagedViewAspect;Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;ILorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public afterAttachedToWindow()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_FolderPagedViewItds$com_android_launcher3_FolderPagedView$afterAttachedToWindow(Lcom/android/launcher3/FolderPagedView;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderPagedView$getPageIndicatorMarker(I)Lcom/android/launcher3/PageIndicator$PageMarkerResources;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/FolderPagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    move-result-object v0

    return-object v0
.end method

.method public ajc$superDispatch$com_android_launcher3_FolderPagedView$onAttachedToWindow()V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onAttachedToWindow()V

    return-void
.end method

.method public allocateRankForNewItem(Lcom/android/launcher3/ShortcutInfo;)I
    .registers 6

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getItemCount()I

    move-result v0

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 183
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 184
    iget v1, p0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    div-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/FolderPagedView;->setCurrentPage(I)V

    .line 185
    return v0
.end method

.method public animateMarkers()V
    .registers 8

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 698
    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher3/PageIndicator;->getChildCount()I

    move-result v1

    .line 699
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v0, 0x409ccccd    # 4.9f

    invoke-direct {v2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 700
    const/4 v0, 0x0

    :goto_11
    if-lt v0, v1, :cond_14

    .line 707
    return-void

    .line 701
    :cond_14
    iget-object v3, p0, Lcom/android/launcher3/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 702
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 703
    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 704
    mul-int/lit16 v4, v0, 0x96

    add-int/lit16 v4, v4, 0x12c

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public arrangeChildren(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 311
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 312
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 171
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v3}, Lcom/android/launcher3/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 172
    return-object v2

    .line 164
    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->createNewView(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public clearScrollHint()V
    .registers 3

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/FolderPagedView;->getScrollForPage(I)I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 514
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->snapToPage(I)V

    .line 516
    :cond_15
    return-void
.end method

.method public completePendingPageChanges()V
    .registers 4

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 523
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 524
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 529
    :cond_1d
    return-void

    .line 524
    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 525
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 526
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_17
.end method

.method public createAndAddViewForRank(Lcom/android/launcher3/ShortcutInfo;I)Landroid/view/View;
    .registers 4

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/android/launcher3/FolderPagedView;->createNewView(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 190
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V

    .line 191
    return-object v0
.end method

.method public createAndAddViews(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 215
    :cond_8
    return-void

    .line 210
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getItemCount()I

    move-result v0

    .line 211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/FolderPagedView;->allocateRankForNewItems(I)V

    .line 212
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 213
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/ShortcutInfo;I)Landroid/view/View;

    move v1, v2

    goto :goto_19
.end method

.method public createNewView(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/FolderPagedView;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/FolderPagedView;->createNewView_aroundBody3$advice(Lcom/android/launcher3/FolderPagedView;Lcom/android/launcher3/ShortcutInfo;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/folder/FolderColorAspect;Lcom/android/launcher3/ShortcutInfo;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findNearestArea(II)I
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 409
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getNextPage()I

    move-result v6

    .line 410
    invoke-virtual {p0, v6}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 411
    sget-object v5, Lcom/android/launcher3/FolderPagedView;->sTempPosArray:[I

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    .line 412
    iget-object v1, p0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/Folder;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 413
    sget-object v1, Lcom/android/launcher3/FolderPagedView;->sTempPosArray:[I

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    sget-object v2, Lcom/android/launcher3/FolderPagedView;->sTempPosArray:[I

    aget v2, v2, v7

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    aput v0, v1, v7

    .line 415
    :cond_29
    iget v0, p0, Lcom/android/launcher3/FolderPagedView;->mAllocatedContentSize:I

    add-int/lit8 v0, v0, -0x1

    .line 416
    iget v1, p0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v1, v6

    sget-object v2, Lcom/android/launcher3/FolderPagedView;->sTempPosArray:[I

    aget v2, v2, v3

    iget v3, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lcom/android/launcher3/FolderPagedView;->sTempPosArray:[I

    aget v2, v2, v7

    add-int/2addr v1, v2

    .line 415
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getAccessibilityDescription()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    iget-object v1, p0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    iget-object v1, v1, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_68

    .line 465
    iget-object v1, p0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    iget-object v1, v1, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 470
    :goto_20
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0115

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 471
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 470
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0112

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 474
    iget v3, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 473
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 467
    :cond_68
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f003c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20
.end method

.method public getAllocatedContentSize()I
    .registers 2

    .prologue
    .line 559
    iget v0, p0, Lcom/android/launcher3/FolderPagedView;->mAllocatedContentSize:I

    return v0
.end method

.method public getChildGap()I
    .registers 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentCellLayout()Lcom/android/launcher3/CellLayout;
    .registers 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredHeight()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_19

    .line 392
    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getDesiredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_19
    return v0
.end method

.method public getDesiredWidth()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_19

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getDesiredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 386
    :cond_19
    return v0
.end method

.method protected getEdgeVerticalPostion([I)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 715
    aput v0, p1, v0

    .line 716
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getViewportHeight()I

    move-result v1

    aput v1, p1, v0

    .line 717
    return-void
.end method

.method public getItemCount()I
    .registers 4

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 397
    if-gez v0, :cond_a

    .line 399
    const/4 v0, 0x0

    .line 401
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 402
    iget v2, p0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v0, v2

    .line 401
    add-int/2addr v0, v1

    goto :goto_9
.end method

.method public getLastItem()Landroid/view/View;
    .registers 5

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    .line 431
    const/4 v0, 0x0

    .line 438
    :goto_8
    return-object v0

    .line 433
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 435
    iget v2, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    if-lez v2, :cond_27

    .line 436
    iget v2, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    rem-int v2, v1, v2

    iget v3, p0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    div-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 438
    :cond_27
    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method public bridge synthetic getPageAt(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPageAt(I)Lcom/android/launcher3/CellLayout;
    .registers 3

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/android/launcher3/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method protected getPageIndicatorMarker(I)Lcom/android/launcher3/PageIndicator$PageMarkerResources;
    .registers 8

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/FolderPagedView;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/FolderPagedView;->getPageIndicatorMarker_aroundBody7$advice(Lcom/android/launcher3/FolderPagedView;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderPagedView$getTextColor(Lcom/android/launcher3/FolderPagedView;)I

    move-result v0

    return v0
.end method

.method public isFull()Z
    .registers 2

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public itemsPerPage()I
    .registers 2

    .prologue
    .line 710
    iget v0, p0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    return v0
.end method

.method public iterateOverItems(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 447
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_a

    .line 458
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 448
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v6

    move v3, v2

    .line 449
    :goto_f
    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    if-lt v3, v0, :cond_19

    .line 447
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    move v4, v2

    .line 450
    :goto_1a
    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    if-lt v4, v0, :cond_24

    .line 449
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_f

    .line 451
    :cond_24
    invoke-virtual {v6, v4, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 452
    if-eqz v5, :cond_38

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-interface {p1, v0, v5, p0}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_38

    move-object v0, v5

    .line 453
    goto :goto_9

    .line 450
    :cond_38
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1a
.end method

.method protected notifyPageSwitchListener()V
    .registers 2

    .prologue
    .line 490
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener()V

    .line 491
    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    if-eqz v0, :cond_c

    .line 492
    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->updateTextViewFocus()V

    .line 494
    :cond_c
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_FolderPagedViewItds$com_android_launcher3_FolderPagedView$onAttachedToWindow(Lcom/android/launcher3/FolderPagedView;)V

    return-void
.end method

.method protected onPageBeginMoving()V
    .registers 4

    .prologue
    .line 538
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginMoving()V

    .line 539
    sget-object v0, Lcom/android/launcher3/FolderPagedView;->sTempPosArray:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->getVisiblePages([I)V

    .line 540
    sget-object v0, Lcom/android/launcher3/FolderPagedView;->sTempPosArray:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_d
    sget-object v1, Lcom/android/launcher3/FolderPagedView;->sTempPosArray:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-le v0, v1, :cond_15

    .line 543
    return-void

    .line 541
    :cond_15
    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public rankOnCurrentPage(I)Z
    .registers 4

    .prologue
    .line 532
    iget v0, p0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    div-int v0, p1, v0

    .line 533
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getNextPage()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public realTimeReorder(II)V
    .registers 19

    .prologue
    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderPagedView;->completePendingPageChanges()V

    .line 567
    const/4 v7, 0x0

    .line 568
    const/high16 v10, 0x41f00000    # 30.0f

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderPagedView;->getNextPage()I

    move-result v6

    .line 573
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    div-int v2, p2, v2

    .line 574
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v5, p2, v3

    .line 576
    if-eq v2, v6, :cond_1f

    .line 577
    const-string v2, "FolderPagedView"

    const-string v3, "Cannot animate when the target cell is invisible"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v3, p1, v2

    .line 580
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    div-int v2, p1, v2

    .line 586
    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_32

    .line 685
    :cond_31
    return-void

    .line 589
    :cond_32
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_9a

    .line 591
    const/4 v4, 0x1

    .line 594
    if-ge v2, v6, :cond_96

    .line 597
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v2, v6

    .line 600
    const/4 v3, 0x0

    :goto_41
    move v12, v4

    move v13, v5

    move v4, v2

    .line 628
    :goto_44
    move/from16 v0, p1

    if-ne v0, v4, :cond_b4

    .line 667
    sub-int v2, v13, v3

    mul-int/2addr v2, v12

    if-lez v2, :cond_31

    .line 672
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    move v11, v3

    .line 673
    :goto_54
    if-eq v11, v13, :cond_31

    .line 674
    add-int v3, v11, v12

    .line 675
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    rem-int v4, v3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    div-int/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 676
    if-eqz v3, :cond_74

    .line 677
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    iget v5, v4, Lcom/android/launcher3/ItemInfo;->rank:I

    sub-int/2addr v5, v12

    iput v5, v4, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 679
    :cond_74
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    rem-int v4, v11, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    div-int v5, v11, v5

    .line 680
    const/16 v6, 0xe6

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 679
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v3

    .line 680
    if-eqz v3, :cond_132

    .line 681
    int-to-float v3, v7

    add-float/2addr v3, v10

    float-to-int v7, v3

    .line 682
    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v3, v10

    .line 673
    :goto_91
    add-int v4, v11, v12

    move v11, v4

    move v10, v3

    goto :goto_54

    .line 602
    :cond_96
    const/4 v2, -0x1

    move/from16 p1, v2

    .line 603
    goto :goto_41

    .line 609
    :cond_9a
    const/4 v4, -0x1

    .line 611
    if-le v2, v6, :cond_b0

    .line 615
    add-int/lit8 v2, v6, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 618
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    add-int/lit8 v3, v3, -0x1

    :goto_ac
    move v12, v4

    move v13, v5

    move v4, v2

    .line 628
    goto :goto_44

    .line 620
    :cond_b0
    const/4 v2, -0x1

    move/from16 p1, v2

    .line 621
    goto :goto_ac

    .line 629
    :cond_b4
    add-int v5, p1, v12

    .line 630
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    div-int v2, v5, v2

    .line 631
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v8, v5, v8

    .line 632
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    rem-int v9, v8, v9

    .line 633
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/FolderPagedView;->mGridCountX:I

    div-int/2addr v8, v11

    .line 635
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v11

    .line 636
    invoke-virtual {v11, v9, v8}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    .line 637
    if-eqz v8, :cond_eb

    .line 638
    if-eq v6, v2, :cond_ef

    .line 639
    invoke-virtual {v11, v8}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 640
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ShortcutInfo;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v8, v2, v1}, Lcom/android/launcher3/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V

    :cond_eb
    :goto_eb
    move/from16 p1, v5

    .line 664
    goto/16 :goto_44

    .line 644
    :cond_ef
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 646
    new-instance v9, Lcom/android/launcher3/FolderPagedView$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v9, v0, v8, v2, v1}, Lcom/android/launcher3/FolderPagedView$1;-><init>(Lcom/android/launcher3/FolderPagedView;Landroid/view/View;FI)V

    .line 656
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 657
    if-lez v12, :cond_12b

    const/4 v2, 0x1

    :goto_103
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher3/FolderPagedView;->mIsRtl:Z

    xor-int/2addr v2, v14

    if-eqz v2, :cond_12d

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    :goto_10f
    int-to-float v2, v2

    invoke-virtual {v11, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 658
    const-wide/16 v14, 0xe6

    invoke-virtual {v2, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 659
    const-wide/16 v14, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 660
    invoke-virtual {v2, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_eb

    .line 657
    :cond_12b
    const/4 v2, 0x0

    goto :goto_103

    :cond_12d
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_10f

    :cond_132
    move v3, v10

    goto/16 :goto_91
.end method

.method public removeCellLayoutView(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-gez v0, :cond_9

    .line 263
    return-void

    .line 261
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 260
    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method public removeItem(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-gez v0, :cond_9

    .line 298
    return-void

    .line 296
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 295
    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method public setFixedSize(II)V
    .registers 7

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v2, p1, v0

    .line 288
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v3, p2, v0

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1d
    if-gez v1, :cond_20

    .line 292
    return-void

    .line 290
    :cond_20
    invoke-virtual {p0, v1}, Lcom/android/launcher3/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/CellLayout;->setFixedSize(II)V

    .line 289
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1d
.end method

.method public setFocusOnFirstChild()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_e

    .line 484
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 486
    :cond_e
    return-void
.end method

.method public setFolder(Lcom/android/launcher3/Folder;)V
    .registers 3

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/launcher3/FolderPagedView;->mFolder:Lcom/android/launcher3/Folder;

    .line 110
    const v0, 0x7f0e0052

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FocusIndicatorView;

    iput-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mFocusIndicatorView:Lcom/android/launcher3/FocusIndicatorView;

    .line 111
    new-instance v0, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;

    invoke-direct {v0, p1}, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;-><init>(Lcom/android/launcher3/Folder;)V

    iput-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mKeyListener:Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;

    .line 112
    const v0, 0x7f0e00e4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    .line 113
    return-void
.end method

.method public setFolderNameGravity()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_FolderPagedView$setFolderNameGravity(Lcom/android/launcher3/FolderPagedView;)V

    return-void
.end method

.method public setMarkerScale(F)V
    .registers 6

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher3/PageIndicator;->getChildCount()I

    move-result v1

    .line 689
    const/4 v0, 0x0

    :goto_7
    if-lt v0, v1, :cond_a

    .line 695
    return-void

    .line 690
    :cond_a
    iget-object v2, p0, Lcom/android/launcher3/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 691
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 692
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 693
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public showScrollHint(I)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 500
    if-nez p1, :cond_3e

    const/4 v0, 0x1

    :goto_4
    iget-boolean v1, p0, Lcom/android/launcher3/FolderPagedView;->mIsRtl:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_40

    .line 501
    const v0, -0x4270a3d7    # -0.07f

    .line 502
    :goto_c
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 503
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/FolderPagedView;->getScrollForPage(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 504
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 505
    if-eqz v3, :cond_3d

    .line 506
    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 507
    iget-object v0, p0, Lcom/android/launcher3/FolderPagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getScrollX()I

    move-result v1

    const/16 v5, 0x1f4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherScroller;->startScroll(IIIII)V

    .line 508
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->invalidate()V

    .line 510
    :cond_3d
    return-void

    :cond_3e
    move v0, v2

    .line 500
    goto :goto_4

    .line 501
    :cond_40
    const v0, 0x3d8f5c29    # 0.07f

    goto :goto_c
.end method

.method public verifyVisibleHighResIcons(I)V
    .registers 5

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_13

    .line 551
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 552
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_11
    if-gez v1, :cond_14

    .line 556
    :cond_13
    return-void

    .line 553
    :cond_14
    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 552
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_11
.end method
