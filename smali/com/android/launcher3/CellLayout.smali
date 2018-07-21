.class public Lcom/android/launcher3/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;
.implements Lcom/lge/launcher3/screeneffect/IScreenEffectable;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/CellLayout$CellAndSpan;,
        Lcom/android/launcher3/CellLayout$CellInfo;,
        Lcom/android/launcher3/CellLayout$ItemConfiguration;,
        Lcom/android/launcher3/CellLayout$LayoutParams;,
        Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;,
        Lcom/android/launcher3/CellLayout$ViewCluster;
    }
.end annotation


# static fields
.field private static final BACKGROUND_ACTIVATE_DURATION:I = 0x78

.field private static BACKGROUND_BOUND_LINE_MAX_ALPHA:F = 0.0f

.field private static final DEBUG_VISUALIZE_OCCUPIED:Z

.field private static final DESTRUCTIVE_REORDER:Z = false

.field public static final FOLDER_ACCESSIBILITY_DRAG:I = 0x1

.field private static final INVALID_DIRECTION:I = -0x64

.field static final LANDSCAPE:I = 0x0

.field public static final MODE_ACCEPT_DROP:I = 0x4

.field public static final MODE_DRAG_OVER:I = 0x1

.field public static final MODE_ON_DROP:I = 0x2

.field public static final MODE_ON_DROP_EXTERNAL:I = 0x3

.field public static final MODE_SHOW_REORDER_HINT:I = 0x0

.field static final PORTRAIT:I = 0x1

.field private static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_PREVIEW_MAGNITUDE:F = 0.12f

.field static final TAG:Ljava/lang/String; = "CellLayout"

.field public static final WORKSPACE_ACCESSIBILITY_DRAG:I = 0x2

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_10:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_11:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_12:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_13:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_14:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_15:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_16:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_17:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_18:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_19:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_20:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private final mBackground:Landroid/graphics/drawable/TransitionDrawable;

.field private mBackgroundAlpha:F

.field private mBackgroundBoundLinePaint:Landroid/graphics/Paint;

.field mCellHeight:I

.field mCellWidth:I

.field mCountX:I

.field mCountY:I

.field private mCrossHairsGrid:Lcom/lge/launcher3/views/CrossHairsGrid;

.field private mCrosshairsAnimator:Lcom/android/launcher3/InterruptibleInOutAnimator;

.field private mCustomScreenEffect:Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

