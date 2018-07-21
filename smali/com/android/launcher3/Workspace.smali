.class public Lcom/android/launcher3/Workspace;
.super Lcom/android/launcher3/PagedView;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/DragScroller;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/DragController$DragListener;
.implements Lcom/android/launcher3/LauncherTransitionable;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/UninstallDropTarget$UninstallSource;
.implements Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;
.implements Lcom/android/launcher3/Stats$LaunchSourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;,
        Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;,
        Lcom/android/launcher3/Workspace$ItemOperator;,
        Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;,
        Lcom/android/launcher3/Workspace$ReorderAlarmListener;,
        Lcom/android/launcher3/Workspace$State;,
        Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field public static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field public static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field public static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field public static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field public static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field private static final CUSTOM_CONTENT_GESTURE_DELAY:J = 0xc8L

.field public static final CUSTOM_CONTENT_SCREEN_ID:J = -0x12dL

.field public static final DRAG_BITMAP_PADDING:I = 0x2

.field private static final DRAG_MODE_ADD_TO_FOLDER:I = 0x2

.field private static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final DRAG_MODE_REORDER:I = 0x3

.field private static ENFORCE_DRAG_EVENT_ORDER:Z = false

.field static final EXTRA_EMPTY_SCREEN_ID:J = -0xc9L

.field protected static final FADE_EMPTY_SCREEN_DURATION:I = 0x96

.field private static final FOLDER_CREATION_TIMEOUT:I = 0x0

.field public static final MAP_NO_RECURSE:Z = false

.field public static final MAP_RECURSE:Z = true

.field static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field public static final REORDER_TIMEOUT:I = 0x15e

.field protected static final SNAP_OFF_EMPTY_SCREEN_DURATION:I = 0x190

.field static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"

.field static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field private static final WORKSPCAE_HARDWARE_CACHE_PAGE:I = 0x4

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

.field private static final ajc$tjp_21:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_22:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_23:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_24:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_25:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_26:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_27:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field static mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

.field static mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field public isMultiTouch:Z

.field mAddNewPageOnDrag:Z

.field private mAddToExistingFolderOnDrop:Z

.field mAnimatingViewIntoPlace:Z

.field private final mBindPages:Ljava/lang/Runnable;

.field private final mCanvas:Landroid/graphics/Canvas;

.field mChildrenLayersEnabled:Z

.field public mCleanViewAnimator:Landroid/animation/AnimatorSet;

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentScale:F

.field mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

.field private mCustomContentDescription:Ljava/lang/String;

.field private mCustomContentShowTime:J

.field mCustomContentShowing:Z

.field private mDefaultPage:I

.field private mDeferDropAfterUninstall:Z

.field mDeferRemoveExtraEmptyScreen:Z

.field mDeferredAction:Ljava/lang/Runnable;

.field mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

.field private mDisplaySize:Landroid/graphics/Point;

.field mDragController:Lcom/android/launcher3/DragController;

.field mDragFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

.field private mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

.field private mDragMode:I

.field mDragOutline:Landroid/graphics/Bitmap;

.field private mDragOverFolderIcon:Lcom/android/launcher3/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

.field private mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field mDragTargetLayout:Lcom/android/launcher3/CellLayout;

.field mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/CellLayout;

.field private mDropToLayoutForNotFoundCell:Lcom/android/launcher3/CellLayout;

.field private final mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

.field mIconCache:Lcom/android/launcher3/IconCache;

.field private mInScrollArea:Z

.field public mIndicatorLongClicklistener:Landroid/view/View$OnLongClickListener;

.field mIsDragOccuring:Z

.field private mIsSwitchingState:Z

.field private mLastCustomContentScrollProgress:F

.field mLastOverlaySroll:F

.field mLastReorderX:I

.field mLastReorderY:I

.field mLastSetWallpaperOffsetSteps:F

.field mLauncher:Lcom/android/launcher3/Launcher;

.field mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field mNumPagesForWallpaperParallax:I

.field private mOriginalDefaultPage:I

.field private mOutlineHelper:Lcom/android/launcher3/HolographicOutlineHelper;

.field private mOverlayTranslation:F

.field private mOverviewModeShrinkFactor:F

.field private mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mPreviousTargetCell:[I

.field private final mReCellPositionAlarm:Lcom/android/launcher3/Alarm;

.field mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

.field private final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field private final mRestoredPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public mScaleDetector:Landroid/view/ScaleGestureDetector;

.field public mScaleDetector1:Landroid/view/ScaleGestureDetector;

.field mScreenOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mScrollInteractionBegan:Z

.field private mSharedPrefListerner:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mSpringLoadedDragController:Lcom/android/launcher3/SpringLoadedDragController;

.field private mSpringLoadedShrinkFactor:F

.field mStartedSendingScrollEvents:Z

.field private mState:Lcom/android/launcher3/Workspace$State;

.field private mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field private mStripScreensOnPageStopMoving:Z

.field mTargetCell:[I

.field private mTempCell:[I

.field private mTempCellLayoutCenterCoordinates:[F

.field private mTempEstimate:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private mTempMatrix:Landroid/graphics/Matrix;

.field private mTempPt:[I

.field private final mTempXY:[I

.field private mTouchDownTime:J

.field private mTransitionProgress:F

.field private mUnboundedScrollX:I

.field private mUninstallSuccessful:Z

.field mWallpaperIsLiveWallpaper:Z

.field final mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperOffset:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

.field mWindowToken:Landroid/os/IBinder;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mXDown:F

.field private mYDown:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher3/Workspace;->ajc$preClinit()V

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    .line 150
    sput-object v1, Lcom/android/launcher3/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 151
    sput-object v1, Lcom/android/launcher3/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/Workspace;->sTempRect:Landroid/graphics/Rect;

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 301
    const/4 v3, 0x0

    .line 312
    invoke-direct {p0, p1, p2, v2}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v2, Lcom/android/launcher3/Workspace;->ajc$tjp_26:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    :try_start_b
    invoke-static {p0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$interFieldInit$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_Workspace$mSharedPrefListerner(Lcom/android/launcher3/Workspace;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mCleanViewAnimator(Lcom/android/launcher3/Workspace;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mScaleDetector1(Lcom/android/launcher3/Workspace;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mScaleDetector(Lcom/android/launcher3/Workspace;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$isMultiTouch(Lcom/android/launcher3/Workspace;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mIndicatorLongClicklistener(Lcom/android/launcher3/Workspace;)V

    .line 114
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/launcher3/Workspace;->mTouchDownTime:J

    .line 115
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowTime:J

    .line 130
    new-instance v2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    .line 134
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 135
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mAddNewPageOnDrag:Z

    .line 145
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 146
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mPreviousTargetCell:[I

    .line 147
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 148
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    .line 155
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastCustomContentScrollProgress:F

    .line 156
    const-string v2, ""

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mCustomContentDescription:Ljava/lang/String;

    .line 161
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 165
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 170
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 178
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempCell:[I

    .line 179
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempPt:[I

    .line 180
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempEstimate:[I

    .line 181
    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 182
    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 183
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 193
    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_7f} :catch_17c

    :try_start_7f
    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_81} :catch_173

    nop

    :try_start_82
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$8$3b7ed89c(Lcom/android/launcher3/Workspace$State;)V

    nop

    .line 194
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 196
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mAnimatingViewIntoPlace:Z

    .line 197
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsDragOccuring:Z

    .line 198
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 200
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 203
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mInScrollArea:Z

    .line 206
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 208
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    .line 215
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastSetWallpaperOffsetSteps:F

    .line 219
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 224
    new-instance v2, Lcom/android/launcher3/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    .line 225
    new-instance v2, Lcom/android/launcher3/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 226
    new-instance v2, Lcom/android/launcher3/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mReCellPositionAlarm:Lcom/android/launcher3/Alarm;

    .line 227
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    .line 228
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/FolderIcon;

    .line 229
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 230
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 233
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    .line 254
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 255
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 256
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 275
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastOverlaySroll:F

    .line 287
    new-instance v2, Lcom/android/launcher3/Workspace$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Workspace$1;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mBindPages:Ljava/lang/Runnable;

    .line 1409
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempMatrix:Landroid/graphics/Matrix;

    .line 314
    invoke-static {p1}, Lcom/android/launcher3/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lcom/android/launcher3/HolographicOutlineHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mOutlineHelper:Lcom/android/launcher3/HolographicOutlineHelper;

    .line 316
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    move-object v2, v0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 317
    new-instance v2, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v5, p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    .line 318
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 319
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    .line 320
    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 321
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher3/Workspace;->mFadeInAdjacentScreens:Z

    .line 322
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 325
    sget-object v6, Lcom/lge/launcher3/R$styleable;->Workspace:[I

    const/4 v7, 0x0

    .line 324
    invoke-virtual {p1, p2, v6, v3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 327
    const v6, 0x7f0c0007

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v2, v6

    .line 326
    iput v2, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedShrinkFactor:F

    .line 328
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    invoke-virtual {v5, v2}, Lcom/android/launcher3/DeviceProfile;->getOverviewModeScale(Z)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/Workspace;->mOverviewModeShrinkFactor:F

    .line 329
    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/Workspace;->mDefaultPage:I

    iput v2, p0, Lcom/android/launcher3/Workspace;->mOriginalDefaultPage:I

    .line 330
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    invoke-virtual {p0, p0}, Lcom/android/launcher3/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 333
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 335
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->initWorkspace()V

    .line 338
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setMotionEventSplittingEnabled(Z)V
    :try_end_15c
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_15c} :catch_17c

    .line 339
    nop

    .line 302
    :try_start_15d
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_164
    .catch Ljava/lang/Throwable; {:try_start_15d .. :try_end_164} :catch_185

    :try_start_164
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_16b
    .catch Ljava/lang/Throwable; {:try_start_164 .. :try_end_16b} :catch_18e

    invoke-static {}, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CleanViewAspect;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->ajc$after$com_lge_launcher3_nativejoin_CleanViewAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 193
    :catch_173
    move-exception v3

    :try_start_174
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$8$3b7ed89c(Lcom/android/launcher3/Workspace$State;)V

    throw v3
    :try_end_17c
    .catch Ljava/lang/Throwable; {:try_start_174 .. :try_end_17c} :catch_17c

    .line 302
    :catch_17c
    move-exception v2

    :try_start_17d
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V

    throw v2
    :try_end_185
    .catch Ljava/lang/Throwable; {:try_start_17d .. :try_end_185} :catch_185

    :catch_185
    move-exception v2

    :try_start_186
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V

    throw v2
    :try_end_18e
    .catch Ljava/lang/Throwable; {:try_start_186 .. :try_end_18e} :catch_18e

    :catch_18e
    move-exception v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CleanViewAspect;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->ajc$after$com_lge_launcher3_nativejoin_CleanViewAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V

    throw v2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 312
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v2, Lcom/android/launcher3/Workspace;->ajc$tjp_27:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v6

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, p0, p0, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    :try_start_19
    invoke-static {p0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$interFieldInit$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_Workspace$mSharedPrefListerner(Lcom/android/launcher3/Workspace;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mCleanViewAnimator(Lcom/android/launcher3/Workspace;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mScaleDetector1(Lcom/android/launcher3/Workspace;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mScaleDetector(Lcom/android/launcher3/Workspace;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$isMultiTouch(Lcom/android/launcher3/Workspace;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$mIndicatorLongClicklistener(Lcom/android/launcher3/Workspace;)V

    .line 114
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/launcher3/Workspace;->mTouchDownTime:J

    .line 115
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowTime:J

    .line 130
    new-instance v2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    .line 134
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 135
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mAddNewPageOnDrag:Z

    .line 145
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 146
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mPreviousTargetCell:[I

    .line 147
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 148
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    .line 155
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastCustomContentScrollProgress:F

    .line 156
    const-string v2, ""

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mCustomContentDescription:Ljava/lang/String;

    .line 161
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 165
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 170
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 178
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempCell:[I

    .line 179
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempPt:[I

    .line 180
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempEstimate:[I

    .line 181
    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 182
    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 183
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 193
    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_8d} :catch_189

    :try_start_8d
    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8f} :catch_180

    nop

    :try_start_90
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$8$3b7ed89c(Lcom/android/launcher3/Workspace$State;)V

    nop

    .line 194
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 196
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mAnimatingViewIntoPlace:Z

    .line 197
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsDragOccuring:Z

    .line 198
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 200
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 203
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mInScrollArea:Z

    .line 206
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 208
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    .line 215
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastSetWallpaperOffsetSteps:F

    .line 219
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 224
    new-instance v2, Lcom/android/launcher3/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    .line 225
    new-instance v2, Lcom/android/launcher3/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 226
    new-instance v2, Lcom/android/launcher3/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mReCellPositionAlarm:Lcom/android/launcher3/Alarm;

    .line 227
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    .line 228
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/FolderIcon;

    .line 229
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 230
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 233
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    .line 254
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 255
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 256
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 275
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastOverlaySroll:F

    .line 287
    new-instance v2, Lcom/android/launcher3/Workspace$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Workspace$1;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mBindPages:Ljava/lang/Runnable;

    .line 1409
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempMatrix:Landroid/graphics/Matrix;

    .line 314
    invoke-static {p1}, Lcom/android/launcher3/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lcom/android/launcher3/HolographicOutlineHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mOutlineHelper:Lcom/android/launcher3/HolographicOutlineHelper;

    .line 316
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    move-object v2, v0

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 317
    new-instance v2, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v4, p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    .line 318
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 319
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 320
    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 321
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher3/Workspace;->mFadeInAdjacentScreens:Z

    .line 322
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 325
    sget-object v5, Lcom/lge/launcher3/R$styleable;->Workspace:[I

    const/4 v6, 0x0

    .line 324
    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 327
    const v6, 0x7f0c0007

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v2, v6

    .line 326
    iput v2, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedShrinkFactor:F

    .line 328
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    invoke-virtual {v4, v2}, Lcom/android/launcher3/DeviceProfile;->getOverviewModeScale(Z)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/Workspace;->mOverviewModeShrinkFactor:F

    .line 329
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v5, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/Workspace;->mDefaultPage:I

    iput v2, p0, Lcom/android/launcher3/Workspace;->mOriginalDefaultPage:I

    .line 330
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    invoke-virtual {p0, p0}, Lcom/android/launcher3/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 333
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 335
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->initWorkspace()V

    .line 338
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setMotionEventSplittingEnabled(Z)V
    :try_end_16a
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_16a} :catch_189

    .line 339
    :try_start_16a
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_171
    .catch Ljava/lang/Throwable; {:try_start_16a .. :try_end_171} :catch_192

    :try_start_171
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_178
    .catch Ljava/lang/Throwable; {:try_start_171 .. :try_end_178} :catch_19b

    invoke-static {}, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CleanViewAspect;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->ajc$after$com_lge_launcher3_nativejoin_CleanViewAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 193
    :catch_180
    move-exception v4

    :try_start_181
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$8$3b7ed89c(Lcom/android/launcher3/Workspace$State;)V

    throw v4
    :try_end_189
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_189} :catch_189

    .line 339
    :catch_189
    move-exception v2

    :try_start_18a
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V

    throw v2
    :try_end_192
    .catch Ljava/lang/Throwable; {:try_start_18a .. :try_end_192} :catch_192

    :catch_192
    move-exception v2

    :try_start_193
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V

    throw v2
    :try_end_19b
    .catch Ljava/lang/Throwable; {:try_start_193 .. :try_end_19b} :catch_19b

    :catch_19b
    move-exception v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/CleanViewAspect;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->ajc$after$com_lge_launcher3_nativejoin_CleanViewAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V

    throw v2
.end method

.method private static final acceptDrop_aroundBody12(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 23

    .prologue
    .line 2564
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2565
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_18a

    .line 2567
    if-nez v7, :cond_10

    .line 2568
    const/4 v2, 0x0

    .line 2654
    :goto_f
    return v2

    .line 2570
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_f

    .line 2572
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v7}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 2576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V

    .line 2583
    :goto_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_c8

    .line 2584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 2585
    iget v3, v2, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 2586
    iget v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    move/from16 v18, v2

    move/from16 v19, v3

    .line 2595
    :goto_53
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v2, :cond_1a8

    .line 2596
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v5, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 2597
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v6, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 2600
    :goto_6b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v3, v2

    .line 2601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v4, v2

    .line 2602
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    .line 2600
    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 2604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2603
    invoke-virtual {v7, v2, v3, v4}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v12

    .line 2605
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v2, :cond_d8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/ItemInfo;

    .line 2606
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object v10, v7

    .line 2605
    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v2

    .line 2606
    if-eqz v2, :cond_d8

    .line 2607
    const/4 v2, 0x1

    goto/16 :goto_f

    .line 2578
    :cond_bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2, v3}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_41

    .line 2588
    :cond_c8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 2589
    iget v3, v2, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2590
    iget v2, v2, Lcom/android/launcher3/ItemInfo;->spanY:I

    move/from16 v18, v2

    move/from16 v19, v3

    goto/16 :goto_53

    .line 2610
    :cond_d8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v2, :cond_f3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 2611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2610
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v3, v12}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v2

    .line 2611
    if-eqz v2, :cond_f3

    .line 2612
    const/4 v2, 0x1

    goto/16 :goto_f

    .line 2615
    :cond_f3
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 2616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v8, v2

    .line 2617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v9, v2

    .line 2618
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v17, 0x4

    move v10, v5

    move v11, v6

    move/from16 v12, v19

    move/from16 v13, v18

    .line 2616
    invoke-virtual/range {v7 .. v17}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_165

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_165

    const/4 v2, 0x1

    .line 2622
    :goto_130
    if-nez v2, :cond_18a

    .line 2625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v7}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    .line 2626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    if-eqz v2, :cond_167

    if-eqz v3, :cond_167

    .line 2627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    .line 2629
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v4, v7}, Lcom/android/launcher3/Hotseat;->getOrderInHotseat(II)I

    move-result v4

    .line 2628
    invoke-virtual {v2, v4}, Lcom/android/launcher3/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v2

    .line 2629
    if-eqz v2, :cond_167

    .line 2630
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 2619
    :cond_165
    const/4 v2, 0x0

    goto :goto_130

    .line 2634
    :cond_167
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    .line 2635
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    .line 2636
    iget v4, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt v5, v4, :cond_19c

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-gt v6, v2, :cond_19c

    const/4 v2, 0x1

    .line 2638
    :goto_178
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DragSource;)Lcom/android/launcher3/CellLayout;

    move-result-object v7

    .line 2639
    if-eqz v7, :cond_19e

    if-eqz v2, :cond_19e

    .line 2640
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2649
    :cond_18a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v2

    .line 2650
    const-wide/16 v4, -0xc9

    cmp-long v2, v2, v4

    if-nez v2, :cond_199

    .line 2651
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    .line 2654
    :cond_199
    const/4 v2, 0x1

    goto/16 :goto_f

    .line 2636
    :cond_19c
    const/4 v2, 0x0

    goto :goto_178

    .line 2643
    :cond_19e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->showOutOfSpaceMessage(Z)V

    .line 2644
    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_1a8
    move/from16 v6, v18

    move/from16 v5, v19

    goto/16 :goto_6b
.end method

.method private static final acceptDrop_aroundBody13$advice(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 9

    .prologue
    .line 551
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Workspace;->acceptDrop_aroundBody12(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v1

    .line 552
    if-nez v1, :cond_1e

    .line 553
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 554
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 555
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 556
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    .line 559
    :cond_1e
    return v1
.end method

.method public static ajc$get$EXTRA_EMPTY_SCREEN_ID()J
    .registers 2

    .prologue
    .line 1
    sget-wide v0, Lcom/android/launcher3/Workspace;->EXTRA_EMPTY_SCREEN_ID:J

    return-wide v0
.end method

.method public static ajc$get$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Workspace;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$mDefaultPage(Lcom/android/launcher3/Workspace;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDefaultPage:I

    return v0
.end method

.method public static ajc$get$mDragInfo(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout$CellInfo;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return-object v0
.end method

.method public static ajc$get$mDragTargetLayout(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method public static ajc$get$mDragViewVisualCenter(Lcom/android/launcher3/Workspace;)[F
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    return-object v0
.end method

.method public static ajc$get$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDropToLayoutForNotFoundCell:Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method public static ajc$get$mLandscapeCellLayoutMetrics()Landroid/graphics/Rect;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public static ajc$get$mOriginalDefaultPage(Lcom/android/launcher3/Workspace;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOriginalDefaultPage:I

    return v0
.end method

.method public static ajc$get$mPortraitCellLayoutMetrics()Landroid/graphics/Rect;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static ajc$get$mScreenOrder(Lcom/android/launcher3/Workspace;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static ajc$get$mSharedPrefListerner(Lcom/android/launcher3/Workspace;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSharedPrefListerner:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object v0
.end method

.method public static ajc$get$mState(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    return-object v0
.end method

.method public static ajc$get$mTargetCell(Lcom/android/launcher3/Workspace;)[I
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    return-object v0
.end method

.method public static ajc$get$mUnboundedScrollX(Lcom/android/launcher3/Workspace;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/Workspace;->mUnboundedScrollX:I

    return v0
.end method

.method public static ajc$get$mWallpaperIsLiveWallpaper(Lcom/android/launcher3/Workspace;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperIsLiveWallpaper:Z

    return v0
.end method

.method public static ajc$get$mWallpaperOffset(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    return-object v0
.end method

.method public static ajc$get$mWorkspaceScreens(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/util/LongArrayMap;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method public static ajc$get$mXDown(Lcom/android/launcher3/Workspace;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    return v0
.end method

.method public static ajc$get$mYDown(Lcom/android/launcher3/Workspace;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    return v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "Workspace.java"

    const-class v2, Lcom/android/launcher3/Workspace;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onDragStart"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "com.android.launcher3.DragSource:java.lang.Object:int"

    const-string v5, "source:info:dragAction"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x180

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v1, "field-set"

    const-string v2, "4"

    const-string v3, "mCurrentPage"

    const-string v4, "com.android.launcher3.PagedView"

    const-string v5, "int"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeFieldSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/FieldSignature;

    move-result-object v2

    const/16 v3, 0x1b3

    invoke-virtual {v0, v1, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "notifyPageSwitchListener"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x59d

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_10:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onAttachedToWindow"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x729

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_11:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onResume"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x739

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_12:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "getFreeScrollPageRange"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "[I"

    const-string v5, "range"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x83d

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_13:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onEndReordering"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x84f

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_14:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setStateWithAnimation"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "com.android.launcher3.Workspace$State:int:boolean:boolean:java.util.HashMap"

    const-string v5, "toState:toPage:animated:hasOverlaySearchBar:layerViews"

    const-string v6, ""

    const-string v7, "android.animation.Animator"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x879

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_15:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onLauncherTransitionStep"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "com.android.launcher3.Launcher:float"

    const-string v5, "l:t"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x8c6

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_16:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "beginDragShared"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "android.view.View:android.graphics.Point:com.android.launcher3.DragSource:boolean"

    const-string v5, "child:relativeTouchPos:source:accessible"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x981

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_17:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "acceptDrop"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "com.android.launcher3.DropTarget$DragObject"

    const-string v5, "d"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xa02

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_18:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onDrop"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "com.android.launcher3.DropTarget$DragObject"

    const-string v5, "d"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xae9

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_19:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onChildViewAdded"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "android.view.View:android.view.View"

    const-string v5, "parent:child"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1de

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onDragEnter"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "com.android.launcher3.DropTarget$DragObject"

    const-string v5, "d"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xc03

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_20:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onDragExit"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "com.android.launcher3.DropTarget$DragObject"

    const-string v5, "d"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xc40

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_21:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "setup"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "com.android.launcher3.DragController"

    const-string v5, "dragController"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xff5

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_22:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "moveToDefaultScreen"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "boolean"

    const-string v5, "animate"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x129c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_23:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "getCurrentPageDescription"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x12c3

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_24:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onTouchEvent"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "android.view.MotionEvent"

    const-string v5, "ev"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1312

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_25:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.Workspace"

    const-string v3, "android.content.Context:android.util.AttributeSet"

    const-string v4, "context:attrs"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_26:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.Workspace"

    const-string v3, "android.content.Context:android.util.AttributeSet:int"

    const-string v4, "context:attrs:defStyle"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0x137

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_27:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "insertNewWorkspaceScreen"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "long:int"

    const-string v5, "screenId:insertIndex"

    const-string v6, ""

    const-string v7, "long"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x234

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "createCustomContentContainer"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x24d

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "removeCustomContentPage"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x265

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onInterceptTouchEvent"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "android.view.MotionEvent"

    const-string v5, "ev"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x456

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "determineScrollingStart"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "android.view.MotionEvent"

    const-string v5, "ev"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x48e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onPageBeginMoving"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4c5

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onPageEndMoving"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4d6

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$EXTRA_EMPTY_SCREEN_ID(J)V
    .registers 2

    .prologue
    .line 1
    sput-wide p0, Lcom/android/launcher3/Workspace;->EXTRA_EMPTY_SCREEN_ID:J

    return-void
.end method

.method public static ajc$set$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/Workspace;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$mDefaultPage(Lcom/android/launcher3/Workspace;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDefaultPage:I

    return-void
.end method

.method public static ajc$set$mDragInfo(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout$CellInfo;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return-void
.end method

.method public static ajc$set$mDragTargetLayout(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    return-void
.end method

.method public static ajc$set$mDragViewVisualCenter(Lcom/android/launcher3/Workspace;[F)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    return-void
.end method

.method public static ajc$set$mDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDropToLayoutForNotFoundCell:Lcom/android/launcher3/CellLayout;

    return-void
.end method

.method public static ajc$set$mLandscapeCellLayoutMetrics(Landroid/graphics/Rect;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    return-void
.end method

.method public static ajc$set$mLauncher(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static ajc$set$mOriginalDefaultPage(Lcom/android/launcher3/Workspace;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/Workspace;->mOriginalDefaultPage:I

    return-void
.end method

.method public static ajc$set$mPortraitCellLayoutMetrics(Landroid/graphics/Rect;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    return-void
.end method

.method public static ajc$set$mScreenOrder(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    return-void
.end method

.method public static ajc$set$mSharedPrefListerner(Lcom/android/launcher3/Workspace;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mSharedPrefListerner:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static ajc$set$mState(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$State;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    return-void
.end method

.method public static ajc$set$mTargetCell(Lcom/android/launcher3/Workspace;[I)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    return-void
.end method

.method public static ajc$set$mUnboundedScrollX(Lcom/android/launcher3/Workspace;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/Workspace;->mUnboundedScrollX:I

    return-void
.end method

.method public static ajc$set$mWallpaperIsLiveWallpaper(Lcom/android/launcher3/Workspace;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mWallpaperIsLiveWallpaper:Z

    return-void
.end method

.method public static ajc$set$mWallpaperOffset(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    return-void
.end method

.method public static ajc$set$mWorkspaceScreens(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/LongArrayMap;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    return-void
.end method

.method public static ajc$set$mXDown(Lcom/android/launcher3/Workspace;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    return-void
.end method

.method public static ajc$set$mYDown(Lcom/android/launcher3/Workspace;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    return-void
.end method

.method private allowInterceptCellLayout(Landroid/view/View;)Z
    .registers 6

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1082
    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1e

    .line 1083
    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v0

    const-wide/16 v2, -0x12d

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 1081
    const/4 v0, 0x0

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private cleanupAddToFolder()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3255
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_c

    .line 3256
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 3257
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/FolderIcon;

    .line 3259
    :cond_c
    return-void
.end method

.method private cleanupFolderCreation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3246
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_c

    .line 3247
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 3248
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    .line 3250
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 3251
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 3252
    return-void
.end method

.method private cleanupReorder(Z)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 3263
    if-eqz p1, :cond_8

    .line 3264
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 3266
    :cond_8
    iput v1, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 3267
    iput v1, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 3268
    return-void
.end method

.method private convertFinalScreenToEmptyScreenIfNecessary()V
    .registers 7

    .prologue
    const-wide/16 v4, -0xc9

    .line 706
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 708
    const-string v0, "Launcher.Workspace"

    const-string v1, "    - workspace loading, skip"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 731
    :cond_12
    :goto_12
    return-void

    .line 712
    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_12

    .line 713
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 715
    const-wide/16 v0, -0x12d

    cmp-long v0, v2, v0

    if-eqz v0, :cond_12

    .line 716
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 719
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    if-nez v1, :cond_12

    .line 720
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->isDropPending()Z

    move-result v1

    if-nez v1, :cond_12

    .line 721
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 722
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 725
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 726
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_12
.end method

.method private static final createDragBitmap_aroundBody10(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    .line 2345
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 2346
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3f

    move-object v0, p1

    .line 2347
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2348
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v2

    .line 2349
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, v1

    .line 2350
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2349
    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2351
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, v1, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2357
    :goto_2e
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2358
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;I)V

    .line 2359
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2361
    return-object v0

    .line 2354
    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2353
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2e
.end method

.method private static final createDragBitmap_aroundBody11$advice(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/lge/launcher3/badge/BadgeAspect;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    .line 121
    instance-of v0, p4, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_15

    move-object v0, p4

    .line 122
    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 124
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$inlineAccessMethod$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$setDrawAppNotifier(Lcom/android/launcher3/FolderIcon;Z)V

    .line 125
    invoke-static {p0, p4, p5}, Lcom/android/launcher3/Workspace;->createDragBitmap_aroundBody10(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$inlineAccessMethod$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$setDrawAppNotifier(Lcom/android/launcher3/FolderIcon;Z)V

    move-object v0, v1

    .line 130
    :goto_14
    return-object v0

    .line 128
    :cond_15
    invoke-static {p0, p4, p5}, Lcom/android/launcher3/Workspace;->createDragBitmap_aroundBody10(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_14
.end method

.method private createDragOutline(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2386
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 2387
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2388
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2390
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v6, v6, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2391
    sub-int v2, p3, p2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 2392
    sub-int v4, p4, p2

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 2391
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2393
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 2394
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 2395
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2398
    sub-int v4, p3, v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, p4, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2400
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, p1, v0, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2401
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOutlineHelper:Lcom/android/launcher3/HolographicOutlineHelper;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    move v4, v3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V

    .line 2403
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2405
    return-object v1
.end method

.method private createDragOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    .line 2369
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2371
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2370
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2373
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2374
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {p1, v2, p2}, Lcom/android/launcher3/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;I)V

    .line 2375
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mOutlineHelper:Lcom/android/launcher3/HolographicOutlineHelper;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1, v3, v0, v0}, Lcom/android/launcher3/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2376
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2377
    return-object v1
.end method

.method private static final determineScrollingStart_aroundBody2(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)V
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v11, 0x3f060a92

    const/4 v10, 0x0

    .line 1167
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1219
    :cond_c
    :goto_c
    return-void

    .line 1169
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    sub-float/2addr v0, v3

    .line 1170
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1173
    invoke-static {v3, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_c

    .line 1175
    div-float v5, v4, v3

    .line 1176
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 1178
    iget v6, p0, Lcom/android/launcher3/Workspace;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_3f

    iget v3, p0, Lcom/android/launcher3/Workspace;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_42

    .line 1179
    :cond_3f
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cancelCurrentPageLongPress()V

    .line 1183
    :cond_42
    iget-wide v6, p0, Lcom/android/launcher3/Workspace;->mTouchDownTime:J

    iget-wide v8, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    cmp-long v3, v6, v8

    if-lez v3, :cond_4d

    .line 1188
    :cond_4d
    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v3, :cond_97

    cmpg-float v0, v0, v10

    if-gez v0, :cond_95

    move v0, v1

    .line 1190
    :goto_56
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x12d

    cmp-long v3, v6, v8

    if-nez v3, :cond_9f

    .line 1191
    :goto_64
    if-eqz v0, :cond_68

    if-eqz v1, :cond_68

    .line 1196
    :cond_68
    if-eqz v1, :cond_76

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_76

    .line 1197
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->isScrollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1203
    :cond_76
    const v0, 0x3f860a92

    cmpl-float v0, v5, v0

    if-gtz v0, :cond_c

    .line 1206
    cmpl-float v0, v5, v11

    if-lez v0, :cond_a1

    .line 1211
    sub-float v0, v5, v11

    .line 1213
    div-float/2addr v0, v11

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1214
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-super {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto/16 :goto_c

    :cond_95
    move v0, v2

    .line 1188
    goto :goto_56

    :cond_97
    cmpl-float v0, v0, v10

    if-lez v0, :cond_9d

    move v0, v1

    goto :goto_56

    :cond_9d
    move v0, v2

    goto :goto_56

    :cond_9f
    move v1, v2

    .line 1190
    goto :goto_64

    .line 1217
    :cond_a1
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_c
.end method

.method private static final determineScrollingStart_aroundBody3$advice(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 9

    .prologue
    .line 191
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 193
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->isExtViewMode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 198
    :goto_c
    return-void

    .line 197
    :cond_d
    invoke-static {v0, p4}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$determineScrollingStartModify(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;)V

    goto :goto_c
.end method

.method private static drawDragView(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2303
    sget-object v3, Lcom/android/launcher3/Workspace;->sTempRect:Landroid/graphics/Rect;

    .line 2304
    invoke-virtual {p0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2308
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2309
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    .line 2310
    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2311
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 2312
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2313
    div-int/lit8 v2, p2, 0x2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-int/lit8 v3, p2, 0x2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2314
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2333
    :cond_38
    :goto_38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2334
    return-void

    .line 2316
    :cond_3c
    instance-of v0, p0, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_75

    move-object v0, p0

    .line 2319
    check-cast v0, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->getTextVisible()Z

    move-result v0

    if-eqz v0, :cond_75

    move-object v0, p0

    .line 2320
    check-cast v0, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderIcon;->setTextVisible(Z)V

    move v0, v1

    .line 2324
    :goto_50
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v4, p2, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v5, p2, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2325
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2326
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2329
    if-eqz v0, :cond_38

    .line 2330
    check-cast p0, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/FolderIcon;->setTextVisible(Z)V

    goto :goto_38

    :cond_75
    move v0, v2

    goto :goto_50
.end method

.method private enableHwLayersOnVisiblePages()V
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1973
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_19

    .line 1974
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v8

    .line 1976
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v2, -0x12d

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1978
    const/4 v1, 0x4

    if-gt v8, v1, :cond_35

    .line 1979
    :goto_17
    if-lt v6, v8, :cond_1a

    .line 2017
    :cond_19
    return-void

    .line 1980
    :cond_1a
    invoke-virtual {p0, v6}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 1981
    if-eq v1, v0, :cond_32

    .line 1982
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 1983
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getLayerType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_32

    .line 1984
    invoke-virtual {v1, v5}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 1979
    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 1990
    :cond_35
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDrawVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getVisiblePages([I)V

    .line 1991
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDrawVisiblePagesRange:[I

    aget v2, v1, v6

    .line 1992
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDrawVisiblePagesRange:[I

    aget v1, v1, v5

    .line 1994
    if-ne v2, v1, :cond_72

    .line 1996
    add-int/lit8 v3, v8, -0x1

    if-ge v1, v3, :cond_69

    .line 1997
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v1

    :goto_4c
    move v7, v6

    .line 2007
    :goto_4d
    if-ge v7, v8, :cond_19

    .line 2008
    invoke-virtual {p0, v7}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 2012
    if-eq v1, v0, :cond_70

    .line 2013
    if-gt v3, v7, :cond_70

    if-gt v7, v2, :cond_70

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_70

    move v4, v5

    .line 2014
    :goto_62
    invoke-virtual {v1, v4}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 2007
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_4d

    .line 1998
    :cond_69
    if-lez v2, :cond_72

    .line 1999
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move v2, v1

    goto :goto_4c

    :cond_70
    move v4, v6

    .line 2012
    goto :goto_62

    :cond_72
    move v3, v2

    move v2, v1

    goto :goto_4c
.end method

.method private enfoceDragParity(Landroid/view/View;Ljava/lang/String;II)V
    .registers 9

    .prologue
    const/high16 v2, 0x7f0e0000

    .line 3179
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 3180
    if-nez v0, :cond_30

    const/4 v0, 0x0

    .line 3181
    :goto_9
    add-int/2addr v0, p3

    .line 3182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3184
    if-eq v0, p4, :cond_2f

    .line 3185
    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": Drag contract violated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    :cond_2f
    return-void

    .line 3180
    :cond_30
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_9
.end method

.method private enfoceDragParity(Ljava/lang/String;II)V
    .registers 6

    .prologue
    .line 3172
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->enfoceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    .line 3173
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 3176
    return-void

    .line 3174
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/launcher3/Workspace;->enfoceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    .line 3173
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 782
    const-string v0, "alpha"

    new-array v1, v7, [F

    aput v3, v1, v6

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 783
    const-string v0, "backgroundAlpha"

    new-array v2, v7, [F

    aput v3, v2, v6

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 785
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v4, -0xc9

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 787
    new-instance v3, Lcom/android/launcher3/Workspace$3;

    invoke-direct {v3, p0, v0, p4}, Lcom/android/launcher3/Workspace$3;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;Z)V

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 801
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-static {v0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 802
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 803
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 804
    new-instance v1, Lcom/android/launcher3/Workspace$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/launcher3/Workspace$4;-><init>(Lcom/android/launcher3/Workspace;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 826
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 827
    return-void
.end method

.method static filterShortcutInfos(Ljava/lang/Iterable;Lcom/android/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/LauncherModel$ItemInfoFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4892
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4893
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    .line 4914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 4893
    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 4894
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_30

    .line 4895
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 4896
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 4897
    const/4 v4, 0x0

    invoke-interface {p1, v4, v0, v1}, Lcom/android/launcher3/LauncherModel$ItemInfoFilter;->filterItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4898
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 4900
    :cond_30
    instance-of v1, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v1, :cond_9

    .line 4901
    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 4903
    :try_start_36
    iget-object v1, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 4904
    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 4905
    invoke-interface {p1, v0, v1, v5}, Lcom/android/launcher3/LauncherModel$ItemInfoFilter;->filterItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 4906
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/util/ConcurrentModificationException; {:try_start_36 .. :try_end_55} :catch_56

    goto :goto_3c

    .line 4909
    :catch_56
    move-exception v0

    .line 4910
    const-string v1, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to filter folder items: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private findMatchingPageForDragOver(Lcom/android/launcher3/DragView;FFZ)Lcom/android/launcher3/CellLayout;
    .registers 15

    .prologue
    .line 3341
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v5

    .line 3342
    const/4 v3, 0x0

    .line 3343
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3345
    const/4 v0, 0x0

    move v4, v0

    :goto_a
    if-lt v4, v5, :cond_e

    move-object v0, v3

    .line 3384
    :cond_d
    return-object v0

    .line 3347
    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x12d

    cmp-long v0, v6, v8

    if-nez v0, :cond_28

    move v0, v1

    move-object v1, v3

    .line 3345
    :goto_22
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_a

    .line 3351
    :cond_28
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 3353
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v6, 0x0

    aput p2, v2, v6

    const/4 v6, 0x1

    aput p3, v2, v6

    .line 3356
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3357
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v2, v6}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 3359
    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6d

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6d

    .line 3360
    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6d

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-lez v6, :cond_d

    .line 3364
    :cond_6d
    if-nez p4, :cond_99

    .line 3366
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 3367
    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    .line 3368
    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    .line 3369
    invoke-virtual {p0, v0, v6}, Lcom/android/launcher3/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    .line 3371
    const/4 v7, 0x0

    aput p2, v2, v7

    .line 3372
    const/4 v7, 0x1

    aput p3, v2, v7

    .line 3376
    invoke-static {v2, v6}, Lcom/android/launcher3/Workspace;->squaredDistance([F[F)F

    move-result v2

    .line 3378
    cmpg-float v6, v2, v1

    if-gez v6, :cond_99

    move-object v1, v0

    move v0, v2

    .line 3380
    goto :goto_22

    :cond_99
    move v0, v1

    move-object v1, v3

    goto :goto_22
.end method

.method private static final fromXml_aroundBody16(Lcom/android/launcher3/Workspace;ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/FolderIcon;
    .registers 7

    .prologue
    .line 3856
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/launcher3/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/FolderIcon;

    move-result-object v0

    return-object v0
.end method

.method private static final fromXml_aroundBody17$advice(Lcom/android/launcher3/Workspace;ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;Lcom/lge/launcher3/folder/FolderColorAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/FolderIcon;
    .registers 12

    .prologue
    .line 109
    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/Workspace;->fromXml_aroundBody16(Lcom/android/launcher3/Workspace;ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/FolderIcon;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mPreviewBackground(Lcom/android/launcher3/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->getFolderInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/FolderInfo;->folderColor:I

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$privMethod$com_lge_launcher3_folder_FolderColorAspect$com_lge_launcher3_folder_FolderColorAspect$setFolderIconColor(Landroid/content/Context;Landroid/widget/ImageView;I)V

    .line 111
    invoke-static {v0}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$interMethodDispatch1$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$setAppNotifierDrawer(Lcom/android/launcher3/FolderIcon;)V

    .line 112
    return-object v0
.end method

.method static getCellLayoutMetrics(Lcom/android/launcher3/Launcher;I)Landroid/graphics/Rect;
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 3099
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 3100
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 3102
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 3103
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 3104
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 3105
    invoke-virtual {v1, v2, v3}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 3106
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 3107
    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 3108
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    .line 3109
    if-nez p1, :cond_5e

    .line 3110
    sget-object v6, Lcom/android/launcher3/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v6, :cond_5b

    .line 3111
    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 3112
    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    .line 3113
    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    .line 3114
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/launcher3/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3115
    sget-object v2, Lcom/android/launcher3/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3116
    invoke-static {v3, v1}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v1

    .line 3117
    invoke-static {v0, v4}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(II)I

    move-result v0

    .line 3115
    invoke-virtual {v2, v1, v0, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3119
    :cond_5b
    sget-object v0, Lcom/android/launcher3/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3132
    :goto_5d
    return-object v0

    .line 3120
    :cond_5e
    const/4 v6, 0x1

    if-ne p1, v6, :cond_93

    .line 3121
    sget-object v6, Lcom/android/launcher3/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v6, :cond_90

    .line 3122
    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 3123
    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v5

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v5

    .line 3124
    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v0

    .line 3125
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sput-object v3, Lcom/android/launcher3/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3126
    sget-object v3, Lcom/android/launcher3/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3127
    invoke-static {v2, v1}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v1

    .line 3128
    invoke-static {v0, v4}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(II)I

    move-result v0

    .line 3126
    invoke-virtual {v3, v1, v0, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3130
    :cond_90
    sget-object v0, Lcom/android/launcher3/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    goto :goto_5d

    .line 3132
    :cond_93
    const/4 v0, 0x0

    goto :goto_5d
.end method

.method private static final getCurrentPageDescription_aroundBody24(Lcom/android/launcher3/Workspace;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 4804
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    if-nez v0, :cond_f

    .line 4805
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentDescription:Ljava/lang/String;

    .line 4808
    :goto_e
    return-object v0

    .line 4807
    :cond_f
    iget v0, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    .line 4808
    :goto_16
    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 4807
    :cond_1b
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    goto :goto_16
.end method

.method private static final getCurrentPageDescription_aroundBody25$advice(Lcom/android/launcher3/Workspace;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/String;
    .registers 10

    .prologue
    .line 120
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 121
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mNextPage(Lcom/android/launcher3/PagedView;)I

    move-result v1

    invoke-static {}, Lcom/android/launcher3/PagedView;->ajc$get$INVALID_PAGE()I

    move-result v2

    if-eq v1, v2, :cond_21

    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mNextPage(Lcom/android/launcher3/PagedView;)I

    move-result v1

    .line 122
    :goto_14
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v2, v3, :cond_26

    .line 123
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->ajc$privMethod$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$getPageDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_20
    return-object v0

    .line 121
    :cond_21
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mCurrentPage(Lcom/android/launcher3/PagedView;)I

    move-result v1

    goto :goto_14

    .line 124
    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne v2, v3, :cond_4d

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0116

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->ajc$privMethod$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$getPageDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 130
    :cond_4d
    const-string v0, ""

    goto :goto_20
.end method

.method private static getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2056
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2057
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2058
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_2f

    .line 2059
    :cond_15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2063
    :goto_20
    instance-of v1, p0, Lcom/android/launcher3/PreloadIconDrawable;

    if-eqz v1, :cond_2e

    .line 2064
    check-cast p0, Lcom/android/launcher3/PreloadIconDrawable;

    invoke-virtual {p0}, Lcom/android/launcher3/PreloadIconDrawable;->getOutset()I

    move-result v1

    neg-int v1, v1

    .line 2065
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 2067
    :cond_2e
    return-object v0

    .line 2061
    :cond_2f
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_20
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher3/DragView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;[IZZ)V
    .registers 17

    .prologue
    .line 3944
    iget v5, p5, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3945
    iget v6, p5, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3947
    const/4 v0, 0x0

    aget v3, p6, v0

    const/4 v0, 0x1

    aget v4, p6, v0

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object v2

    .line 3948
    const/4 v0, 0x0

    iget v1, v2, Landroid/graphics/Rect;->left:I

    aput v1, p1, v0

    .line 3949
    const/4 v0, 0x1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    aput v1, p1, v0

    .line 3951
    invoke-virtual {p0, p4}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    .line 3953
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p4, p1, v1}, Lcom/android/launcher3/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v3

    .line 3954
    invoke-virtual {p0, p4}, Lcom/android/launcher3/Workspace;->resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    .line 3958
    if-eqz p8, :cond_84

    .line 3959
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 3960
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    invoke-virtual {p3}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 3968
    :goto_4b
    const/4 v4, 0x0

    aget v5, p1, v4

    int-to-float v5, v5

    invoke-virtual {p3}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p1, v4

    .line 3969
    const/4 v4, 0x1

    aget v5, p1, v4

    int-to-float v5, v5

    invoke-virtual {p3}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float v2, v6, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float v2, v5, v2

    float-to-int v2, v2

    aput v2, p1, v4

    .line 3971
    const/4 v2, 0x0

    mul-float/2addr v1, v3

    aput v1, p2, v2

    .line 3972
    const/4 v1, 0x1

    mul-float/2addr v0, v3

    aput v0, p2, v1

    .line 3973
    return-void

    .line 3962
    :cond_84
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3963
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4b
.end method

.method private getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 4458
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 4459
    new-instance v1, Lcom/android/launcher3/Workspace$18;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/Workspace$18;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$ItemOperator;[Landroid/view/View;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 4469
    aget-object v0, v0, v2

    return-object v0
.end method

.method private static final getFreeScrollPageRange_aroundBody6(Lcom/android/launcher3/Workspace;[ILorg/aspectj/lang/JoinPoint;)V
    .registers 3

    .prologue
    .line 2110
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->getOverviewModePages([I)V

    .line 2111
    return-void
.end method

.method private static final getFreeScrollPageRange_aroundBody7$advice(Lcom/android/launcher3/Workspace;[ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;[ILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 8

    .prologue
    .line 115
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 116
    invoke-static {v0, p4}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getScrollModePages(Lcom/android/launcher3/Workspace;[I)V

    .line 117
    return-void
.end method

.method private getOverviewModePages([I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2114
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    .line 2115
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 2117
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v3

    .line 2118
    const/4 v0, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p1, v0

    .line 2119
    return-void
.end method

.method private getPageDescription(I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 4812
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, v1}, Lcom/android/launcher3/Workspace;->numCustomPages_aroundBody27$advice(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    .line 4813
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0105

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4814
    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v4

    sub-int v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 4813
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 2286
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2287
    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-lt v0, v2, :cond_a

    .line 2292
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 2288
    :cond_a
    aget-object v2, v1, v0

    if-eqz v2, :cond_11

    .line 2289
    aget-object v0, v1, v0

    goto :goto_9

    .line 2287
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 3

    .prologue
    .line 3388
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-nez v0, :cond_e

    .line 3389
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-nez v0, :cond_e

    .line 3388
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private isExternalDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 3

    .prologue
    .line 3392
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v0, p0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isScrollingOverlay()Z
    .registers 3

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/launcher3/Workspace;->mUnboundedScrollX:I

    iget v1, p0, Lcom/android/launcher3/Workspace;->mMaxScrollX:I

    if-gt v0, v1, :cond_16

    .line 1309
    :cond_e
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/launcher3/Workspace;->mUnboundedScrollX:I

    .line 1308
    if-gez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static final moveToDefaultScreen_aroundBody22(Lcom/android/launcher3/Workspace;ZLorg/aspectj/lang/JoinPoint;)V
    .registers 4

    .prologue
    .line 4765
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDefaultPage:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Workspace;->moveToScreen(IZ)V

    .line 4766
    return-void
.end method

.method private static final moveToDefaultScreen_aroundBody23$advice(Lcom/android/launcher3/Workspace;ZLorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Ljava/lang/Boolean;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 9

    .prologue
    .line 181
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 182
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mDefaultPage(Lcom/android/launcher3/Workspace;)I

    move-result v1

    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mCurrentPage(Lcom/android/launcher3/PagedView;)I

    move-result v0

    if-ne v1, v0, :cond_11

    .line 187
    :goto_10
    return-void

    .line 186
    :cond_11
    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/android/launcher3/Workspace;->moveToDefaultScreen_aroundBody22(Lcom/android/launcher3/Workspace;ZLorg/aspectj/lang/JoinPoint;)V

    goto :goto_10
.end method

.method private moveToScreen(IZ)V
    .registers 4

    .prologue
    .line 4751
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4752
    if-eqz p2, :cond_15

    .line 4753
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 4758
    :cond_b
    :goto_b
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4759
    if-eqz v0, :cond_14

    .line 4760
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4762
    :cond_14
    return-void

    .line 4755
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    goto :goto_b
.end method

.method private static final numCustomPages_aroundBody26(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace;)I
    .registers 3

    .prologue
    .line 4812
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    return v0
.end method

.method private static final numCustomPages_aroundBody27$advice(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 5

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher3/CellLayout;Z)V
    .registers 11

    .prologue
    .line 3729
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher3/CellLayout;ZLcom/android/launcher3/DropTarget$DragObject;)V

    .line 3730
    return-void
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher3/CellLayout;ZLcom/android/launcher3/DropTarget$DragObject;)V
    .registers 30

    .prologue
    .line 3742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v18

    .line 3743
    new-instance v19, Lcom/android/launcher3/Workspace$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace$11;-><init>(Lcom/android/launcher3/Workspace;ZLcom/android/launcher3/CellLayout;)V

    move-object/from16 v17, p2

    .line 3755
    check-cast v17, Lcom/android/launcher3/ItemInfo;

    .line 3756
    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3757
    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v4, :cond_35

    .line 3759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v7, v4, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 3760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v8, v4, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    .line 3763
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1a2

    .line 3764
    const/16 v4, -0x65

    .line 3763
    :goto_43
    int-to-long v0, v4

    move-wide/from16 v20, v0

    .line 3766
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v22

    .line 3767
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_78

    .line 3768
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    cmp-long v4, v22, v4

    if-eqz v4, :cond_78

    .line 3769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v5, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-eq v4, v5, :cond_78

    .line 3770
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/Workspace;->snapToScreenId(JLjava/lang/Runnable;)V

    .line 3773
    :cond_78
    move-object/from16 v0, v17

    instance-of v4, v0, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v4, :cond_1ab

    .line 3774
    check-cast p2, Lcom/android/launcher3/PendingAddItemInfo;

    .line 3776
    const/4 v11, 0x1

    .line 3777
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_32b

    .line 3778
    const/4 v4, 0x0

    aget v5, p1, v4

    const/4 v4, 0x1

    aget v6, p1, v4

    .line 3779
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v9, p3

    .line 3778
    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    .line 3781
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3780
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v8

    .line 3782
    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/ItemInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3783
    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    .line 3782
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v4

    .line 3783
    if-nez v4, :cond_df

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 3784
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3783
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v5, v8}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v4

    .line 3784
    if-eqz v4, :cond_32b

    .line 3785
    :cond_df
    const/4 v4, 0x0

    move v5, v4

    .line 3789
    :goto_e1
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Lcom/android/launcher3/ItemInfo;

    .line 3790
    const/16 v16, 0x0

    .line 3791
    if-eqz v5, :cond_142

    .line 3792
    iget v7, v15, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3793
    iget v8, v15, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3794
    iget v4, v15, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    if-lez v4, :cond_fc

    iget v4, v15, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    if-lez v4, :cond_fc

    .line 3795
    iget v7, v15, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 3796
    iget v8, v15, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 3798
    :cond_fc
    const/4 v4, 0x2

    new-array v13, v4, [I

    .line 3799
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v5, v4

    .line 3800
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    float-to-int v6, v4

    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3801
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v14, 0x3

    move-object/from16 v4, p3

    .line 3799
    invoke-virtual/range {v4 .. v14}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3803
    const/4 v4, 0x0

    aget v4, v13, v4

    iget v5, v15, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ne v4, v5, :cond_135

    const/4 v4, 0x1

    aget v4, v13, v4

    iget v5, v15, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-eq v4, v5, :cond_327

    .line 3804
    :cond_135
    const/4 v4, 0x1

    .line 3806
    :goto_136
    const/4 v5, 0x0

    aget v5, v13, v5

    iput v5, v15, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3807
    const/4 v5, 0x1

    aget v5, v13, v5

    iput v5, v15, Lcom/android/launcher3/ItemInfo;->spanY:I

    move/from16 v16, v4

    .line 3810
    :cond_142
    new-instance v5, Lcom/android/launcher3/Workspace$12;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, v20

    move-wide/from16 v10, v22

    move-object v12, v15

    invoke-direct/range {v5 .. v12}, Lcom/android/launcher3/Workspace$12;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/PendingAddItemInfo;JJLcom/android/launcher3/ItemInfo;)V

    .line 3824
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1a6

    .line 3825
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1a6

    .line 3824
    const/4 v4, 0x0

    move v6, v4

    .line 3827
    :goto_160
    if-eqz v6, :cond_1a9

    move-object/from16 v4, p2

    check-cast v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v12, v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 3829
    :goto_168
    instance-of v4, v12, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_17c

    if-eqz v16, :cond_17c

    move-object v4, v12

    .line 3830
    check-cast v4, Landroid/appwidget/AppWidgetHostView;

    .line 3831
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v8, v15, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3832
    iget v9, v15, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3831
    invoke-static {v4, v7, v8, v9}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    .line 3835
    :cond_17c
    const/4 v11, 0x0

    .line 3836
    if-eqz v6, :cond_192

    move-object/from16 v4, p2

    check-cast v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v4, v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v4, :cond_192

    .line 3837
    check-cast p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget-object v4, v4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_192

    .line 3838
    const/4 v11, 0x1

    .line 3840
    :cond_192
    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    .line 3841
    const/4 v13, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object/from16 v8, p3

    move-object v10, v5

    .line 3840
    invoke-virtual/range {v6 .. v13}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 3912
    :cond_1a1
    :goto_1a1
    return-void

    .line 3765
    :cond_1a2
    const/16 v4, -0x64

    goto/16 :goto_43

    .line 3824
    :cond_1a6
    const/4 v4, 0x1

    move v6, v4

    goto :goto_160

    .line 3827
    :cond_1a9
    const/4 v12, 0x0

    goto :goto_168

    .line 3846
    :cond_1ab
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_32e

    .line 3860
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown item type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3849
    :pswitch_1cb
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v10, -0x1

    cmp-long v4, v4, v10

    if-nez v4, :cond_323

    move-object/from16 v0, v17

    instance-of v4, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v4, :cond_323

    .line 3851
    check-cast v17, Lcom/android/launcher3/AppInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v17

    move-object/from16 v5, v17

    .line 3853
    :goto_1e3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v4, v5

    check-cast v4, Lcom/android/launcher3/ShortcutInfo;

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v4}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    move-object/from16 v17, v5

    .line 3865
    :goto_1f3
    if-eqz p1, :cond_255

    .line 3866
    const/4 v4, 0x0

    aget v5, p1, v4

    const/4 v4, 0x1

    aget v6, p1, v4

    .line 3867
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v9, p3

    .line 3866
    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    .line 3869
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3868
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v10

    .line 3870
    move-object/from16 v0, v19

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 3871
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3872
    const/4 v11, 0x1

    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/android/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v4, p0

    move-object v5, v15

    move-wide/from16 v6, v20

    move-object/from16 v8, p3

    .line 3871
    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    .line 3872
    if-nez v4, :cond_1a1

    .line 3875
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3876
    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object v7, v15

    move-object/from16 v8, p3

    move-object/from16 v11, p5

    .line 3875
    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v4

    .line 3876
    if-nez v4, :cond_1a1

    .line 3881
    :cond_255
    if-eqz p1, :cond_316

    .line 3883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v5, v4

    .line 3884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    float-to-int v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 3885
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v13, 0x0

    const/4 v14, 0x3

    move-object/from16 v4, p3

    .line 3883
    invoke-virtual/range {v4 .. v14}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3891
    :goto_27c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 3892
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v10, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v11, v5, v6

    move-object/from16 v5, v17

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    .line 3891
    invoke-static/range {v4 .. v11}, Lcom/android/launcher3/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 3894
    if-eqz v18, :cond_29f

    .line 3895
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    .line 3897
    :cond_29f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    aget v10, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    aget v11, v4, v5

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3898
    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object/from16 v4, p0

    move-object v5, v15

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    move/from16 v14, p4

    .line 3897
    invoke-virtual/range {v4 .. v14}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 3899
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3900
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 3902
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    if-eqz v4, :cond_1a1

    .line 3906
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    .line 3907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v4

    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v4, v5, v15, v0, v1}, Lcom/android/launcher3/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 3909
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    goto/16 :goto_1a1

    .line 3856
    :pswitch_2f6
    const v10, 0x7f040014

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v13, v17

    .line 3857
    check-cast v13, Lcom/android/launcher3/FolderInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/Workspace;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v9, p0

    move-object/from16 v12, p3

    invoke-static/range {v9 .. v16}, Lcom/android/launcher3/Workspace;->fromXml_aroundBody17$advice(Lcom/android/launcher3/Workspace;ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;Lcom/lge/launcher3/folder/FolderColorAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/FolderIcon;

    move-result-object v4

    move-object v15, v4

    .line 3858
    goto/16 :goto_1f3

    .line 3887
    :cond_316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    goto/16 :goto_27c

    :cond_323
    move-object/from16 v5, v17

    goto/16 :goto_1e3

    :cond_327
    move/from16 v4, v16

    goto/16 :goto_136

    :cond_32b
    move v5, v11

    goto/16 :goto_e1

    .line 3846
    :pswitch_data_32e
    .packed-switch 0x0
        :pswitch_1cb
        :pswitch_1cb
        :pswitch_2f6
    .end packed-switch
.end method

.method private static final onInterceptTouchEvent_aroundBody0(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 5

    .prologue
    .line 1111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    sparse-switch v0, :sswitch_data_34

    .line 1126
    :cond_9
    :goto_9
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1113
    :sswitch_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    .line 1114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    .line 1115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/Workspace;->mTouchDownTime:J

    goto :goto_9

    .line 1119
    :sswitch_21
    iget v0, p0, Lcom/android/launcher3/Workspace;->mTouchState:I

    if-nez v0, :cond_9

    .line 1120
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1121
    if-eqz v0, :cond_9

    .line 1122
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto :goto_9

    .line 1111
    nop

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_e
        0x1 -> :sswitch_21
        0x6 -> :sswitch_21
    .end sparse-switch
.end method

.method private static final onInterceptTouchEvent_aroundBody1$advice(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativeitds/CleanViewItds;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 8

    .prologue
    .line 247
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 248
    invoke-static {v0, p4}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$interceptMultiTouchEvent(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_d
    return v0

    :cond_e
    invoke-static {p0, p4, p2}, Lcom/android/launcher3/Workspace;->onInterceptTouchEvent_aroundBody0(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    goto :goto_d
.end method

.method private static final onPageBeginMoving_aroundBody4(Lcom/android/launcher3/Workspace;Lorg/aspectj/lang/JoinPoint;)V
    .registers 4

    .prologue
    .line 1222
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginMoving()V

    .line 1224
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1236
    :goto_d
    return-void

    .line 1227
    :cond_e
    iget v0, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 1229
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->enableChildrenCache(II)V

    goto :goto_d

    .line 1233
    :cond_1b
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->enableChildrenCache(II)V

    goto :goto_d
.end method

.method private static final onPageBeginMoving_aroundBody5$advice(Lcom/android/launcher3/Workspace;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 11

    .prologue
    const-wide/16 v4, 0x8

    .line 215
    const-wide/16 v0, 0x8

    :try_start_4
    const-string v2, "Workspace.onPageBeginMoving"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 216
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 217
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->clearAllResizeFrames()V

    .line 218
    invoke-static {p0, p1}, Lcom/android/launcher3/Workspace;->onPageBeginMoving_aroundBody4(Lcom/android/launcher3/Workspace;Lorg/aspectj/lang/JoinPoint;)V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_21

    .line 220
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 222
    return-void

    .line 219
    :catchall_21
    move-exception v0

    .line 220
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 221
    throw v0
.end method

.method private onResetScrollArea()V
    .registers 2

    .prologue
    .line 4375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 4376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mInScrollArea:Z

    .line 4377
    return-void
.end method

.method private static final onTouchEvent_aroundBody28(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 4

    .prologue
    .line 4883
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private static final onTouchEvent_aroundBody29$advice(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 204
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mState(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v2, :cond_20

    move v0, v1

    .line 205
    :goto_10
    if-eqz v0, :cond_22

    .line 206
    iget-object v0, p3, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    if-eqz v0, :cond_22

    iget-object v0, p3, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    invoke-virtual {v0, p4}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v1

    .line 210
    :goto_1f
    return v0

    .line 204
    :cond_20
    const/4 v0, 0x0

    goto :goto_10

    .line 210
    :cond_22
    invoke-static {p0, p4, p2}, Lcom/android/launcher3/Workspace;->onTouchEvent_aroundBody28(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    goto :goto_1f
.end method

.method private static final setCurrentDragOverlappingLayout_aroundBody14(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;)V
    .registers 4

    .prologue
    .line 3205
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_a

    .line 3206
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 3208
    :cond_a
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 3209
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_16

    .line 3210
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 3212
    :cond_16
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    .line 3213
    return-void
.end method

.method private static final setCurrentDragOverlappingLayout_aroundBody15$advice(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Lcom/android/launcher3/CellLayout;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5

    .prologue
    .line 64
    return-void
.end method

.method private static final setStateWithAnimation_aroundBody8(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/lang/JoinPoint;)Landroid/animation/Animator;
    .registers 14

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getAnimationToState(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 2176
    :try_start_d
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_f} :catch_1c

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$8$3b7ed89c(Lcom/android/launcher3/Workspace$State;)V

    nop

    .line 2177
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags()V

    .line 2179
    return-object v0

    .line 2176
    :catch_1c
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$8$3b7ed89c(Lcom/android/launcher3/Workspace$State;)V

    throw v0
.end method

.method private static final setStateWithAnimation_aroundBody9$advice(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/animation/Animator;
    .registers 24

    .prologue
    .line 31
    invoke-interface/range {p14 .. p14}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Workspace;

    .line 32
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 34
    invoke-static {v8}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    move-result-object v2

    invoke-static {v1}, Lcom/android/launcher3/Workspace;->ajc$get$mState(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v2, v1, v0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->startStateTransition(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V

    move-object v1, p0

    move-object/from16 v2, p8

    move/from16 v3, p9

    move/from16 v4, p10

    move/from16 v5, p11

    move-object/from16 v6, p12

    move-object v7, p6

    .line 36
    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/Workspace;->setStateWithAnimation_aroundBody8(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/lang/JoinPoint;)Landroid/animation/Animator;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_34

    .line 39
    new-instance v2, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect$WorkspaceStateTransitionWatcherAspect$1;

    move-object/from16 v0, p7

    invoke-direct {v2, v0, v8}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect$WorkspaceStateTransitionWatcherAspect$1;-><init>(Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    :goto_33
    return-object v1

    .line 48
    :cond_34
    invoke-static {v8}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->endStateTransition()V

    goto :goto_33
.end method

.method private setTranslationAndAlpha(Landroid/view/View;FF)V
    .registers 4

    .prologue
    .line 1423
    if-eqz p1, :cond_8

    .line 1424
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 1425
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 1427
    :cond_8
    return-void
.end method

.method private setupLayoutTransition()V
    .registers 3

    .prologue
    .line 461
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 462
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 463
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 464
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 465
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 466
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 467
    return-void
.end method

.method private showPageIndicator(F)V
    .registers 5

    .prologue
    .line 1801
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    .line 1802
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-eq v1, v2, :cond_1b

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isCleanViewState(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1803
    if-eqz v0, :cond_1b

    .line 1804
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1805
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1808
    :cond_1b
    return-void
.end method

.method private static squaredDistance([F[F)F
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3323
    aget v0, p0, v1

    aget v1, p1, v1

    sub-float/2addr v0, v1

    .line 3324
    aget v1, p1, v2

    aget v2, p1, v2

    sub-float/2addr v1, v2

    .line 3325
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private static final supportsAppInfoDropTarget_aroundBody20(Lcom/android/launcher3/Workspace;)Z
    .registers 2

    .prologue
    .line 4247
    const/4 v0, 0x0

    return v0
.end method

.method private static final supportsAppInfoDropTarget_aroundBody21$advice(Lcom/android/launcher3/Workspace;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4

    .prologue
    .line 67
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->supportsAppInfoDropTarget_aroundBody20(Lcom/android/launcher3/Workspace;)Z

    move-result v0

    goto :goto_7
.end method

.method private static final supportsFlingToDelete_aroundBody18(Lcom/android/launcher3/Workspace;)Z
    .registers 2

    .prologue
    .line 4242
    const/4 v0, 0x1

    return v0
.end method

.method private static final supportsFlingToDelete_aroundBody19$advice(Lcom/android/launcher3/Workspace;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4

    .prologue
    .line 59
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 60
    const/4 v0, 0x0

    .line 62
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->supportsFlingToDelete_aroundBody18(Lcom/android/launcher3/Workspace;)Z

    move-result v0

    goto :goto_7
.end method

.method private updateAccessibilityFlags(Lcom/android/launcher3/CellLayout;I)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x4

    .line 2206
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne v1, v2, :cond_2b

    .line 2207
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 2208
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 2210
    invoke-direct {p0, p2}, Lcom/android/launcher3/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2212
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-nez v0, :cond_25

    .line 2213
    new-instance v0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 2215
    :cond_25
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2226
    :goto_2a
    return-void

    .line 2217
    :cond_2b
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v1, v2, :cond_3d

    .line 2218
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2219
    :cond_3d
    const/4 v0, 0x0

    .line 2221
    :cond_3e
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 2222
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 2223
    invoke-virtual {p1, v3}, Lcom/android/launcher3/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2224
    invoke-virtual {p1, v3}, Lcom/android/launcher3/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_2a
.end method

.method private updatePageAlphaValues(I)V
    .registers 6

    .prologue
    .line 1706
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v0, :cond_19

    .line 1707
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1708
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_19

    .line 1709
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    move v1, v0

    :goto_13
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_1a

    .line 1718
    :cond_19
    return-void

    .line 1710
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1711
    if-eqz v0, :cond_35

    .line 1712
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    .line 1713
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    .line 1714
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 1709
    :cond_35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13
.end method

.method private updateStateForCustomContent(I)V
    .registers 8

    .prologue
    const-wide/16 v4, -0x12d

    const/4 v2, 0x0

    .line 1755
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-nez v0, :cond_a3

    .line 1756
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1758
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 1759
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v3

    .line 1758
    sub-int/2addr v1, v3

    .line 1760
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v0

    sub-int v0, v3, v0

    int-to-float v0, v0

    .line 1761
    int-to-float v3, v1

    sub-float v3, v0, v3

    .line 1762
    int-to-float v1, v1

    sub-float v1, v0, v1

    div-float/2addr v1, v0

    .line 1764
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_59

    .line 1765
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1769
    :goto_4b
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v3, v0

    .line 1772
    :goto_50
    iget v0, p0, Lcom/android/launcher3/Workspace;->mLastCustomContentScrollProgress:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_5e

    .line 1798
    :cond_58
    :goto_58
    return-void

    .line 1767
    :cond_59
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_4b

    .line 1774
    :cond_5e
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1775
    cmpl-float v2, v1, v2

    if-lez v2, :cond_7a

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_7a

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v2

    if-nez v2, :cond_7a

    .line 1776
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setVisibility(I)V

    .line 1779
    :cond_7a
    iput v1, p0, Lcom/android/launcher3/Workspace;->mLastCustomContentScrollProgress:F

    .line 1789
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 1790
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Hotseat;->setTranslationX(F)V

    .line 1791
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->clearFocus()V

    .line 1793
    :cond_96
    invoke-direct {p0, v3}, Lcom/android/launcher3/Workspace;->showPageIndicator(F)V

    .line 1795
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_58

    .line 1796
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v0, v1}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onScrollProgressChanged(F)V

    goto :goto_58

    :cond_a3
    move v1, v2

    move v3, v2

    goto :goto_50
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 8

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_18:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->acceptDrop_aroundBody13$advice(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method public addExternalItemToScreen(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 3719
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempEstimate:[I

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v3, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3720
    iget-object v1, p1, Lcom/android/launcher3/ItemInfo;->dropPos:[I

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/launcher3/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher3/CellLayout;Z)V

    .line 3721
    const/4 v0, 0x1

    .line 3724
    :goto_13
    return v0

    .line 3723
    :cond_14
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_13
.end method

.method public addExtraEmptyScreen()Z
    .registers 5

    .prologue
    const-wide/16 v2, -0xc9

    .line 698
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_f

    .line 699
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(J)J

    .line 700
    const/4 v0, 0x1

    .line 702
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public addExtraEmptyScreenOnDrag()V
    .registers 9

    .prologue
    const-wide/16 v6, -0xc9

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 678
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_3c

    .line 679
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_3a

    move v1, v2

    .line 682
    :goto_14
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 683
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_29

    move v3, v2

    .line 689
    :cond_29
    :goto_29
    if-eqz v1, :cond_2e

    if-eqz v3, :cond_2e

    .line 695
    :cond_2d
    :goto_2d
    return-void

    .line 692
    :cond_2e
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 693
    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(J)J

    goto :goto_2d

    :cond_3a
    move v1, v3

    goto :goto_14

    :cond_3c
    move v1, v3

    goto :goto_29
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1911
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    .line 1912
    if-eqz v0, :cond_12

    .line 1913
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1918
    :cond_11
    :goto_11
    return-void

    .line 1915
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_11
.end method

.method public addInScreen(Landroid/view/View;JJIIII)V
    .registers 22

    .prologue
    .line 950
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 951
    return-void
.end method

.method public addInScreen(Landroid/view/View;JJIIIIZ)V
    .registers 23

    .prologue
    .line 963
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 964
    return-void
.end method

.method addInScreen(Landroid/view/View;JJIIIIZZ)V
    .registers 20

    .prologue
    .line 983
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addInScreen() : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 984
    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 983
    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-wide/16 v2, -0x64

    cmp-long v2, p2, v2

    if-nez v2, :cond_9b

    .line 987
    invoke-virtual {p0, p4, p5}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    if-nez v2, :cond_9b

    .line 988
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addInScreen() : Skipping child, screenId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1065
    :cond_9a
    :goto_9a
    return-void

    .line 994
    :cond_9b
    const-wide/16 v2, -0xc9

    cmp-long v2, p4, v2

    if-nez v2, :cond_a9

    .line 996
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1000
    :cond_a9
    const-wide/16 v2, -0x65

    cmp-long v2, p2, v2

    if-nez v2, :cond_104

    .line 1001
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    .line 1002
    new-instance v2, Lcom/android/launcher3/HotseatIconKeyEventListener;

    invoke-direct {v2}, Lcom/android/launcher3/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1005
    instance-of v2, p1, Lcom/android/launcher3/FolderIcon;

    if-eqz v2, :cond_cc

    move-object v2, p1

    .line 1006
    check-cast v2, Lcom/android/launcher3/FolderIcon;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/FolderIcon;->setTextVisible(Z)V

    .line 1009
    :cond_cc
    if-eqz p11, :cond_f7

    .line 1010
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    long-to-int v4, p4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result p6

    .line 1011
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    long-to-int v4, p4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result p7

    move-object v2, v3

    .line 1024
    :goto_e5
    if-nez v2, :cond_11c

    .line 1025
    const-string v2, "Launcher.Workspace"

    const-string v3, "addInScreen() : Skipping child, layout is null"

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9a

    .line 1013
    :cond_f7
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2, p6, p7}, Lcom/android/launcher3/Hotseat;->getOrderInHotseat(II)I

    move-result v2

    int-to-long v4, v2

    move-object v2, v3

    .line 1015
    goto :goto_e5

    .line 1017
    :cond_104
    instance-of v2, p1, Lcom/android/launcher3/FolderIcon;

    if-eqz v2, :cond_10f

    move-object v2, p1

    .line 1018
    check-cast v2, Lcom/android/launcher3/FolderIcon;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/FolderIcon;->setTextVisible(Z)V

    .line 1020
    :cond_10f
    invoke-virtual {p0, p4, p5}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 1021
    new-instance v3, Lcom/android/launcher3/IconKeyEventListener;

    invoke-direct {v3}, Lcom/android/launcher3/IconKeyEventListener;-><init>()V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_e5

    .line 1030
    :cond_11c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1032
    if-eqz v3, :cond_126

    instance-of v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-nez v4, :cond_194

    .line 1033
    :cond_126
    new-instance v6, Lcom/android/launcher3/CellLayout$LayoutParams;

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {v6, p6, p7, v0, v1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 1042
    :goto_12f
    if-gez p8, :cond_136

    if-gez p9, :cond_136

    .line 1043
    const/4 v3, 0x0

    iput-boolean v3, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1047
    :cond_136
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 1048
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/ItemInfo;)I

    move-result v5

    .line 1050
    instance-of v3, p1, Lcom/android/launcher3/Folder;

    if-eqz v3, :cond_1a4

    const/4 v7, 0x0

    .line 1051
    :goto_147
    if-eqz p10, :cond_1a6

    const/4 v4, 0x0

    :goto_14a
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    move-result v2

    if-nez v2, :cond_17a

    .line 1055
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to add to item at ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to CellLayout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1058
    :cond_17a
    instance-of v2, p1, Lcom/android/launcher3/Folder;

    if-nez v2, :cond_187

    .line 1059
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 1060
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1062
    :cond_187
    instance-of v2, p1, Lcom/android/launcher3/DropTarget;

    if-eqz v2, :cond_9a

    .line 1063
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/DragController;

    check-cast p1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto/16 :goto_9a

    .line 1035
    :cond_194
    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1036
    iput p6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 1037
    iput p7, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 1038
    move/from16 v0, p8

    iput v0, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 1039
    move/from16 v0, p9

    iput v0, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    move-object v6, v3

    goto :goto_12f

    .line 1050
    :cond_1a4
    const/4 v7, 0x1

    goto :goto_147

    .line 1051
    :cond_1a6
    const/4 v4, -0x1

    goto :goto_14a
.end method

.method addInScreenFromBind(Landroid/view/View;JJIIII)V
    .registers 22

    .prologue
    .line 957
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 958
    return-void
.end method

.method public addToCustomContentPage(Landroid/view/View;Lcom/android/launcher3/Launcher$CustomContentCallbacks;Ljava/lang/String;)V
    .registers 12

    .prologue
    const-wide/16 v6, -0x12d

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 643
    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    if-gez v0, :cond_12

    .line 644
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected custom content screen to exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_12
    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    .line 650
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v3

    .line 651
    new-instance v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v1, v3}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 652
    iput-boolean v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 653
    iput-boolean v5, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 654
    instance-of v1, p1, Lcom/android/launcher3/Insettable;

    if-eqz v1, :cond_33

    move-object v1, p1

    .line 655
    check-cast v1, Lcom/android/launcher3/Insettable;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Lcom/android/launcher3/Insettable;->setInsets(Landroid/graphics/Rect;)V

    .line 659
    :cond_33
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_44

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 661
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 663
    :cond_44
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->removeAllViews()V

    .line 664
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, p1

    move v3, v2

    .line 665
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    .line 666
    iput-object p3, p0, Lcom/android/launcher3/Workspace;->mCustomContentDescription:Ljava/lang/String;

    .line 668
    iput-object p2, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    .line 669
    return-void
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2766
    invoke-static {p2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F

    move-result v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_c

    move v0, v1

    .line 2787
    :goto_b
    return v0

    .line 2768
    :cond_c
    aget v0, p3, v1

    aget v3, p3, v2

    invoke-virtual {p2, v0, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2769
    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-nez v3, :cond_1a

    move v0, v1

    goto :goto_b

    .line 2770
    :cond_1a
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2772
    instance-of v3, v0, Lcom/android/launcher3/FolderIcon;

    if-eqz v3, :cond_42

    .line 2773
    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 2774
    iget-object v3, p5, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2775
    invoke-virtual {v0, p5}, Lcom/android/launcher3/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 2778
    if-nez p6, :cond_40

    .line 2779
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 2780
    if-eqz v0, :cond_40

    .line 2781
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_40
    move v0, v2

    .line 2784
    goto :goto_b

    :cond_42
    move v0, v1

    .line 2787
    goto :goto_b
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$onDragStartForHotseat()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_Workspace$onDragStartForHotseat(Lcom/android/launcher3/Workspace;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_WorkspaceItds$determineScrollingStartModify(Landroid/view/MotionEvent;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$determineScrollingStartModify(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_WorkspaceItds$isVerticalScrollPage()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$isVerticalScrollPage(Lcom/android/launcher3/Workspace;)Z

    move-result v0

    return v0
.end method

.method public ajc$privMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_Workspace$updateItemLocationsInDatabase(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->updateItemLocationsInDatabase(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$overScroll(F)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->overScroll(F)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$snapToDestination()V
    .registers 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->snapToDestination()V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$getPageDescription(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$protectedDispatch$com_android_launcher3_Workspace$overScroll(F)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->overScroll(F)V

    return-void
.end method

.method public ajc$protectedDispatch$com_android_launcher3_Workspace$snapToDestination()V
    .registers 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->snapToDestination()V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$abortScrollerAnimation(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$awakenScrollBars(I)Z
    .registers 3

    .prologue
    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->awakenScrollBars(I)Z

    move-result v0

    return v0
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$cancelCurrentPageLongPress()V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->cancelCurrentPageLongPress()V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$determineScrollingStart(Landroid/view/MotionEvent;F)V
    .registers 3

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$distanceInfluenceForSnapDuration(F)F
    .registers 3

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    return v0
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$forceFinishScroller()V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->forceFinishScroller()V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$getPageCount()I
    .registers 2

    .prologue
    .line 1
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    return v0
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$isReordering(Z)Z
    .registers 3

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    return v0
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$mapPointFromParentToView(Landroid/view/View;FF)[F
    .registers 5

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    return-object v0
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$pageBeginMoving()V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->pageBeginMoving()V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$pageEndMoving()V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->pageEndMoving()V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$snapToPage(II)V
    .registers 3

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$snapToPage(III)V
    .registers 4

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;->snapToPage(III)V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$updateCurrentPageScroll()V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$updateDragViewTranslationDuringDrag()V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_Workspace$validateNewPage(I)I
    .registers 3

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    return v0
.end method

.method public animateIntoCleanView(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$animateIntoCleanView(Lcom/android/launcher3/Workspace;Z)V

    return-void
.end method

.method public animateOutCleanView()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$animateOutCleanView(Lcom/android/launcher3/Workspace;)V

    return-void
.end method

.method public animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .registers 38

    .prologue
    .line 3978
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 3979
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Lcom/android/launcher3/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3981
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3982
    const/4 v4, 0x2

    new-array v6, v4, [F

    .line 3983
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v4, :cond_ae

    const/4 v12, 0x0

    .line 3984
    :goto_1f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move/from16 v11, p7

    invoke-direct/range {v4 .. v12}, Lcom/android/launcher3/Workspace;->getFinalPositionForDropAnimation([I[FLcom/android/launcher3/DragView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;[IZZ)V

    .line 3987
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3988
    const v7, 0x7f0c0010

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit16 v14, v4, -0xc8

    .line 3991
    move-object/from16 v0, p6

    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_56

    if-eqz p7, :cond_56

    .line 3992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    .line 3995
    :cond_56
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v4, v7, :cond_b1

    .line 3996
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v7, 0x5

    if-eq v4, v7, :cond_b1

    .line 3995
    const/4 v4, 0x0

    .line 3997
    :goto_65
    const/4 v7, 0x2

    move/from16 v0, p5

    if-eq v0, v7, :cond_6c

    if-eqz p7, :cond_b3

    :cond_6c
    if-eqz p6, :cond_b3

    .line 3998
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->createWidgetBitmap(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3999
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    .line 4000
    int-to-float v4, v14

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/DragView;->crossFade(I)V

    .line 4005
    :cond_88
    :goto_88
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v15

    .line 4006
    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_c8

    .line 4007
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v6

    const/4 v9, 0x0

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3dcccccd    # 0.1f

    .line 4008
    const/4 v12, 0x0

    move-object/from16 v7, p3

    move-object v8, v5

    move-object/from16 v13, p4

    .line 4007
    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher3/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 4032
    :goto_ad
    return-void

    .line 3983
    :cond_ae
    const/4 v12, 0x1

    goto/16 :goto_1f

    .line 3995
    :cond_b1
    const/4 v4, 0x1

    goto :goto_65

    .line 4001
    :cond_b3
    if-eqz v4, :cond_88

    if-eqz p7, :cond_88

    .line 4002
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v6, v7

    aput v8, v6, v4

    goto :goto_88

    .line 4011
    :cond_c8
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_100

    .line 4012
    const/16 v27, 0x2

    .line 4017
    :goto_cf
    new-instance v26, Lcom/android/launcher3/Workspace$13;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace$13;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4028
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/4 v4, 0x0

    aget v19, v5, v4

    .line 4029
    const/4 v4, 0x1

    aget v20, v5, v4

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aget v24, v6, v4

    const/4 v4, 0x1

    aget v25, v6, v4

    move-object/from16 v16, p3

    move/from16 v28, v14

    move-object/from16 v29, p0

    .line 4028
    invoke-virtual/range {v15 .. v29}, Lcom/android/launcher3/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    goto :goto_ad

    .line 4014
    :cond_100
    const/16 v27, 0x0

    goto :goto_cf
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1683
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1685
    :cond_b
    return-void
.end method

.method backgroundAlphaInterpolator(F)F
    .registers 5

    .prologue
    .line 1694
    const v0, 0x3dcccccd    # 0.1f

    .line 1695
    const v1, 0x3ecccccd    # 0.4f

    .line 1696
    cmpg-float v2, p1, v0

    if-gez v2, :cond_c

    .line 1697
    const/4 v0, 0x0

    .line 1701
    :goto_b
    return v0

    .line 1698
    :cond_c
    cmpl-float v2, p1, v1

    if-lez v2, :cond_13

    .line 1699
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_b

    .line 1701
    :cond_13
    sub-float v2, p1, v0

    sub-float v0, v1, v0

    div-float v0, v2, v0

    goto :goto_b
.end method

.method public beginDragShared(Landroid/view/View;Landroid/graphics/Point;Lcom/android/launcher3/DragSource;Z)V
    .registers 18

    .prologue
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_17:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    invoke-static/range {p4 .. p4}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v5

    .line 2435
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$before$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$7$8bcb6aa5(Landroid/view/View;Landroid/graphics/Point;Lcom/android/launcher3/DragSource;ZLorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 2436
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2439
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Workspace;->createDragOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2441
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onDragStarted(Landroid/view/View;)V

    .line 2443
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2444
    invoke-virtual {p0, p1, v4}, Lcom/android/launcher3/Workspace;->createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2446
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 2447
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 2449
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, p1, v3}, Lcom/android/launcher3/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v9

    .line 2450
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    int-to-float v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 2451
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    const/4 v6, 0x1

    aget v3, v3, v6

    int-to-float v3, v3

    int-to-float v6, v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    sub-float v0, v6, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    sub-float v0, v3, v0

    .line 2452
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 2451
    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2454
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    .line 2455
    const/4 v7, 0x0

    .line 2456
    const/4 v8, 0x0

    .line 2457
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_12d

    move-object v0, p1

    .line 2458
    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 2459
    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 2460
    const/4 v10, 0x0

    .line 2461
    sub-int v7, v5, v6

    div-int/lit8 v11, v7, 0x2

    .line 2462
    add-int v12, v11, v6

    .line 2463
    add-int/2addr v6, v10

    .line 2464
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->isLayoutHorizontal()Z

    move-result v7

    if-eqz v7, :cond_172

    .line 2469
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 2470
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2475
    :goto_c4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v3, v2

    .line 2478
    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v7, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2479
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v11, v10, v12, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move v2, v0

    .line 2486
    :cond_e1
    :goto_e1
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_eb

    move-object v0, p1

    .line 2487
    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 2488
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    .line 2491
    :cond_eb
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-nez v0, :cond_147

    .line 2492
    :cond_f9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2494
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2495
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2472
    :cond_11c
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    iget v2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v2

    div-int/lit8 v2, v5, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_c4

    .line 2480
    :cond_12d
    instance-of v0, p1, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_e1

    .line 2481
    iget v0, v6, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    .line 2482
    new-instance v8, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    add-int/2addr v0, v10

    invoke-direct {v8, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_e1

    .line 2498
    :cond_147
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_157

    .line 2499
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 2502
    :cond_157
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 2503
    sget v6, Lcom/android/launcher3/DragController;->DRAG_ACTION_MOVE:I

    move-object/from16 v4, p3

    move/from16 v10, p4

    .line 2502
    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZ)Lcom/android/launcher3/DragView;

    move-result-object v0

    .line 2504
    invoke-interface/range {p3 .. p3}, Lcom/android/launcher3/DragSource;->getIntrinsicIconScaleFactor()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DragView;->setIntrinsicIconScaleFactor(F)V

    .line 2505
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2506
    return-void

    :cond_172
    move v0, v2

    goto/16 :goto_c4
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Z)V
    .registers 5

    .prologue
    .line 2430
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Landroid/graphics/Point;Lcom/android/launcher3/DragSource;Z)V

    .line 2431
    return-void
.end method

.method public beginExternalDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;)V
    .registers 15

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 2509
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 2510
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 2513
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->onDragStarted(Landroid/view/View;)V

    .line 2516
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2517
    invoke-virtual {p0, p1, v4}, Lcom/android/launcher3/Workspace;->createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 2518
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2519
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2520
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2521
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2522
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2523
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v10, v10, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2522
    invoke-virtual {v3, v11, v5, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2524
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2527
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 2528
    int-to-float v3, v2

    int-to-float v5, v0

    div-float/2addr v3, v5

    .line 2529
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v5, p1, v6}, Lcom/android/launcher3/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v5

    mul-float v9, v5, v3

    .line 2530
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v10

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 2531
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v8

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2535
    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v7, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2536
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v10, v10, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2538
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-nez v0, :cond_c5

    .line 2539
    :cond_a2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2541
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2539
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2542
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2546
    :cond_c5
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 2547
    sget v6, Lcom/android/launcher3/DragController;->DRAG_ACTION_MOVE:I

    move-object v4, p2

    .line 2546
    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZ)Lcom/android/launcher3/DragView;

    move-result-object v0

    .line 2548
    invoke-interface {p2}, Lcom/android/launcher3/DragSource;->getIntrinsicIconScaleFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragView;->setIntrinsicIconScaleFactor(F)V

    .line 2551
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 2552
    return-void
.end method

.method public buildPageHardwareLayers()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2021
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2022
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2023
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    move v1, v2

    .line 2024
    :goto_10
    if-lt v1, v3, :cond_16

    .line 2029
    :cond_12
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2030
    return-void

    .line 2025
    :cond_16
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 2026
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->buildHardwareLayer()V

    .line 2024
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10
.end method

.method public changeDefaultPageForDirectv(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$changeDefaultPageForDirectv(Lcom/android/launcher3/Workspace;Z)V

    return-void
.end method

.method clearChildrenCache()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1944
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    move v1, v2

    .line 1945
    :goto_6
    if-lt v1, v3, :cond_9

    .line 1953
    return-void

    .line 1946
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1947
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1949
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isHardwareAccelerated()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1950
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1945
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method clearDropTargets()V
    .registers 3

    .prologue
    .line 4473
    const/4 v0, 0x0

    new-instance v1, Lcom/android/launcher3/Workspace$19;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Workspace$19;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 4483
    return-void
.end method

.method public commitExtraEmptyScreen()J
    .registers 7

    .prologue
    const-wide/16 v4, -0xc9

    .line 836
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 838
    const-string v0, "Launcher.Workspace"

    const-string v1, "    - workspace loading, skip"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 839
    const-wide/16 v0, -0x1

    .line 859
    :goto_14
    return-wide v0

    .line 842
    :cond_15
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    .line 843
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 844
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 845
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 847
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider;->generateNewScreenId()J

    move-result-wide v2

    .line 848
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v2, v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 849
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 853
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/PageIndicator;->updateMarker(ILcom/android/launcher3/PageIndicator$PageMarkerResources;)V

    .line 857
    :cond_56
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    move-wide v0, v2

    .line 859
    goto :goto_14
.end method

.method public computeScroll()V
    .registers 2

    .prologue
    .line 1675
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    .line 1676
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1677
    return-void
.end method

.method public createCustomContentContainer()V
    .registers 7

    .prologue
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 591
    :try_start_6
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040050

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 590
    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 592
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->disableDragTarget()V

    .line 594
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v4, -0x12d

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 595
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const-wide/16 v4, -0x12d

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 598
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 600
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->addFullScreenPage(Landroid/view/View;)V

    .line 603
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOriginalDefaultPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->mDefaultPage:I

    .line 606
    iget v0, p0, Lcom/android/launcher3/Workspace;->mRestorePage:I

    const/16 v2, -0x3e9

    if-eq v0, v2, :cond_57

    .line 607
    iget v0, p0, Lcom/android/launcher3/Workspace;->mRestorePage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->mRestorePage:I
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_48} :catch_61

    .line 611
    :goto_48
    :try_start_48
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->aspectOf()Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$3$157198f5(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4f} :catch_6a

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$2$267eecb1(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 609
    :cond_57
    :try_start_57
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_60} :catch_61

    goto :goto_48

    .line 611
    :catch_61
    move-exception v0

    :try_start_62
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->aspectOf()Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$3$157198f5(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_6a} :catch_6a

    :catch_6a
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$2$267eecb1(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeAspect;->aspectOf()Lcom/lge/launcher3/badge/BadgeAspect;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->createDragBitmap_aroundBody11$advice(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/lge/launcher3/badge/BadgeAspect;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DragView;Ljava/lang/Runnable;)Z
    .registers 26

    .prologue
    .line 2711
    invoke-static/range {p4 .. p4}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F

    move-result v2

    cmpl-float v2, p6, v2

    if-lez v2, :cond_a

    const/4 v2, 0x0

    .line 2761
    :goto_9
    return v2

    .line 2712
    :cond_a
    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p5, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    .line 2714
    const/4 v2, 0x0

    .line 2715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v3, :cond_44

    .line 2716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 2717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    const/4 v4, 0x0

    aget v4, p5, v4

    if-ne v3, v4, :cond_50

    .line 2718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    const/4 v4, 0x1

    aget v4, p5, v4

    if-ne v3, v4, :cond_50

    move-object/from16 v0, p4

    if-ne v2, v0, :cond_50

    .line 2717
    const/4 v2, 0x1

    .line 2721
    :cond_44
    :goto_44
    if-eqz v12, :cond_4e

    if-nez v2, :cond_4e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v2, :cond_52

    :cond_4e
    const/4 v2, 0x0

    goto :goto_9

    .line 2717
    :cond_50
    const/4 v2, 0x0

    goto :goto_44

    .line 2722
    :cond_52
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2723
    if-nez p5, :cond_de

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v6, v2, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:J

    .line 2725
    :goto_5f
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/ShortcutInfo;

    .line 2726
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/ShortcutInfo;

    .line 2728
    if-eqz v2, :cond_f1

    if-eqz v3, :cond_f1

    .line 2729
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/ShortcutInfo;

    .line 2730
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/launcher3/ShortcutInfo;

    .line 2732
    if-nez p7, :cond_96

    .line 2733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 2734
    if-eqz v2, :cond_96

    .line 2735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 2739
    :cond_96
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 2740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lcom/android/launcher3/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v14

    .line 2741
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 2744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    aget v8, p5, v3

    const/4 v3, 0x1

    aget v9, p5, v3

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/Launcher;->addFolder(Lcom/android/launcher3/CellLayout;JJII)Lcom/android/launcher3/FolderIcon;

    move-result-object v2

    .line 2745
    const/4 v3, -0x1

    iput v3, v11, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 2746
    const/4 v3, -0x1

    iput v3, v11, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 2747
    const/4 v3, -0x1

    iput v3, v10, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 2748
    const/4 v3, -0x1

    iput v3, v10, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 2751
    if-eqz p8, :cond_e8

    const/4 v3, 0x1

    .line 2752
    :goto_cd
    if-eqz v3, :cond_ea

    move-object v3, v11

    move-object v4, v12

    move-object v5, v10

    move-object/from16 v6, p8

    move-object v7, v13

    move v8, v14

    move-object/from16 v9, p9

    .line 2753
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/FolderIcon;->performCreateAnimation(Lcom/android/launcher3/ShortcutInfo;Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    .line 2759
    :goto_db
    const/4 v2, 0x1

    goto/16 :goto_9

    .line 2723
    :cond_de
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v6

    goto/16 :goto_5f

    .line 2751
    :cond_e8
    const/4 v3, 0x0

    goto :goto_cd

    .line 2756
    :cond_ea
    invoke-virtual {v2, v11}, Lcom/android/launcher3/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 2757
    invoke-virtual {v2, v10}, Lcom/android/launcher3/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    goto :goto_db

    .line 2761
    :cond_f1
    const/4 v2, 0x0

    goto/16 :goto_9
.end method

.method public createWidgetBitmap(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 13

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3915
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, v8}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/ItemInfo;Z)[I

    move-result-object v2

    .line 3917
    aget v0, v2, v8

    if-lez v0, :cond_17

    aget v0, v2, v9

    if-gtz v0, :cond_2d

    .line 3918
    :cond_17
    const-string v0, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createWidgetBitmap(widgetInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 3936
    :goto_2c
    return-object v0

    .line 3922
    :cond_2d
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    .line 3923
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3925
    aget v0, v2, v8

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3926
    aget v0, v2, v9

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 3927
    aget v0, v2, v8

    aget v6, v2, v9

    .line 3928
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3927
    invoke-static {v0, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3929
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3931
    invoke-virtual {p2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 3932
    aget v4, v2, v8

    aget v2, v2, v9

    invoke-virtual {p2, v8, v8, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 3933
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3934
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3935
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c
.end method

.method public dampedOverScroll(F)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$dampedOverScroll(Lcom/android/launcher3/Workspace;F)V

    return-void
.end method

.method public deferCompleteDropAfterUninstallActivity()V
    .registers 2

    .prologue
    .line 4158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferDropAfterUninstall:Z

    .line 4159
    return-void
.end method

.method public deferRemoveExtraEmptyScreen()V
    .registers 2

    .prologue
    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 408
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->determineScrollingStart_aroundBody3$advice(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;F)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$determineScrollingStart(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;F)V

    return-void
.end method

.method public disableLayoutTransitions()V
    .registers 2

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 475
    return-void
.end method

.method public disableShortcutsByPackageName(Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 4487
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4488
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4490
    const/4 v1, 0x1

    new-instance v2, Lcom/android/launcher3/Workspace$20;

    invoke-direct {v2, p0, p2, v0, p3}, Lcom/android/launcher3/Workspace$20;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/compat/UserHandleCompat;Ljava/util/HashSet;I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 4511
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_Workspace$dispatchDragEvent(Lcom/android/launcher3/Workspace;Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
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
    .line 4274
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 4275
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1104
    :cond_c
    const/4 v0, 0x0

    .line 1106
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_d
.end method

.method public dragEnterAccessiblity(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$dragEnterAccessiblity(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$drawChild(Lcom/android/launcher3/Workspace;Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public enableAccessibleDrag(Z)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1723
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_26

    .line 1728
    if-eqz p1, :cond_33

    .line 1730
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1735
    :goto_f
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSearchBar()Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/SearchDropTargetBar;->enableAccessibleDrag(Z)V

    .line 1736
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 1737
    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/CellLayout;->enableAccessibleDrag(ZI)V

    .line 1738
    return-void

    .line 1724
    :cond_26
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1725
    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/CellLayout;->enableAccessibleDrag(ZI)V

    .line 1723
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1733
    :cond_33
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f
.end method

.method enableChildrenCache(II)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 1925
    if-le p1, p2, :cond_26

    .line 1931
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    .line 1933
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1934
    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v0

    .line 1936
    :goto_13
    if-le v1, v2, :cond_16

    .line 1941
    return-void

    .line 1937
    :cond_16
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1938
    invoke-virtual {v0, v3}, Lcom/android/launcher3/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1939
    invoke-virtual {v0, v3}, Lcom/android/launcher3/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1936
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_26
    move v4, p2

    move p2, p1

    move p1, v4

    goto :goto_3
.end method

.method public enableLayoutTransitions()V
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 471
    return-void
.end method

.method public estimateItemPosition(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;IIII)Landroid/graphics/Rect;
    .registers 13

    .prologue
    .line 378
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    .line 379
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 380
    return-object v5
.end method

.method public estimateItemSize(Lcom/android/launcher3/ItemInfo;Z)[I
    .registers 12

    .prologue
    const v1, 0x7fffffff

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 357
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 358
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_45

    .line 360
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 361
    iget v5, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v6, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    aput v1, v7, v3

    .line 363
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    aput v0, v7, v8

    .line 364
    if-eqz p2, :cond_43

    .line 365
    aget v0, v7, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, v7, v3

    .line 366
    aget v0, v7, v8

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, v7, v8

    :cond_43
    move-object v0, v7

    .line 372
    :goto_44
    return-object v0

    .line 370
    :cond_45
    aput v1, v7, v3

    .line 371
    aput v1, v7, v8

    move-object v0, v7

    .line 372
    goto :goto_44
.end method

.method public exitSpringLoadedDragModeOnDrop(Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Ljava/lang/Runnable;Z)V
    .registers 7

    .prologue
    .line 1
    invoke-static/range {p0 .. p6}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$exitSpringLoadedDragModeOnDrop(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public exitWidgetResizeMode()V
    .registers 2

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    .line 2105
    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->clearAllResizeFrames()V

    .line 2106
    return-void
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 4823
    const-string v0, "container"

    const-string v1, "homescreen"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4824
    const-string v0, "container_page"

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4825
    return-void
.end method

.method public findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I
    .registers 13

    .prologue
    .line 4077
    invoke-virtual {p5}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4078
    invoke-static {p5, p1, p2, p6}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$findInsertArea(Lcom/android/launcher3/CellLayout;II[I)[I

    move-result-object v0

    .line 4080
    :goto_a
    return-object v0

    :cond_b
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    goto :goto_a
.end method

.method getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutAndWidgetContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4414
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4415
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    .line 4416
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-lt v1, v3, :cond_27

    .line 4419
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 4420
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4422
    :cond_26
    return-object v2

    .line 4417
    :cond_27
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4416
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b
.end method

.method public getCurrentDropLayout()Lcom/android/launcher3/CellLayout;
    .registers 2

    .prologue
    .line 4053
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_24:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/launcher3/Workspace;->getCurrentPageDescription_aroundBody25$advice(Lcom/android/launcher3/Workspace;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPageOffsetFromCustomContent()I
    .registers 3

    .prologue
    .line 4067
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCurrentWidgetSpanX(Lcom/android/launcher3/ItemInfo;)I
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getCurrentWidgetSpanX(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;)I

    move-result v0

    return v0
.end method

.method public getCurrentWidgetSpanY(Lcom/android/launcher3/ItemInfo;)I
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getCurrentWidgetSpanY(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;)I

    move-result v0

    return v0
.end method

.method protected getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;
    .registers 2

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    return-object v0
.end method

.method public getDescendantFocusability()I
    .registers 2

    .prologue
    .line 1902
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1903
    const/high16 v0, 0x60000

    .line 1905
    :goto_8
    return v0

    :cond_9
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getDescendantFocusability()I

    move-result v0

    goto :goto_8
.end method

.method public getDragInfo()Lcom/android/launcher3/CellLayout$CellInfo;
    .registers 2

    .prologue
    .line 4063
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return-object v0
.end method

.method public getDropToLayoutForNotFoundCell(Lcom/android/launcher3/DragSource;)Lcom/android/launcher3/CellLayout;
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getDropToLayoutForNotFoundCell(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/DragSource;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method protected getEdgeVerticalPostion([I)V
    .registers 5

    .prologue
    .line 1431
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1432
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    aput v2, p1, v1

    .line 1433
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    aput v0, p1, v1

    .line 1434
    return-void
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher3/Folder;
    .registers 3

    .prologue
    .line 4426
    new-instance v0, Lcom/android/launcher3/Workspace$15;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$15;-><init>(Lcom/android/launcher3/Workspace;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    return-object v0
.end method

.method protected getFreeScrollPageRange([I)V
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_13:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->getFreeScrollPageRange_aroundBody7$advice(Lcom/android/launcher3/Workspace;[ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;[ILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .registers 3

    .prologue
    .line 3711
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 3712
    return-void
.end method

.method public getIdForScreen(Lcom/android/launcher3/CellLayout;)J
    .registers 4

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LongArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 869
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 870
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v0

    .line 872
    :goto_f
    return-wide v0

    :cond_10
    const-wide/16 v0, -0x1

    goto :goto_f
.end method

.method public getIntrinsicIconScaleFactor()F
    .registers 2

    .prologue
    .line 4237
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getLocationInDragLayer([I)V
    .registers 3

    .prologue
    .line 4818
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 4819
    return-void
.end method

.method public getNumScreensExcludingEmptyAndCustom()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getNumScreensExcludingEmptyAndCustom(Lcom/android/launcher3/Workspace;)I

    move-result v0

    return v0
.end method

.method public getOpenFolder()Lcom/android/launcher3/Folder;
    .registers 6

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    .line 513
    invoke-virtual {v2}, Lcom/android/launcher3/DragLayer;->getChildCount()I

    move-result v3

    .line 514
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-lt v1, v3, :cond_10

    .line 522
    const/4 v0, 0x0

    :cond_f
    return-object v0

    .line 515
    :cond_10
    invoke-virtual {v2, v1}, Lcom/android/launcher3/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 516
    instance-of v4, v0, Lcom/android/launcher3/Folder;

    if-eqz v4, :cond_22

    .line 517
    check-cast v0, Lcom/android/launcher3/Folder;

    .line 518
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/launcher3/FolderInfo;->opened:Z

    if-nez v4, :cond_f

    .line 514
    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c
.end method

.method getOverviewModeTranslationY()I
    .registers 6

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 2154
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getOverviewModeButtonBarRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2156
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewportHeight()I

    move-result v1

    .line 2157
    iget v2, p0, Lcom/android/launcher3/Workspace;->mOverviewModeShrinkFactor:F

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNormalChildHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 2158
    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    .line 2159
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, v1, v0

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 2162
    neg-int v1, v3

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getPageAreaRelativeToDragLayer(Landroid/graphics/Rect;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3043
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 3044
    if-nez v0, :cond_f

    .line 3059
    :goto_e
    return-void

    .line 3047
    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 3052
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewportOffsetX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v5

    .line 3053
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getTop()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, v2, v6

    .line 3055
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 3056
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v6

    .line 3057
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 3058
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v5

    float-to-int v0, v0

    .line 3056
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_e
.end method

.method public getPageIndexForScreenId(J)I
    .registers 4

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getPageIndicatorClickListener()Landroid/view/View$OnClickListener;
    .registers 3

    .prologue
    .line 1813
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1812
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1814
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1815
    const/4 v0, 0x0

    .line 1823
    :goto_13
    return-object v0

    .line 1817
    :cond_14
    new-instance v0, Lcom/android/launcher3/Workspace$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$6;-><init>(Lcom/android/launcher3/Workspace;)V

    goto :goto_13
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4799
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageIndicatorMarker(I)Lcom/android/launcher3/PageIndicator$PageMarkerResources;
    .registers 6

    .prologue
    .line 4786
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    .line 4787
    const-wide/16 v2, -0xc9

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 4788
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4789
    const/4 v1, 0x1

    if-le v0, v1, :cond_24

    .line 4790
    new-instance v0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    const v1, 0x7f02006b

    .line 4791
    const v2, 0x7f02006a

    .line 4790
    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/PageIndicator$PageMarkerResources;-><init>(II)V

    .line 4795
    :goto_23
    return-object v0

    :cond_24
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    move-result-object v0

    goto :goto_23
.end method

.method protected getPageShiftMatrix()Landroid/graphics/Matrix;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1412
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1d

    .line 1415
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1416
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    neg-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1417
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1419
    :goto_1c
    return-object v0

    :cond_1d
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getPageShiftMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_1c
.end method

.method public getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;
    .registers 6

    .prologue
    .line 4383
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 4384
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 4389
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 4384
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 4385
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_8

    goto :goto_f
.end method

.method public getScreenIdForPageIndex(I)J
    .registers 4

    .prologue
    .line 880
    if-ltz p1, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 881
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 883
    :goto_16
    return-wide v0

    :cond_17
    const-wide/16 v0, -0x1

    goto :goto_16
.end method

.method public getScreenOrder()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScreenWithId(J)Lcom/android/launcher3/CellLayout;
    .registers 4

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 864
    return-object v0
.end method

.method public getScrollModePages([I)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getScrollModePages(Lcom/android/launcher3/Workspace;[I)V

    return-void
.end method

.method public getSpringLoadedShrinkFactor()F
    .registers 2

    .prologue
    .line 4887
    iget v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedShrinkFactor:F

    return v0
.end method

.method public getState()Lcom/android/launcher3/Workspace$State;
    .registers 2

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    return-object v0
.end method

.method protected getUnboundedScrollX()I
    .registers 2

    .prologue
    .line 1301
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isScrollingOverlay()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1302
    iget v0, p0, Lcom/android/launcher3/Workspace;->mUnboundedScrollX:I

    .line 1304
    :goto_8
    return v0

    :cond_9
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v0

    goto :goto_8
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 3

    .prologue
    .line 4437
    new-instance v0, Lcom/android/launcher3/Workspace$16;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$16;-><init>(Lcom/android/launcher3/Workspace;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewLocationRelativeToSelf(Landroid/view/View;[I)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3062
    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->getLocationInWindow([I)V

    .line 3063
    aget v0, p2, v4

    .line 3064
    aget v1, p2, v5

    .line 3066
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3067
    aget v2, p2, v4

    .line 3068
    aget v3, p2, v5

    .line 3070
    sub-int v0, v2, v0

    aput v0, p2, v4

    .line 3071
    sub-int v0, v3, v1

    aput v0, p2, v5

    .line 3072
    return-void
.end method

.method public getWallpaperOffset()Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getWallpaperOffset(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetForAppWidgetId(I)Lcom/android/launcher3/LauncherAppWidgetHostView;
    .registers 3

    .prologue
    .line 4447
    new-instance v0, Lcom/android/launcher3/Workspace$17;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$17;-><init>(Lcom/android/launcher3/Workspace;I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    return-object v0
.end method

.method getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4396
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4397
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    .line 4398
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-lt v1, v3, :cond_23

    .line 4401
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 4402
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4404
    :cond_22
    return-object v2

    .line 4399
    :cond_23
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4398
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b
.end method

.method public hasCustomContent()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1741
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x12d

    cmp-long v0, v2, v4

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c
.end method

.method public hasDirectvWidgetInCellLayout()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$hasDirectvWidgetInCellLayout(Lcom/android/launcher3/Workspace;)Z

    move-result v0

    return v0
.end method

.method public hasExtraEmptyScreen()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 830
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    .line 831
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v2

    sub-int/2addr v1, v2

    .line 832
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v4, -0xc9

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v2

    if-eqz v2, :cond_17

    if-le v1, v0, :cond_17

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method hideCustomContentIfNecessary()V
    .registers 5

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v0, v1, :cond_24

    const/4 v0, 0x1

    .line 2275
    :goto_7
    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2276
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    .line 2277
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v2, -0x12d

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setVisibility(I)V

    .line 2278
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    .line 2280
    :cond_23
    return-void

    .line 2274
    :cond_24
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public indexOfChildExcludingEmptyAndCustom(Lcom/android/launcher3/CellLayout;)I
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$indexOfChildExcludingEmptyAndCustom(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;)I

    move-result v0

    return v0
.end method

.method public indexOfExtraEmptyScreen()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$indexOfExtraEmptyScreen(Lcom/android/launcher3/Workspace;)I

    move-result v0

    return v0
.end method

.method public initScaleGestureDetector()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$initScaleGestureDetector(Lcom/android/launcher3/Workspace;)V

    return-void
.end method

.method protected initWorkspace()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 435
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDefaultPage:I

    sget-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p0, p0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    :try_start_d
    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_f} :catch_64

    nop

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$7$ebce283(Lorg/aspectj/lang/JoinPoint;)V

    nop

    .line 436
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    .line 438
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 439
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->setWillNotDraw(Z)V

    .line 440
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->setClipChildren(Z)V

    .line 441
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->setClipToPadding(Z)V

    .line 442
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 444
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverviewModeShrinkFactor:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setMinScale(F)V

    .line 445
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->setupLayoutTransition()V

    .line 447
    new-instance v0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    .line 448
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->setWallpaperDimension()V

    .line 456
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setEdgeGlowColor(I)V

    .line 457
    return-void

    .line 435
    :catch_64
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$7$ebce283(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public insertNewWorkspaceScreen(J)J
    .registers 6

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertNewWorkspaceScreen(JI)J
    .registers 9

    .prologue
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1, p2}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 565
    :try_start_e
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 566
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Screen id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_31} :catch_31

    .line 586
    :catch_31
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, v1}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$2$ee225639(JILorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 571
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 572
    const v2, 0x7f040050

    const/4 v3, 0x0

    .line 571
    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 574
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 575
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setSoundEffectsEnabled(Z)V

    .line 577
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 578
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 579
    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/Workspace;->addView(Landroid/view/View;I)V

    .line 582
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v2

    .line 583
    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 584
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/CellLayout;->enableAccessibleDrag(ZI)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_7e} :catch_31

    .line 586
    :cond_7e
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$2$ee225639(JILorg/aspectj/lang/JoinPoint;)V

    return-wide p1
.end method

.method public insertNewWorkspaceScreenBeforeEmptyScreen(J)J
    .registers 8

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0xc9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 554
    if-gez v0, :cond_14

    .line 555
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 557
    :cond_14
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public interceptMultiTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$interceptMultiTouchEvent(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isDropEnabled()Z
    .registers 2

    .prologue
    .line 4266
    const/4 v0, 0x1

    return v0
.end method

.method public isFinishedSwitchingState()Z
    .registers 3

    .prologue
    .line 1093
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public isInOverviewMode()Z
    .registers 3

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isOnOrMovingToCustomContent()Z
    .registers 2

    .prologue
    .line 1749
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isPointInSelfOverHotseat(IILandroid/graphics/Rect;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3286
    if-nez p3, :cond_9

    .line 3287
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3289
    :cond_9
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempPt:[I

    aput p1, v2, v1

    .line 3290
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempPt:[I

    aput p2, v2, v0

    .line 3291
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempPt:[I

    invoke-virtual {v2, p0, v3, v0}, Lcom/android/launcher3/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    .line 3293
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 3294
    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->getHotseatRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 3295
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempPt:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTempPt:[I

    aget v4, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 3298
    :goto_34
    return v0

    :cond_35
    move v0, v1

    goto :goto_34
.end method

.method public isSwitchingState()Z
    .registers 2

    .prologue
    .line 1087
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method public isTouchActive()Z
    .registers 2

    .prologue
    .line 526
    iget v0, p0, Lcom/android/launcher3/Workspace;->mTouchState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public manageFolderFeedback(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFLandroid/view/View;Z)V
    .registers 15

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 3553
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    .line 3555
    iget v1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v1, :cond_38

    if-eqz v0, :cond_38

    .line 3556
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v1

    if-nez v1, :cond_38

    .line 3559
    new-instance v0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;

    aget v1, p3, v5

    aget v2, p3, v6

    .line 3558
    invoke-direct {v0, p0, p2, v1, v2}, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;II)V

    .line 3561
    if-nez p6, :cond_32

    .line 3562
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 3563
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 3599
    :cond_31
    :goto_31
    return-void

    .line 3565
    :cond_32
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    goto :goto_31

    .line 3571
    :cond_38
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v1

    .line 3573
    if-eqz v1, :cond_90

    iget v2, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v2, :cond_90

    .line 3574
    check-cast p5, Lcom/android/launcher3/FolderIcon;

    iput-object p5, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/FolderIcon;

    .line 3575
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/FolderIcon;->onDragEnter(Ljava/lang/Object;)V

    .line 3576
    if-eqz p2, :cond_50

    .line 3577
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    .line 3579
    :cond_50
    invoke-virtual {p0, v7}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 3580
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3581
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3580
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 3582
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3584
    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 3585
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/FolderIcon;->getFolderInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3586
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f001c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3587
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_31

    .line 3592
    :cond_90
    iget v2, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v2, v7, :cond_99

    if-nez v1, :cond_99

    .line 3593
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 3595
    :cond_99
    iget v1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v1, v6, :cond_31

    if-nez v0, :cond_31

    .line 3596
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    goto :goto_31
.end method

.method public mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V
    .registers 16

    .prologue
    const/4 v5, 0x0

    .line 4643
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v8

    .line 4644
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v7, v5

    .line 4645
    :goto_a
    if-lt v7, v9, :cond_d

    .line 4677
    :goto_c
    return-void

    .line 4646
    :cond_d
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 4648
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v10

    move v6, v5

    .line 4649
    :goto_18
    if-lt v6, v10, :cond_1e

    .line 4645
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_a

    .line 4650
    :cond_1e
    invoke-virtual {v0, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4651
    if-nez v2, :cond_28

    .line 4649
    :cond_24
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_18

    .line 4654
    :cond_28
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 4655
    if-eqz p1, :cond_63

    instance-of v3, v1, Lcom/android/launcher3/FolderInfo;

    if-eqz v3, :cond_63

    instance-of v3, v2, Lcom/android/launcher3/FolderIcon;

    if-eqz v3, :cond_63

    move-object v1, v2

    .line 4656
    check-cast v1, Lcom/android/launcher3/FolderIcon;

    .line 4657
    invoke-virtual {v1}, Lcom/android/launcher3/FolderIcon;->getFolder()Lcom/android/launcher3/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v11

    .line 4659
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v4, v5

    .line 4660
    :goto_48
    if-ge v4, v12, :cond_24

    .line 4661
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4662
    if-nez v2, :cond_56

    .line 4660
    :cond_52
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_48

    .line 4665
    :cond_56
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 4666
    invoke-interface {p2, v3, v2, v1}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_c

    .line 4671
    :cond_63
    const/4 v3, 0x0

    invoke-interface {p2, v1, v2, v3}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_c
.end method

.method mapPointFromChildToSelf(Landroid/view/View;[F)V
    .registers 6

    .prologue
    .line 3318
    const/4 v0, 0x0

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 3319
    const/4 v0, 0x1

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 3320
    return-void
.end method

.method public mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3281
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 3282
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 3283
    return-void
.end method

.method mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3302
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempPt:[I

    aget v1, p2, v4

    float-to-int v1, v1

    aput v1, v0, v4

    .line 3303
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempPt:[I

    aget v1, p2, v3

    float-to-int v1, v1

    aput v1, v0, v3

    .line 3304
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempPt:[I

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/launcher3/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    .line 3305
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempPt:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/DragLayer;->mapCoordInSelfToDescendent(Landroid/view/View;[I)F

    .line 3307
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempPt:[I

    aget v0, v0, v4

    int-to-float v0, v0

    aput v0, p2, v4

    .line 3308
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempPt:[I

    aget v0, v0, v3

    int-to-float v0, v0

    aput v0, p2, v3

    .line 3309
    return-void
.end method

.method moveToCustomContentScreen(Z)V
    .registers 4

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4770
    const-wide/16 v0, -0x12d

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    .line 4771
    if-eqz p1, :cond_1e

    .line 4772
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 4776
    :goto_11
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4777
    if-eqz v0, :cond_1a

    .line 4778
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4781
    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->exitWidgetResizeMode()V

    .line 4782
    return-void

    .line 4774
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    goto :goto_11
.end method

.method public moveToDefaultScreen(Z)V
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_23:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v3

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->moveToDefaultScreen_aroundBody23$advice(Lcom/android/launcher3/Workspace;ZLorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Ljava/lang/Boolean;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method protected notifyPageSwitchListener()V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_10:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 1438
    :try_start_6
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener()V

    .line 1440
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowing:Z

    if-nez v0, :cond_34

    .line 1441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowing:Z

    .line 1442
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_2c

    .line 1443
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onShow(Z)V

    .line 1444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowTime:J
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_2c} :catch_51

    .line 1452
    :cond_2c
    :goto_2c
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$9$85665533(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 1446
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowing:Z

    if-eqz v0, :cond_2c

    .line 1447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowing:Z

    .line 1448
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_2c

    .line 1449
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onHide()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_50} :catch_51

    goto :goto_2c

    .line 1452
    :catch_51
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$9$85665533(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public numCustomPages()I
    .registers 2

    .prologue
    .line 1745
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public numExtraEmptyScreen()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$numExtraEmptyScreen(Lcom/android/launcher3/Workspace;)I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_11:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 1834
    :try_start_6
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onAttachedToWindow()V

    .line 1835
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1836
    const-string v0, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAttachedToWindow() - mDragController = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeScroll()V

    .line 1838
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/DragController;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v0, :cond_37

    .line 1839
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/DragController;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DragController;->setWindowToken(Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_37} :catch_46

    .line 1841
    :cond_37
    :try_start_37
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$18$e9542a77(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3e} :catch_4f

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$3$5cabaaea(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_46
    move-exception v0

    :try_start_47
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$18$e9542a77(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4f} :catch_4f

    :catch_4f
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$3$5cabaaea(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 7

    .prologue
    sget-object v1, Lcom/android/launcher3/Workspace;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    .line 479
    :try_start_6
    instance-of v1, p2, Lcom/android/launcher3/CellLayout;

    if-nez v1, :cond_1b

    .line 480
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_12} :catch_12

    .line 490
    :catch_12
    move-exception v1

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$12$b8c65bd8(Landroid/view/View;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;)V

    throw v1

    .line 482
    :cond_1b
    :try_start_1b
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/CellLayout;

    move-object v1, v0

    .line 483
    invoke-virtual {v1, p0}, Lcom/android/launcher3/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 484
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/CellLayout;->setClickable(Z)V

    .line 485
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 486
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v3, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-eq v1, v3, :cond_37

    .line 487
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mChildAddedOrRemoved:Z

    .line 489
    :cond_37
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_3a} :catch_12

    .line 490
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v2}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$12$b8c65bd8(Landroid/view/View;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-eq v0, v1, :cond_d

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildAddedOrRemoved:Z

    .line 497
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 498
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 1844
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onDetachedFromWindow()V

    .line 1845
    const-string v0, "Launcher.Workspace"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1847
    return-void
.end method

.method public onDragCancel()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_Workspace$onDragCancel(Lcom/android/launcher3/Workspace;)V

    return-void
.end method

.method public onDragEnd()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 412
    sget-boolean v0, Lcom/android/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz v0, :cond_b

    .line 413
    const-string v0, "onDragEnd"

    invoke-direct {p0, v0, v2, v2}, Lcom/android/launcher3/Workspace;->enfoceDragParity(Ljava/lang/String;II)V

    .line 416
    :cond_b
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    if-nez v0, :cond_17

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_31

    move v0, v1

    :goto_14
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(ZZ)V

    .line 420
    :cond_17
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsDragOccuring:Z

    .line 421
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 422
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 425
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 428
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->onInteractionEnd()V

    .line 429
    return-void

    :cond_31
    move v0, v2

    .line 417
    goto :goto_14
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 6

    .prologue
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_20:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 3076
    :try_start_6
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mReCellPositionAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 3077
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPreviousTargetCell:[I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 3078
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPreviousTargetCell:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 3079
    sget-boolean v0, Lcom/android/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz v0, :cond_22

    .line 3080
    const-string v0, "onDragEnter"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/Workspace;->enfoceDragParity(Ljava/lang/String;II)V

    .line 3083
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 3084
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 3086
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 3087
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentDropLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 3088
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 3089
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 3091
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_44

    .line 3092
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->showPageHints()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_44} :catch_4c

    .line 3094
    :cond_44
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$9$a21c9555(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_4c
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$9$a21c9555(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_21:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 3137
    :try_start_7
    sget-boolean v0, Lcom/android/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz v0, :cond_12

    .line 3138
    const-string v0, "onDragExit"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/Workspace;->enfoceDragParity(Ljava/lang/String;II)V

    .line 3143
    :cond_12
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_5e

    .line 3144
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 3147
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 3155
    :goto_28
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v0, v4, :cond_63

    .line 3156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 3162
    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onResetScrollArea()V

    .line 3163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 3164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 3166
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/SpringLoadedDragController;->cancel()V

    .line 3168
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->hidePageHints()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_48} :catch_55

    .line 3169
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$10$5bc5b032(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 3149
    :cond_50
    :try_start_50
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_54} :catch_55

    goto :goto_28

    .line 3169
    :catch_55
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$10$5bc5b032(Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 3152
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    goto :goto_28

    .line 3157
    :cond_63
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2f

    .line 3158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_6b} :catch_55

    goto :goto_2f
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 19

    .prologue
    .line 3397
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/Workspace;->mInScrollArea:Z

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v2

    if-nez v2, :cond_d

    .line 3549
    :cond_c
    :goto_c
    return-void

    .line 3399
    :cond_d
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3400
    const/4 v3, 0x0

    .line 3401
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Lcom/android/launcher3/ItemInfo;

    .line 3402
    if-nez v14, :cond_2a

    .line 3403
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3404
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "DragObject has null info"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3410
    :cond_2a
    iget v2, v14, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ltz v2, :cond_32

    iget v2, v14, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-gez v2, :cond_3a

    :cond_32
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Improper spans found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3411
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 3413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v2, :cond_2b6

    const/4 v2, 0x0

    move-object/from16 v16, v2

    .line 3415
    :goto_51
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v2

    if-eqz v2, :cond_2d0

    .line 3416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_396

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/Workspace;->isExternalDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v2

    if-nez v2, :cond_396

    .line 3417
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v4}, Lcom/android/launcher3/Workspace;->isPointInSelfOverHotseat(IILandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_396

    .line 3418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    move-object v2, v3

    .line 3421
    :goto_84
    if-nez v2, :cond_9b

    .line 3422
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/launcher3/Workspace;->findMatchingPageForDragOver(Lcom/android/launcher3/DragView;FFZ)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 3424
    :cond_9b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eq v2, v3, :cond_df

    .line 3425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v3, :cond_b9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 3426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    .line 3428
    :cond_b9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 3429
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 3431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v4, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-ne v3, v4, :cond_2c0

    const/4 v3, 0x1

    .line 3432
    :goto_cc
    if-eqz v3, :cond_df

    .line 3433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2c3

    .line 3434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/SpringLoadedDragController;

    invoke-virtual {v2}, Lcom/android/launcher3/SpringLoadedDragController;->cancel()V

    .line 3457
    :cond_df
    :goto_df
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_c

    .line 3459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_314

    .line 3460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V

    .line 3465
    :goto_104
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, Lcom/android/launcher3/ItemInfo;

    .line 3467
    iget v5, v14, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3468
    iget v6, v14, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3469
    iget v2, v14, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    if-lez v2, :cond_11b

    iget v2, v14, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    if-lez v2, :cond_11b

    .line 3470
    iget v5, v14, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 3471
    iget v6, v14, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 3474
    :cond_11b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v3, v2

    .line 3475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v4, v2

    .line 3476
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    .line 3474
    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 3478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 3480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    .line 3481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mPreviousTargetCell:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    if-ne v4, v7, :cond_17e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mPreviousTargetCell:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    if-eq v4, v7, :cond_1cc

    .line 3482
    :cond_17e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mReCellPositionAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 3483
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mPreviousTargetCell:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1b0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mPreviousTargetCell:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1b0

    .line 3484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mReCellPositionAlarm:Lcom/android/launcher3/Alarm;

    new-instance v7, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 3485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mReCellPositionAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v8, 0x96

    invoke-virtual {v4, v8, v9}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 3487
    :cond_1b0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mPreviousTargetCell:[I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    aput v8, v4, v7

    .line 3488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mPreviousTargetCell:[I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    aput v8, v4, v7

    .line 3490
    :cond_1cc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 3491
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3490
    invoke-virtual {v4, v7, v8, v9}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v11

    .line 3493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    .line 3494
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    .line 3493
    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    .line 3496
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3497
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/launcher3/DropTarget$DragObject;->accessibleDrag:Z

    move-object/from16 v7, p0

    move-object v8, v15

    .line 3496
    invoke-virtual/range {v7 .. v13}, Lcom/android/launcher3/Workspace;->manageFolderFeedback(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFLandroid/view/View;Z)V

    .line 3499
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 3500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v4, v4, v8

    float-to-int v8, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v4, v4, v9

    float-to-int v9, v4

    iget v10, v14, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3501
    iget v11, v14, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v12, v16

    .line 3499
    invoke-virtual/range {v7 .. v13}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    .line 3506
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getCurrentWidgetSpanX(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;)I

    move-result v10

    .line 3507
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getCurrentWidgetSpanY(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;)I

    move-result v11

    .line 3508
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 3509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v4, v4, v8

    float-to-int v8, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v4, v4, v9

    float-to-int v9, v4

    .line 3510
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v12, v16

    .line 3508
    invoke-virtual/range {v7 .. v13}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v15

    .line 3513
    if-nez v15, :cond_324

    .line 3515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 3516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v2, v2, v4

    float-to-int v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v7, v2

    .line 3517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v8, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v9, v2, v4

    const/4 v12, 0x0

    .line 3518
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v14

    move-object/from16 v4, v16

    .line 3515
    invoke-virtual/range {v3 .. v14}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 3542
    :cond_297
    :goto_297
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2a7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2a7

    .line 3543
    if-nez v15, :cond_c

    .line 3544
    :cond_2a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_c

    .line 3545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    goto/16 :goto_c

    .line 3413
    :cond_2b6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v16, v2

    goto/16 :goto_51

    .line 3431
    :cond_2c0
    const/4 v3, 0x0

    goto/16 :goto_cc

    .line 3436
    :cond_2c3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/SpringLoadedDragController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/SpringLoadedDragController;->setAlarm(Lcom/android/launcher3/CellLayout;)V

    goto/16 :goto_df

    .line 3442
    :cond_2d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_393

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/Workspace;->isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v2

    if-nez v2, :cond_393

    .line 3443
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v4}, Lcom/android/launcher3/Workspace;->isPointInSelfOverHotseat(IILandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_393

    .line 3444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 3447
    :goto_2fc
    if-nez v2, :cond_302

    .line 3448
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getCurrentDropLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 3450
    :cond_302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eq v2, v3, :cond_df

    .line 3451
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 3452
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    goto/16 :goto_df

    .line 3462
    :cond_314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_104

    .line 3525
    :cond_324
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eqz v4, :cond_331

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_297

    .line 3526
    :cond_331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v4

    if-nez v4, :cond_297

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    if-ne v4, v2, :cond_347

    .line 3527
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    if-eq v2, v3, :cond_297

    .line 3529
    :cond_347
    const/4 v2, 0x2

    new-array v11, v2, [I

    .line 3530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    .line 3531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v4, v4, v7

    float-to-int v4, v4

    iget v7, v14, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v8, v14, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3532
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v12, 0x0

    move-object/from16 v9, v16

    .line 3530
    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    .line 3536
    new-instance v2, Lcom/android/launcher3/Workspace$ReorderAlarmListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 3537
    iget v7, v14, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v8, v14, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    move-object/from16 v3, p0

    move-object/from16 v10, v16

    .line 3536
    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/DragView;Landroid/view/View;)V

    .line 3538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 3539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    goto/16 :goto_297

    :cond_393
    move-object v2, v3

    goto/16 :goto_2fc

    :cond_396
    move-object v2, v3

    goto/16 :goto_84
.end method

.method public onDragStart(Lcom/android/launcher3/DragSource;Ljava/lang/Object;I)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 385
    :try_start_16
    sget-boolean v0, Lcom/android/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz v0, :cond_21

    .line 386
    const-string v0, "onDragStart"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/Workspace;->enfoceDragParity(Ljava/lang/String;II)V

    .line 389
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsDragOccuring:Z

    .line 390
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 391
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->lockScreenOrientation()V

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->onInteractionBegin()V

    .line 394
    invoke-static {}, Lcom/android/launcher3/InstallShortcutReceiver;->enableInstallQueue()V

    .line 396
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddNewPageOnDrag:Z

    if-eqz v0, :cond_3f

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 398
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreenOnDrag()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_3f} :catch_47

    .line 400
    :cond_3f
    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$6$f0d704e(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_47
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$6$f0d704e(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public onDragStartedWithItem(Lcom/android/launcher3/PendingAddItemInfo;Landroid/graphics/Bitmap;Z)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 2097
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/ItemInfo;Z)[I

    move-result-object v0

    .line 2100
    const/4 v2, 0x2

    aget v3, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    move-object v0, p0

    move-object v1, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->createDragOutline(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2101
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 1881
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1884
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1885
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 37

    .prologue
    sget-object v4, Lcom/android/launcher3/Workspace;->ajc$tjp_19:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v4, v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v33

    .line 2794
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2795
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2798
    if-eqz v7, :cond_3b

    .line 2799
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 2800
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V

    .line 2806
    :cond_3b
    :goto_3b
    const/4 v6, -0x1

    .line 2807
    const/4 v5, 0x0

    .line 2808
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    move-object/from16 v0, p0

    if-eq v4, v0, :cond_8a

    .line 2809
    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    float-to-int v6, v6

    aput v6, v5, v4

    const/4 v4, 0x1

    .line 2810
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    float-to-int v6, v6

    aput v6, v5, v4

    .line 2811
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher3/CellLayout;ZLcom/android/launcher3/DropTarget$DragObject;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_6a} :catch_7f

    .line 3037
    :cond_6a
    :goto_6a
    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$3$8845a2dc(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 2802
    :cond_74
    :try_start_74
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v5}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7e} :catch_7f

    goto :goto_3b

    .line 3037
    :catch_7f
    move-exception v4

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$3$8845a2dc(Lorg/aspectj/lang/JoinPoint;)V

    throw v4

    .line 2812
    :cond_8a
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v4, :cond_6a

    .line 2813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v15, v4, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2815
    const/16 v29, 0x0

    .line 2816
    const/4 v10, 0x0

    .line 2817
    if-eqz v7, :cond_486

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-nez v4, :cond_486

    .line 2819
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    if-eq v4, v7, :cond_3bb

    const/4 v4, 0x1

    move/from16 v32, v4

    .line 2820
    :goto_ac
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v34

    .line 2821
    if-eqz v34, :cond_3c0

    .line 2822
    const/16 v4, -0x65

    .line 2821
    :goto_b8
    int-to-long v0, v4

    move-wide/from16 v16, v0

    .line 2824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    aget v4, v4, v8

    if-gez v4, :cond_3c4

    .line 2825
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v8, v4, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v30, v8

    .line 2826
    :goto_cc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v4, :cond_3ce

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v11, v4, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 2827
    :goto_d8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v4, :cond_3d1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v12, v4, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    .line 2831
    :goto_e4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v4, v4, v8

    float-to-int v9, v4

    .line 2832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v4, v4, v8

    float-to-int v10, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v8, p0

    move-object v13, v7

    .line 2831
    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v4, v4, v8

    .line 2834
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2833
    invoke-virtual {v7, v4, v8, v9}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v20

    .line 2838
    new-instance v4, Lcom/android/launcher3/Workspace$7;

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v4, v0, v1, v7}, Lcom/android/launcher3/Workspace$7;-><init>(Lcom/android/launcher3/Workspace;ZLcom/android/launcher3/CellLayout;)V

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 2849
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/Workspace;->mInScrollArea:Z

    if-nez v4, :cond_14a

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    move-object/from16 v14, p0

    move-object/from16 v18, v7

    .line 2849
    invoke-virtual/range {v14 .. v23}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    .line 2850
    if-nez v4, :cond_6a

    .line 2854
    :cond_14a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v24, v0

    .line 2855
    const/16 v27, 0x0

    move-object/from16 v21, p0

    move-object/from16 v22, v15

    move-object/from16 v23, v7

    move/from16 v25, v20

    move-object/from16 v26, p1

    .line 2854
    invoke-virtual/range {v21 .. v27}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v4

    .line 2855
    if-nez v4, :cond_6a

    .line 2861
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 2862
    iget v0, v4, Lcom/android/launcher3/ItemInfo;->spanX:I

    move/from16 v21, v0

    .line 2863
    iget v0, v4, Lcom/android/launcher3/ItemInfo;->spanY:I

    move/from16 v22, v0

    .line 2864
    iget v8, v4, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    if-lez v8, :cond_180

    iget v8, v4, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    if-lez v8, :cond_180

    .line 2865
    iget v0, v4, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    move/from16 v21, v0

    .line 2866
    iget v0, v4, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    move/from16 v22, v0

    .line 2869
    :cond_180
    const/4 v8, 0x2

    new-array v0, v8, [I

    move-object/from16 v27, v0

    .line 2870
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    float-to-int v0, v8

    move/from16 v19, v0

    .line 2871
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    float-to-int v0, v8

    move/from16 v20, v0

    .line 2872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v26, v0

    const/16 v28, 0x2

    move-object/from16 v18, v7

    move/from16 v23, v11

    move/from16 v24, v12

    move-object/from16 v25, v15

    .line 2870
    invoke-virtual/range {v18 .. v28}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2874
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-ltz v8, :cond_3d4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    if-ltz v8, :cond_3d4

    const/4 v10, 0x1

    .line 2877
    :goto_1c4
    if-eqz v10, :cond_483

    instance-of v8, v15, Landroid/appwidget/AppWidgetHostView;

    if-eqz v8, :cond_483

    .line 2878
    const/4 v8, 0x0

    aget v8, v27, v8

    iget v9, v4, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ne v8, v9, :cond_1d8

    const/4 v8, 0x1

    aget v8, v27, v8

    iget v9, v4, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-eq v8, v9, :cond_483

    .line 2879
    :cond_1d8
    const/4 v9, 0x1

    .line 2880
    const/4 v5, 0x0

    aget v5, v27, v5

    iput v5, v4, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2881
    const/4 v5, 0x1

    aget v5, v27, v5

    iput v5, v4, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 2882
    move-object v0, v15

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    move-object v5, v0

    .line 2883
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v11, 0x0

    aget v11, v27, v11

    .line 2884
    const/4 v12, 0x1

    aget v12, v27, v12

    .line 2883
    invoke-static {v5, v8, v11, v12}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    .line 2887
    :goto_1f4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v12

    cmp-long v5, v12, v30

    if-eqz v5, :cond_211

    if-nez v34, :cond_211

    .line 2888
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v6

    .line 2889
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    :cond_211
    move v11, v6

    .line 2892
    if-eqz v10, :cond_3e8

    .line 2893
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/ItemInfo;

    .line 2894
    if-eqz v32, :cond_24a

    .line 2896
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v6

    .line 2897
    if-eqz v6, :cond_3d7

    .line 2898
    invoke-virtual {v6, v15}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 2903
    :cond_227
    if-eqz v34, :cond_22d

    .line 2904
    const/4 v6, 0x0

    invoke-static {v7, v6}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    .line 2906
    :cond_22d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    aget v20, v6, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v21, v6, v8

    .line 2907
    iget v0, v5, Lcom/android/launcher3/ItemInfo;->spanX:I

    move/from16 v22, v0

    iget v0, v5, Lcom/android/launcher3/ItemInfo;->spanY:I

    move/from16 v23, v0

    move-object/from16 v14, p0

    move-wide/from16 v18, v30

    .line 2906
    invoke-virtual/range {v14 .. v23}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 2911
    :cond_24a
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2912
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v12, 0x0

    aget v8, v8, v12

    iput v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2913
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v12, 0x1

    aget v8, v8, v12

    iput v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 2914
    iget v8, v4, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2915
    iget v8, v4, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2916
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2918
    iget v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v12, v12, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    if-ne v8, v12, :cond_3e5

    .line 2919
    iget v8, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v12, v12, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    if-ne v8, v12, :cond_3e5

    .line 2918
    const/4 v8, 0x0

    .line 2921
    :goto_286
    sget-object v12, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_ICONCHANGE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v12}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v12

    if-eqz v12, :cond_2e5

    .line 2922
    if-nez v8, :cond_2e5

    .line 2923
    const-wide/16 v12, -0x65

    cmp-long v8, v16, v12

    if-eqz v8, :cond_2a6

    .line 2924
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v12, v8, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v18

    cmp-long v8, v12, v18

    if-nez v8, :cond_2e5

    .line 2925
    :cond_2a6
    instance-of v8, v15, Lcom/android/launcher3/BubbleTextView;

    if-eqz v8, :cond_2e5

    .line 2926
    invoke-static {}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getInstance()Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->cancel()V

    .line 2927
    invoke-static {}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getInstance()Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getTextView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v8

    if-eqz v8, :cond_2c7

    .line 2928
    invoke-static {}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getInstance()Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getTextView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v8

    .line 2929
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/android/launcher3/BubbleTextView;->updateIconChangeBadge(Z)V

    .line 2931
    :cond_2c7
    invoke-static {}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getInstance()Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;

    move-result-object v12

    move-object v0, v15

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    move-object v8, v0

    invoke-virtual {v12, v8}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->setTextView(Lcom/android/launcher3/BubbleTextView;)V

    .line 2932
    invoke-static {}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getInstance()Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getTextView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v8

    .line 2933
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/android/launcher3/BubbleTextView;->updateIconChangeBadge(Z)V

    .line 2934
    invoke-static {}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getInstance()Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->start()Landroid/os/CountDownTimer;

    .line 2940
    :cond_2e5
    const-wide/16 v12, -0x65

    cmp-long v8, v16, v12

    if-eqz v8, :cond_47f

    .line 2941
    instance-of v8, v15, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-eqz v8, :cond_47f

    .line 2946
    move-object v0, v15

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    move-object v8, v0

    .line 2947
    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v12

    .line 2948
    if-eqz v12, :cond_47f

    iget v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v12, :cond_47f

    .line 2949
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/launcher3/DropTarget$DragObject;->accessibleDrag:Z

    if-nez v12, :cond_47f

    .line 2950
    new-instance v12, Lcom/android/launcher3/Workspace$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5, v8, v7}, Lcom/android/launcher3/Workspace$8;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    .line 2956
    new-instance v29, Lcom/android/launcher3/Workspace$9;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/launcher3/Workspace$9;-><init>(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)V

    move-object/from16 v8, v29

    .line 2968
    :goto_315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v18, v0

    iget v0, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    move/from16 v24, v0

    .line 2969
    iget v0, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    move/from16 v25, v0

    iget v0, v4, Lcom/android/launcher3/ItemInfo;->spanX:I

    move/from16 v26, v0

    iget v0, v4, Lcom/android/launcher3/ItemInfo;->spanY:I

    move/from16 v27, v0

    move-object/from16 v19, v5

    move-wide/from16 v20, v16

    move-wide/from16 v22, v30

    .line 2968
    invoke-static/range {v18 .. v27}, Lcom/android/launcher3/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJIIII)V

    move-object v6, v8

    move v12, v9

    move v13, v11

    .line 2984
    :goto_337
    if-nez v7, :cond_35e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v4, :cond_35e

    .line 2985
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v4, v4, v8

    if-nez v4, :cond_35e

    .line 2986
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v4

    .line 2987
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-static {v4, v5}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$returnToOriginalPosition(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$CellInfo;)V

    .line 2989
    :cond_35e
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/CellLayout;

    .line 2991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout$CellInfo;->getItemInfo()Lcom/android/launcher3/ItemInfo;

    move-result-object v9

    .line 2992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/ItemInfo;

    .line 2997
    new-instance v4, Lcom/android/launcher3/Workspace$10;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/Workspace$10;-><init>(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Z)V

    .line 3012
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/Workspace;->mAnimatingViewIntoPlace:Z

    .line 3013
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/DragView;->hasDrawn()Z

    move-result v5

    if-eqz v5, :cond_460

    .line 3014
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/ItemInfo;

    .line 3015
    iget v5, v10, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_43e

    .line 3016
    iget v5, v10, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_43e

    .line 3015
    const/4 v5, 0x0

    .line 3017
    :goto_3a5
    if-eqz v5, :cond_444

    .line 3018
    if-eqz v12, :cond_441

    const/4 v14, 0x2

    .line 3020
    :goto_3aa
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    .line 3021
    const/16 v16, 0x0

    move-object/from16 v9, p0

    move-object v13, v4

    .line 3020
    invoke-virtual/range {v9 .. v16}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 3035
    :goto_3b6
    invoke-virtual {v11, v15}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    goto/16 :goto_6a

    .line 2819
    :cond_3bb
    const/4 v4, 0x0

    move/from16 v32, v4

    goto/16 :goto_ac

    .line 2823
    :cond_3c0
    const/16 v4, -0x64

    goto/16 :goto_b8

    .line 2825
    :cond_3c4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v8

    move-wide/from16 v30, v8

    goto/16 :goto_cc

    .line 2826
    :cond_3ce
    const/4 v11, 0x1

    goto/16 :goto_d8

    .line 2827
    :cond_3d1
    const/4 v12, 0x1

    goto/16 :goto_e4

    .line 2874
    :cond_3d4
    const/4 v10, 0x0

    goto/16 :goto_1c4

    .line 2899
    :cond_3d7
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v6

    if-eqz v6, :cond_227

    .line 2900
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "mDragInfo.cell has null parent"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2918
    :cond_3e5
    const/4 v8, 0x1

    goto/16 :goto_286

    .line 2972
    :cond_3e8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v4, :cond_413

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->container:J

    const-wide/16 v12, -0x65

    cmp-long v4, v4, v12

    if-nez v4, :cond_413

    .line 2973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v4

    .line 2974
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-static {v4, v5}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$returnToOriginalPosition(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$CellInfo;)V

    move-object/from16 v6, v29

    move v12, v9

    move v13, v11

    .line 2975
    goto/16 :goto_337

    .line 2976
    :cond_413
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2977
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    iget v8, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aput v8, v5, v6

    .line 2978
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    aput v4, v5, v6

    .line 2979
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 2980
    invoke-virtual {v4, v15}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    move-object/from16 v6, v29

    move v12, v9

    move v13, v11

    goto/16 :goto_337

    .line 3015
    :cond_43e
    const/4 v5, 0x1

    goto/16 :goto_3a5

    .line 3019
    :cond_441
    const/4 v14, 0x0

    goto/16 :goto_3aa

    .line 3023
    :cond_444
    if-gez v13, :cond_45d

    .line 3024
    const/16 v16, -0x1

    .line 3026
    :goto_448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    move-object/from16 v17, v4

    move-object/from16 v18, p0

    invoke-virtual/range {v13 .. v18}, Lcom/android/launcher3/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_3b6

    .line 3025
    :cond_45d
    const/16 v16, 0x12c

    goto :goto_448

    .line 3030
    :cond_460
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 3031
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3032
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 3033
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V
    :try_end_47d
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_47d} :catch_7f

    goto/16 :goto_3b6

    :cond_47f
    move-object/from16 v8, v29

    goto/16 :goto_315

    :cond_483
    move v9, v5

    goto/16 :goto_1f4

    :cond_486
    move v12, v5

    move v13, v6

    move-object/from16 v6, v29

    goto/16 :goto_337
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .registers 14

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 4099
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mReCellPositionAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 4100
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferDropAfterUninstall:Z

    if-eqz v0, :cond_19

    .line 4101
    new-instance v0, Lcom/android/launcher3/Workspace$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Workspace$14;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    .line 4139
    :goto_18
    return-void

    .line 4110
    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_60

    move v0, v1

    .line 4112
    :goto_1e
    if-eqz p4, :cond_62

    if-eqz v0, :cond_26

    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->mUninstallSuccessful:Z

    if-eqz v3, :cond_62

    .line 4113
    :cond_26
    if-eq p1, p0, :cond_33

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v3, :cond_33

    .line 4114
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 4129
    :cond_33
    :goto_33
    iget-boolean v3, p2, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-nez v3, :cond_3d

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUninstallSuccessful:Z

    if-nez v0, :cond_4a

    .line 4130
    :cond_3d
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_4a

    .line 4131
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4134
    :cond_4a
    if-nez p4, :cond_5b

    iget-boolean v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v3, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v3, :cond_5b

    .line 4135
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 4137
    :cond_5b
    iput-object v8, p0, Lcom/android/launcher3/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 4138
    iput-object v8, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    goto :goto_18

    :cond_60
    move v0, v2

    .line 4110
    goto :goto_1e

    .line 4116
    :cond_62
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v3, :cond_33

    .line 4117
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 4118
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->container:J

    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v6, v6, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:J

    .line 4117
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    .line 4119
    if-eqz v3, :cond_89

    .line 4120
    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 4121
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-static {v3, v4}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$returnToOriginalPosition(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$CellInfo;)V

    .line 4123
    :cond_81
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    goto :goto_33

    .line 4124
    :cond_89
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 4125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid state: cellLayout == null in Workspace#onDropCompleted. Please file a bug. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onEndReordering()V
    .registers 9

    .prologue
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_14:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    .line 2128
    :try_start_6
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onEndReordering()V

    .line 2130
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_36

    move-result v0

    if-eqz v0, :cond_19

    .line 2146
    :goto_11
    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$2$267eecb1(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 2135
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2136
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    .line 2137
    const/4 v0, 0x0

    move v1, v0

    :goto_24
    if-lt v1, v3, :cond_3f

    .line 2142
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2145
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_35} :catch_36

    goto :goto_11

    .line 2146
    :catch_36
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$2$267eecb1(Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 2138
    :cond_3f
    :try_start_3f
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 2139
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_52} :catch_36

    .line 2137
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24
.end method

.method public onEnterScrollArea(III)Z
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4323
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_2c

    move v0, v1

    .line 4324
    :goto_d
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_2e

    if-eqz v0, :cond_2e

    .line 4325
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4326
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 4327
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4356
    :cond_2b
    :goto_2b
    return v1

    :cond_2c
    move v0, v2

    .line 4323
    goto :goto_d

    .line 4333
    :cond_2e
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 4334
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mInScrollArea:Z

    .line 4336
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v3

    .line 4337
    if-nez p3, :cond_6c

    const/4 v0, -0x1

    .line 4336
    :goto_47
    add-int/2addr v0, v3

    .line 4339
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 4341
    if-ltz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 4343
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    const-wide/16 v6, -0x12d

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2b

    .line 4347
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 4348
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 4352
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    move v1, v2

    .line 4353
    goto :goto_2b

    :cond_6c
    move v0, v2

    .line 4337
    goto :goto_47
.end method

.method public onExitScrollArea()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4362
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_16

    .line 4363
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    .line 4364
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentDropLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 4365
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 4366
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 4368
    const/4 v0, 0x1

    .line 4369
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mInScrollArea:Z

    .line 4371
    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15
.end method

.method public onExternalDragStartedWithItem(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 2073
    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 2074
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 2075
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2078
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_27

    move-object v0, p1

    .line 2079
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2080
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2081
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2082
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 2087
    :cond_27
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2086
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2088
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2089
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;I)V

    .line 2090
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2093
    const/4 v2, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->createDragOutline(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2094
    return-void
.end method

.method public onFlingToDelete(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;)V
    .registers 3

    .prologue
    .line 4258
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .registers 1

    .prologue
    .line 4263
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    const-wide/16 v2, -0x12d

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 1133
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_1c

    .line 1134
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->isScrollingAllowed()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1135
    const/4 v0, 0x0

    .line 1137
    :goto_1b
    return v0

    :cond_1c
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->aspectOf()Lcom/lge/launcher3/nativeitds/CleanViewItds;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->onInterceptTouchEvent_aroundBody1$advice(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativeitds/CleanViewItds;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZ)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2252
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 2253
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2257
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZ)V
    .registers 5

    .prologue
    .line 2230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 2233
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    .line 2235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2239
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZ)V
    .registers 4

    .prologue
    .line 2243
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher3/Launcher;F)V
    .registers 7

    .prologue
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_16:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, p1, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 2247
    :try_start_a
    iput p2, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_1a

    .line 2248
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v2, p1, v0, v1}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$11$11d79f3d(Lcom/android/launcher3/Launcher;Ljava/lang/Float;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_1a
    move-exception v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v3

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v3, p1, v0, v1}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$11$11d79f3d(Lcom/android/launcher3/Launcher;Ljava/lang/Float;Lorg/aspectj/lang/JoinPoint;)V

    throw v2
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .prologue
    .line 1872
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_1a

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 1873
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1874
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 1876
    :cond_1a
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    .line 1877
    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .registers 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1375
    sub-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1376
    sub-float v1, v4, v3

    div-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1379
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 1380
    sub-float v2, v4, v3

    mul-float/2addr v0, v2

    .line 1382
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v2, :cond_24

    .line 1383
    neg-float v0, v0

    .line 1385
    :cond_24
    iput v0, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    .line 1390
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getSearchBar()Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v2

    invoke-direct {p0, v2, v0, v4}, Lcom/android/launcher3/Workspace;->setTranslationAndAlpha(Landroid/view/View;FF)V

    .line 1391
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/PageIndicator;

    move-result-object v2

    invoke-direct {p0, v2, v0, v4}, Lcom/android/launcher3/Workspace;->setTranslationAndAlpha(Landroid/view/View;FF)V

    .line 1392
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v0, v4}, Lcom/android/launcher3/Workspace;->setTranslationAndAlpha(Landroid/view/View;FF)V

    .line 1393
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-direct {p0, v2, v0, v4}, Lcom/android/launcher3/Workspace;->setTranslationAndAlpha(Landroid/view/View;FF)V

    .line 1396
    cmpl-float v0, v0, v3

    if-nez v0, :cond_56

    .line 1397
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_54
    if-gez v0, :cond_70

    .line 1401
    :cond_56
    float-to-double v0, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_6f

    .line 1402
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    .line 1403
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6f

    .line 1404
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1407
    :cond_6f
    return-void

    .line 1398
    :cond_70
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v3, v4}, Lcom/android/launcher3/Workspace;->setTranslationAndAlpha(Landroid/view/View;FF)V

    .line 1397
    add-int/lit8 v0, v0, -0x1

    goto :goto_54
.end method

.method protected onPageBeginMoving()V
    .registers 4

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    :try_start_6
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v1}, Lcom/android/launcher3/Workspace;->onPageBeginMoving_aroundBody5$advice(Lcom/android/launcher3/Workspace;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_16

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$5$d25310a2(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_16
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$5$d25310a2(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method protected onPageEndMoving()V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 1239
    :try_start_6
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndMoving()V

    .line 1241
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1247
    :goto_13
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v2, :cond_2f

    .line 1248
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1249
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 1252
    :cond_2f
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1253
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1256
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/DragController;->forceTouchMove()V

    .line 1260
    :cond_42
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4e

    .line 1261
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 1265
    :cond_4e
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5a

    .line 1266
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 1269
    :cond_5a
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    if-eqz v0, :cond_64

    .line 1270
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 1271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_64} :catch_70

    .line 1274
    :cond_64
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$6$a81ba8f0(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 1244
    :cond_6c
    :try_start_6c
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->clearChildrenCache()V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_13

    .line 1274
    :catch_70
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$6$a81ba8f0(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1890
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    .line 1891
    if-eqz v0, :cond_13

    .line 1892
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 1897
    :goto_12
    return v0

    .line 1894
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_12

    .line 1897
    :cond_18
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected onResume()V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_12:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 1850
    :try_start_6
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1853
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageIndicatorClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 1854
    if-eqz v0, :cond_19

    .line 1855
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/PageIndicator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/PageIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1861
    :cond_19
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->hasWallpaperChangedSinceLastCheck()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1862
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->setWallpaperDimension()V

    .line 1864
    :cond_26
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    :goto_2f
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperIsLiveWallpaper:Z

    .line 1867
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastSetWallpaperOffsetSteps:F
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_34} :catch_4c

    .line 1868
    :try_start_34
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$17$15e41f19(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3b} :catch_55

    :try_start_3b
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$8$15e41f19(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_42} :catch_5e

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$3$15e41f19(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 1864
    :cond_4a
    const/4 v0, 0x0

    goto :goto_2f

    .line 1868
    :catch_4c
    move-exception v0

    :try_start_4d
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceAspect$17$15e41f19(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_55} :catch_55

    :catch_55
    move-exception v0

    :try_start_56
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$8$15e41f19(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5e} :catch_5e

    :catch_5e
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$3$15e41f19(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method protected onScrollInteractionBegin()V
    .registers 2

    .prologue
    .line 1277
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mScrollInteractionBegan:Z

    .line 1279
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1282
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1283
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mScrollInteractionBegan:Z

    .line 1284
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    if-eqz v0, :cond_11

    .line 1285
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    .line 1286
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollInteractionEnd()V

    .line 1288
    :cond_11
    return-void
.end method

.method public onStartReordering()V
    .registers 1

    .prologue
    .line 2122
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onStartReordering()V

    .line 2124
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    .line 2125
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1076
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-eq v0, v1, :cond_22

    .line 1077
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->allowInterceptCellLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1075
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_25:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->onTouchEvent_aroundBody29$advice(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method public onUninstallActivityReturned(Z)V
    .registers 3

    .prologue
    .line 4164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferDropAfterUninstall:Z

    .line 4165
    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mUninstallSuccessful:Z

    .line 4166
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 4167
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4169
    :cond_e
    return-void
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2033
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTempCell:[I

    .line 2034
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->getLocationOnScreen([I)V

    .line 2036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2037
    aget v1, v4, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v4, v5

    .line 2038
    aget v1, v4, v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v1

    aput v0, v4, v6

    .line 2040
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2041
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_36

    .line 2042
    const-string v2, "android.wallpaper.tap"

    .line 2043
    :goto_2d
    aget v3, v4, v5

    aget v4, v4, v6

    const/4 v6, 0x0

    .line 2040
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 2044
    return-void

    .line 2042
    :cond_36
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_2d
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onWindowVisibilityChanged(I)V

    .line 1098
    return-void
.end method

.method protected overScroll(F)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1337
    cmpg-float v0, p1, v4

    if-gtz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-nez v0, :cond_1f

    .line 1338
    :cond_11
    cmpl-float v0, p1, v4

    if-ltz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_1f

    .line 1343
    :cond_1f
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    if-eqz v0, :cond_80

    .line 1344
    cmpg-float v0, p1, v4

    if-gtz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_33

    :cond_2b
    cmpl-float v0, p1, v4

    if-ltz v0, :cond_80

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_80

    :cond_33
    move v0, v1

    .line 1346
    :goto_34
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    if-eqz v3, :cond_4f

    iget v3, p0, Lcom/android/launcher3/Workspace;->mLastOverlaySroll:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4f

    .line 1347
    cmpl-float v3, p1, v4

    if-ltz v3, :cond_46

    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v3, :cond_4e

    :cond_46
    cmpg-float v3, p1, v4

    if-gtz v3, :cond_4f

    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v3, :cond_4f

    :cond_4e
    move v2, v1

    .line 1349
    :cond_4f
    if-eqz v0, :cond_82

    .line 1350
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mScrollInteractionBegan:Z

    if-eqz v0, :cond_60

    .line 1351
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    .line 1352
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollInteractionBegin()V

    .line 1355
    :cond_60
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewportWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastOverlaySroll:F

    .line 1356
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    iget v1, p0, Lcom/android/launcher3/Workspace;->mLastOverlaySroll:F

    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    invoke-interface {v0, v1, v3}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollChange(FZ)V

    .line 1362
    :goto_76
    if-eqz v2, :cond_7f

    .line 1363
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    invoke-interface {v0, v4, v1}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollChange(FZ)V

    .line 1365
    :cond_7f
    return-void

    :cond_80
    move v0, v2

    .line 1343
    goto :goto_34

    .line 1359
    :cond_82
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$dampedOverScroll(Lcom/android/launcher3/Workspace;F)V

    goto :goto_76
.end method

.method public prepareAccessibilityDrop()V
    .registers 1

    .prologue
    .line 2791
    return-void
.end method

.method protected reinflateWidgetsIfNecessary()V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 1141
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v6

    move v5, v4

    .line 1142
    :goto_6
    if-lt v5, v6, :cond_9

    .line 1163
    return-void

    .line 1143
    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1144
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    .line 1145
    invoke-virtual {v7}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v8

    move v3, v4

    .line 1146
    :goto_18
    if-lt v3, v8, :cond_1e

    .line 1142
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6

    .line 1147
    :cond_1e
    invoke-virtual {v7, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1149
    if-eqz v1, :cond_56

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v2, :cond_56

    .line 1150
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 1151
    iget-object v2, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 1152
    if-eqz v2, :cond_56

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppWidgetHostView;->isReinflateRequired()Z

    move-result v9

    if-eqz v9, :cond_56

    .line 1153
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9, v1}, Lcom/android/launcher3/Launcher;->removeAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 1155
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1156
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->bindAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 1157
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v2

    .line 1158
    iget-object v1, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->setUninstallTypeForBadgeView(Landroid/view/View;)Z

    .line 1146
    :cond_56
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_18
.end method

.method public removeAbandonedPromise(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 5

    .prologue
    .line 4704
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 4705
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4706
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, p1, p2}, Lcom/android/launcher3/LauncherModel;->deletePackageFromDatabase(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 4707
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/Workspace;->removeItemsByPackageName(Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 4708
    return-void
.end method

.method public removeAllWorkspaceScreens()V
    .registers 2

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    .line 537
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 538
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->removeCustomContentPage()V

    .line 542
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->removeAllViews()V

    .line 543
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 544
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 547
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    .line 548
    return-void
.end method

.method public removeCustomContentPage()V
    .registers 7

    .prologue
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 614
    const-wide/16 v2, -0x12d

    :try_start_8
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 615
    if-nez v0, :cond_1f

    .line 616
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Expected custom content screen to exist"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_16} :catch_16

    .line 639
    :catch_16
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$2$267eecb1(Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 619
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v4, -0x12d

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 620
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v4, -0x12d

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 621
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    .line 623
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_43

    .line 624
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onScrollProgressChanged(F)V

    .line 625
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onHide()V

    .line 628
    :cond_43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    .line 631
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOriginalDefaultPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->mDefaultPage:I

    .line 634
    iget v0, p0, Lcom/android/launcher3/Workspace;->mRestorePage:I

    const/16 v2, -0x3e9

    if-eq v0, v2, :cond_60

    .line 635
    iget v0, p0, Lcom/android/launcher3/Workspace;->mRestorePage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->mRestorePage:I
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_58} :catch_16

    .line 639
    :goto_58
    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$2$267eecb1(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 637
    :cond_60
    :try_start_60
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_69} :catch_16

    goto :goto_58
.end method

.method public removeExtraEmptyScreen(ZZ)V
    .registers 5

    .prologue
    .line 734
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 735
    return-void
.end method

.method public removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V
    .registers 12

    .prologue
    const/16 v6, 0x190

    const/16 v0, 0x96

    const/4 v1, 0x0

    .line 739
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 741
    const-string v0, "Launcher.Workspace"

    const-string v1, "    - workspace loading, skip"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 777
    :cond_15
    :goto_15
    return-void

    .line 745
    :cond_16
    if-lez p3, :cond_22

    .line 746
    new-instance v0, Lcom/android/launcher3/Workspace$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/launcher3/Workspace$2;-><init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;Z)V

    .line 751
    int-to-long v2, p3

    .line 746
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15

    .line 755
    :cond_22
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->convertFinalScreenToEmptyScreenIfNecessary()V

    .line 756
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 757
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v4, -0xc9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 758
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v3

    if-ne v3, v2, :cond_4a

    .line 759
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v6}, Lcom/android/launcher3/Workspace;->snapToPage(II)V

    .line 760
    invoke-direct {p0, v6, v0, p2, p4}, Lcom/android/launcher3/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V

    goto :goto_15

    .line 763
    :cond_4a
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/Workspace;->snapToPage(II)V

    .line 764
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v2, :cond_56

    move v0, v1

    .line 765
    :cond_56
    invoke-direct {p0, v1, v0, p2, p4}, Lcom/android/launcher3/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V

    goto :goto_15

    .line 768
    :cond_5a
    if-eqz p4, :cond_5f

    .line 771
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 774
    :cond_5f
    if-eqz p2, :cond_15

    .line 775
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_15
.end method

.method removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4555
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 4556
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4621
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 4622
    return-void

    .line 4556
    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/CellLayout;

    .line 4557
    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    .line 4559
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4560
    const/4 v0, 0x0

    move v1, v0

    :goto_24
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_68

    .line 4565
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4567
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4568
    new-instance v0, Lcom/android/launcher3/Workspace$22;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/Workspace$22;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 4594
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lcom/android/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    .line 4597
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_79

    .line 4605
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_55
    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_99

    .line 4614
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 4615
    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4616
    invoke-virtual {v9}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_8

    .line 4561
    :cond_68
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4562
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4560
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 4597
    :cond_79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 4598
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4599
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 4600
    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;)V

    goto :goto_89

    .line 4605
    :cond_99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4608
    invoke-virtual {v7, v0}, Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 4609
    instance-of v2, v0, Lcom/android/launcher3/DropTarget;

    if-eqz v2, :cond_55

    .line 4610
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/DragController;

    check-cast v0, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_55
.end method

.method public removeItemsByList(Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/FolderInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4918
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 4919
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4982
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 4983
    return-void

    .line 4919
    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/CellLayout;

    .line 4920
    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    .line 4922
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4923
    const/4 v0, 0x0

    move v1, v0

    :goto_24
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_68

    .line 4928
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4930
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4931
    new-instance v0, Lcom/android/launcher3/Workspace$25;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/Workspace$25;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/FolderInfo;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 4957
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/Workspace;->filterShortcutInfos(Ljava/lang/Iterable;Lcom/android/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    .line 4960
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_79

    .line 4966
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_55
    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_89

    .line 4975
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 4976
    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4977
    invoke-virtual {v9}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_8

    .line 4924
    :cond_68
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4925
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4923
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 4960
    :cond_79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 4961
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4962
    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderInfo;->remove(Ljava/util/List;)V

    goto :goto_4b

    .line 4966
    :cond_89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4969
    invoke-virtual {v7, v0}, Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 4970
    instance-of v2, v0, Lcom/android/launcher3/DropTarget;

    if-eqz v2, :cond_55

    .line 4971
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/DragController;

    check-cast v0, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_55
.end method

.method removeItemsByPackageName(Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4519
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4520
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4521
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 4522
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_24

    .line 4530
    new-instance v0, Lcom/android/launcher3/Workspace$21;

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/android/launcher3/Workspace$21;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;Ljava/util/HashSet;)V

    .line 4542
    invoke-static {v2, v0}, Lcom/android/launcher3/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lcom/android/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    .line 4545
    invoke-virtual {p0, v3, p2}, Lcom/android/launcher3/Workspace;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 4546
    return-void

    .line 4522
    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 4523
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 4524
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 4525
    const/4 v0, 0x0

    move v1, v0

    :goto_34
    if-ge v1, v6, :cond_12

    .line 4526
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4527
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4525
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34
.end method

.method public removeWorkspaceItem(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 4145
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 4146
    if-eqz v0, :cond_15

    .line 4147
    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 4151
    :cond_9
    instance-of v0, p1, Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_14

    .line 4152
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/DragController;

    check-cast p1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 4154
    :cond_14
    return-void

    .line 4148
    :cond_15
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4149
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mDragInfo.cell has null parent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeWorkspaceScreen(JLcom/android/launcher3/CellLayout;)J
    .registers 7

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$removeWorkspaceScreen(Lcom/android/launcher3/Workspace;JLcom/android/launcher3/CellLayout;)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetCellLayoutMetrics()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$resetCellLayoutMetrics(Lcom/android/launcher3/Workspace;)V

    return-void
.end method

.method public resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V
    .registers 3

    .prologue
    .line 4042
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4043
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 4044
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 4046
    :cond_10
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .registers 4

    .prologue
    .line 4278
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v0, :cond_1a

    .line 4279
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4280
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 4281
    if-eqz v0, :cond_1a

    .line 4282
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    .line 4285
    :cond_1a
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .registers 5

    .prologue
    .line 4288
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    .line 4289
    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_10

    .line 4294
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 4296
    return-void

    .line 4290
    :cond_10
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 4291
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    .line 4289
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method saveWorkspaceScreenToDb(Lcom/android/launcher3/CellLayout;)V
    .registers 16

    .prologue
    const/16 v10, -0x65

    .line 4204
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    .line 4206
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v4

    .line 4207
    const/16 v0, -0x64

    .line 4209
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v13

    .line 4210
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 4211
    const-wide/16 v4, -0x1

    move v9, v10

    .line 4215
    :goto_21
    const/4 v0, 0x0

    move v11, v0

    :goto_23
    if-lt v11, v12, :cond_26

    .line 4233
    return-void

    .line 4216
    :cond_26
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4217
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 4219
    if-eqz v1, :cond_50

    .line 4220
    iget v6, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 4221
    iget v7, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 4222
    if-ne v9, v10, :cond_4a

    .line 4223
    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v0, v2

    invoke-virtual {v13, v0}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v6

    .line 4224
    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v0, v2

    invoke-virtual {v13, v0}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v7

    .line 4226
    :cond_4a
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    int-to-long v2, v9

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 4228
    :cond_50
    instance-of v0, v8, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_5e

    move-object v0, v8

    .line 4229
    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 4230
    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->getFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->addItemLocationsInDatabase()V

    .line 4215
    :cond_5e
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_23

    :cond_62
    move v9, v0

    goto :goto_21
.end method

.method saveWorkspaceToDb()V
    .registers 4

    .prologue
    .line 4195
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->saveWorkspaceScreenToDb(Lcom/android/launcher3/CellLayout;)V

    .line 4196
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    .line 4197
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-lt v1, v2, :cond_16

    .line 4201
    return-void

    .line 4198
    :cond_16
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 4199
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->saveWorkspaceScreenToDb(Lcom/android/launcher3/CellLayout;)V

    .line 4197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13
.end method

.method protected screenScrolled(I)V
    .registers 2

    .prologue
    .line 1828
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues(I)V

    .line 1829
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->updateStateForCustomContent(I)V

    .line 1830
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1831
    return-void
.end method

.method public scrollBy(II)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$scrollBy(Lcom/android/launcher3/Workspace;II)V

    return-void
.end method

.method public scrollLeft()V
    .registers 2

    .prologue
    .line 4300
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_d

    .line 4301
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    .line 4303
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    .line 4304
    if-eqz v0, :cond_16

    .line 4305
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->completeDragExit()V

    .line 4307
    :cond_16
    return-void
.end method

.method public scrollRight()V
    .registers 2

    .prologue
    .line 4311
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_d

    .line 4312
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    .line 4314
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    .line 4315
    if-eqz v0, :cond_16

    .line 4316
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->completeDragExit()V

    .line 4318
    :cond_16
    return-void
.end method

.method public scrollTo(II)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$scrollTo(Lcom/android/launcher3/Workspace;II)V

    return-void
.end method

.method public setAddNewPageOnDrag(Z)V
    .registers 2

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mAddNewPageOnDrag:Z

    .line 404
    return-void
.end method

.method public setCellLayoutsBackgroundAlpha(Lcom/android/launcher3/Workspace$State;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$setCellLayoutsBackgroundAlpha(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$State;)V

    return-void
.end method

.method setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V
    .registers 4

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p1, v1}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout_aroundBody15$advice(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Lcom/android/launcher3/CellLayout;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 3190
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_f

    .line 3191
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 3192
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->onDragExit()V

    .line 3194
    :cond_f
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 3195
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1a

    .line 3196
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->onDragEnter()V

    .line 3198
    :cond_1a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 3199
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    .line 3200
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 3201
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    .line 3202
    return-void
.end method

.method setCurrentDropOverCell(II)V
    .registers 4

    .prologue
    .line 3216
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_10

    .line 3217
    :cond_8
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 3218
    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    .line 3219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 3221
    :cond_10
    return-void
.end method

.method public setCurrentPage(I)V
    .registers 2

    .prologue
    .line 4878
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 4879
    return-void
.end method

.method setDragMode(I)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 3224
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_13

    .line 3225
    if-nez p1, :cond_14

    .line 3226
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 3229
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 3230
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    .line 3241
    :cond_11
    :goto_11
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 3243
    :cond_13
    return-void

    .line 3231
    :cond_14
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 3232
    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 3233
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_11

    .line 3234
    :cond_1e
    if-ne p1, v1, :cond_27

    .line 3235
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 3236
    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    goto :goto_11

    .line 3237
    :cond_27
    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    .line 3238
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 3239
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_11
.end method

.method public setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V
    .registers 3

    .prologue
    .line 4035
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4036
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    .line 4037
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 4038
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 4040
    :cond_1e
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 345
    const-wide/16 v0, -0x12d

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_21

    .line 347
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 348
    instance-of v1, v0, Lcom/android/launcher3/Insettable;

    if-eqz v1, :cond_21

    .line 349
    check-cast v0, Lcom/android/launcher3/Insettable;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/android/launcher3/Insettable;->setInsets(Landroid/graphics/Rect;)V

    .line 352
    :cond_21
    return-void
.end method

.method public setLauncherOverlay(Lcom/android/launcher3/Launcher$LauncherOverlay;)V
    .registers 3

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    .line 1294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    .line 1295
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    .line 1297
    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;)Landroid/animation/Animator;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace$State;",
            "IZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_15:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static/range {p3 .. p3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static/range {p4 .. p4}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v6

    invoke-static {}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->aspectOf()Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;

    move-result-object v7

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v14, v6

    invoke-static/range {v0 .. v14}, Lcom/android/launcher3/Workspace;->setStateWithAnimation_aroundBody9$advice(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method protected setWallpaperDimension()V
    .registers 6

    .prologue
    .line 1459
    new-instance v0, Lcom/android/launcher3/Workspace$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$5;-><init>(Lcom/android/launcher3/Workspace;)V

    .line 1469
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1470
    return-void
.end method

.method public setWorkspaceBG(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$setWorkspaceBG(Lcom/android/launcher3/Workspace;Z)V

    return-void
.end method

.method setup(Lcom/android/launcher3/DragController;)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/Workspace;->ajc$tjp_22:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 4086
    :try_start_6
    new-instance v0, Lcom/android/launcher3/SpringLoadedDragController;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v2}, Lcom/android/launcher3/SpringLoadedDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/SpringLoadedDragController;

    .line 4087
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/DragController;

    .line 4091
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_15} :catch_1d

    .line 4092
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->aspectOf()Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$2$ed5e1510(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_1d
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->aspectOf()Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$2$ed5e1510(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public shiftDefaultPage(ZZ)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->ajc$interMethod$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$shiftDefaultPage(Lcom/android/launcher3/Workspace;ZZ)V

    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    move-object v0, p1

    .line 501
    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 502
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 503
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_22

    .line 504
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_22

    .line 505
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getBackgroundAlpha()F

    move-result v0

    .line 502
    cmpl-float v0, v0, v2

    if-lez v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public showAllCrossHair(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$showAllCrossHair(Lcom/android/launcher3/Workspace;Z)V

    return-void
.end method

.method showCustomContentIfNecessary()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2267
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v2, :cond_1e

    const/4 v0, 0x1

    .line 2268
    :goto_8
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2269
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v2, -0x12d

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setVisibility(I)V

    .line 2271
    :cond_1d
    return-void

    :cond_1e
    move v0, v1

    .line 2267
    goto :goto_8
.end method

.method public showOutlinesTemporarily()V
    .registers 2

    .prologue
    .line 1688
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1689
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 1691
    :cond_f
    return-void
.end method

.method public showWorkspaceForNotFoundCellDrop(Ljava/lang/Runnable;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$showWorkspaceForNotFoundCellDrop(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method protected snapToDestination()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1314
    const/16 v0, 0x2ee

    .line 1319
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isScrollingOverlay()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1320
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/launcher3/Workspace;->mMaxScrollX:I

    .line 1323
    :goto_f
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mWasInOverscroll:Z

    .line 1324
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollY()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$scrollTo(Lcom/android/launcher3/Workspace;II)V

    .line 1333
    :goto_18
    return-void

    :cond_19
    move v0, v1

    .line 1320
    goto :goto_f

    .line 1326
    :cond_1b
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mWasInOverscroll:Z

    if-eqz v1, :cond_2c

    .line 1328
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    move-result-object v1

    .line 1329
    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getOverscrollSnapAnimationDuration()I

    move-result v0

    .line 1330
    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->enableToSwitchInterpolator()V

    .line 1332
    :cond_2c
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Workspace;->snapToPage(II)V

    goto :goto_18
.end method

.method public snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .registers 6

    .prologue
    .line 1
    invoke-static/range {p0 .. p5}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$snapToPage(Lcom/android/launcher3/Workspace;IIIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPage(IILjava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 1478
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1480
    :cond_9
    iput-object p3, p0, Lcom/android/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 1481
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->snapToPage(II)V

    .line 1482
    return-void
.end method

.method public snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$snapToPage(Lcom/android/launcher3/Workspace;IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPage(ILjava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1473
    const/16 v0, 0x3b6

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/Workspace;->snapToPage(IILjava/lang/Runnable;)V

    .line 1474
    return-void
.end method

.method public snapToPageWithVelocity(II)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$snapToPageWithVelocity(Lcom/android/launcher3/Workspace;II)V

    return-void
.end method

.method public snapToScreenId(J)V
    .registers 4

    .prologue
    .line 1485
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;->snapToScreenId(JLjava/lang/Runnable;)V

    .line 1486
    return-void
.end method

.method protected snapToScreenId(JLjava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 1489
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/Workspace;->snapToPage(ILjava/lang/Runnable;)V

    .line 1490
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/CellLayout$CellInfo;)V
    .registers 3

    .prologue
    .line 2409
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Workspace;->startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Z)V

    .line 2410
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Z)V
    .registers 5

    .prologue
    .line 2414
    iget-object v1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2417
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2427
    :goto_8
    return-void

    .line 2421
    :cond_9
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 2422
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2423
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 2424
    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->prepareChildForDrag(Landroid/view/View;)V

    .line 2426
    invoke-virtual {p0, v1, p0, p2}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Z)V

    goto :goto_8
.end method

.method public stripEmptyScreens()V
    .registers 13

    .prologue
    const-wide/16 v10, -0xc9

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 891
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 894
    const-string v0, "Launcher.Workspace"

    const-string v1, "    - workspace loading, skip"

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 945
    :cond_13
    :goto_13
    return-void

    .line 898
    :cond_14
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 899
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    goto :goto_13

    .line 903
    :cond_1d
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v3

    .line 904
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 905
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v5

    move v2, v1

    .line 906
    :goto_2d
    if-lt v2, v5, :cond_5a

    .line 916
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 919
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_83

    .line 937
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    .line 939
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 942
    :cond_52
    if-ltz v2, :cond_13

    .line 943
    sub-int v0, v3, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    goto :goto_13

    .line 907
    :cond_5a
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v6

    .line 908
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 909
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_7f

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7f

    .line 910
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_7f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2d

    .line 919
    :cond_83
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 920
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 921
    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 922
    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 924
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-le v0, v5, :cond_b6

    .line 925
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_c9

    .line 926
    add-int/lit8 v0, v2, 0x1

    .line 928
    :goto_b1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    move v2, v0

    .line 929
    goto :goto_3a

    .line 931
    :cond_b6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 932
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 933
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a

    :cond_c9
    move v0, v2

    goto :goto_b1
.end method

.method public supportsAppInfoDropTarget()Z
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/Workspace;->supportsAppInfoDropTarget_aroundBody21$advice(Lcom/android/launcher3/Workspace;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .registers 2

    .prologue
    .line 4252
    const/4 v0, 0x1

    return v0
.end method

.method public supportsFlingToDelete()Z
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/Workspace;->supportsFlingToDelete_aroundBody19$advice(Lcom/android/launcher3/Workspace;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public transitionStateShouldAllowDrop()Z
    .registers 3

    .prologue
    .line 2555
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    .line 2556
    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_1c

    .line 2555
    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public updateAccessibilityFlags()V
    .registers 6

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2187
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2188
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v4

    .line 2189
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    move v3, v0

    :goto_11
    if-lt v3, v4, :cond_30

    .line 2192
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v0, v3, :cond_2b

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v3, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-eq v0, v3, :cond_2b

    .line 2193
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_2b
    move v0, v2

    .line 2192
    :goto_2c
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setImportantForAccessibility(I)V

    .line 2203
    :goto_2f
    return-void

    .line 2190
    :cond_30
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags(Lcom/android/launcher3/CellLayout;I)V

    .line 2189
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_11

    :cond_3d
    move v0, v1

    .line 2195
    goto :goto_2c

    .line 2197
    :cond_3f
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v0, v3, :cond_51

    .line 2198
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_51
    move v1, v2

    .line 2201
    :cond_52
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setImportantForAccessibility(I)V

    goto :goto_2f
.end method

.method updateChildrenLayersEnabled(Z)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1956
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v3, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-eq v2, v3, :cond_2a

    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v2, :cond_2a

    move v2, v1

    .line 1957
    :goto_d
    if-nez p1, :cond_1c

    if-nez v2, :cond_1c

    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mAnimatingViewIntoPlace:Z

    if-nez v2, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageMoving()Z

    move-result v2

    if-nez v2, :cond_1c

    move v0, v1

    .line 1959
    :cond_1c
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eq v0, v2, :cond_29

    .line 1960
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 1961
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_2c

    .line 1962
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1970
    :cond_29
    return-void

    :cond_2a
    move v2, v0

    .line 1956
    goto :goto_d

    :cond_2c
    move v2, v1

    .line 1964
    :goto_2d
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v0

    if-ge v2, v0, :cond_29

    .line 1965
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1966
    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 1964
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2d
.end method

.method updateCustomContentVisibility()V
    .registers 5

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x0

    move v1, v0

    .line 2261
    :goto_8
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2262
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v2, -0x12d

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setVisibility(I)V

    .line 2264
    :cond_1b
    return-void

    .line 2260
    :cond_1c
    const/4 v0, 0x4

    move v1, v0

    goto :goto_8
.end method

.method updateItemLocationsInDatabase(Lcom/android/launcher3/CellLayout;)V
    .registers 16

    .prologue
    const/4 v12, 0x0

    .line 4172
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v13

    .line 4174
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v4

    .line 4175
    const/16 v0, -0x64

    .line 4177
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 4178
    const-wide/16 v4, -0x1

    .line 4179
    const/16 v0, -0x65

    move v10, v0

    :goto_1c
    move v11, v12

    .line 4182
    :goto_1d
    if-lt v11, v13, :cond_20

    .line 4192
    return-void

    .line 4183
    :cond_20
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4184
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 4186
    if-eqz v1, :cond_44

    iget-boolean v0, v1, Lcom/android/launcher3/ItemInfo;->requiresDbUpdate:Z

    if-eqz v0, :cond_44

    .line 4187
    iput-boolean v12, v1, Lcom/android/launcher3/ItemInfo;->requiresDbUpdate:Z

    .line 4188
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    int-to-long v2, v10

    iget v6, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 4189
    iget v7, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v8, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v9, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 4188
    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJIIII)V

    .line 4182
    :cond_44
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_1d

    :cond_48
    move v10, v0

    goto :goto_1c
.end method

.method public updateRestoreItems(Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4711
    const/4 v0, 0x1

    new-instance v1, Lcom/android/launcher3/Workspace$24;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/Workspace$24;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 4726
    return-void
.end method

.method public updateScrollToCurrentPageInNormalState()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateScrollToCurrentPageInNormalState(Lcom/android/launcher3/Workspace;)V

    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4680
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4681
    const/4 v1, 0x1

    new-instance v2, Lcom/android/launcher3/Workspace$23;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/Workspace$23;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 4701
    return-void
.end method

.method public updateUninstallPolicy(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateUninstallPolicy(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateUninstallPolicytoAll()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateUninstallPolicytoAll(Lcom/android/launcher3/Workspace;)V

    return-void
.end method

.method widgetsRestored(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4729
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 4730
    new-instance v1, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    .line 4731
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    .line 4730
    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;Lcom/android/launcher3/LauncherAppWidgetHost;)V

    .line 4732
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4733
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v3, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 4734
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 4732
    invoke-static {v2, v3, v0}, Lcom/android/launcher3/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 4736
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    .line 4748
    :cond_2f
    return-void

    .line 4740
    :cond_30
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 4741
    iget-object v2, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v2, v2, Lcom/android/launcher3/PendingAppWidgetHostView;

    if-eqz v2, :cond_34

    .line 4742
    const/16 v2, 0x64

    iput v2, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 4743
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/android/launcher3/PendingAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/PendingAppWidgetHostView;->applyState()V

    goto :goto_34
.end method

.method willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher3/CellLayout;[IF)Z
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2689
    invoke-static {p2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F

    move-result v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_c

    move v0, v2

    .line 2705
    :goto_b
    return v0

    .line 2690
    :cond_c
    aget v0, p3, v2

    aget v1, p3, v3

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 2692
    if-eqz v1, :cond_2e

    .line 2693
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2694
    iget-boolean v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v4, :cond_2e

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v4, v5, :cond_2c

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    if-eq v4, v0, :cond_2e

    :cond_2c
    move v0, v2

    .line 2695
    goto :goto_b

    .line 2699
    :cond_2e
    instance-of v0, v1, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_3d

    move-object v0, v1

    .line 2700
    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 2701
    invoke-virtual {v0, p1}, Lcom/android/launcher3/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v3

    .line 2702
    goto :goto_b

    :cond_3d
    move v0, v2

    .line 2705
    goto :goto_b
.end method

.method willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2659
    invoke-static {p2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F

    move-result v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_b

    .line 2684
    :cond_a
    :goto_a
    return v2

    .line 2660
    :cond_b
    aget v0, p3, v2

    aget v3, p3, v1

    invoke-virtual {p2, v0, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 2662
    if-eqz v3, :cond_2b

    .line 2663
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2664
    iget-boolean v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v4, :cond_2b

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v4, v5, :cond_a

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v4, v0, :cond_a

    .line 2670
    :cond_2b
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_66

    .line 2671
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne v3, v0, :cond_60

    move v0, v1

    .line 2674
    :goto_36
    if-eqz v3, :cond_a

    if-nez v0, :cond_a

    if-eqz p5, :cond_40

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_a

    .line 2678
    :cond_40
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_62

    .line 2679
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ne v0, v1, :cond_62

    iget v0, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-ne v0, v1, :cond_62

    move v0, v1

    .line 2681
    :goto_51
    iget v3, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eqz v3, :cond_64

    .line 2682
    iget v3, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eq v3, v1, :cond_64

    move v3, v2

    .line 2684
    :goto_5a
    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    move v2, v1

    goto :goto_a

    :cond_60
    move v0, v2

    .line 2671
    goto :goto_36

    :cond_62
    move v0, v2

    .line 2678
    goto :goto_51

    :cond_64
    move v3, v1

    .line 2680
    goto :goto_5a

    :cond_66
    move v0, v2

    goto :goto_36
.end method

.method public workspaceInModalState()Z
    .registers 3

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