.field private mDirectionVector:[I

.field private mDragBGColor:I

.field private mDragBGOutlineColor:I

.field private final mDragCell:[I

.field private mDragCellBGPaint:Landroid/graphics/Paint;

.field private mDragCellRect:Landroid/graphics/Rect;

.field mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field mDragOutlines:[Landroid/graphics/Rect;

.field private mDragging:Z

.field private mDrawWidgetPreview:Z

.field private mDropPending:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field public mEnableHotwordService:Z

.field private mFixedCellHeight:I

.field private mFixedCellWidth:I

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private mFolderLeaveBehindCell:[I

.field private mFolderOuterRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/FolderIcon$FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mGlowOutline:Landroid/graphics/Bitmap;

.field private mGlowOutlineDrawPos:Landroid/graphics/Point;

.field mHeightGap:I

.field private mHotseatScale:F

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInvalidTouchDistance:F

.field private mIsDragOverlapping:Z

.field private mIsDragTarget:Z

.field private mIsHotseat:Z

.field private mItemPlacementDirty:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMaxDistanceForFolderCreation:F

.field private mMaxGap:I

.field mOccupied:[[Z

.field private mOccupiedRect:Landroid/graphics/Rect;

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field mPreviousReorderDirection:[I

.field mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/CellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mReorderPreviewAnimationMagnitude:F

.field mShakeAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field private mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field final mTempLocation:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mTmpOccupied:[[Z

.field final mTmpPoint:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

.field private mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

.field private mUseTouchHelper:Z

.field private mVacantCellOrder:I

.field private mVertical:Z

.field private mWidgetDropCue:Landroid/graphics/drawable/Drawable;

.field mWidthGap:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$preClinit()V

    invoke-static {}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$BACKGROUND_BOUND_LINE_MAX_ALPHA()V

    .line 153
    sget-boolean v0, Lcom/lge/launcher3/config/LGFeatureConfig;->sDebugOccupiedCell:Z

    sput-boolean v0, Lcom/android/launcher3/CellLayout;->DEBUG_VISUALIZE_OCCUPIED:Z

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 14

    .prologue
    const/4 v3, 0x0

    .line 177
    const/4 v4, 0x0

    .line 181
    const/4 v5, 0x0

    .line 185
    invoke-direct {p0, p1, v4, v3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v2, Lcom/android/launcher3/CellLayout;->ajc$tjp_18:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    :try_start_c
    invoke-static {p0}, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$interFieldInit$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$mEnableHotwordService(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mTmpRect(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutline(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutlineDrawPos(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDrawWidgetPreview(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGColor(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGOutlineColor(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mWidgetDropCue(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCustomScreenEffect(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mInvalidTouchDistance(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;)V

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 90
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mIsDragTarget:Z

    .line 94
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 95
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 104
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_23a

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    .line 112
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 113
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 116
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 120
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 121
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v2, v2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    .line 123
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v2, v2

    new-array v2, v2, [Lcom/android/launcher3/InterruptibleInOutAnimator;

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    .line 126
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 127
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 134
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 137
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    .line 139
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 144
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mIsHotseat:Z

    .line 145
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mHotseatScale:F

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 163
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 164
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    .line 165
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    .line 168
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 174
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    .line 1148
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 189
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setWillNotDraw(Z)V

    .line 190
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setClipToPadding(Z)V

    .line 191
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    move-object v2, v0

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 193
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    .line 194
    sget-object v2, Lcom/lge/launcher3/R$styleable;->CellLayout:[I

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v2, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 196
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 197
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 198
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mOriginalWidthGap:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    .line 199
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mOriginalHeightGap:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    .line 200
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mMaxGap:I

    .line 201
    iget-object v2, v6, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 202
    iget-object v2, v6, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 203
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    filled-new-array {v2, v5}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    .line 204
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    filled-new-array {v2, v5}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    .line 205
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v5, 0x0

    const/16 v7, -0x64

    aput v7, v2, v5

    .line 206
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v5, 0x1

    const/16 v7, -0x64

    aput v7, v2, v5

    .line 208
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 213
    iget v2, v6, Lcom/android/launcher3/DeviceProfile;->hotseatIconSizePx:I

    int-to-float v2, v2

    iget v5, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mHotseatScale:F

    .line 215
    const v2, 0x7f020005

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    .line 216
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/TransitionDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 218
    const v2, 0x3df5c28f    # 0.12f

    .line 219
    iget v5, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    .line 218
    iput v2, p0, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    .line 222
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40200000    # 2.5f

    invoke-direct {v2, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 223
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v7, 0x1

    const/4 v8, -0x1

    aput v8, v6, v7

    aput v8, v2, v5

    move v2, v3

    .line 224
    :goto_184
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    if-lt v2, v5, :cond_1e5

    .line 232
    const v2, 0x7f0c000d

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 234
    const v2, 0x7f0c000e

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v7, v2

    .line 236
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([FF)V

    move v8, v3

    .line 238
    :goto_19f
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v2, v2

    if-lt v8, v2, :cond_1f5

    .line 278
    new-instance v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-direct {v2, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 279
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    .line 280
    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 279
    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 282
    new-instance v2, Lcom/android/launcher3/StylusEventHelper;

    invoke-direct {v2, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 284
    new-instance v2, Lcom/android/launcher3/ClickShadowView;

    invoke-direct {v2, p1}, Lcom/android/launcher3/ClickShadowView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 285
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V

    .line 286
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V
    :try_end_1d4
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1d4} :catch_227

    .line 287
    nop

    .line 182
    nop

    .line 178
    :try_start_1d6
    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$after$com_lge_launcher3_nativejoin_CellLayoutAspect$5$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_1dd
    .catch Ljava/lang/Throwable; {:try_start_1d6 .. :try_end_1dd} :catch_230

    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$1$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 225
    :cond_1e5
    :try_start_1e5
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v5, v2

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_184

    .line 240
    :cond_1f5
    new-instance v2, Lcom/android/launcher3/InterruptibleInOutAnimator;

    int-to-long v4, v10

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V

    .line 241
    invoke-virtual {v2}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    invoke-virtual {v2}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/CellLayout$1;

    invoke-direct {v4, p0, v2, v8}, Lcom/android/launcher3/CellLayout$1;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 267
    invoke-virtual {v2}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/CellLayout$2;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/CellLayout$2;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aput-object v2, v3, v8
    :try_end_222
    .catch Ljava/lang/Throwable; {:try_start_1e5 .. :try_end_222} :catch_227

    .line 238
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_19f

    .line 178
    :catch_227
    move-exception v2

    :try_start_228
    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$after$com_lge_launcher3_nativejoin_CellLayoutAspect$5$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V

    throw v2
    :try_end_230
    .catch Ljava/lang/Throwable; {:try_start_228 .. :try_end_230} :catch_230

    :catch_230
    move-exception v2

    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$1$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V

    throw v2

    .line 104
    nop

    :array_23a
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15

    .prologue
    const/4 v3, 0x0

    .line 181
    const/4 v4, 0x0

    .line 185
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v2, Lcom/android/launcher3/CellLayout;->ajc$tjp_19:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    :try_start_b
    invoke-static {p0}, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$interFieldInit$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$mEnableHotwordService(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mTmpRect(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutline(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutlineDrawPos(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDrawWidgetPreview(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGColor(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGOutlineColor(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mWidgetDropCue(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCustomScreenEffect(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mInvalidTouchDistance(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;)V

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 90
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mIsDragTarget:Z

    .line 94
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 95
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 104
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_238

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    .line 112
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 113
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 116
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 120
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 121
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v2, v2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    .line 123
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v2, v2

    new-array v2, v2, [Lcom/android/launcher3/InterruptibleInOutAnimator;

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    .line 126
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 127
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 134
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 137
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    .line 139
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 144
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mIsHotseat:Z

    .line 145
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mHotseatScale:F

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 163
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 164
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    .line 165
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    .line 168
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 174
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    .line 1148
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 189
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setWillNotDraw(Z)V

    .line 190
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setClipToPadding(Z)V

    .line 191
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    move-object v2, v0

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 193
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    .line 194
    sget-object v2, Lcom/lge/launcher3/R$styleable;->CellLayout:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v2, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 196
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 197
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 198
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mOriginalWidthGap:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    .line 199
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mOriginalHeightGap:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    .line 200
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mMaxGap:I

    .line 201
    iget-object v2, v5, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 202
    iget-object v2, v5, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 203
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    filled-new-array {v2, v6}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    .line 204
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    filled-new-array {v2, v6}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    .line 205
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v6, 0x0

    const/16 v7, -0x64

    aput v7, v2, v6

    .line 206
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v6, 0x1

    const/16 v7, -0x64

    aput v7, v2, v6

    .line 208
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 213
    iget v2, v5, Lcom/android/launcher3/DeviceProfile;->hotseatIconSizePx:I

    int-to-float v2, v2

    iget v6, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mHotseatScale:F

    .line 215
    const v2, 0x7f020005

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    .line 216
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/TransitionDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 218
    const v2, 0x3df5c28f    # 0.12f

    .line 219
    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    .line 218
    iput v2, p0, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    .line 222
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40200000    # 2.5f

    invoke-direct {v2, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 223
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v7, 0x1

    const/4 v8, -0x1

    aput v8, v6, v7

    aput v8, v2, v5

    move v2, v3

    .line 224
    :goto_183
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    if-lt v2, v5, :cond_1e3

    .line 232
    const v2, 0x7f0c000d

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 234
    const v2, 0x7f0c000e

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v7, v2

    .line 236
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([FF)V

    move v8, v3

    .line 238
    :goto_19e
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v2, v2

    if-lt v8, v2, :cond_1f3

    .line 278
    new-instance v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-direct {v2, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 279
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    .line 280
    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 279
    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 282
    new-instance v2, Lcom/android/launcher3/StylusEventHelper;

    invoke-direct {v2, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 284
    new-instance v2, Lcom/android/launcher3/ClickShadowView;

    invoke-direct {v2, p1}, Lcom/android/launcher3/ClickShadowView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 285
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V

    .line 286
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V
    :try_end_1d3
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1d3} :catch_225

    .line 287
    nop

    .line 182
    :try_start_1d4
    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$after$com_lge_launcher3_nativejoin_CellLayoutAspect$5$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_1db
    .catch Ljava/lang/Throwable; {:try_start_1d4 .. :try_end_1db} :catch_22e

    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$1$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 225
    :cond_1e3
    :try_start_1e3
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v5, v2

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_183

    .line 240
    :cond_1f3
    new-instance v2, Lcom/android/launcher3/InterruptibleInOutAnimator;

    int-to-long v4, v10

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V

    .line 241
    invoke-virtual {v2}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    invoke-virtual {v2}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/CellLayout$1;

    invoke-direct {v4, p0, v2, v8}, Lcom/android/launcher3/CellLayout$1;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 267
    invoke-virtual {v2}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/CellLayout$2;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/CellLayout$2;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aput-object v2, v3, v8
    :try_end_220
    .catch Ljava/lang/Throwable; {:try_start_1e3 .. :try_end_220} :catch_225

    .line 238
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_19e

    .line 182
    :catch_225
    move-exception v2

    :try_start_226
    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$after$com_lge_launcher3_nativejoin_CellLayoutAspect$5$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V

    throw v2
    :try_end_22e
    .catch Ljava/lang/Throwable; {:try_start_226 .. :try_end_22e} :catch_22e

    :catch_22e
    move-exception v2

    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$1$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V

    throw v2

    .line 104
    nop

    :array_238
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v2, Lcom/android/launcher3/CellLayout;->ajc$tjp_20:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v5

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, p0, p0, v4}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    :try_start_19
    invoke-static {p0}, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$interFieldInit$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$mEnableHotwordService(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mTmpRect(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutline(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutlineDrawPos(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDrawWidgetPreview(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGColor(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGOutlineColor(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mWidgetDropCue(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCustomScreenEffect(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mInvalidTouchDistance(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;)V

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 90
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mIsDragTarget:Z

    .line 94
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 95
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 104
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_244

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    .line 112
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 113
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 116
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 120
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 121
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v2, v2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    .line 123
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v2, v2

    new-array v2, v2, [Lcom/android/launcher3/InterruptibleInOutAnimator;

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    .line 126
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 127
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 134
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 137
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    .line 139
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 144
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mIsHotseat:Z

    .line 145
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mHotseatScale:F

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 163
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 164
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    .line 165
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    .line 168
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 174
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    .line 1148
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 189
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setWillNotDraw(Z)V

    .line 190
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setClipToPadding(Z)V

    .line 191
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    move-object v2, v0

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 193
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 194
    sget-object v2, Lcom/lge/launcher3/R$styleable;->CellLayout:[I

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 196
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 197
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 198
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mOriginalWidthGap:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    .line 199
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mOriginalHeightGap:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    .line 200
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mMaxGap:I

    .line 201
    iget-object v2, v4, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 202
    iget-object v2, v4, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 203
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    filled-new-array {v2, v6}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    .line 204
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    filled-new-array {v2, v6}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    .line 205
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v6, 0x0

    const/16 v7, -0x64

    aput v7, v2, v6

    .line 206
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v6, 0x1

    const/16 v7, -0x64

    aput v7, v2, v6

    .line 208
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 213
    iget v2, v4, Lcom/android/launcher3/DeviceProfile;->hotseatIconSizePx:I

    int-to-float v2, v2

    iget v6, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mHotseatScale:F

    .line 215
    const v2, 0x7f020005

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    .line 216
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/TransitionDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 218
    const v2, 0x3df5c28f    # 0.12f

    .line 219
    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    .line 218
    iput v2, p0, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    .line 222
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v2, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 223
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v7, 0x1

    const/4 v8, -0x1

    aput v8, v6, v7

    aput v8, v2, v4

    move v2, v3

    .line 224
    :goto_191
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v4, v4

    if-lt v2, v4, :cond_1f0

    .line 232
    const v2, 0x7f0c000d

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 234
    const v2, 0x7f0c000e

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v7, v2

    .line 236
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([FF)V

    move v8, v3

    .line 238
    :goto_1ac
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v2, v2

    if-lt v8, v2, :cond_200

    .line 278
    new-instance v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-direct {v2, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 279
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    .line 280
    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 279
    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 282
    new-instance v2, Lcom/android/launcher3/StylusEventHelper;

    invoke-direct {v2, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 284
    new-instance v2, Lcom/android/launcher3/ClickShadowView;

    invoke-direct {v2, p1}, Lcom/android/launcher3/ClickShadowView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 285
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V

    .line 286
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V
    :try_end_1e1
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1e1} :catch_232

    .line 287
    :try_start_1e1
    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$after$com_lge_launcher3_nativejoin_CellLayoutAspect$5$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_1e8
    .catch Ljava/lang/Throwable; {:try_start_1e1 .. :try_end_1e8} :catch_23b

    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$1$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 225
    :cond_1f0
    :try_start_1f0
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v4, v2

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_191

    .line 240
    :cond_200
    new-instance v2, Lcom/android/launcher3/InterruptibleInOutAnimator;

    int-to-long v4, v10

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V

    .line 241
    invoke-virtual {v2}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    invoke-virtual {v2}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/CellLayout$1;

    invoke-direct {v4, p0, v2, v8}, Lcom/android/launcher3/CellLayout$1;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 267
    invoke-virtual {v2}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/CellLayout$2;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/CellLayout$2;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aput-object v2, v3, v8
    :try_end_22d
    .catch Ljava/lang/Throwable; {:try_start_1f0 .. :try_end_22d} :catch_232

    .line 238
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_1ac

    .line 287
    :catch_232
    move-exception v2

    :try_start_233
    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$after$com_lge_launcher3_nativejoin_CellLayoutAspect$5$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V

    throw v2
    :try_end_23b
    .catch Ljava/lang/Throwable; {:try_start_233 .. :try_end_23b} :catch_23b

    :catch_23b
    move-exception v2

    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$1$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V

    throw v2

    .line 104
    :array_244
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private static final addViewToCellLayout_aroundBody4(Lcom/android/launcher3/CellLayout;Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;ZLorg/aspectj/lang/JoinPoint;)Z
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 616
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_11

    move-object v0, p1

    .line 617
    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 618
    iget-boolean v1, p0, Lcom/android/launcher3/CellLayout;->mIsHotseat:Z

    if-eqz v1, :cond_55

    move v1, v2

    :goto_e
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 621
    :cond_11
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 622
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 626
    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ltz v0, :cond_57

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_57

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-ltz v0, :cond_57

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_57

    .line 629
    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v0, :cond_3f

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iput v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 630
    :cond_3f
    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v0, :cond_47

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iput v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 632
    :cond_47
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 633
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 635
    if-eqz p5, :cond_54

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 639
    :cond_54
    :goto_54
    return v3

    :cond_55
    move v1, v3

    .line 618
    goto :goto_e

    :cond_57
    move v3, v2

    .line 639
    goto :goto_54
.end method

.method private static final addViewToCellLayout_aroundBody5$advice(Lcom/android/launcher3/CellLayout;Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;ZLorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;ZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 26

    .prologue
    .line 203
    invoke-interface/range {p14 .. p14}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 204
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 205
    move-object/from16 v0, p8

    move/from16 v1, p9

    move/from16 v2, p10

    move-object/from16 v3, p11

    invoke-static {v4, v0, v1, v2, v3}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$addViewToHotseatCellLayout(Lcom/android/launcher3/CellLayout;Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;)Z

    move-result v4

    .line 207
    :goto_18
    return v4

    :cond_19
    move-object v4, p0

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move-object/from16 v8, p11

    move/from16 v9, p12

    move-object/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout_aroundBody4(Lcom/android/launcher3/CellLayout;Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;ZLorg/aspectj/lang/JoinPoint;)Z

    move-result v4

    goto :goto_18
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .registers 16

    .prologue
    .line 1371
    iget-object v0, p4, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1372
    const/4 v10, 0x0

    .line 1373
    iget v1, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1374
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher3/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 1376
    iget v1, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1378
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_5f

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_5f

    .line 1379
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    .line 1380
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    .line 1381
    const/4 v0, 0x1

    move v7, v0

    .line 1383
    :goto_4f
    iget v1, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1384
    return v7

    :cond_5f
    move v7, v10

    goto :goto_4f
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1719
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v9, 0x1

    .line 1771
    :cond_7
    return v9

    .line 1721
    :cond_8
    const/16 v18, 0x0

    .line 1722
    const/4 v2, 0x0

    .line 1724
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v17, v2

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_da

    .line 1734
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_118

    .line 1739
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 1740
    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 1741
    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 1744
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_41
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_13c

    .line 1749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 1751
    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 1752
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    move-object/from16 v16, v0

    move-object/from16 v8, p0

    move-object/from16 v13, p3

    move-object v15, v7

    .line 1751
    invoke-direct/range {v8 .. v16}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_17a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_17a

    .line 1756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    .line 1757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v4, v2, v4

    .line 1758
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15e

    .line 1763
    const/4 v2, 0x1

    move v9, v2

    .line 1767
    :goto_ad
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1768
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1769
    iget v3, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v4, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v5, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v6, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_b1

    .line 1724
    :cond_da
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1725
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1726
    if-nez v17, :cond_103

    .line 1727
    new-instance v3, Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v6, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v7, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v8, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v2, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v2, v8

    invoke-direct {v3, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v17, v3

    .line 1728
    goto/16 :goto_11

    .line 1729
    :cond_103
    iget v3, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v5, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v6, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v7, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v6, v7

    iget v7, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v2, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v2, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5, v6, v2}, Landroid/graphics/Rect;->union(IIII)V

    goto/16 :goto_11

    .line 1734
    :cond_118
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1735
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1736
    iget v3, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v4, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v5, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v6, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto/16 :goto_1b

    .line 1744
    :cond_13c
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1745
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1746
    iget v3, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    sub-int/2addr v3, v10

    iget v4, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    sub-int/2addr v4, v9

    iget v5, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v6, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto/16 :goto_41

    .line 1758
    :cond_15e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1759
    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1760
    iget v6, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    add-int/2addr v6, v3

    iput v6, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    .line 1761
    iget v6, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    add-int/2addr v6, v4

    iput v6, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    goto/16 :goto_a5

    :cond_17a
    move/from16 v9, v18

    goto/16 :goto_ad
.end method

.method public static ajc$get$BACKGROUND_BOUND_LINE_MAX_ALPHA()F
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_BOUND_LINE_MAX_ALPHA:F

    return v0
.end method

.method public static ajc$get$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/CellLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$mBackgroundAlpha(Lcom/android/launcher3/CellLayout;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public static ajc$get$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackgroundBoundLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static ajc$get$mCellHeight(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    return v0
.end method

.method public static ajc$get$mCellWidth(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    return v0
.end method

.method public static ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return v0
.end method

.method public static ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    return v0
.end method

.method public static ajc$get$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mCrossHairsGrid:Lcom/lge/launcher3/views/CrossHairsGrid;

    return-object v0
.end method

.method public static ajc$get$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/InterruptibleInOutAnimator;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher3/InterruptibleInOutAnimator;

    return-object v0
.end method

.method public static ajc$get$mCustomScreenEffect(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mCustomScreenEffect:Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    return-object v0
.end method

.method public static ajc$get$mDragBGColor(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragBGColor:I

    return v0
.end method

.method public static ajc$get$mDragBGOutlineColor(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragBGOutlineColor:I

    return v0
.end method

.method public static ajc$get$mDragCell(Lcom/android/launcher3/CellLayout;)[I
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    return-object v0
.end method

.method public static ajc$get$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCellBGPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static ajc$get$mDragCellRect(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCellRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static ajc$get$mDrawWidgetPreview(Lcom/android/launcher3/CellLayout;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDrawWidgetPreview:Z

    return v0
.end method

.method public static ajc$get$mGlowOutline(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mGlowOutline:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static ajc$get$mGlowOutlineDrawPos(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mGlowOutlineDrawPos:Landroid/graphics/Point;

    return-object v0
.end method

.method public static ajc$get$mHeightGap(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    return v0
.end method

.method public static ajc$get$mHotseatScale(Lcom/android/launcher3/CellLayout;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mHotseatScale:F

    return v0
.end method

.method public static ajc$get$mInvalidTouchDistance(Lcom/android/launcher3/CellLayout;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mInvalidTouchDistance:F

    return v0
.end method

.method public static ajc$get$mIsDragOverlapping(Lcom/android/launcher3/CellLayout;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public static ajc$get$mIsHotseat(Lcom/android/launcher3/CellLayout;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsHotseat:Z

    return v0
.end method

.method public static ajc$get$mLauncher(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public static ajc$get$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mMaxDistanceForFolderCreation:F

    return v0
.end method

.method public static ajc$get$mOccupied(Lcom/android/launcher3/CellLayout;)[[Z
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    return-object v0
.end method

.method public static ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    return-object v0
.end method

.method public static ajc$get$mTempRectStack(Lcom/android/launcher3/CellLayout;)Ljava/util/Stack;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    return-object v0
.end method

.method public static ajc$get$mTmpOccupied(Lcom/android/launcher3/CellLayout;)[[Z
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    return-object v0
.end method

.method public static ajc$get$mTmpPoint(Lcom/android/launcher3/CellLayout;)[I
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    return-object v0
.end method

.method public static ajc$get$mTmpRect(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static ajc$get$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mVacantCellOrder:I

    return v0
.end method

.method public static ajc$get$mVertical(Lcom/android/launcher3/CellLayout;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mVertical:Z

    return v0
.end method

.method public static ajc$get$mWidgetDropCue(Lcom/android/launcher3/CellLayout;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mWidgetDropCue:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static ajc$get$mWidthGap(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    return v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "CellLayout.java"

    const-class v2, Lcom/android/launcher3/CellLayout;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onInterceptTouchEvent"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "android.view.MotionEvent"

    const-string v5, "ev"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x148

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onTouchEvent"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "android.view.MotionEvent"

    const-string v5, "ev"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x151

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "removeViewInLayout"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "android.view.View"

    const-string v5, "view"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x29d

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_10:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "removeViews"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "int:int"

    const-string v5, "start:count"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2a3

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_11:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "removeViewsInLayout"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "int:int"

    const-string v5, "start:count"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2ab

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_12:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "2"

    const-string v2, "measureCellDimension"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "int:int"

    const-string v5, "childWidthSize:childHeightSize"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x361

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_13:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "visualizeDropLocation"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "android.view.View:android.graphics.Bitmap:int:int:int:int:int:int:boolean:android.graphics.Point:android.graphics.Rect"

    const-string v5, "v:dragOutline:originX:originY:cellX:cellY:spanX:spanY:resize:dragOffset:dragRegion"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x410

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_14:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "onDragEnter"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xa5b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_15:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "onDragExit"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xa62

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_16:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "cellToRect"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "int:int:int:int:android.graphics.Rect"

    const-string v5, "cellX:cellY:cellHSpan:cellVSpan:resultRect"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xa8a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_17:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.CellLayout"

    const-string v3, "android.content.Context"

    const-string v4, "context"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0xb0

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_18:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.CellLayout"

    const-string v3, "android.content.Context:android.util.AttributeSet"

    const-string v4, "context:attrs"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_19:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "setIsDragOverlapping"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "boolean"

    const-string v5, "isDragOverlapping"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x19e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.CellLayout"

    const-string v3, "android.content.Context:android.util.AttributeSet:int"

    const-string v4, "context:attrs:defStyle"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0xb8

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_20:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onDraw"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "android.graphics.Canvas"

    const-string v5, "canvas"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1af

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setIsHotseat"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "boolean"

    const-string v5, "isHotseat"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x25a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "addViewToCellLayout"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "android.view.View:int:int:com.android.launcher3.CellLayout$LayoutParams:boolean"

    const-string v5, "child:index:childId:params:markCells"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x263

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "removeAllViews"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x283

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "removeAllViewsInLayout"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x289

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "removeView"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "android.view.View"

    const-string v5, "view"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x291

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/CellLayout;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "removeViewAt"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "int"

    const-string v5, "index"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x297

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$BACKGROUND_BOUND_LINE_MAX_ALPHA(F)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/launcher3/CellLayout;->BACKGROUND_BOUND_LINE_MAX_ALPHA:F

    return-void
.end method

.method public static ajc$set$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/CellLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$mBackgroundAlpha(Lcom/android/launcher3/CellLayout;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    return-void
.end method

.method public static ajc$set$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mBackgroundBoundLinePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static ajc$set$mCellHeight(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    return-void
.end method

.method public static ajc$set$mCellWidth(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    return-void
.end method

.method public static ajc$set$mCountX(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return-void
.end method

.method public static ajc$set$mCountY(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    return-void
.end method

.method public static ajc$set$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/views/CrossHairsGrid;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mCrossHairsGrid:Lcom/lge/launcher3/views/CrossHairsGrid;

    return-void
.end method

.method public static ajc$set$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher3/InterruptibleInOutAnimator;

    return-void
.end method

.method public static ajc$set$mCustomScreenEffect(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mCustomScreenEffect:Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    return-void
.end method

.method public static ajc$set$mDragBGColor(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mDragBGColor:I

    return-void
.end method

.method public static ajc$set$mDragBGOutlineColor(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mDragBGOutlineColor:I

    return-void
.end method

.method public static ajc$set$mDragCell(Lcom/android/launcher3/CellLayout;[I)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    return-void
.end method

.method public static ajc$set$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mDragCellBGPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static ajc$set$mDragCellRect(Lcom/android/launcher3/CellLayout;Landroid/graphics/Rect;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mDragCellRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static ajc$set$mDrawWidgetPreview(Lcom/android/launcher3/CellLayout;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mDrawWidgetPreview:Z

    return-void
.end method

.method public static ajc$set$mGlowOutline(Lcom/android/launcher3/CellLayout;Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mGlowOutline:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static ajc$set$mGlowOutlineDrawPos(Lcom/android/launcher3/CellLayout;Landroid/graphics/Point;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mGlowOutlineDrawPos:Landroid/graphics/Point;

    return-void
.end method

.method public static ajc$set$mHeightGap(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    return-void
.end method

.method public static ajc$set$mHotseatScale(Lcom/android/launcher3/CellLayout;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mHotseatScale:F

    return-void
.end method

.method public static ajc$set$mInvalidTouchDistance(Lcom/android/launcher3/CellLayout;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mInvalidTouchDistance:F

    return-void
.end method

.method public static ajc$set$mIsDragOverlapping(Lcom/android/launcher3/CellLayout;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    return-void
.end method

.method public static ajc$set$mIsHotseat(Lcom/android/launcher3/CellLayout;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mIsHotseat:Z

    return-void
.end method

.method public static ajc$set$mLauncher(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static ajc$set$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mMaxDistanceForFolderCreation:F

    return-void
.end method

.method public static ajc$set$mOccupied(Lcom/android/launcher3/CellLayout;[[Z)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    return-void
.end method

.method public static ajc$set$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ShortcutAndWidgetContainer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    return-void
.end method

.method public static ajc$set$mTempRectStack(Lcom/android/launcher3/CellLayout;Ljava/util/Stack;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    return-void
.end method

.method public static ajc$set$mTmpOccupied(Lcom/android/launcher3/CellLayout;[[Z)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    return-void
.end method

.method public static ajc$set$mTmpPoint(Lcom/android/launcher3/CellLayout;[I)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    return-void
.end method

.method public static ajc$set$mTmpRect(Lcom/android/launcher3/CellLayout;Landroid/graphics/Rect;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static ajc$set$mVacantCellOrder(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mVacantCellOrder:I

    return-void
.end method

.method public static ajc$set$mVertical(Lcom/android/launcher3/CellLayout;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mVertical:Z

    return-void
.end method

.method public static ajc$set$mWidgetDropCue(Lcom/android/launcher3/CellLayout;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mWidgetDropCue:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static ajc$set$mWidthGap(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    return-void
.end method

.method private animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .registers 16

    .prologue
    .line 2040
    iget-object v10, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    .line 2041
    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-lt v0, v1, :cond_22

    .line 2047
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 2048
    const/4 v0, 0x0

    move v9, v0

    :goto_f
    if-lt v9, v11, :cond_32

    .line 2058
    if-eqz p3, :cond_21

    .line 2059
    iget v1, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewX:I

    iget v2, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewY:I

    iget v3, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2060
    iget v4, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v10

    .line 2059
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2062
    :cond_21
    return-void

    .line 2042
    :cond_22
    const/4 v1, 0x0

    :goto_23
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-lt v1, v2, :cond_2a

    .line 2041
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2043
    :cond_2a
    aget-object v2, v10, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 2042
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 2049
    :cond_32
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2050
    if-ne v1, p2, :cond_3e

    .line 2048
    :cond_3a
    :goto_3a
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_f

    .line 2051
    :cond_3e
    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 2052
    if-eqz v8, :cond_3a

    .line 2053
    iget v2, v8, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v3, v8, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    const/16 v4, 0x96

    const/4 v5, 0x0

    .line 2054
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 2053
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2055
    iget v1, v8, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v2, v8, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, v8, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, v8, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3a
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1783
    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    aget v3, p3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v0, :cond_5c

    .line 1786
    aget v2, p3, v0

    .line 1787
    aput v1, p3, v0

    .line 1789
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 1790
    if-eqz v3, :cond_1c

    .line 1872
    :cond_1b
    :goto_1b
    return v0

    .line 1793
    :cond_1c
    aput v2, p3, v0

    .line 1794
    aget v2, p3, v1

    .line 1795
    aput v1, p3, v1

    .line 1797
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 1798
    if-nez v3, :cond_1b

    .line 1802
    aput v2, p3, v1

    .line 1805
    aget v2, p3, v1

    mul-int/lit8 v2, v2, -0x1

    aput v2, p3, v1

    .line 1806
    aget v2, p3, v0

    mul-int/lit8 v2, v2, -0x1

    aput v2, p3, v0

    .line 1807
    aget v2, p3, v0

    .line 1808
    aput v1, p3, v0

    .line 1809
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 1810
    if-nez v3, :cond_1b

    .line 1814
    aput v2, p3, v0

    .line 1815
    aget v2, p3, v1

    .line 1816
    aput v1, p3, v1

    .line 1817
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 1818
    if-nez v3, :cond_1b

    .line 1822
    aput v2, p3, v1

    .line 1823
    aget v2, p3, v1

    mul-int/lit8 v2, v2, -0x1

    aput v2, p3, v1

    .line 1824
    aget v2, p3, v0

    mul-int/lit8 v2, v2, -0x1

    aput v2, p3, v0

    :goto_5a
    move v0, v1

    .line 1872
    goto :goto_1b

    .line 1829
    :cond_5c
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    .line 1830
    if-nez v2, :cond_1b

    .line 1834
    aget v2, p3, v1

    mul-int/lit8 v2, v2, -0x1

    aput v2, p3, v1

    .line 1835
    aget v2, p3, v0

    mul-int/lit8 v2, v2, -0x1

    aput v2, p3, v0

    .line 1836
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    .line 1837
    if-nez v2, :cond_1b

    .line 1841
    aget v2, p3, v1

    mul-int/lit8 v2, v2, -0x1

    aput v2, p3, v1

    .line 1842
    aget v2, p3, v0

    mul-int/lit8 v2, v2, -0x1

    aput v2, p3, v0

    .line 1848
    aget v2, p3, v0

    .line 1849
    aget v3, p3, v1

    aput v3, p3, v0

    .line 1850
    aput v2, p3, v1

    .line 1851
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    .line 1852
    if-nez v2, :cond_1b

    .line 1857
    aget v2, p3, v1

    mul-int/lit8 v2, v2, -0x1

    aput v2, p3, v1

    .line 1858
    aget v2, p3, v0

    mul-int/lit8 v2, v2, -0x1

    aput v2, p3, v0

    .line 1859
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    .line 1860
    if-nez v2, :cond_1b

    .line 1864
    aget v2, p3, v1

    mul-int/lit8 v2, v2, -0x1

    aput v2, p3, v1

    .line 1865
    aget v2, p3, v0

    mul-int/lit8 v2, v2, -0x1

    aput v2, p3, v0

    .line 1868
    aget v2, p3, v0

    .line 1869
    aget v3, p3, v1

    aput v3, p3, v0

    .line 1870
    aput v2, p3, v1

    goto :goto_5a
.end method

.method private beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V
    .registers 17

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 2069
    const/4 v0, 0x0

    move v10, v0

    :goto_8
    if-lt v10, v11, :cond_b

    .line 2083
    return-void

    .line 2070
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2071
    if-ne v2, p2, :cond_17

    .line 2069
    :cond_13
    :goto_13
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_8

    .line 2072
    :cond_17
    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 2073
    if-nez p4, :cond_53

    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_53

    .line 2074
    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 2073
    const/4 v0, 0x1

    move v4, v0

    .line 2076
    :goto_30
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2077
    if-eqz v1, :cond_13

    if-nez v4, :cond_13

    .line 2078
    new-instance v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2079
    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v6, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v7, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v8, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v9, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    move-object v1, p0

    move/from16 v3, p4

    .line 2078
    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;-><init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;IIIIIII)V

    .line 2080
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animate()V

    goto :goto_13

    .line 2073
    :cond_53
    const/4 v0, 0x0

    move v4, v0

    goto :goto_30
.end method

.method private static final cellToRect_aroundBody6(Lcom/android/launcher3/CellLayout;IIIILandroid/graphics/Rect;Lorg/aspectj/lang/JoinPoint;)V
    .registers 16

    .prologue
    .line 2699
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 2700
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 2701
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    .line 2702
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    .line 2704
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v4

    .line 2705
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v5

    .line 2707
    mul-int v6, p3, v0

    add-int/lit8 v7, p3, -0x1

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    .line 2708
    mul-int v7, p4, v1

    add-int/lit8 v8, p4, -0x1

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    .line 2710
    add-int/2addr v0, v2

    mul-int/2addr v0, p1

    add-int/2addr v0, v4

    .line 2711
    add-int/2addr v1, v3

    mul-int/2addr v1, p2

    add-int/2addr v1, v5

    .line 2713
    add-int v2, v0, v6

    add-int v3, v1, v7

    invoke-virtual {p5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2714
    return-void
.end method

.method private static final cellToRect_aroundBody7$advice(Lcom/android/launcher3/CellLayout;IIIILandroid/graphics/Rect;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/CellLayoutAspect;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 22

    .prologue
    .line 147
    invoke-interface/range {p14 .. p14}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 148
    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_42

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    :goto_14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 149
    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_47

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    :goto_26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 150
    invoke-static {p8}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v1

    invoke-static/range {p9 .. p9}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v4

    move-object v0, p0

    move-object/from16 v5, p12

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->cellToRect_aroundBody6(Lcom/android/launcher3/CellLayout;IIIILandroid/graphics/Rect;Lorg/aspectj/lang/JoinPoint;)V

    .line 151
    return-void

    .line 148
    :cond_42
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_14

    .line 149
    :cond_47
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_26
.end method

.method private clearOccupiedCells()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 2776
    :goto_2
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-lt v0, v2, :cond_7

    .line 2781
    return-void

    :cond_7
    move v2, v1

    .line 2777
    :goto_8
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-lt v2, v3, :cond_f

    .line 2776
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2778
    :cond_f
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    aget-object v3, v3, v0

    aput-boolean v1, v3, v2

    .line 2777
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method private commitTempPlacement()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 2219
    :goto_2
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-lt v0, v2, :cond_19

    .line 2224
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    move v2, v1

    .line 2225
    :goto_d
    if-lt v2, v3, :cond_30

    .line 2242
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->updateItemLocationsInDatabase(Lcom/android/launcher3/CellLayout;)V

    .line 2243
    return-void

    :cond_19
    move v2, v1

    .line 2220
    :goto_1a
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-lt v2, v3, :cond_21

    .line 2219
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2221
    :cond_21
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    aget-object v4, v4, v0

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    .line 2220
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 2226
    :cond_30
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2227
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2228
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 2231
    if-eqz v1, :cond_73

    .line 2232
    iget v4, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v4, v5, :cond_5c

    iget v4, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v4, v5, :cond_5c

    .line 2233
    iget v4, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v4, v5, :cond_5c

    iget v4, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v4, v5, :cond_5f

    .line 2234
    :cond_5c
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/launcher3/ItemInfo;->requiresDbUpdate:Z

    .line 2236
    :cond_5f
    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v4, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 2237
    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v4, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 2238
    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput v4, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2239
    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput v0, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 2225
    :cond_73
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d
.end method

.method private completeAndClearReorderPreviewAnimations()V
    .registers 3

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2215
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2216
    return-void

    .line 2212
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    .line 2213
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->completeAnimationImmediately()V

    goto :goto_a
.end method

.method private computeDirectionVector(FF[I)V
    .registers 12

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    .line 1936
    div-float v0, p2, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 1938
    aput v4, p3, v4

    .line 1939
    aput v4, p3, v5

    .line 1940
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_22

    .line 1941
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v4

    .line 1943
    :cond_22
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_35

    .line 1944
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    aput v0, p3, v5

    .line 1946
    :cond_35
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V
    .registers 12

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v7

    .line 1999
    const/4 v0, 0x0

    move v6, v0

    :goto_8
    if-lt v6, v7, :cond_b

    .line 2010
    return-void

    .line 2000
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2001
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2003
    if-eqz p2, :cond_2f

    .line 2004
    new-instance v0, Lcom/android/launcher3/CellLayout$CellAndSpan;

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/CellLayout$CellAndSpan;-><init>(Lcom/android/launcher3/CellLayout;IIII)V

    .line 2008
    :goto_28
    invoke-virtual {p1, v8, v0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher3/CellLayout$CellAndSpan;)V

    .line 1999
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_8

    .line 2006
    :cond_2f
    new-instance v0, Lcom/android/launcher3/CellLayout$CellAndSpan;

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/CellLayout$CellAndSpan;-><init>(Lcom/android/launcher3/CellLayout;IIII)V

    goto :goto_28
.end method

.method private copyOccupiedArray([[Z)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 1949
    :goto_2
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-lt v0, v2, :cond_7

    .line 1954
    return-void

    :cond_7
    move v2, v1

    .line 1950
    :goto_8
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-lt v2, v3, :cond_f

    .line 1949
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1951
    :cond_f
    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v0

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    .line 1950
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method private copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    move v0, v1

    .line 2013
    :goto_3
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-lt v0, v2, :cond_1f

    .line 2019
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v8

    move v7, v1

    .line 2020
    :goto_e
    if-lt v7, v8, :cond_30

    .line 2033
    iget v1, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewX:I

    iget v2, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewY:I

    iget v3, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2034
    iget v4, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    move-object v0, p0

    .line 2033
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2035
    return-void

    :cond_1f
    move v2, v1

    .line 2014
    :goto_20
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-lt v2, v3, :cond_27

    .line 2013
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2015
    :cond_27
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    aget-object v3, v3, v0

    aput-boolean v1, v3, v2

    .line 2014
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 2021
    :cond_30
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2022
    if-ne v1, p2, :cond_3c

    .line 2020
    :cond_38
    :goto_38
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_e

    .line 2023
    :cond_3c
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2024
    iget-object v2, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 2025
    if-eqz v4, :cond_38

    .line 2026
    iget v1, v4, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 2027
    iget v1, v4, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 2028
    iget v1, v4, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2029
    iget v1, v4, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2030
    iget v1, v4, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v2, v4, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, v4, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, v4, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_38
.end method

.method private findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .registers 19

    .prologue
    .line 2255
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 2256
    const/4 v1, 0x2

    new-array v9, v1, [I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    .line 2257
    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    .line 2259
    const/4 v1, 0x0

    aget v1, v8, v1

    if-ltz v1, :cond_43

    const/4 v1, 0x1

    aget v1, v8, v1

    if-ltz v1, :cond_43

    .line 2260
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    .line 2261
    const/4 v1, 0x0

    aget v1, v8, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2262
    const/4 v1, 0x1

    aget v1, v8, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2263
    const/4 v1, 0x0

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2264
    const/4 v1, 0x1

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    .line 2265
    const/4 v1, 0x1

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2269
    :goto_42
    return-object p8

    .line 2267
    :cond_43
    const/4 v1, 0x0

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_42
.end method

.method private findNearestArea(IIIIIIZ[I[I)[I
    .registers 32

    .prologue
    .line 1181
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->lazyInitTempRectStack()V

    .line 1186
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    add-int/lit8 v4, p5, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v12, v2

    .line 1187
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    add-int/lit8 v4, p6, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v13, v2

    .line 1190
    if-eqz p8, :cond_63

    .line 1191
    :goto_2f
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1192
    new-instance v14, Landroid/graphics/Rect;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v14, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1193
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 1195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    move/from16 v16, v0

    .line 1196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    move/from16 v17, v0

    .line 1198
    if-lez p3, :cond_62

    if-lez p4, :cond_62

    if-lez p5, :cond_62

    if-lez p6, :cond_62

    .line 1199
    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_62

    move/from16 v0, p6

    move/from16 v1, p4

    if-ge v0, v1, :cond_69

    .line 1294
    :cond_62
    :goto_62
    return-object p8

    .line 1190
    :cond_63
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 p8, v0

    goto :goto_2f

    .line 1203
    :cond_69
    const/4 v2, 0x0

    move v11, v2

    :goto_6b
    add-int/lit8 v2, p4, -0x1

    sub-int v2, v17, v2

    if-lt v11, v2, :cond_88

    .line 1289
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v2, v8, v2

    if-nez v2, :cond_82

    .line 1290
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, p8, v2

    .line 1291
    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, p8, v2

    .line 1293
    :cond_82
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    goto :goto_62

    .line 1205
    :cond_88
    const/4 v2, 0x0

    move v10, v2

    :goto_8a
    add-int/lit8 v2, p3, -0x1

    sub-int v2, v16, v2

    if-lt v10, v2, :cond_94

    .line 1203
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_6b

    .line 1206
    :cond_94
    const/4 v3, -0x1

    .line 1207
    const/4 v2, -0x1

    .line 1208
    if-eqz p7, :cond_1fe

    .line 1210
    const/4 v2, 0x0

    move v3, v2

    :goto_9a
    move/from16 v0, p3

    if-lt v3, v0, :cond_120

    .line 1223
    const/4 v3, 0x1

    .line 1224
    move/from16 v0, p3

    move/from16 v1, p5

    if-lt v0, v1, :cond_13d

    const/4 v6, 0x1

    .line 1225
    :goto_a6
    move/from16 v0, p4

    move/from16 v1, p6

    if-lt v0, v1, :cond_140

    const/4 v2, 0x1

    :goto_ad
    move v5, v2

    move v7, v3

    move/from16 v4, p4

    move/from16 v3, p3

    .line 1226
    :goto_b3
    if-eqz v6, :cond_143

    if-eqz v5, :cond_143

    .line 1253
    move/from16 v0, p5

    if-lt v3, v0, :cond_bb

    .line 1254
    :cond_bb
    move/from16 v0, p6

    if-lt v4, v0, :cond_bf

    :cond_bf
    move v5, v4

    move v4, v3

    .line 1256
    :goto_c1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1257
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v7}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1263
    add-int v3, v10, v4

    add-int v6, v11, v5

    invoke-virtual {v2, v10, v11, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1264
    const/4 v6, 0x0

    .line 1265
    invoke-virtual {v15}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_e0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1ce

    move v3, v6

    .line 1271
    :goto_e7
    invoke-virtual {v15, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    const/4 v6, 0x0

    aget v6, v7, v6

    sub-int/2addr v6, v12

    int-to-double v0, v6

    move-wide/from16 v18, v0

    const/4 v6, 0x1

    aget v6, v7, v6

    sub-int/2addr v6, v13

    int-to-double v6, v6

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 1274
    cmpg-double v18, v6, v8

    if-gtz v18, :cond_102

    if-eqz v3, :cond_108

    .line 1275
    :cond_102
    invoke-virtual {v2, v14}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1dd

    .line 1277
    :cond_108
    const/4 v3, 0x0

    aput v10, p8, v3

    .line 1278
    const/4 v3, 0x1

    aput v11, p8, v3

    .line 1279
    if-eqz p9, :cond_116

    .line 1280
    const/4 v3, 0x0

    aput v4, p9, v3

    .line 1281
    const/4 v3, 0x1

    aput v5, p9, v3

    .line 1283
    :cond_116
    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-wide v2, v6

    .line 1205
    :goto_11a
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-wide v8, v2

    goto/16 :goto_8a

    .line 1211
    :cond_120
    const/4 v2, 0x0

    :goto_121
    move/from16 v0, p4

    if-lt v2, v0, :cond_12a

    .line 1210
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_9a

    .line 1212
    :cond_12a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    add-int v5, v10, v3

    aget-object v4, v4, v5

    add-int v5, v11, v2

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_13a

    move-wide v2, v8

    .line 1213
    goto :goto_11a

    .line 1211
    :cond_13a
    add-int/lit8 v2, v2, 0x1

    goto :goto_121

    .line 1224
    :cond_13d
    const/4 v6, 0x0

    goto/16 :goto_a6

    .line 1225
    :cond_140
    const/4 v2, 0x0

    goto/16 :goto_ad

    .line 1227
    :cond_143
    if-eqz v7, :cond_194

    if-nez v6, :cond_194

    .line 1228
    const/4 v2, 0x0

    move/from16 v20, v2

    move v2, v6

    move/from16 v6, v20

    :goto_14d
    if-lt v6, v4, :cond_176

    .line 1234
    if-nez v2, :cond_1f5

    .line 1235
    add-int/lit8 v3, v3, 0x1

    move v6, v4

    move v4, v2

    move/from16 v20, v3

    move v3, v5

    move/from16 v5, v20

    .line 1248
    :goto_15a
    move/from16 v0, p5

    if-lt v5, v0, :cond_1c8

    const/4 v2, 0x1

    :goto_15f
    or-int/2addr v4, v2

    .line 1249
    move/from16 v0, p6

    if-lt v6, v0, :cond_1ca

    const/4 v2, 0x1

    :goto_165
    or-int/2addr v3, v2

    .line 1250
    if-eqz v7, :cond_1cc

    const/4 v2, 0x0

    :goto_169
    move v7, v2

    move/from16 v20, v4

    move v4, v6

    move/from16 v6, v20

    move/from16 v21, v5

    move v5, v3

    move/from16 v3, v21

    goto/16 :goto_b3

    .line 1229
    :cond_176
    add-int v18, v10, v3

    add-int/lit8 v19, v16, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_190

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    move-object/from16 v18, v0

    add-int v19, v10, v3

    aget-object v18, v18, v19

    add-int v19, v11, v6

    aget-boolean v18, v18, v19

    if-eqz v18, :cond_191

    .line 1231
    :cond_190
    const/4 v2, 0x1

    .line 1228
    :cond_191
    add-int/lit8 v6, v6, 0x1

    goto :goto_14d

    .line 1237
    :cond_194
    if-nez v5, :cond_1e9

    .line 1238
    const/4 v2, 0x0

    move/from16 v20, v2

    move v2, v5

    move/from16 v5, v20

    :goto_19c
    if-lt v5, v3, :cond_1aa

    .line 1244
    if-nez v2, :cond_1e0

    .line 1245
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    move v3, v2

    move/from16 v20, v6

    move v6, v4

    move/from16 v4, v20

    goto :goto_15a

    .line 1239
    :cond_1aa
    add-int v18, v11, v4

    add-int/lit8 v19, v17, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_1c4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    move-object/from16 v18, v0

    add-int v19, v10, v5

    aget-object v18, v18, v19

    add-int v19, v11, v4

    aget-boolean v18, v18, v19

    if-eqz v18, :cond_1c5

    .line 1241
    :cond_1c4
    const/4 v2, 0x1

    .line 1238
    :cond_1c5
    add-int/lit8 v5, v5, 0x1

    goto :goto_19c

    .line 1248
    :cond_1c8
    const/4 v2, 0x0

    goto :goto_15f

    .line 1249
    :cond_1ca
    const/4 v2, 0x0

    goto :goto_165

    .line 1250
    :cond_1cc
    const/4 v2, 0x1

    goto :goto_169

    .line 1265
    :cond_1ce
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 1266
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 1267
    const/4 v3, 0x1

    .line 1268
    goto/16 :goto_e7

    :cond_1dd
    move-wide v2, v8

    goto/16 :goto_11a

    :cond_1e0
    move v5, v3

    move v3, v2

    move/from16 v20, v6

    move v6, v4

    move/from16 v4, v20

    goto/16 :goto_15a

    :cond_1e9
    move/from16 v20, v5

    move v5, v3

    move/from16 v3, v20

    move/from16 v21, v6

    move v6, v4

    move/from16 v4, v21

    goto/16 :goto_15a

    :cond_1f5
    move v6, v4

    move v4, v2

    move/from16 v20, v3

    move v3, v5

    move/from16 v5, v20

    goto/16 :goto_15a

    :cond_1fe
    move v4, v2

    move v5, v3

    goto/16 :goto_c1
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .registers 25

    .prologue
    .line 1321
    if-eqz p8, :cond_27

    .line 1322
    :goto_2
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 1323
    const/high16 v3, -0x80000000

    .line 1325
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 1326
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 1328
    const/4 v2, 0x0

    move v8, v2

    :goto_11
    add-int/lit8 v2, p4, -0x1

    sub-int v2, v10, v2

    if-lt v8, v2, :cond_2d

    .line 1362
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v4, v2

    if-nez v2, :cond_26

    .line 1363
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, p8, v2

    .line 1364
    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, p8, v2

    .line 1366
    :cond_26
    return-object p8

    .line 1321
    :cond_27
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 p8, v0

    goto :goto_2

    .line 1330
    :cond_2d
    const/4 v2, 0x0

    move v7, v2

    move v2, v3

    :goto_30
    add-int/lit8 v3, p3, -0x1

    sub-int v3, v9, v3

    if-lt v7, v3, :cond_3b

    .line 1328
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v3, v2

    goto :goto_11

    .line 1332
    :cond_3b
    const/4 v3, 0x0

    move v5, v3

    :goto_3d
    move/from16 v0, p3

    if-lt v5, v0, :cond_98

    .line 1340
    sub-int v3, v7, p1

    int-to-double v12, v3

    sub-int v3, v8, p2

    int-to-double v14, v3

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    double-to-float v5, v12

    .line 1341
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1342
    sub-int v3, v7, p1

    int-to-float v3, v3

    sub-int v11, v8, p2

    int-to-float v11, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v6}, Lcom/android/launcher3/CellLayout;->computeDirectionVector(FF[I)V

    .line 1345
    const/4 v3, 0x0

    aget v3, p5, v3

    const/4 v11, 0x0

    aget v11, v6, v11

    mul-int/2addr v3, v11

    .line 1346
    const/4 v11, 0x1

    aget v11, p5, v11

    const/4 v12, 0x1

    aget v12, v6, v12

    mul-int/2addr v11, v12

    .line 1345
    add-int/2addr v3, v11

    .line 1348
    const/4 v11, 0x0

    aget v11, p5, v11

    const/4 v12, 0x0

    aget v12, v6, v12

    if-ne v11, v12, :cond_b8

    .line 1349
    const/4 v11, 0x0

    aget v11, p5, v11

    const/4 v12, 0x0

    aget v6, v6, v12

    if-ne v11, v6, :cond_b8

    .line 1348
    const/4 v6, 0x1

    .line 1350
    :goto_7b
    if-nez v6, :cond_7d

    .line 1351
    :cond_7d
    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-ltz v6, :cond_8b

    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_ba

    .line 1352
    if-le v3, v2, :cond_ba

    .line 1355
    :cond_8b
    const/4 v2, 0x0

    aput v7, p8, v2

    .line 1356
    const/4 v2, 0x1

    aput v8, p8, v2

    move v2, v3

    move v3, v5

    .line 1330
    :goto_93
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v3

    goto :goto_30

    .line 1333
    :cond_98
    const/4 v3, 0x0

    :goto_99
    move/from16 v0, p4

    if-lt v3, v0, :cond_a1

    .line 1332
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3d

    .line 1334
    :cond_a1
    add-int v6, v7, v5

    aget-object v6, p6, v6

    add-int v11, v8, v3

    aget-boolean v6, v6, v11

    if-eqz v6, :cond_b5

    if-eqz p7, :cond_ba

    aget-object v6, p7, v5

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_b5

    move v3, v4

    .line 1335
    goto :goto_93

    .line 1333
    :cond_b5
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 1348
    :cond_b8
    const/4 v6, 0x0

    goto :goto_7b

    :cond_ba
    move v3, v4

    goto :goto_93
.end method

.method private findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .registers 24

    .prologue
    .line 1960
    const/4 v2, 0x0

    move-object/from16 v0, p10

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    .line 1963
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    invoke-direct {p0, v2}, Lcom/android/launcher3/CellLayout;->copyOccupiedArray([[Z)V

    .line 1967
    const/4 v2, 0x2

    new-array v7, v2, [I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1968
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v10

    .line 1973
    const/4 v2, 0x0

    aget v3, v10, v2

    const/4 v2, 0x1

    aget v4, v10, v2

    move-object v2, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/CellLayout;->rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    .line 1976
    if-nez v2, :cond_78

    .line 1979
    move/from16 v0, p5

    move/from16 v1, p3

    if-le v0, v1, :cond_55

    move/from16 v0, p4

    move/from16 v1, p6

    if-eq v0, v1, :cond_3e

    if-eqz p9, :cond_55

    .line 1980
    :cond_3e
    add-int/lit8 v7, p5, -0x1

    .line 1981
    const/4 v11, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    .line 1980
    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p10

    .line 1994
    :goto_54
    return-object p10

    .line 1982
    :cond_55
    move/from16 v0, p6

    move/from16 v1, p4

    if-le v0, v1, :cond_72

    .line 1983
    add-int/lit8 v8, p6, -0x1

    .line 1984
    const/4 v11, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    .line 1983
    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p10

    goto :goto_54

    .line 1986
    :cond_72
    const/4 v2, 0x0

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_54

    .line 1988
    :cond_78
    const/4 v2, 0x1

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 1989
    const/4 v2, 0x0

    aget v2, v10, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewX:I

    .line 1990
    const/4 v2, 0x1

    aget v2, v10, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewY:I

    .line 1991
    move/from16 v0, p5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 1992
    move/from16 v0, p6

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    goto :goto_54
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .registers 20

    .prologue
    .line 2286
    const/4 v1, 0x2

    new-array v6, v1, [I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 2288
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    .line 2289
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2290
    const/4 v1, 0x0

    aget v8, v6, v1

    const/4 v1, 0x1

    aget v9, v6, v1

    move-object v7, p0

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2291
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2293
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2294
    const/4 v1, 0x0

    aget v2, v6, v1

    const/4 v1, 0x1

    aget v3, v6, v1

    .line 2295
    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 2294
    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2297
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 2298
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 2300
    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 2301
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v2, p0

    .line 2300
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2303
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v1, p1

    div-int v1, v1, p3

    .line 2304
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v2, p2

    div-int v2, v2, p4

    .line 2306
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-eq v8, v3, :cond_76

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_77

    .line 2307
    :cond_76
    const/4 v1, 0x0

    .line 2309
    :cond_77
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-eq v9, v3, :cond_81

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    move/from16 v0, p4

    if-ne v0, v3, :cond_82

    .line 2310
    :cond_81
    const/4 v2, 0x0

    .line 2313
    :cond_82
    if-nez v1, :cond_8f

    if-nez v2, :cond_8f

    .line 2315
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, p6, v1

    .line 2316
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, p6, v1

    .line 2320
    :goto_8e
    return-void

    .line 2318
    :cond_8f
    int-to-float v1, v1

    int-to-float v2, v2

    move-object/from16 v0, p6

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/CellLayout;->computeDirectionVector(FF[I)V

    goto :goto_8e
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2325
    if-eqz p6, :cond_b

    .line 2326
    add-int v1, p1, p3

    add-int v2, p2, p4

    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2328
    :cond_b
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->clear()V

    .line 2329
    new-instance v3, Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-direct {v3, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2330
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2331
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    .line 2332
    const/4 v1, 0x0

    move v2, v1

    :goto_24
    if-lt v2, v5, :cond_27

    .line 2344
    return-void

    .line 2333
    :cond_27
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2334
    move-object/from16 v0, p5

    if-ne v6, v0, :cond_35

    .line 2332
    :cond_31
    :goto_31
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_24

    .line 2335
    :cond_35
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2336
    iget v7, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v8, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v9, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v10, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v9, v10

    iget v10, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v1, v10

    invoke-virtual {v4, v7, v8, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2337
    invoke-static {v3, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2338
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2339
    if-eqz p6, :cond_31

    .line 2340
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_31
.end method

.method private lazyInitTempRectStack()V
    .registers 4

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1151
    const/4 v0, 0x0

    :goto_9
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_11

    .line 1155
    :cond_10
    return-void

    .line 1152
    :cond_11
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private markCellsForRect(Landroid/graphics/Rect;[[ZZ)V
    .registers 11

    .prologue
    .line 1775
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1776
    return-void
.end method

.method private markCellsForView(IIII[[ZZ)V
    .registers 10

    .prologue
    .line 2797
    if-ltz p1, :cond_4

    if-gez p2, :cond_5

    .line 2803
    :cond_4
    return-void

    :cond_5
    move v1, p1

    .line 2798
    :goto_6
    add-int v0, p1, p3

    if-ge v1, v0, :cond_4

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge v1, v0, :cond_4

    move v0, p2

    .line 2799
    :goto_f
    add-int v2, p2, p4

    if-ge v0, v2, :cond_17

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-lt v0, v2, :cond_1b

    .line 2798
    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 2800
    :cond_1b
    aget-object v2, p5, v1

    aput-boolean p6, v2, v0

    .line 2799
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private measureCellDimension(II)V
    .registers 11

    .prologue
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_13:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v7

    .line 866
    :try_start_e
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    if-ltz v0, :cond_16

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    if-gez v0, :cond_3f

    .line 867
    :cond_16
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-static {p1, v0}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v0

    .line 868
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-static {p2, v1}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(II)I

    move-result v1

    .line 869
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    if-ne v0, v2, :cond_2a

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    if-eq v1, v2, :cond_3f

    .line 870
    :cond_2a
    iput v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 871
    iput v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 872
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    .line 873
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 872
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_3f} :catch_47

    .line 876
    :cond_3f
    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$5$6b437fdf(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_47
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$5$6b437fdf(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method private static final onInterceptTouchEvent_aroundBody0(Lcom/android/launcher3/CellLayout;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 4

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    if-nez v0, :cond_10

    .line 330
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 331
    :cond_10
    const/4 v0, 0x1

    .line 333
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static final onInterceptTouchEvent_aroundBody1$advice(Lcom/android/launcher3/CellLayout;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 9

    .prologue
    .line 478
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 479
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0, p4}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$isValidTouchArea(Lcom/android/launcher3/CellLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 480
    const/4 v0, 0x1

    .line 483
    :goto_13
    return v0

    :cond_14
    invoke-static {p0, p4, p2}, Lcom/android/launcher3/CellLayout;->onInterceptTouchEvent_aroundBody0(Lcom/android/launcher3/CellLayout;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    goto :goto_13
.end method

.method private static final onTouchEvent_aroundBody2(Lcom/android/launcher3/CellLayout;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 5

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 344
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 345
    const/4 v0, 0x1

    .line 347
    :cond_17
    return v0
.end method

.method private static final onTouchEvent_aroundBody3$advice(Lcom/android/launcher3/CellLayout;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/CellLayoutAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 9

    .prologue
    .line 41
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 43
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getWorkspaceState(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1e

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_1e

    .line 45
    iget-object v0, p3, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    if-eqz v0, :cond_1e

    iget-object v0, p3, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    invoke-virtual {v0, p4}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 46
    const/4 v0, 0x1

    .line 50
    :goto_1d
    return v0

    :cond_1e
    invoke-static {p0, p4, p2}, Lcom/android/launcher3/CellLayout;->onTouchEvent_aroundBody2(Lcom/android/launcher3/CellLayout;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    goto :goto_1d
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1625
    new-instance v11, Lcom/android/launcher3/CellLayout$ViewCluster;

    move-object/from16 v0, p5

    invoke-direct {v11, p0, p1, v0}, Lcom/android/launcher3/CellLayout$ViewCluster;-><init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    .line 1626
    invoke-virtual {v11}, Lcom/android/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1629
    const/4 v8, 0x0

    .line 1633
    const/4 v1, 0x0

    aget v1, p3, v1

    if-gez v1, :cond_1d

    .line 1634
    const/4 v1, 0x0

    .line 1635
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int v9, v2, v3

    move v10, v1

    .line 1648
    :goto_19
    if-gtz v9, :cond_42

    .line 1649
    const/4 v8, 0x0

    .line 1714
    :cond_1c
    return v8

    .line 1636
    :cond_1d
    const/4 v1, 0x0

    aget v1, p3, v1

    if-lez v1, :cond_2b

    .line 1637
    const/4 v1, 0x2

    .line 1638
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v3, v2

    move v10, v1

    .line 1639
    goto :goto_19

    :cond_2b
    const/4 v1, 0x1

    aget v1, p3, v1

    if-gez v1, :cond_39

    .line 1640
    const/4 v1, 0x1

    .line 1641
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v3

    move v10, v1

    .line 1642
    goto :goto_19

    .line 1643
    :cond_39
    const/4 v1, 0x3

    .line 1644
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v9, v3, v2

    move v10, v1

    goto :goto_19

    .line 1653
    :cond_42
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_46
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9f

    .line 1661
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->save()V

    .line 1666
    invoke-virtual {v11, v10}, Lcom/android/launcher3/CellLayout$ViewCluster;->sortConfigurationForEdgePush(I)V

    .line 1668
    :goto_52
    if-lez v9, :cond_56

    if-eqz v8, :cond_bf

    .line 1696
    :cond_56
    const/4 v1, 0x0

    .line 1697
    invoke-virtual {v11}, Lcom/android/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1701
    if-nez v8, :cond_119

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_119

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-gt v3, v4, :cond_119

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_119

    .line 1702
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-gt v2, v3, :cond_119

    .line 1703
    const/4 v1, 0x1

    move v8, v1

    .line 1709
    :goto_73
    iget-object v1, v11, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_79
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1710
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1711
    iget v2, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v4, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_79

    .line 1653
    :cond_9f
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1654
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1655
    iget v2, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v4, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_46

    .line 1669
    :cond_bf
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c7
    :goto_c7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d8

    move v1, v8

    .line 1689
    :goto_ce
    add-int/lit8 v2, v9, -0x1

    .line 1693
    const/4 v3, 0x1

    invoke-virtual {v11, v10, v3}, Lcom/android/launcher3/CellLayout$ViewCluster;->shift(II)V

    move v8, v1

    move v9, v2

    goto/16 :goto_52

    .line 1669
    :cond_d8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1673
    iget-object v2, v11, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c7

    move-object/from16 v0, p4

    if-eq v1, v0, :cond_c7

    .line 1674
    invoke-virtual {v11, v1, v10}, Lcom/android/launcher3/CellLayout$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 1675
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1676
    iget-boolean v2, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v2, :cond_fc

    .line 1678
    const/4 v1, 0x1

    .line 1679
    goto :goto_ce

    .line 1681
    :cond_fc
    invoke-virtual {v11, v1}, Lcom/android/launcher3/CellLayout$ViewCluster;->addView(Landroid/view/View;)V

    .line 1682
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1685
    iget v2, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v4, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_c7

    .line 1705
    :cond_119
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->restore()V

    move v8, v1

    goto/16 :goto_73
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .registers 20

    .prologue
    .line 1878
    if-ltz p1, :cond_4

    if-gez p2, :cond_6

    :cond_4
    const/4 v2, 0x0

    .line 1928
    :goto_5
    return v2

    .line 1880
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1881
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1884
    if-eqz p6, :cond_28

    .line 1885
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1886
    if-eqz v2, :cond_28

    .line 1887
    iput p1, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    .line 1888
    iput p2, v2, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    .line 1891
    :cond_28
    new-instance v5, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v5, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1892
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1893
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_42
    :goto_42
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_66

    .line 1906
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p7

    iput-object v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 1911
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    .line 1912
    if-eqz v2, :cond_a4

    .line 1913
    const/4 v2, 0x1

    goto :goto_5

    .line 1893
    :cond_66
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1894
    move-object/from16 v0, p6

    if-eq v2, v0, :cond_42

    .line 1895
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$CellAndSpan;

    .line 1896
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1897
    iget v8, v3, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v9, v3, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v10, v3, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iget v11, v3, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v10, v11

    iget v11, v3, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, v3, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v3, v11

    invoke-virtual {v6, v8, v9, v10, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1898
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1899
    iget-boolean v3, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_9e

    .line 1900
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1902
    :cond_9e
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 1917
    :cond_a4
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    .line 1918
    if-eqz v2, :cond_b8

    .line 1919
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 1923
    :cond_b8
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_be
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c7

    .line 1928
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 1923
    :cond_c7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1924
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/android/launcher3/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    if-nez v2, :cond_be

    .line 1925
    const/4 v2, 0x0

    goto/16 :goto_5
.end method

.method public static rectToCell(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;II[I)[I
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2730
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 2734
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 2735
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 2734
    sub-int/2addr v1, v2

    .line 2735
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 2734
    sub-int/2addr v1, v2

    .line 2735
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 2734
    invoke-static {v1, v2}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v1

    .line 2736
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 2737
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 2736
    sub-int/2addr v2, v3

    .line 2737
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 2736
    sub-int v0, v2, v0

    .line 2737
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 2736
    invoke-static {v0, v2}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(II)I

    move-result v0

    .line 2738
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2741
    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 2742
    int-to-float v2, p3

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 2744
    if-nez p4, :cond_50

    .line 2745
    const/4 v2, 0x2

    new-array p4, v2, [I

    aput v1, p4, v4

    aput v0, p4, v5

    .line 2749
    :goto_4f
    return-object p4

    .line 2747
    :cond_50
    aput v1, p4, v4

    .line 2748
    aput v0, p4, v5

    goto :goto_4f
.end method

.method public static rectToCell(Lcom/android/launcher3/Launcher;II[I)[I
    .registers 5

    .prologue
    .line 2725
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;->rectToCell(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1158
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1161
    return-void

    .line 1159
    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setUseTempCoords(Z)V
    .registers 5

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 2247
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-lt v1, v2, :cond_b

    .line 2251
    return-void

    .line 2248
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2249
    iput-boolean p1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 2247
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z
    .registers 21

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static/range {p3 .. p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    invoke-static/range {p5 .. p5}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v6

    :try_start_24
    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v7

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object v14, v6

    invoke-static/range {v0 .. v14}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout_aroundBody5$advice(Lcom/android/launcher3/CellLayout;Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;ZLorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;ZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_42} :catch_4b

    move-result v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V

    return v0

    :catch_4b
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$addVacantCell(I)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$addVacantCell(Lcom/android/launcher3/CellLayout;I)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$addViewToHotseatCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;)Z
    .registers 6

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$addViewToHotseatCellLayout(Lcom/android/launcher3/CellLayout;Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$adjustGridSize()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$adjustGridSize(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$canReorderChildren()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$canReorderChildren(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    return v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$getHotseatGridSize()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getHotseatGridSize(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    return v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$getLayoutOrderInHotseat(Lcom/android/launcher3/CellLayout$LayoutParams;)I
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getLayoutOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;)I

    move-result v0

    return v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$getOrderInHotseat(Lcom/android/launcher3/ItemInfo;)J
    .registers 4

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$hasVacantCell()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$hasVacantCell(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    return v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$moveVacantCell(I)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$moveVacantCell(Lcom/android/launcher3/CellLayout;I)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$onCellLayoutCreated()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onCellLayoutCreated(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$setHotseatGridSize(I)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$setHotseatGridSize(Lcom/android/launcher3/CellLayout;I)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$setLayoutOrderInHotseat(Lcom/android/launcher3/CellLayout$LayoutParams;I)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$setLayoutOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;I)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$setOrderInHotseat(Lcom/android/launcher3/ItemInfo;I)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$setOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;I)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_CellLayoutItds$drawGlowOutlineDropCue(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawGlowOutlineDropCue(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_CellLayoutItds$drawGrid(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawGrid(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_CellLayoutItds$drawWidgetDropCue(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawWidgetDropCue(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_CellLayoutItds$initDrawable()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$initDrawable(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_CellLayoutItds$updateCurrentOccupied([[ZII)V
    .registers 4

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$updateCurrentOccupied(Lcom/android/launcher3/CellLayout;[[ZII)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$measureCellDimension(II)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->measureCellDimension(II)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$markCellsForView(IIII[[ZZ)V
    .registers 7

    .prologue
    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_CellLayoutAspect$com_android_launcher3_CellLayout$cellToPoint(II[I)V
    .registers 4

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_CellLayout$dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .registers 27

    .prologue
    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    .line 945
    if-nez p6, :cond_ff

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    move-object v6, v2

    .line 949
    :goto_f
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_fd

    .line 950
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 951
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 955
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 956
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    :cond_42
    iget v5, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 960
    iget v7, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 961
    iget v9, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    .line 962
    iget v11, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    .line 963
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v14

    .line 964
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v16

    .line 965
    if-eqz p7, :cond_62

    .line 966
    iget v3, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aget-object v3, v6, v3

    iget v10, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/4 v12, 0x0

    aput-boolean v12, v3, v10

    .line 967
    aget-object v3, v6, p2

    const/4 v6, 0x1

    aput-boolean v6, v3, p3

    .line 969
    :cond_62
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 970
    if-eqz p6, :cond_a2

    .line 971
    move/from16 v0, p2

    iput v0, v2, Lcom/android/launcher3/ItemInfo;->cellX:I

    move/from16 v0, p2

    iput v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 972
    move/from16 v0, p3

    iput v0, v2, Lcom/android/launcher3/ItemInfo;->cellY:I

    move/from16 v0, p3

    iput v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 977
    :goto_77
    invoke-virtual {v8, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Lcom/android/launcher3/CellLayout$LayoutParams;)V

    .line 978
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 979
    iget v6, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 980
    iget v8, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 981
    iget v10, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    .line 982
    iget v12, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    .line 983
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v15

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v17

    .line 986
    iput v5, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 987
    iput v7, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 988
    iput v9, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    .line 989
    iput v11, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    .line 992
    if-ne v5, v6, :cond_ab

    if-ne v7, v8, :cond_ab

    if-ne v9, v10, :cond_ab

    if-ne v11, v12, :cond_ab

    .line 993
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 994
    const/4 v2, 0x1

    .line 1037
    :goto_a1
    return v2

    .line 974
    :cond_a2
    move/from16 v0, p2

    iput v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 975
    move/from16 v0, p3

    iput v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_77

    .line 997
    :cond_ab
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_102

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v18

    .line 998
    move/from16 v0, p4

    int-to-long v2, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 999
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    new-instance v2, Lcom/android/launcher3/CellLayout$3;

    move-object/from16 v3, p0

    move-object/from16 v13, p1

    invoke-direct/range {v2 .. v17}, Lcom/android/launcher3/CellLayout$3;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;FFFF)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1015
    new-instance v2, Lcom/android/launcher3/CellLayout$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v4, v1}, Lcom/android/launcher3/CellLayout$4;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1033
    move/from16 v0, p5

    int-to-long v2, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1034
    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->start()V

    .line 1035
    const/4 v2, 0x1

    goto :goto_a1

    .line 1037
    :cond_fd
    const/4 v2, 0x0

    goto :goto_a1

    :cond_ff
    move-object v6, v2

    goto/16 :goto_f

    .line 997
    :array_102
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animationChangeGrid(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$animationChangeGrid(Lcom/android/launcher3/CellLayout;Z)V

    return-void
.end method

.method public buildHardwareLayer()V
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->buildLayer()V

    .line 356
    return-void
.end method

.method public calculateChildrenScale()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$calculateChildrenScale(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public calculateSpans(Lcom/android/launcher3/ItemInfo;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 2759
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_20

    move-object v0, p1

    .line 2760
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->minWidth:I

    move-object v0, p1

    .line 2761
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->minHeight:I

    .line 2770
    :goto_f
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/android/launcher3/CellLayout;->rectToCell(Lcom/android/launcher3/Launcher;II[I)[I

    move-result-object v0

    .line 2771
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2772
    aget v0, v0, v4

    iput v0, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 2773
    :goto_1f
    return-void

    .line 2762
    :cond_20
    instance-of v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_2f

    move-object v0, p1

    .line 2763
    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v1, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minWidth:I

    move-object v0, p1

    .line 2764
    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minHeight:I

    goto :goto_f

    .line 2767
    :cond_2f
    iput v4, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v4, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    goto :goto_1f
.end method

.method public canAddVacantCell()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$canAddVacantCell(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    return v0
.end method

.method public cancelLongPress()V
    .registers 4

    .prologue
    .line 580
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 583
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildCount()I

    move-result v1

    .line 584
    const/4 v0, 0x0

    :goto_8
    if-lt v0, v1, :cond_b

    .line 588
    return-void

    .line 585
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 586
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public cellSpansToSize(II)[I
    .registers 4

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$cellSpansToSize(Lcom/android/launcher3/CellLayout;II)[I

    move-result-object v0

    return-object v0
.end method

.method cellToCenterPoint(II[I)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    .line 747
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 748
    return-void
.end method

.method cellToPoint(II[I)V
    .registers 9

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 732
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 734
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v0, v3

    aput v0, p3, v2

    .line 735
    const/4 v0, 0x1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 736
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .registers 21

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_17:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static/range {p3 .. p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static/range {p4 .. p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v6

    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-static/range {p2 .. p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-static/range {p3 .. p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-static/range {p4 .. p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    const/4 v13, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v12, p5

    move-object v14, v6

    invoke-static/range {v0 .. v14}, Lcom/android/launcher3/CellLayout;->cellToRect_aroundBody7$advice(Lcom/android/launcher3/CellLayout;IIIILandroid/graphics/Rect;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/CellLayoutAspect;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 2830
    instance-of v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    return v0
.end method

.method public cleanupVacantCell(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    return-void
.end method

.method public clearDragOutlines()V
    .registers 6

    .prologue
    .line 1105
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1106
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 1107
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v2, v3

    aput v4, v0, v1

    .line 1108
    return-void
.end method

.method public clearFolderLeaveBehind()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 556
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 557
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 558
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 559
    return-void
.end method

.method public clearRect(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$clearRect(Lcom/android/launcher3/CellLayout;Z)V

    return-void
.end method

.method public createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .registers 21

    .prologue
    .line 2374
    iget-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mIsHotseat:Z

    if-eqz v2, :cond_29

    .line 2375
    if-ltz p1, :cond_27

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-gt p1, v2, :cond_27

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$canAddVacantCell(Lcom/android/launcher3/CellLayout;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_22

    const/4 v2, 0x1

    move v3, v2

    :goto_17
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_25

    const/4 v2, 0x1

    :goto_1d
    and-int/2addr v2, v3

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    .line 2403
    :goto_21
    return v2

    .line 2375
    :cond_22
    const/4 v2, 0x0

    move v3, v2

    goto :goto_17

    :cond_25
    const/4 v2, 0x0

    goto :goto_1d

    :cond_27
    const/4 v2, 0x0

    goto :goto_21

    .line 2377
    :cond_29
    const/4 v2, 0x2

    new-array v7, v2, [I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 2378
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2381
    const/4 v2, 0x0

    aget v3, v7, v2

    const/4 v2, 0x1

    aget v4, v7, v2

    .line 2382
    const/4 v11, 0x1

    new-instance v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v12, p0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher3/CellLayout;)V

    move-object v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    .line 2381
    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v2

    .line 2384
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2385
    if-eqz v2, :cond_7e

    iget-boolean v3, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v3, :cond_7e

    .line 2389
    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2390
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2391
    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2393
    if-eqz p7, :cond_81

    .line 2394
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->commitTempPlacement()V

    .line 2395
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2396
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2401
    :goto_79
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2403
    :cond_7e
    iget-boolean v2, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_21

    .line 2399
    :cond_81
    const/16 v3, 0x96

    const/4 v4, 0x1

    .line 2398
    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    goto :goto_79
.end method

.method public createCrossHairsGrid()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$createCrossHairsGrid(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method disableDragTarget()V
    .registers 2

    .prologue
    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragTarget:Z

    .line 408
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$dispatchDraw(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 322
    const/4 v0, 0x1

    .line 324
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public drawBackgroundOutlineInOverviewMode(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawBackgroundOutlineInOverviewMode(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public enableAccessibleDrag(ZI)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 291
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    .line 292
    if-nez p1, :cond_27

    .line 293
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 294
    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 295
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    :goto_19
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 313
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p0, v1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 316
    :cond_26
    return-void

    .line 298
    :cond_27
    if-ne p2, v2, :cond_4b

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    instance-of v0, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;

    if-nez v0, :cond_4b

    .line 300
    new-instance v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;-><init>(Lcom/android/launcher3/CellLayout;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    .line 305
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 306
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 307
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_19

    .line 301
    :cond_4b
    if-ne p2, v1, :cond_36

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    instance-of v0, v0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;

    if-nez v0, :cond_36

    .line 303
    new-instance v0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;-><init>(Lcom/android/launcher3/CellLayout;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    goto :goto_36
.end method

.method public enableHardwareLayer(Z)V
    .registers 5

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_b

    const/4 v0, 0x2

    :goto_5
    sget-object v2, Lcom/android/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 352
    return-void

    .line 351
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public enableHotwordServiceIfNeeded()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$interMethod$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$enableHotwordServiceIfNeeded(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method existsEmptyCell()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2600
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method public findAppWidgetByComponentName(Landroid/content/ComponentName;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$findAppWidgetByComponentName(Lcom/android/launcher3/CellLayout;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public findCellForSpan([III)Z
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2618
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v2, p2, -0x1

    sub-int v7, v0, v2

    .line 2619
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    add-int/lit8 v2, p3, -0x1

    sub-int v8, v0, v2

    move v6, v3

    move v0, v3

    .line 2621
    :goto_10
    if-ge v6, v8, :cond_14

    if-eqz v0, :cond_15

    .line 2643
    :cond_14
    return v0

    :cond_15
    move v5, v3

    .line 2623
    :goto_16
    if-lt v5, v7, :cond_1c

    .line 2621
    :goto_18
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_10

    :cond_1c
    move v4, v3

    .line 2624
    :goto_1d
    if-lt v4, p2, :cond_27

    .line 2634
    if-eqz p1, :cond_25

    .line 2635
    aput v5, p1, v3

    .line 2636
    aput v6, p1, v1

    :cond_25
    move v0, v1

    .line 2639
    goto :goto_18

    :cond_27
    move v2, v3

    .line 2625
    :goto_28
    if-lt v2, p3, :cond_2e

    .line 2624
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1d

    .line 2626
    :cond_2e
    iget-object v9, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    add-int v10, v5, v4

    aget-object v9, v9, v10

    add-int v10, v6, v2

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_40

    .line 2629
    add-int v2, v5, v4

    .line 2623
    add-int/lit8 v2, v2, 0x1

    move v5, v2

    goto :goto_16

    .line 2625
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_28
.end method

.method public findInsertArea(II[I)[I
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$findInsertArea(Lcom/android/launcher3/CellLayout;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public findInsertAreaInHorizontalLayout(II[I)[I
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$findInsertAreaInHorizontalLayout(Lcom/android/launcher3/CellLayout;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public findInsertAreaInVerticalLayout(II[I)[I
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$findInsertAreaInVerticalLayout(Lcom/android/launcher3/CellLayout;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public findNearestArea(IIII[I)[I
    .registers 16

    .prologue
    .line 2596
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIIII[I[I)[I
    .registers 19

    .prologue
    .line 1144
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIII[I)[I
    .registers 15

    .prologue
    .line 1124
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public findVacantCell(II[I)Z
    .registers 10

    .prologue
    .line 3034
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    move-object v0, p3

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 2825
    new-instance v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 2835
    new-instance v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .registers 2

    .prologue
    .line 914
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getCellHeight()I
    .registers 2

    .prologue
    .line 793
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .registers 2

    .prologue
    .line 789
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .registers 4

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenDrawingCache(Z)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getChildrenDrawingCache(Lcom/android/launcher3/CellLayout;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenScale()F
    .registers 2

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsHotseat:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mHotseatScale:F

    :goto_6
    return v0

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6
.end method

.method public getCountX()I
    .registers 2

    .prologue
    .line 595
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return v0
.end method

.method public getCountY()I
    .registers 2

    .prologue
    .line 599
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    return v0
.end method

.method public getCustomScreenEffect()Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getCustomScreenEffect(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredHeight()I
    .registers 4

    .prologue
    .line 2811
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 2812
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    mul-int/2addr v1, v2

    .line 2811
    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .registers 4

    .prologue
    .line 2806
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 2807
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    mul-int/2addr v1, v2

    .line 2806
    add-int/2addr v0, v1

    return v0
.end method

.method public getDistanceFromCell(FF[I)F
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 784
    aget v0, p3, v3

    aget v1, p3, v4

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 785
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getHeightGap()I
    .registers 2

    .prologue
    .line 801
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    return v0
.end method

.method getIsDragOverlapping()Z
    .registers 2

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getMaxCount()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getMaxCount(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    return v0
.end method

.method public getMaxDistanceForFolderCreation()F
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F

    move-result v0

    return v0
.end method

.method public getOccupied()[[Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getOccupied(Lcom/android/launcher3/CellLayout;)[[Z

    move-result-object v0

    return-object v0
.end method

.method public getShortcutAndWidgetLayer()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getShortcutAndWidgetLayer(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    return v0
.end method

.method public getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .registers 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    return-object v0
.end method

.method public getWidthGap()I
    .registers 2

    .prologue
    .line 797
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    return v0
.end method

.method public getWorkspaceState()Lcom/android/launcher3/Workspace$State;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getWorkspaceState(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    return-object v0
.end method

.method public hasOkGoogleWidget()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$interMethod$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$hasOkGoogleWidget(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    return v0
.end method

.method public hideFolderAccept(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;)V
    .registers 3

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 544
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 546
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 547
    return-void
.end method

.method isDragTarget()Z
    .registers 2

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragTarget:Z

    return v0
.end method

.method public isDropPending()Z
    .registers 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    return v0
.end method

.method public isHotseat()Z
    .registers 2

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsHotseat:Z

    return v0
.end method

.method isItemPlacementDirty()Z
    .registers 2

    .prologue
    .line 2519
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    return v0
.end method

.method isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .registers 15

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 2348
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    .line 2349
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v6, 0x0

    .line 2350
    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2349
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2351
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method public isOccupied(II)Z
    .registers 5

    .prologue
    .line 2816
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_f

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_f

    .line 2817
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    .line 2819
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position exceeds the bound of this CellLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRegionVacant(IIII)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 3038
    add-int v1, p1, p3

    add-int/lit8 v2, v1, -0x1

    .line 3039
    add-int v1, p2, p4

    add-int/lit8 v3, v1, -0x1

    .line 3040
    if-ltz p1, :cond_15

    if-ltz p2, :cond_15

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge v2, v1, :cond_15

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-lt v3, v1, :cond_1b

    .line 3051
    :cond_15
    :goto_15
    return v0

    :cond_16
    move v1, p2

    .line 3044
    :goto_17
    if-le v1, v3, :cond_1f

    .line 3043
    add-int/lit8 p1, p1, 0x1

    :cond_1b
    if-le p1, v2, :cond_16

    .line 3051
    const/4 v0, 0x1

    goto :goto_15

    .line 3045
    :cond_1f
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, p1

    aget-boolean v4, v4, v1

    if-nez v4, :cond_15

    .line 3044
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public isValidTouchArea(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$isValidTouchArea(Lcom/android/launcher3/CellLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .registers 9

    .prologue
    .line 2784
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_b

    .line 2787
    :cond_a
    :goto_a
    return-void

    .line 2785
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2786
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_a
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .registers 9

    .prologue
    .line 2790
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_b

    .line 2793
    :cond_a
    :goto_a
    return-void

    .line 2791
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2792
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_a
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onChildViewAdded(Lcom/android/launcher3/CellLayout;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onChildViewRemoved(Lcom/android/launcher3/CellLayout;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onChildrenScaleChanged(F)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onChildrenScaleChanged(Lcom/android/launcher3/CellLayout;F)V

    return-void
.end method

.method onDragEnter()V
    .registers 3

    .prologue
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_15:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 2652
    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$before$com_lge_launcher3_nativejoin_CellLayoutAspect$3$1bcc09a9(Lorg/aspectj/lang/JoinPoint;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 2653
    return-void
.end method

.method onDragExit()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_16:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 2662
    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$before$com_lge_launcher3_nativejoin_CellLayoutAspect$4$ae47f611(Lorg/aspectj/lang/JoinPoint;)V

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    if-eqz v0, :cond_14

    .line 2663
    iput-boolean v4, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 2667
    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    aput v3, v0, v4

    .line 2668
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 2669
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 2670
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2671
    invoke-virtual {p0, v4}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2672
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 432
    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$before$com_lge_launcher3_nativejoin_CellLayoutAspect$2$9c256d6c(Landroid/graphics/Canvas;Lorg/aspectj/lang/JoinPoint;)V

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragTarget:Z

    if-nez v0, :cond_15

    .line 536
    :cond_14
    :goto_14
    return-void

    .line 441
    :cond_15
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_25

    .line 442
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/TransitionDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 443
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {p0, p1, v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawBackgroundOutlineInOverviewMode(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 446
    :cond_25
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    move v1, v2

    .line 447
    :goto_28
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v0, v0

    if-lt v1, v0, :cond_bc

    .line 459
    sget-boolean v0, Lcom/android/launcher3/CellLayout;->DEBUG_VISUALIZE_OCCUPIED:Z

    if-eqz v0, :cond_48

    .line 460
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 461
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v0, 0x2200ff00

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 462
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    invoke-virtual {v4, v2, v2, v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    move v0, v2

    .line 463
    :goto_44
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-lt v0, v1, :cond_f2

    .line 476
    :cond_48
    sget v3, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 479
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    move v1, v2

    .line 480
    :goto_51
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_11b

    .line 517
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    aget v0, v0, v2

    if-ltz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    aget v0, v0, v9

    if-ltz v0, :cond_14

    .line 518
    sget-object v0, Lcom/android/launcher3/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 519
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 520
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 522
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    aget v7, v7, v9

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 523
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    aget v7, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    .line 524
    if-eqz v6, :cond_14

    .line 525
    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v7, v7, v2

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    .line 526
    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v8, v8, v9

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    .line 527
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 526
    add-int/2addr v3, v6

    .line 527
    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->folderBackgroundOffset:I

    .line 526
    add-int/2addr v3, v4

    .line 529
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 530
    div-int/lit8 v4, v1, 0x2

    sub-int v4, v7, v4

    int-to-float v4, v4

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 531
    invoke-virtual {v0, v2, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 532
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 533
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_14

    .line 448
    :cond_bc
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    aget v4, v0, v1

    .line 449
    cmpl-float v0, v4, v6

    if-lez v0, :cond_ed

    .line 450
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    aget-object v0, v0, v1

    .line 451
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v5

    invoke-static {v0, v5}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 453
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 454
    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 455
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 447
    :cond_ed
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_28

    :cond_f2
    move v1, v2

    .line 464
    :goto_f3
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-lt v1, v5, :cond_fb

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_44

    .line 465
    :cond_fb
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    aget-object v5, v5, v0

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_118

    .line 466
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 467
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 468
    aget v5, v3, v2

    int-to-float v5, v5

    aget v6, v3, v9

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 469
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 470
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 464
    :cond_118
    add-int/lit8 v1, v1, 0x1

    goto :goto_f3

    .line 481
    :cond_11b
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    .line 485
    iget v5, v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellX:I

    iget v6, v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellY:I

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 486
    iget v5, v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellX:I

    iget v6, v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellY:I

    invoke-virtual {p0, v5, v6}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 488
    if-eqz v5, :cond_171

    .line 489
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v6, v6, v2

    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 490
    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v7, v7, v9

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    .line 491
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 490
    add-int/2addr v5, v7

    .line 491
    iget v7, v4, Lcom/android/launcher3/DeviceProfile;->folderBackgroundOffset:I

    .line 490
    add-int/2addr v5, v7

    .line 506
    sget-object v7, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 507
    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->getInnerRingSize()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v8

    mul-float/2addr v0, v8

    float-to-int v0, v0

    .line 509
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 510
    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v6, v8

    int-to-float v6, v6

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 511
    invoke-virtual {v7, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 512
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 513
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 480
    :cond_171
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_51
.end method

.method onDropChild(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2682
    if-eqz p1, :cond_e

    .line 2683
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2684
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->dropped:Z

    .line 2685
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 2687
    :cond_e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->onInterceptTouchEvent_aroundBody1$advice(Lcom/android/launcher3/CellLayout;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 881
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    .line 880
    sub-int/2addr v0, v1

    .line 882
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr v0, v1

    .line 883
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 885
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 886
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v3}, Lcom/android/launcher3/ClickShadowView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    .line 887
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v4}, Lcom/android/launcher3/ClickShadowView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 885
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/launcher3/ClickShadowView;->layout(IIII)V

    .line 888
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 889
    add-int v3, v0, p4

    sub-int/2addr v3, p2

    .line 890
    add-int v4, v1, p5

    sub-int/2addr v4, p3

    .line 888
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layout(IIII)V

    .line 891
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 811
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 812
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 813
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 814
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 815
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    sub-int v3, v9, v1

    .line 816
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v1, v5

    sub-int v1, v10, v1

    .line 817
    invoke-direct {p0, v3, v1}, Lcom/android/launcher3/CellLayout;->measureCellDimension(II)V

    .line 821
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v5, :cond_c3

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v5, :cond_c3

    .line 822
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 823
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    move v7, v0

    move v8, v2

    .line 828
    :goto_3a
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v0, v0, -0x1

    .line 829
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    .line 831
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mOriginalWidthGap:I

    if-ltz v5, :cond_4a

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mOriginalHeightGap:I

    if-gez v5, :cond_d1

    .line 834
    :cond_4a
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v5, v6

    sub-int/2addr v3, v5

    .line 835
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v5, v6

    sub-int/2addr v1, v5

    .line 836
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mMaxGap:I

    if-lez v0, :cond_cf

    div-int v0, v3, v0

    :goto_5c
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    .line 837
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mMaxGap:I

    if-lez v2, :cond_68

    div-int v4, v1, v2

    :cond_68
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    .line 838
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    .line 839
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 838
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 846
    :goto_7f
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 847
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v2}, Lcom/android/launcher3/ClickShadowView;->getExtraSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 849
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v3}, Lcom/android/launcher3/ClickShadowView;->getExtraSize()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 846
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/ClickShadowView;->measure(II)V

    .line 852
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 853
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 854
    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 852
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measure(II)V

    .line 856
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v0

    .line 857
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v1

    .line 858
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v2, :cond_da

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v2, :cond_da

    .line 859
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    .line 863
    :goto_c2
    return-void

    .line 824
    :cond_c3
    if-eqz v0, :cond_c7

    if-nez v2, :cond_de

    .line 825
    :cond_c7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cf
    move v0, v4

    .line 836
    goto :goto_5c

    .line 841
    :cond_d1
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mOriginalWidthGap:I

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    .line 842
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mOriginalHeightGap:I

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    goto :goto_7f

    .line 861
    :cond_da
    invoke-virtual {p0, v9, v10}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    goto :goto_c2

    :cond_de
    move v7, v1

    move v8, v3

    goto/16 :goto_3a
.end method

.method protected onSizeChanged(IIII)V
    .registers 10

    .prologue
    .line 895
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 898
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 899
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 900
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p2

    .line 899
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->setBounds(IIII)V

    .line 901
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->onTouchEvent_aroundBody3$advice(Lcom/android/launcher3/CellLayout;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/CellLayoutAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method performReorder(IIIIIILandroid/view/View;[I[II)[I
    .registers 24

    .prologue
    .line 2408
    iget-boolean v1, p0, Lcom/android/launcher3/CellLayout;->mIsHotseat:Z

    if-eqz v1, :cond_24

    .line 2409
    move-object/from16 v0, p8

    invoke-static {p0, p1, p2, v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$findInsertArea(Lcom/android/launcher3/CellLayout;II[I)[I

    move-result-object v9

    .line 2410
    const/4 v1, 0x0

    aget v2, v9, v1

    const/4 v1, 0x1

    aget v3, v9, v1

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-static/range {v1 .. v11}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$performReorderForHotseat(Lcom/android/launcher3/CellLayout;IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    .line 2512
    :goto_23
    return-object v1

    :cond_24
    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    .line 2415
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v12

    .line 2417
    if-nez p9, :cond_38

    .line 2418
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 p9, v0

    .line 2424
    :cond_38
    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_47

    const/4 v1, 0x3

    move/from16 v0, p10

    if-eq v0, v1, :cond_47

    const/4 v1, 0x4

    move/from16 v0, p10

    if-ne v0, v1, :cond_dd

    .line 2425
    :cond_47
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, -0x64

    if-eq v1, v2, :cond_dd

    .line 2426
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    .line 2427
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 2429
    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x3

    move/from16 v0, p10

    if-ne v0, v1, :cond_7c

    .line 2430
    :cond_6e
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v2, 0x0

    const/16 v3, -0x64

    aput v3, v1, v2

    .line 2431
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v2, 0x1

    const/16 v3, -0x64

    aput v3, v1, v2

    .line 2441
    :cond_7c
    :goto_7c
    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v10, 0x1

    new-instance v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v11, p0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher3/CellLayout;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    .line 2440
    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v10

    .line 2445
    new-instance v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v9, p0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher3/CellLayout;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 2444
    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/CellLayout;->findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v1

    .line 2447
    const/4 v2, 0x0

    .line 2451
    iget-boolean v3, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v3, :cond_101

    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v4

    if-lt v3, v4, :cond_101

    move-object v3, v10

    .line 2457
    :goto_bb
    if-nez p10, :cond_115

    .line 2458
    if-eqz v3, :cond_107

    .line 2459
    const/4 v1, 0x0

    .line 2460
    const/4 v2, 0x0

    .line 2459
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    .line 2461
    const/4 v1, 0x0

    iget v2, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewX:I

    aput v2, v12, v1

    .line 2462
    const/4 v1, 0x1

    iget v2, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewY:I

    aput v2, v12, v1

    .line 2463
    const/4 v1, 0x0

    iget v2, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    aput v2, p9, v1

    .line 2464
    const/4 v1, 0x1

    iget v2, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    aput v2, p9, v1

    :goto_da
    move-object v1, v12

    .line 2468
    goto/16 :goto_23

    .line 2434
    :cond_dd
    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    .line 2435
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    .line 2436
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    goto/16 :goto_7c

    .line 2453
    :cond_101
    iget-boolean v3, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v3, :cond_198

    move-object v3, v1

    .line 2454
    goto :goto_bb

    .line 2466
    :cond_107
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, p9, v4

    aput v5, p9, v3

    aput v5, v12, v2

    aput v5, v12, v1

    goto :goto_da

    .line 2471
    :cond_115
    const/4 v2, 0x1

    .line 2473
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2476
    if-eqz v3, :cond_187

    .line 2477
    const/4 v1, 0x0

    iget v4, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewX:I

    aput v4, v12, v1

    .line 2478
    const/4 v1, 0x1

    iget v4, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewY:I

    aput v4, v12, v1

    .line 2479
    const/4 v1, 0x0

    iget v4, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    aput v4, p9, v1

    .line 2480
    const/4 v1, 0x1

    iget v4, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    aput v4, p9, v1

    .line 2485
    const/4 v1, 0x1

    move/from16 v0, p10

    if-eq v0, v1, :cond_13f

    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_13f

    const/4 v1, 0x3

    move/from16 v0, p10

    if-ne v0, v1, :cond_196

    .line 2487
    :cond_13f
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2489
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2490
    const/4 v1, 0x2

    move/from16 v0, p10

    if-ne v0, v1, :cond_17b

    const/4 v1, 0x1

    :goto_14e
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0, v1}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2493
    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_15d

    const/4 v1, 0x3

    move/from16 v0, p10

    if-ne v0, v1, :cond_17d

    .line 2494
    :cond_15d
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->commitTempPlacement()V

    .line 2495
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2496
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    move v1, v2

    .line 2507
    :goto_168
    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_16f

    if-nez v1, :cond_173

    .line 2508
    :cond_16f
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2511
    :cond_173
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    move-object v1, v12

    .line 2512
    goto/16 :goto_23

    .line 2490
    :cond_17b
    const/4 v1, 0x0

    goto :goto_14e

    .line 2499
    :cond_17d
    const/16 v1, 0x96

    const/4 v4, 0x1

    .line 2498
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0, v1, v4}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    move v1, v2

    .line 2502
    goto :goto_168

    .line 2503
    :cond_187
    const/4 v1, 0x0

    .line 2504
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, p9, v5

    aput v6, p9, v4

    aput v6, v12, v3

    aput v6, v12, v2

    goto :goto_168

    :cond_196
    move v1, v2

    goto :goto_168

    :cond_198
    move-object v3, v2

    goto/16 :goto_bb
.end method

.method public performReorderForHotseat(IIIIIILandroid/view/View;[I[II)[I
    .registers 12

    .prologue
    .line 1
    invoke-static/range {p0 .. p10}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$performReorderForHotseat(Lcom/android/launcher3/CellLayout;IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public pointToCellExact(II[I)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 697
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 698
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 700
    sub-int v0, p1, v0

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    add-int/2addr v2, v3

    div-int/2addr v0, v2

    aput v0, p3, v4

    .line 701
    sub-int v0, p2, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    aput v0, p3, v5

    .line 703
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 704
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 706
    aget v2, p3, v4

    if-gez v2, :cond_28

    aput v4, p3, v4

    .line 707
    :cond_28
    aget v2, p3, v4

    if-lt v2, v0, :cond_30

    add-int/lit8 v0, v0, -0x1

    aput v0, p3, v4

    .line 708
    :cond_30
    aget v0, p3, v5

    if-gez v0, :cond_36

    aput v4, p3, v5

    .line 709
    :cond_36
    aget v0, p3, v5

    if-lt v0, v1, :cond_3e

    add-int/lit8 v0, v1, -0x1

    aput v0, p3, v5

    .line 710
    :cond_3e
    return-void
.end method

.method pointToCellRounded(II[I)V
    .registers 6

    .prologue
    .line 719
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/launcher3/CellLayout;->pointToCellExact(II[I)V

    .line 720
    return-void
.end method

.method public prepareChildForDrag(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 2273
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 2274
    return-void
.end method

.method public rearrangeChildren(ZZ)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$rearrangeChildren(Lcom/android/launcher3/CellLayout;ZZ)V

    return-void
.end method

.method regionToCenterPoint(IIII[I)V
    .registers 12

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 760
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 761
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v0, v3

    .line 762
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v3, p3

    add-int/lit8 v4, p3, -0x1

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 761
    aput v0, p5, v2

    .line 763
    const/4 v0, 0x1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    .line 764
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p4

    add-int/lit8 v3, p4, -0x1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 763
    aput v1, p5, v0

    .line 765
    return-void
.end method

.method regionToRect(IIIILandroid/graphics/Rect;)V
    .registers 12

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 776
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 777
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p1

    add-int/2addr v0, v2

    .line 778
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    .line 779
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p3

    add-int/lit8 v3, p3, -0x1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 780
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v3, p4

    add-int/lit8 v4, p4, -0x1

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 779
    invoke-virtual {p5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 781
    return-void
.end method

.method public removeAllViews()V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 644
    :try_start_6
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->clearOccupiedCells()V

    .line 645
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeAllViews()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_1d

    .line 646
    :try_start_e
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_15} :catch_26

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_1d
    move-exception v0

    :try_start_1e
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public removeAllViewsInLayout()V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 650
    :try_start_6
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_16

    .line 651
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->clearOccupiedCells()V

    .line 652
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeAllViewsInLayout()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_16} :catch_25

    .line 654
    :cond_16
    :try_start_16
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1d} :catch_2e

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_25
    move-exception v0

    :try_start_26
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 658
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 659
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_24

    .line 660
    :try_start_e
    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$10$d9685c67(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_15} :catch_2d

    :try_start_15
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_36

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_24
    move-exception v0

    :try_start_25
    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$10$d9685c67(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v0

    :try_start_2e
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_36} :catch_36

    :catch_36
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 664
    :try_start_a
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 665
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewAt(I)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_18} :catch_27

    .line 666
    :try_start_18
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_30

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_27
    move-exception v0

    :try_start_28
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_30} :catch_30

    :catch_30
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_10:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 670
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 671
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_24

    .line 672
    :try_start_e
    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$9$b83342b8(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_15} :catch_2d

    :try_start_15
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_36

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_24
    move-exception v0

    :try_start_25
    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$9$b83342b8(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v0

    :try_start_2e
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_36} :catch_36

    :catch_36
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public removeViewWithoutMarkingCells(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$removeViewWithoutMarkingCells(Lcom/android/launcher3/CellLayout;Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .registers 6

    .prologue
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_11:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    move v0, p1

    .line 676
    :goto_f
    add-int v2, p1, p2

    if-lt v0, v2, :cond_27

    .line 679
    :try_start_13
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViews(II)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_33

    .line 680
    :try_start_18
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_3c

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 677
    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_30} :catch_33

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 680
    :catch_33
    move-exception v0

    :try_start_34
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public removeViewsInLayout(II)V
    .registers 6

    .prologue
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_12:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    move v0, p1

    .line 684
    :goto_f
    add-int v2, p1, p2

    if-lt v0, v2, :cond_27

    .line 687
    :try_start_13
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewsInLayout(II)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_33

    .line 688
    :try_start_18
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_3c

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 685
    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_30} :catch_33

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 688
    :catch_33
    move-exception v0

    :try_start_34
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 568
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 576
    :goto_3
    return-void

    .line 569
    :catch_4
    move-exception v0

    .line 570
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 571
    throw v0

    .line 574
    :cond_c
    const-string v1, "CellLayout"

    const-string v2, "Ignoring an error while restoring a view instance state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public returnToOriginalPosition(Lcom/android/launcher3/CellLayout$CellInfo;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$returnToOriginalPosition(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$CellInfo;)V

    return-void
.end method

.method revertTempState()V
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 2355
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2356
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2357
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v9

    move v8, v5

    .line 2358
    :goto_11
    if-lt v8, v9, :cond_17

    .line 2368
    invoke-virtual {p0, v5}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2370
    :cond_16
    return-void

    .line 2359
    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2360
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2361
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_2f

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v3, :cond_43

    .line 2362
    :cond_2f
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 2363
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 2364
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x96

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2358
    :cond_43
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_11
.end method

.method public setBackgroundAlpha(F)V
    .registers 5

    .prologue
    .line 918
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_13

    .line 919
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    .line 920
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setAlpha(I)V

    .line 922
    :cond_13
    return-void
.end method

.method public setCellDimensions(II)V
    .registers 10

    .prologue
    .line 363
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 364
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    .line 366
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 365
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 367
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 3

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setChildrenDrawingCacheEnabled(Z)V

    .line 906
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .registers 3

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 911
    return-void
.end method

.method public setCrosshairAnimation(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCrosshairAnimation(Lcom/android/launcher3/CellLayout;Z)V

    return-void
.end method

.method public setCrosshairsVisibility(F)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCrosshairsVisibility(Lcom/android/launcher3/CellLayout;F)V

    return-void
.end method

.method public setCustomScreenEffect(Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCustomScreenEffect(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;)V

    return-void
.end method

.method public setDropPending(Z)V
    .registers 2

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 387
    return-void
.end method

.method public setFixedSize(II)V
    .registers 3

    .prologue
    .line 805
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 806
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 807
    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .registers 5

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 551
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 552
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 553
    return-void
.end method

.method public setGridSize(II)V
    .registers 10

    .prologue
    .line 370
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 371
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 372
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:[[Z

    .line 373
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:[[Z

    .line 374
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 375
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    .line 376
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 375
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 377
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->requestLayout()V

    .line 378
    return-void
.end method

.method public setInvertIfRtl(Z)V
    .registers 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setInvertIfRtl(Z)V

    .line 383
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 415
    :try_start_a
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_1e

    .line 416
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 417
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    if-eqz v0, :cond_26

    .line 418
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 422
    :goto_1b
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1e} :catch_2e

    .line 424
    :cond_1e
    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$after$com_lge_launcher3_nativejoin_CellLayoutAspect$6$e804919d(ZLorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 420
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_1b

    .line 424
    :catch_2e
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$after$com_lge_launcher3_nativejoin_CellLayoutAspect$6$e804919d(ZLorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public setIsHotseat(Z)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/CellLayout;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 603
    :try_start_a
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mIsHotseat:Z

    .line 604
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setIsHotseat(Z)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_19

    .line 605
    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$4$478447b8(ZLorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_19
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$4$478447b8(ZLorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method setItemPlacementDirty(Z)V
    .registers 2

    .prologue
    .line 2516
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 2517
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 592
    return-void
.end method

.method public setPressedIcon(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 395
    if-eqz p1, :cond_4

    if-nez p2, :cond_14

    .line 396
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 397
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0}, Lcom/android/launcher3/ClickShadowView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 404
    :cond_13
    :goto_13
    return-void

    .line 399
    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 400
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/ClickShadowView;->alignWithIconView(Lcom/android/launcher3/BubbleTextView;Landroid/view/ViewGroup;)V

    .line 401
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0}, Lcom/android/launcher3/ClickShadowView;->animateShadow()V

    goto :goto_13
.end method

.method public setShortcutAndWidgetAlpha(F)V
    .registers 3

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 931
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public showFolderAccept(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;)V
    .registers 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    return-void
.end method

.method public updateGridSize(II)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$updateGridSize(Lcom/android/launcher3/CellLayout;II)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .prologue
    .line 926
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragTarget:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    if-eq p1, v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 27

    .prologue
    sget-object v2, Lcom/android/launcher3/CellLayout;->ajc$tjp_14:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p3 .. p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p4 .. p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static/range {p5 .. p5}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p6 .. p6}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static/range {p7 .. p7}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static/range {p8 .. p8}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    invoke-static/range {p9 .. p9}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    aput-object p10, v3, v4

    const/16 v4, 0xa

    aput-object p11, v3, v4

    invoke-static {v2, p0, p0, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v14

    .line 1042
    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v2 .. v14}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$before$com_lge_launcher3_nativejoin_CellLayoutAspect$7$4f7fbc33(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;Lorg/aspectj/lang/JoinPoint;)V

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 1043
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 1045
    if-nez p2, :cond_76

    if-nez p1, :cond_76

    .line 1102
    :cond_75
    :goto_75
    return-void

    .line 1049
    :cond_76
    move/from16 v0, p5

    if-ne v0, v2, :cond_7e

    move/from16 v0, p6

    if-eq v0, v3, :cond_75

    .line 1050
    :cond_7e
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v3, 0x0

    aput p5, v2, v3

    .line 1051
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aput p6, v2, v3

    .line 1053
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1054
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 1056
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 1057
    const/4 v4, 0x1

    aget v4, v2, v4

    .line 1059
    if-eqz p1, :cond_10d

    if-nez p10, :cond_10d

    .line 1062
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1063
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    .line 1064
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    .line 1069
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 1071
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int v4, v4, p7

    add-int/lit8 v5, p7, -0x1

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1071
    sub-int/2addr v4, v5

    .line 1072
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1090
    :goto_c5
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1091
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 1092
    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    rem-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1093
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v7, v4, v5

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v7, v3, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1095
    if-eqz p9, :cond_f7

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 1096
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 1099
    :cond_f7
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1100
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateIn()V

    goto/16 :goto_75

    .line 1074
    :cond_10d
    if-eqz p10, :cond_145

    if-eqz p11, :cond_145

    .line 1077
    move-object/from16 v0, p10

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int v5, v5, p7

    add-int/lit8 v6, p7, -0x1

    iget v7, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 1078
    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/2addr v3, v2

    .line 1079
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v2

    .line 1080
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    sub-int v2, v6, v2

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    .line 1081
    move-object/from16 v0, p10

    iget v5, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v5

    add-int/2addr v2, v4

    .line 1082
    goto :goto_c5

    .line 1084
    :cond_145
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int v2, v2, p7

    add-int/lit8 v5, p7, -0x1

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1085
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1084
    sub-int/2addr v2, v5

    .line 1085
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    .line 1086
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int v2, v2, p8

    add-int/lit8 v5, p8, -0x1

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mHeightGap:I

    mul-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1087
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1086
    sub-int/2addr v2, v5

    .line 1087
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    goto/16 :goto_c5
.end method
