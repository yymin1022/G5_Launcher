.class public Lcom/android/launcher3/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/LauncherModel$Callbacks;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/PagedView$PageSwitchListener;
.implements Lcom/android/launcher3/LauncherProviderChangeListener;
.implements Lcom/android/launcher3/LauncherStateTransitionAnimation$Callbacks;
.implements Lcom/lge/launcher3/crosscutting/INonTitleBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher3/Launcher$CustomContentCallbacks;,
        Lcom/android/launcher3/Launcher$LauncherOverlay;,
        Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;,
        Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;,
        Lcom/android/launcher3/Launcher$LauncherSearchCallbacks;,
        Lcom/android/launcher3/Launcher$PendingAddArguments;,
        Lcom/android/launcher3/Launcher$State;
    }
.end annotation


# static fields
.field static final ACTION_FIRST_LOAD_COMPLETE:Ljava/lang/String; = "com.android.launcher3.action.FIRST_LOAD_COMPLETE"

.field private static final ACTIVITY_START_DELAY:I = 0x3e8

.field public static final APPWIDGET_HOST_ID:I = 0x400

.field private static final BOUNCE_ANIMATION_TENSION:F = 1.3f

.field static final CORRUPTION_EMAIL_SENT_KEY:Ljava/lang/String; = "corruptionEmailSent"

.field static final DEBUG_DUMP_LOG:Z = false

.field static final DEBUG_RESUME_TIME:Z = false

.field static final DEBUG_STRICT_MODE:Z = false

.field static final DEBUG_WIDGETS:Z = true

.field private static final DISABLE_SYNCHRONOUS_BINDING_CURRENT_PAGE:Z = false

.field static final DUMP_STATE_PROPERTY:Ljava/lang/String; = "launcher_dump_state"

.field private static final ENABLE_CUSTOM_WIDGET_TEST:Z = false

.field static final ENABLE_DEBUG_INTENTS:Z = false

.field public static final EXIT_SPRINGLOADED_MODE_SHORT_TIMEOUT:I = 0x12c

.field static final FIRST_LOAD_COMPLETE:Ljava/lang/String; = "launcher.first_load_complete"

.field static final FIRST_RUN_ACTIVITY_DISPLAYED:Ljava/lang/String; = "launcher.first_run_activity_displayed"

.field static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field static final INTRO_SCREEN_DISMISSED:Ljava/lang/String; = "launcher.intro_screen_dismissed"

.field static final LOGD:Z = false

.field static NEW_APPS_ANIMATION_DELAY:I = 0x0

.field private static NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I = 0x0

.field private static NEW_APPS_PAGE_MOVE_DELAY:I = 0x0

.field private static final ON_ACTIVITY_RESULT_ANIMATION_DELAY:I = 0x1f4

.field static final PROFILE_STARTUP:Z = false

.field private static final QSB_WIDGET_ID:Ljava/lang/String; = "qsb_widget_id"

.field private static final QSB_WIDGET_PROVIDER:Ljava/lang/String; = "qsb_widget_provider"

.field private static final REQUEST_BIND_APPWIDGET:I = 0xb

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field protected static final REQUEST_LAST:I = 0x64

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field private static final REQUEST_PICK_WALLPAPER:I = 0xa

.field private static final REQUEST_RECONFIGURE_APPWIDGET:I = 0xc

.field public static REQUEST_THEME_SELECT:I = 0x0

.field private static final RUNTIME_STATE:Ljava/lang/String; = "launcher.state"

.field private static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_X:Ljava/lang/String; = "launcher.add_cell_x"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_Y:Ljava/lang/String; = "launcher.add_cell_y"

.field private static final RUNTIME_STATE_PENDING_ADD_CONTAINER:Ljava/lang/String; = "launcher.add_container"

.field private static final RUNTIME_STATE_PENDING_ADD_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_X:Ljava/lang/String; = "launcher.add_span_x"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_Y:Ljava/lang/String; = "launcher.add_span_y"

.field private static final RUNTIME_STATE_PENDING_ADD_WIDGET_ID:Ljava/lang/String; = "launcher.add_widget_id"

.field private static final RUNTIME_STATE_PENDING_ADD_WIDGET_INFO:Ljava/lang/String; = "launcher.add_widget_info"

.field private static final RUNTIME_STATE_VIEW_IDS:Ljava/lang/String; = "launcher.view_ids"

.field static final SCREEN_COUNT:I = 0x5

.field public static final SHOW_WEIGHT_WATCHER:Ljava/lang/String; = "debug.show_mem"

.field public static final SHOW_WEIGHT_WATCHER_DEFAULT:Z = false

.field static final TAG:Ljava/lang/String; = "Launcher"

.field public static final USER_HAS_MIGRATED:Ljava/lang/String; = "launcher.user_migrated_from_old_data"

.field private static final WORKSPACE_BACKGROUND_BLACK:I = 0x2

.field private static final WORKSPACE_BACKGROUND_GRADIENT:I = 0x0

.field private static final WORKSPACE_BACKGROUND_TRANSPARENT:I = 0x1

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

.field private static final ajc$tjp_28:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_29:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_30:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_31:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_32:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_33:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static sClipRevealMethod:Ljava/lang/reflect/Method;

.field protected static sCustomAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/CustomAppWidget;",
            ">;"
        }
    .end annotation
.end field

.field static sDateFormat:Ljava/text/DateFormat;

.field static sDateStamp:Ljava/util/Date;

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sFolders:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sPendingAddItem:Lcom/android/launcher3/Launcher$PendingAddArguments;

.field static sRunStart:J


# instance fields
.field private final ADVANCE_MSG:I

.field public isLongClickFromKeyEnter:Z

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAllAppsButton:Landroid/view/View;

.field private mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

.field private mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field private mAttached:Z

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mBindAllApplicationsRunnable:Ljava/lang/Runnable;

.field protected mBindOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBindPackagesUpdatedRunnable:Ljava/lang/Runnable;

.field mBuildLayersRunnable:Ljava/lang/Runnable;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field public mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private mDragController:Lcom/android/launcher3/DragController;

.field mDragLayer:Lcom/android/launcher3/DragLayer;

.field public mDynamicGridPanelView:Landroid/view/ViewGroup;

.field mFocusHandler:Lcom/android/launcher3/FocusIndicatorView;

.field private mFolderIconBitmap:Landroid/graphics/Bitmap;

.field private mFolderIconCanvas:Landroid/graphics/Canvas;

.field mFolderIconImageView:Landroid/widget/ImageView;

.field final mHandler:Landroid/os/Handler;

.field private mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

.field private mHasFocus:Z

.field mHotseat:Lcom/android/launcher3/Hotseat;

.field private mIconCache:Lcom/android/launcher3/IconCache;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSafeModeEnabled:Z

.field private mItemIdToViewId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLGThemeChange:Lcom/lge/launcher3/theme/LGThemeChange;

.field protected mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

.field private mLauncherView:Landroid/view/View;

.field public mModel:Lcom/android/launcher3/LauncherModel;

.field private mOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnResumeNeedsLoad:Z

.field private mOnResumeState:Lcom/android/launcher3/Launcher$State;

.field private mOverviewPanel:Landroid/view/ViewGroup;

.field private mPageIndicators:Landroid/view/View;

.field protected mPaused:Z

.field mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

.field private mPendingAddWidgetId:I

.field private mPendingAddWidgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

.field private mQsb:Landroid/appwidget/AppWidgetHostView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRectForFolderAnimation:Landroid/graphics/Rect;

.field private final mRestoreScreenOrientationDelay:I

.field private mRestoring:Z

.field private mRotationEnabled:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field protected mState:Lcom/android/launcher3/Launcher$State;

.field mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

.field private mStats:Lcom/android/launcher3/Stats;

.field public mSuppressCloseFolder:Z

.field private final mSynchronouslyBoundPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mTPMO:Lcom/lge/launcher3/receiver/TPhoneModeObserver;

.field public mTPMR:Lcom/lge/launcher3/receiver/TPhoneModeReceiver;

.field private mTmpAddItemCellCoordinates:[I

.field mTmpAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOrientationRunnable:Ljava/lang/Runnable;

.field mUserPresent:Z

.field private mVisible:Z

.field private mWaitingForResult:Z

.field private mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

.field private mWeightWatcher:Landroid/view/View;

.field private mWidgetsButton:Landroid/view/View;

.field mWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

.field mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

.field public mWorkspace:Lcom/android/launcher3/Workspace;

.field mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x1f4

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x3

    invoke-static {}, Lcom/android/launcher3/Launcher;->ajc$preClinit()V

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$REQUEST_THEME_SELECT()V

    .line 241
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/Launcher;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 244
    sput v4, Lcom/android/launcher3/Launcher;->NEW_APPS_PAGE_MOVE_DELAY:I

    .line 245
    sput v3, Lcom/android/launcher3/Launcher;->NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

    .line 246
    sput v4, Lcom/android/launcher3/Launcher;->NEW_APPS_ANIMATION_DELAY:I

    .line 314
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    .line 337
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->sDateStamp:Ljava/util/Date;

    .line 339
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    .line 338
    sput-object v0, Lcom/android/launcher3/Launcher;->sDateFormat:Ljava/text/DateFormat;

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/launcher3/Launcher;->sRunStart:J

    .line 362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 361
    sput-object v0, Lcom/android/launcher3/Launcher;->sCustomAppWidgets:Ljava/util/HashMap;

    .line 372
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/Launcher;->sClipRevealMethod:Ljava/lang/reflect/Method;

    .line 374
    const-class v0, Landroid/app/ActivityOptions;

    .line 376
    :try_start_45
    const-string v1, "makeClipRevealAnimation"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 377
    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 376
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Launcher;->sClipRevealMethod:Ljava/lang/reflect/Method;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_69} :catch_6a

    .line 391
    :goto_69
    return-void

    :catch_6a
    move-exception v0

    goto :goto_69
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_33:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->aspectOf()Lcom/lge/launcher3/util/CPUBoostServiceAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->ajc$before$com_lge_launcher3_util_CPUBoostServiceAspect$3$92a34dc7(Lorg/aspectj/lang/JoinPoint;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mLGThemeChange(Lcom/android/launcher3/Launcher;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mDynamicGridPanelView(Lcom/android/launcher3/Launcher;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mTPMO(Lcom/android/launcher3/Launcher;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mTPMR(Lcom/android/launcher3/Launcher;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isLongClickFromKeyEnter(Lcom/android/launcher3/Launcher;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mSuppressCloseFolder(Lcom/android/launcher3/Launcher;)V

    .line 230
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    :try_start_26
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_28} :catch_ca

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    nop

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    .line 249
    new-instance v0, Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 263
    new-instance v0, Lcom/android/launcher3/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    .line 265
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetId:I

    .line 267
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 284
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mAutoAdvanceRunning:Z

    .line 291
    sget-object v0, Lcom/android/launcher3/Launcher$State;->NONE:Lcom/android/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 295
    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 297
    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    .line 309
    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mUserPresent:Z

    .line 310
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    .line 311
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    .line 312
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    .line 319
    iput v3, p0, Lcom/android/launcher3/Launcher;->ADVANCE_MSG:I

    .line 320
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/launcher3/Launcher;->mAdvanceInterval:I

    .line 321
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher3/Launcher;->mAdvanceStagger:I

    .line 323
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/Launcher;->mAutoAdvanceTimeLeft:J

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 329
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/launcher3/Launcher;->mRestoreScreenOrientationDelay:I

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    .line 352
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    .line 383
    new-instance v0, Lcom/android/launcher3/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$1;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 405
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 416
    new-instance v0, Lcom/android/launcher3/Launcher$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$2;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mUpdateOrientationRunnable:Ljava/lang/Runnable;

    .line 1639
    new-instance v0, Lcom/android/launcher3/Launcher$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$3;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1803
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/Launcher$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$4;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    .line 4337
    new-instance v0, Lcom/android/launcher3/Launcher$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$5;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBindAllApplicationsRunnable:Ljava/lang/Runnable;

    .line 4512
    new-instance v0, Lcom/android/launcher3/Launcher$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$6;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBindPackagesUpdatedRunnable:Ljava/lang/Runnable;

    .line 143
    return-void

    .line 230
    :catch_ca
    move-exception v1

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    throw v1
.end method

.method private acceptFilter()Z
    .registers 2

    .prologue
    .line 1236
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1235
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1237
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method static synthetic access$0(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/DragController;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    return-object v0
.end method

.method private addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;JJ[I[I)V
    .registers 14

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2364
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->resetAddInfo()V

    .line 2365
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iput-wide p2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->container:J

    iput-wide p2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 2366
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iput-wide p4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->screenId:J

    iput-wide p4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 2367
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iput-object v4, v0, Lcom/android/launcher3/ItemInfo;->dropPos:[I

    .line 2368
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget v1, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 2369
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget v1, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 2371
    if-eqz p6, :cond_30

    .line 2372
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    aget v1, p6, v2

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 2373
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    aget v1, p6, v3

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 2375
    :cond_30
    if-eqz p7, :cond_3e

    .line 2376
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    aget v1, p7, v2

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2377
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    aget v1, p7, v3

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 2380
    :cond_3e
    iget-object v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 2382
    if-eqz v0, :cond_4e

    .line 2383
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    .line 2384
    iget-object v2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 2387
    iput-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 2410
    :goto_4d
    return-void

    .line 2391
    :cond_4e
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 2392
    iget-object v1, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 2394
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 2395
    iget-object v3, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 2394
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v1

    .line 2396
    if-eqz v1, :cond_68

    .line 2397
    iget-object v1, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, v0, p1, v4, v1}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    goto :goto_4d

    .line 2399
    :cond_68
    iget-object v1, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 2400
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2401
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2402
    const-string v0, "appWidgetProvider"

    iget-object v2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2403
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    .line 2404
    const-string v2, "appWidgetProviderProfile"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2407
    const/16 v0, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4d
.end method

.method public static addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    .registers 4

    .prologue
    .line 4881
    if-eqz p3, :cond_7

    .line 4882
    if-eqz p2, :cond_8

    .line 4883
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4895
    :cond_7
    :goto_7
    return-void

    .line 4885
    :cond_8
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 4877
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 4878
    return-void
.end method

.method private static final addInScreenFromBind_aroundBody30(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;Landroid/view/View;JJIIIILorg/aspectj/lang/JoinPoint;)V
    .registers 13

    .prologue
    .line 4012
    invoke-virtual/range {p1 .. p10}, Lcom/android/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    return-void
.end method

.method private static final addInScreenFromBind_aroundBody31$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;Landroid/view/View;JJIIIILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Landroid/view/View;JJIIIILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 40

    .prologue
    .line 96
    invoke-interface/range {p23 .. p23}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Launcher;

    .line 97
    const-wide/16 v4, -0x64

    cmp-long v3, p14, v4

    if-nez v3, :cond_3d

    .line 98
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    move-wide/from16 v0, p16

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    if-nez v3, :cond_3d

    .line 99
    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Add new child, screenId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cause can\'t found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    move-wide/from16 v0, p16

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(J)J

    :cond_3d
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p13

    move-wide/from16 v6, p14

    move-wide/from16 v8, p16

    move/from16 v10, p18

    move/from16 v11, p19

    move/from16 v12, p20

    move/from16 v13, p21

    move-object/from16 v14, p11

    .line 111
    invoke-static/range {v3 .. v14}, Lcom/android/launcher3/Launcher;->addInScreenFromBind_aroundBody30(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;Landroid/view/View;JJIIIILorg/aspectj/lang/JoinPoint;)V

    .line 112
    return-void
.end method

.method private static final addInScreenFromBind_aroundBody34(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;Landroid/view/View;JJIIIILorg/aspectj/lang/JoinPoint;)V
    .registers 13

    .prologue
    .line 4027
    invoke-virtual/range {p1 .. p10}, Lcom/android/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    return-void
.end method

.method private static final addInScreenFromBind_aroundBody35$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;Landroid/view/View;JJIIIILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Landroid/view/View;JJIIIILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 40

    .prologue
    .line 96
    invoke-interface/range {p23 .. p23}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Launcher;

    .line 97
    const-wide/16 v4, -0x64

    cmp-long v3, p14, v4

    if-nez v3, :cond_3d

    .line 98
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    move-wide/from16 v0, p16

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    if-nez v3, :cond_3d

    .line 99
    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Add new child, screenId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cause can\'t found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    move-wide/from16 v0, p16

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(J)J

    :cond_3d
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p13

    move-wide/from16 v6, p14

    move-wide/from16 v8, p16

    move/from16 v10, p18

    move/from16 v11, p19

    move/from16 v12, p20

    move/from16 v13, p21

    move-object/from16 v14, p11

    .line 111
    invoke-static/range {v3 .. v14}, Lcom/android/launcher3/Launcher;->addInScreenFromBind_aroundBody34(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;Landroid/view/View;JJIIIILorg/aspectj/lang/JoinPoint;)V

    .line 112
    return-void
.end method

.method public static ajc$get$REQUEST_PICK_WALLPAPER()I
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/launcher3/Launcher;->REQUEST_PICK_WALLPAPER:I

    return v0
.end method

.method public static ajc$get$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Launcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$mAppWidgetManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    return-object v0
.end method

.method public static ajc$get$mAppsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/allapps/AllAppsContainerView;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    return-object v0
.end method

.method public static ajc$get$mDragLayer(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/DragLayer;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    return-object v0
.end method

.method public static ajc$get$mIconCache(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/IconCache;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    return-object v0
.end method

.method public static ajc$get$mIsSafeModeEnabled(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    return v0
.end method

.method public static ajc$get$mLGThemeChange(Lcom/android/launcher3/Launcher;)Lcom/lge/launcher3/theme/LGThemeChange;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLGThemeChange:Lcom/lge/launcher3/theme/LGThemeChange;

    return-object v0
.end method

.method public static ajc$get$mLauncherCallbacks(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherCallbacks;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    return-object v0
.end method

.method public static ajc$get$mLauncherView(Lcom/android/launcher3/Launcher;)Landroid/view/View;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    return-object v0
.end method

.method public static ajc$get$mOnResumeState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    return-object v0
.end method

.method public static ajc$get$mPendingAddInfo(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/ItemInfo;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    return-object v0
.end method

.method public static ajc$get$mState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    return-object v0
.end method

.method public static ajc$get$mWeightWatcher(Lcom/android/launcher3/Launcher;)Landroid/view/View;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWeightWatcher:Landroid/view/View;

    return-object v0
.end method

.method public static ajc$get$mWidgetsModel(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/model/WidgetsModel;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    return-object v0
.end method

.method public static ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    return-object v0
.end method

.method public static ajc$get$mWorkspaceBackgroundDrawable(Lcom/android/launcher3/Launcher;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "Launcher.java"

    const-class v2, Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "field-set"

    const-string v2, "1"

    const-string v3, "mModel"

    const-string v4, "com.android.launcher3.Launcher"

    const-string v5, "com.android.launcher3.LauncherModel"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeFieldSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/FieldSignature;

    move-result-object v2

    const/16 v3, 0x1c9

    invoke-virtual {v0, v1, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "4"

    const-string v2, "setupViews"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1e3

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "completeAddAppWidget"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "int:long:long:android.appwidget.AppWidgetHostView:com.android.launcher3.LauncherAppWidgetProviderInfo"

    const-string v5, "appWidgetId:container:screenId:hostView:appWidgetInfo"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x638

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_10:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onScreenOff"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x6a1

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_11:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onWindowVisibilityChanged"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "int"

    const-string v5, "visibility"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x6c9

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_12:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getWidgetsView"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "com.android.launcher3.widget.WidgetsContainerView"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x748

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_13:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onDestroy"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x7f4

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_14:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "addFolder"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "com.android.launcher3.CellLayout:long:long:int:int"

    const-string v5, "layout:container:screenId:cellX:cellY"

    const-string v6, ""

    const-string v7, "com.android.launcher3.FolderIcon"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x96c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_15:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "startAppShortcutOrInfoActivity"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "android.view.View"

    const-string v5, "v"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xabf

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_16:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onClickWallpaperPicker"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "android.view.View"

    const-string v5, "v"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xb20

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_17:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "startApplicationUninstallActivity"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "android.content.ComponentName:int:com.android.launcher3.compat.UserHandleCompat"

    const-string v5, "componentName:flags:user"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xb87

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_18:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "2"

    const-string v2, "startActivity"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "android.view.View:android.content.Intent:java.lang.Object"

    const-string v5, "v:intent:tag"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xb9e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_19:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onCreate"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "android.os.Bundle"

    const-string v5, "savedInstanceState"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1a7

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "startActivitySafely"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "android.view.View:android.content.Intent:java.lang.Object"

    const-string v5, "v:intent:tag"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xbf6

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_20:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "openFolder"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "com.android.launcher3.FolderIcon"

    const-string v5, "folderIcon"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xc7a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_21:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "81"

    const-string v2, "closeFolder"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "[Z"

    const-string v5, "animate"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xc9c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_22:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "81"

    const-string v2, "closeFolder"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "com.android.launcher3.Folder:[Z"

    const-string v5, "folder:animate"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xca6

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_23:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "1"

    const-string v2, "performHapticFeedback"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "int:int"

    const-string v5, "feedbackConstant:flags"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xcf2

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_24:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onLongClick"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "android.view.View"

    const-string v5, "v"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xcb8

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_25:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "showWorkspace"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "int:boolean:java.lang.Runnable"

    const-string v5, "snapToPage:animated:onCompleteRunnable"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xd6f

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_26:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "showOverviewMode"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "boolean"

    const-string v5, "animated"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xd96

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_27:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "showWidgetsView"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "boolean:boolean"

    const-string v5, "animated:resetPageToZero"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xdb6

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_28:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "0"

    const-string v2, "addInScreenFromBind"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "android.view.View:long:long:int:int:int:int"

    const-string v5, "child:container:screenId:x:y:spanX:spanY"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xfac

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_29:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onActivityResult"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "int:int:android.content.Intent"

    const-string v5, "requestCode:resultCode:data"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x37a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "0"

    const-string v2, "addInScreenFromBind"

    const-string v3, "com.android.launcher3.Workspace"

    const-string v4, "android.view.View:long:long:int:int:int:int"

    const-string v5, "child:container:screenId:x:y:spanX:spanY"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xfbb

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_30:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "finishBindingItems"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1089

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_31:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "bindAllPackages"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "com.android.launcher3.model.WidgetsModel"

    const-string v5, "model"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x11a7

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_32:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.Launcher"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0x8f

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_33:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onResume"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3e3

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onKeyDown"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "int:android.view.KeyEvent"

    const-string v5, "keyCode:event"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4d9

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v1, "field-set"

    const-string v2, "0"

    const-string v3, "mWorkspaceBackgroundDrawable"

    const-string v4, "com.android.launcher3.Launcher"

    const-string v5, "android.graphics.drawable.Drawable"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeFieldSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/FieldSignature;

    move-result-object v2

    const/16 v3, 0x549

    invoke-virtual {v0, v1, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v1, "field-set"

    const-string v2, "0"

    const-string v3, "mAppsView"

    const-string v4, "com.android.launcher3.Launcher"

    const-string v5, "com.android.launcher3.allapps.AllAppsContainerView"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeFieldSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/FieldSignature;

    move-result-object v2

    const/16 v3, 0x588

    invoke-virtual {v0, v1, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "setupViews"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x53b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "2"

    const-string v2, "getSpanForWidget"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "android.content.ComponentName:int:int"

    const-string v5, "component:minWidth:minHeight"

    const-string v6, ""

    const-string v7, "[I"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x622

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$REQUEST_PICK_WALLPAPER(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/launcher3/Launcher;->REQUEST_PICK_WALLPAPER:I

    return-void
.end method

.method public static ajc$set$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/Launcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$mAppWidgetManager(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/compat/AppWidgetManagerCompat;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    return-void
.end method

.method public static ajc$set$mAppsView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AllAppsContainerView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    return-void
.end method

.method public static ajc$set$mDragLayer(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragLayer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    return-void
.end method

.method public static ajc$set$mIconCache(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/IconCache;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    return-void
.end method

.method public static ajc$set$mIsSafeModeEnabled(Lcom/android/launcher3/Launcher;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    return-void
.end method

.method public static ajc$set$mLGThemeChange(Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/theme/LGThemeChange;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mLGThemeChange:Lcom/lge/launcher3/theme/LGThemeChange;

    return-void
.end method

.method public static ajc$set$mLauncherCallbacks(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherCallbacks;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    return-void
.end method

.method public static ajc$set$mLauncherView(Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    return-void
.end method

.method public static ajc$set$mOnResumeState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher$State;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    return-void
.end method

.method public static ajc$set$mPendingAddInfo(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    return-void
.end method

.method public static ajc$set$mState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher$State;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    return-void
.end method

.method public static ajc$set$mWeightWatcher(Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mWeightWatcher:Landroid/view/View;

    return-void
.end method

.method public static ajc$set$mWidgetsModel(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/WidgetsModel;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    return-void
.end method

.method public static ajc$set$mWidgetsView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/WidgetsContainerView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    return-void
.end method

.method public static ajc$set$mWorkspaceBackgroundDrawable(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private canRunNewAppsAnimation()Z
    .registers 5

    .prologue
    .line 4298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v2}, Lcom/android/launcher3/DragController;->getLastGestureUpTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 4299
    sget v2, Lcom/android/launcher3/Launcher;->NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static final canRunNewAppsAnimation_aroundBody28(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher;)Z
    .registers 3

    .prologue
    .line 3965
    invoke-direct {p1}, Lcom/android/launcher3/Launcher;->canRunNewAppsAnimation()Z

    move-result v0

    return v0
.end method

.method private static final canRunNewAppsAnimation_aroundBody29$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/nativejoin/LauncherAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->wasNewDbCreated()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 392
    invoke-static {p2}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$mAddAnimationflag(Lcom/lge/launcher3/nativejoin/LauncherAspect;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    .line 395
    :goto_13
    invoke-static {p2, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$inlineAccessFieldSet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$mAddAnimationflag(Lcom/lge/launcher3/nativejoin/LauncherAspect;Z)V

    .line 397
    :goto_16
    if-eqz v0, :cond_1f

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->canRunNewAppsAnimation_aroundBody28(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :goto_1e
    return v2

    :cond_1f
    move v2, v1

    goto :goto_1e

    :cond_21
    move v0, v2

    goto :goto_13

    :cond_23
    move v0, v2

    goto :goto_16
.end method

.method private clearTypedText()V
    .registers 3

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1273
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1274
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1275
    return-void
.end method

.method private completeAdd(Lcom/android/launcher3/Launcher$PendingAddArguments;)J
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 722
    iget-wide v4, p1, Lcom/android/launcher3/Launcher$PendingAddArguments;->screenId:J

    .line 723
    iget-wide v0, p1, Lcom/android/launcher3/Launcher$PendingAddArguments;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 726
    iget-wide v0, p1, Lcom/android/launcher3/Launcher$PendingAddArguments;->screenId:J

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v4

    .line 729
    :cond_11
    iget v0, p1, Lcom/android/launcher3/Launcher$PendingAddArguments;->requestCode:I

    sparse-switch v0, :sswitch_data_38

    .line 744
    :goto_16
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->resetAddInfo()V

    .line 745
    return-wide v4

    .line 731
    :sswitch_1a
    iget-object v1, p1, Lcom/android/launcher3/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher3/Launcher$PendingAddArguments;->container:J

    iget v6, p1, Lcom/android/launcher3/Launcher$PendingAddArguments;->cellX:I

    .line 732
    iget v7, p1, Lcom/android/launcher3/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    .line 731
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/Launcher;->completeAddShortcut(Landroid/content/Intent;JJII)V

    goto :goto_16

    .line 735
    :sswitch_27
    iget v1, p1, Lcom/android/launcher3/Launcher$PendingAddArguments;->appWidgetId:I

    iget-wide v2, p1, Lcom/android/launcher3/Launcher$PendingAddArguments;->container:J

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    goto :goto_16

    .line 738
    :sswitch_31
    iget v0, p1, Lcom/android/launcher3/Launcher$PendingAddArguments;->appWidgetId:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(I)V

    goto :goto_16

    .line 729
    nop

    :sswitch_data_38
    .sparse-switch
        0x1 -> :sswitch_1a
        0x5 -> :sswitch_27
        0xc -> :sswitch_31
    .end sparse-switch
.end method

.method private completeAddShortcut(Landroid/content/Intent;JJII)V
    .registers 32

    .prologue
    .line 1509
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1510
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/ItemInfo;->dropPos:[I

    .line 1511
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v10

    .line 1513
    invoke-static/range {p0 .. p1}, Lcom/android/launcher3/InstallShortcutReceiver;->fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v20

    .line 1514
    if-nez v20, :cond_1b

    .line 1568
    :cond_1a
    :goto_1a
    return-void

    .line 1517
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v7

    .line 1521
    if-ltz p6, :cond_6f

    if-ltz p7, :cond_6f

    .line 1522
    const/4 v6, 0x0

    aput p6, v11, v6

    .line 1523
    const/4 v6, 0x1

    aput p7, v11, v6

    .line 1524
    const/16 v16, 0x1

    .line 1526
    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1527
    const/4 v6, 0x0

    invoke-static {v10, v6}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    .line 1531
    :cond_39
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v12, 0x0

    .line 1532
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v8, p2

    .line 1531
    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DragView;Ljava/lang/Runnable;)Z

    move-result v6

    .line 1532
    if-nez v6, :cond_1a

    .line 1535
    new-instance v13, Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {v13}, Lcom/android/launcher3/DropTarget$DragObject;-><init>()V

    .line 1536
    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 1537
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v12, 0x0

    .line 1538
    const/4 v14, 0x1

    move-object v9, v7

    .line 1537
    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v6

    .line 1538
    if-nez v6, :cond_1a

    move/from16 v6, v16

    .line 1553
    :goto_61
    if-nez v6, :cond_99

    .line 1554
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_1a

    .line 1541
    :cond_6f
    if-eqz v6, :cond_87

    .line 1543
    const/4 v8, 0x0

    aget v13, v6, v8

    const/4 v8, 0x1

    aget v14, v6, v8

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v12, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher3/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v6

    .line 1544
    if-eqz v6, :cond_85

    const/4 v6, 0x1

    goto :goto_61

    :cond_85
    const/4 v6, 0x0

    goto :goto_61

    .line 1546
    :cond_87
    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v6

    if-eqz v6, :cond_92

    .line 1547
    invoke-static {v10}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$canAddVacantCell(Lcom/android/launcher3/CellLayout;)Z

    move-result v6

    goto :goto_61

    .line 1549
    :cond_92
    const/4 v6, 0x1

    const/4 v8, 0x1

    invoke-virtual {v10, v11, v6, v8}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v6

    goto :goto_61

    .line 1558
    :cond_99
    const/4 v6, 0x0

    aget v18, v11, v6

    const/4 v6, 0x1

    aget v19, v11, v6

    move-object/from16 v12, p0

    move-object/from16 v13, v20

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-static/range {v12 .. v19}, Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1560
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher3/Launcher;->mRestoring:Z

    if-nez v6, :cond_1a

    .line 1561
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v6, 0x0

    aget v18, v11, v6

    const/4 v6, 0x1

    aget v19, v11, v6

    const/16 v20, 0x1

    const/16 v21, 0x1

    .line 1562
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v22

    move-object v13, v7

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 1561
    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 1564
    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1565
    const/4 v6, 0x0

    invoke-static {v10, v6}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    goto/16 :goto_1a
.end method

.method private completeRestoreAppWidget(I)V
    .registers 4

    .prologue
    .line 4211
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/LauncherAppWidgetHostView;

    move-result-object v0

    .line 4212
    if-eqz v0, :cond_c

    instance-of v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;

    if-nez v1, :cond_14

    .line 4213
    :cond_c
    const-string v0, "Launcher"

    const-string v1, "Widget update called, when the widget no longer exists."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4222
    :goto_13
    return-void

    .line 4217
    :cond_14
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 4218
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 4220
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->reinflateWidgetsIfNecessary()V

    .line 4221
    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    goto :goto_13
.end method

.method private copyFolderIconToImage(Lcom/android/launcher3/FolderIcon;)V
    .registers 7

    .prologue
    .line 3082
    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getMeasuredWidth()I

    move-result v1

    .line 3083
    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getMeasuredHeight()I

    move-result v2

    .line 3086
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_13

    .line 3087
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    .line 3089
    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_27

    .line 3090
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_38

    .line 3091
    :cond_27
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    .line 3092
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    .line 3096
    :cond_38
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    if-eqz v0, :cond_c6

    .line 3097
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    .line 3104
    :goto_4a
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/android/launcher3/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v3

    .line 3105
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->customPosition:Z

    .line 3106
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->x:I

    .line 3107
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->y:I

    .line 3108
    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    .line 3109
    int-to-float v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    .line 3111
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3112
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/FolderIcon;->draw(Landroid/graphics/Canvas;)V

    .line 3113
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3114
    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getFolder()Lcom/android/launcher3/Folder;

    move-result-object v1

    if-eqz v1, :cond_9f

    .line 3115
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getFolder()Lcom/android/launcher3/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getPivotXForIconAnimation()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 3116
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getFolder()Lcom/android/launcher3/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getPivotYForIconAnimation()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 3120
    :cond_9f
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b1

    .line 3121
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    .line 3123
    :cond_b1
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3124
    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_c5

    .line 3125
    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->bringToFront()V

    .line 3127
    :cond_c5
    return-void

    .line 3099
    :cond_c6
    new-instance v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    goto/16 :goto_4a
.end method

.method private createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .registers 9

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4303
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 4304
    const-string v1, "alpha"

    new-array v2, v3, [F

    aput v5, v2, v4

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    .line 4305
    const-string v1, "scaleX"

    new-array v2, v3, [F

    aput v5, v2, v4

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 4306
    const-string v2, "scaleY"

    new-array v3, v3, [F

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    .line 4303
    invoke-static {p1, v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4307
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4308
    mul-int/lit8 v1, p2, 0x55

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 4309
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4310
    return-object v0
.end method

.method public static dumpDebugLogsToConsole()V
    .registers 0

    .prologue
    .line 4874
    return-void
.end method

.method private ensurePendingDropLayoutExists(J)J
    .registers 4

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 929
    if-nez v0, :cond_13

    .line 932
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreen()Z

    .line 933
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    move-result-wide p1

    .line 935
    :cond_13
    return-wide p1
.end method

.method private static final fromXml_aroundBody10(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/FolderIcon;
    .registers 7

    .prologue
    .line 2424
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/launcher3/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/FolderIcon;

    move-result-object v0

    return-object v0
.end method

.method private static final fromXml_aroundBody11$advice(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;Lcom/lge/launcher3/folder/FolderColorAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/FolderIcon;
    .registers 12

    .prologue
    .line 109
    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/Launcher;->fromXml_aroundBody10(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/FolderIcon;

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

.method private static final fromXml_aroundBody32(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/FolderIcon;
    .registers 7

    .prologue
    .line 4024
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/launcher3/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/FolderIcon;

    move-result-object v0

    return-object v0
.end method

.method private static final fromXml_aroundBody33$advice(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;Lcom/lge/launcher3/folder/FolderColorAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/FolderIcon;
    .registers 12

    .prologue
    .line 109
    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/Launcher;->fromXml_aroundBody32(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/FolderIcon;

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

.method public static generateViewId()I
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 689
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 690
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    .line 700
    :goto_a
    return v0

    .line 695
    :cond_b
    sget-object v0, Lcom/android/launcher3/Launcher;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 697
    add-int/lit8 v0, v1, 0x1

    .line 698
    const v2, 0xffffff

    if-le v0, v2, :cond_19

    const/4 v0, 0x1

    .line 699
    :cond_19
    sget-object v2, Lcom/android/launcher3/Launcher;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 700
    goto :goto_a
.end method

.method public static getCustomAppWidget(Ljava/lang/String;)Lcom/android/launcher3/CustomAppWidget;
    .registers 2

    .prologue
    .line 4898
    sget-object v0, Lcom/android/launcher3/Launcher;->sCustomAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CustomAppWidget;

    return-object v0
.end method

.method public static getCustomAppWidgets()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/CustomAppWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4902
    sget-object v0, Lcom/android/launcher3/Launcher;->sCustomAppWidgets:Ljava/util/HashMap;

    return-object v0
.end method

.method private getSpanForWidget(Landroid/content/ComponentName;II)[I
    .registers 15

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;->aspectOf()Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;

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

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/Launcher;->getSpanForWidget_aroundBody5$advice(Lcom/android/launcher3/Launcher;Landroid/content/ComponentName;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;Landroid/content/ComponentName;IILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)[I

    move-result-object v0

    return-object v0
.end method

.method private static final getSpanForWidget_aroundBody4(Lcom/android/launcher3/Launcher;Landroid/content/ComponentName;IILorg/aspectj/lang/JoinPoint;)[I
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 1571
    invoke-static {p0, p1, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1574
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 1575
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    .line 1576
    invoke-static {p0, v1, v0, v3}, Lcom/android/launcher3/CellLayout;->rectToCell(Lcom/android/launcher3/Launcher;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static final getSpanForWidget_aroundBody5$advice(Lcom/android/launcher3/Launcher;Landroid/content/ComponentName;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;Landroid/content/ComponentName;IILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)[I
    .registers 13

    .prologue
    .line 10
    invoke-interface {p10}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 13
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, p6, p7, p8, v1}, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method private getTypedText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getWidgetsView_aroundBody6(Lcom/android/launcher3/Launcher;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/widget/WidgetsContainerView;
    .registers 3

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    return-object v0
.end method

.method private static final getWidgetsView_aroundBody7$advice(Lcom/android/launcher3/Launcher;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/widget/WidgetsContainerView;
    .registers 8

    .prologue
    .line 255
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 257
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    if-nez v1, :cond_26

    .line 258
    const v1, 0x7f0e0058

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 259
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->ajc$set$mWidgetsView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/WidgetsContainerView;)V

    .line 260
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/WidgetsContainerView;->setVisibility(I)V

    .line 262
    :cond_26
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsModel(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/model/WidgetsModel;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 263
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsModel(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/model/WidgetsModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/WidgetsContainerView;->addWidgets(Lcom/android/launcher3/model/WidgetsModel;)V

    .line 264
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->ajc$set$mWidgetsModel(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/WidgetsModel;)V

    .line 266
    :cond_41
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v0

    return-object v0
.end method

.method private growAndFadeOutFolderIcon(Lcom/android/launcher3/FolderIcon;)V
    .registers 12

    .prologue
    const/high16 v4, 0x3fc00000    # 1.5f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3130
    if-nez p1, :cond_7

    .line 3153
    :goto_6
    return-void

    .line 3131
    :cond_7
    const-string v0, "alpha"

    new-array v1, v9, [F

    const/4 v2, 0x0

    aput v2, v1, v8

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 3132
    const-string v0, "scaleX"

    new-array v1, v9, [F

    aput v4, v1, v8

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 3133
    const-string v0, "scaleY"

    new-array v1, v9, [F

    aput v4, v1, v8

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 3135
    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 3136
    iget-wide v0, v0, Lcom/android/launcher3/FolderInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v0, v0, v6

    if-nez v0, :cond_4b

    .line 3137
    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 3138
    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 3139
    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher3/CellLayout;->setFolderLeaveBehindCell(II)V

    .line 3143
    :cond_4b
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->copyFolderIconToImage(Lcom/android/launcher3/FolderIcon;)V

    .line 3144
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/FolderIcon;->setVisibility(I)V

    .line 3146
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v8

    .line 3147
    aput-object v3, v1, v9

    const/4 v2, 0x2

    aput-object v4, v1, v2

    .line 3146
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3148
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 3149
    new-instance v1, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v2, 0x64

    invoke-direct {v1, v2, v8}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3151
    :cond_72
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3152
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6
.end method

.method private handleActivityResult(IILandroid/content/Intent;)V
    .registers 14

    .prologue
    const/16 v5, 0x1f4

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 751
    invoke-direct {p0, v2}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Z)V

    .line 752
    iget v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetId:I

    .line 753
    iput v4, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetId:I

    .line 755
    new-instance v6, Lcom/android/launcher3/Launcher$8;

    invoke-direct {v6, p0, p2}, Lcom/android/launcher3/Launcher$8;-><init>(Lcom/android/launcher3/Launcher;I)V

    .line 763
    const/16 v0, 0xb

    if-ne p1, v0, :cond_36

    .line 764
    if-eqz p3, :cond_28

    .line 765
    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 766
    :goto_1d
    if-nez p2, :cond_2a

    .line 767
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(II)V

    .line 768
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3, v6, v5, v2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 887
    :cond_27
    :goto_27
    return-void

    :cond_28
    move v1, v4

    .line 765
    goto :goto_1d

    .line 770
    :cond_2a
    if-ne p2, v4, :cond_27

    .line 771
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    const/4 v3, 0x0

    .line 772
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-object v0, p0

    .line 771
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;I)V

    goto :goto_27

    .line 775
    :cond_36
    const/16 v0, 0xa

    if-ne p1, v0, :cond_48

    .line 776
    if-ne p2, v4, :cond_27

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 777
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)V

    goto :goto_27

    .line 782
    :cond_48
    const/16 v0, 0x9

    if-eq p1, v0, :cond_7e

    .line 783
    const/4 v0, 0x5

    if-eq p1, v0, :cond_7e

    move v0, v2

    .line 785
    :goto_50
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v7

    .line 787
    if-eqz v0, :cond_c3

    .line 789
    if-eqz p3, :cond_80

    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 791
    :goto_5e
    if-gez v0, :cond_61

    move v0, v1

    .line 798
    :cond_61
    if-ltz v0, :cond_65

    if-nez p2, :cond_88

    .line 799
    :cond_65
    const-string v1, "Launcher"

    const-string v4, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(II)V

    .line 803
    new-instance v0, Lcom/android/launcher3/Launcher$9;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$9;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 809
    if-eqz v7, :cond_82

    .line 812
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_27

    :cond_7e
    move v0, v3

    .line 782
    goto :goto_50

    :cond_80
    move v0, v4

    .line 790
    goto :goto_5e

    .line 814
    :cond_82
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v3, v0, v5, v2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_27

    .line 818
    :cond_88
    if-nez v7, :cond_b9

    .line 819
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v6, v1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v1, v6, v8

    if-nez v1, :cond_a0

    .line 822
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    .line 823
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v6, v4, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v6

    .line 822
    iput-wide v6, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 825
    :cond_a0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v6, v4, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    .line 827
    invoke-virtual {v1, v3}, Lcom/android/launcher3/CellLayout;->setDropPending(Z)V

    .line 828
    new-instance v4, Lcom/android/launcher3/Launcher$10;

    invoke-direct {v4, p0, p2, v0, v1}, Lcom/android/launcher3/Launcher$10;-><init>(Lcom/android/launcher3/Launcher;IILcom/android/launcher3/CellLayout;)V

    .line 835
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto/16 :goto_27

    .line 839
    :cond_b9
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    .line 838
    invoke-direct {p0, p1, p3, v0, v1}, Lcom/android/launcher3/Launcher;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/Launcher$PendingAddArguments;

    move-result-object v0

    .line 840
    sput-object v0, Lcom/android/launcher3/Launcher;->sPendingAddItem:Lcom/android/launcher3/Launcher$PendingAddArguments;

    goto/16 :goto_27

    .line 846
    :cond_c3
    const/16 v0, 0xc

    if-ne p1, v0, :cond_da

    .line 847
    if-ne p2, v4, :cond_27

    .line 850
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    .line 849
    invoke-direct {p0, p1, p3, v1, v0}, Lcom/android/launcher3/Launcher;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/Launcher$PendingAddArguments;

    move-result-object v0

    .line 851
    if-eqz v7, :cond_d5

    .line 852
    sput-object v0, Lcom/android/launcher3/Launcher;->sPendingAddItem:Lcom/android/launcher3/Launcher$PendingAddArguments;

    goto/16 :goto_27

    .line 854
    :cond_d5
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->completeAdd(Lcom/android/launcher3/Launcher$PendingAddArguments;)J

    goto/16 :goto_27

    .line 866
    :cond_da
    if-ne p2, v4, :cond_104

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, -0x1

    cmp-long v0, v0, v8

    if-eqz v0, :cond_104

    .line 868
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    .line 867
    invoke-direct {p0, p1, p3, v4, v0}, Lcom/android/launcher3/Launcher;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/Launcher$PendingAddArguments;

    move-result-object v0

    .line 869
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 870
    sput-object v0, Lcom/android/launcher3/Launcher;->sPendingAddItem:Lcom/android/launcher3/Launcher$PendingAddArguments;

    .line 885
    :cond_f4
    :goto_f4
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->clearAnimatedView()V

    goto/16 :goto_27

    .line 872
    :cond_fb
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->completeAdd(Lcom/android/launcher3/Launcher$PendingAddArguments;)J

    .line 873
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3, v6, v5, v2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_f4

    .line 876
    :cond_104
    if-nez p2, :cond_f4

    .line 877
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3, v6, v5, v2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 880
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v0, v0, v4

    if-nez v0, :cond_f4

    .line 881
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 882
    invoke-static {v0, v2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    goto :goto_f4
.end method

.method private static intToState(I)Lcom/android/launcher3/Launcher$State;
    .registers 5

    .prologue
    .line 1282
    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    .line 1283
    invoke-static {}, Lcom/android/launcher3/Launcher$State;->values()[Lcom/android/launcher3/Launcher$State;

    move-result-object v2

    .line 1284
    const/4 v0, 0x0

    :goto_7
    array-length v3, v2

    if-lt v0, v3, :cond_c

    move-object v0, v1

    .line 1290
    :goto_b
    return-object v0

    .line 1285
    :cond_c
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher$State;->ordinal()I

    move-result v3

    if-ne v3, p0, :cond_17

    .line 1286
    aget-object v0, v2, v0

    goto :goto_b

    .line 1284
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private static final isOnCustomContent_aroundBody8(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher;)Z
    .registers 3

    .prologue
    .line 2209
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isOnCustomContent()Z

    move-result v0

    return v0
.end method

.method private static final isOnCustomContent_aroundBody9$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/nativejoin/LauncherAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method private static final mAppsView_aroundBody0(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AllAppsContainerView;Lorg/aspectj/lang/JoinPoint;)V
    .registers 4

    .prologue
    .line 1416
    iput-object p2, p1, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    return-void
.end method

.method private static final mAppsView_aroundBody1$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AllAppsContainerView;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 9

    .prologue
    .line 119
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-nez v0, :cond_26

    .line 120
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 121
    const v1, 0x7f0e005a

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 122
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->ajc$set$mAppsView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AllAppsContainerView;)V

    .line 123
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mAppsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 125
    :cond_26
    return-void
.end method

.method private static final mWidgetsView_aroundBody2(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/WidgetsContainerView;)V
    .registers 3

    .prologue
    .line 1417
    iput-object p2, p1, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    return-void
.end method

.method private static final mWidgetsView_aroundBody3$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/WidgetsContainerView;Lcom/lge/launcher3/nativejoin/LauncherAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5

    .prologue
    .line 219
    return-void
.end method

.method private mapConfigurationOriActivityInfoOri(I)I
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 4532
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 4534
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    move p1, v2

    .line 4546
    :goto_13
    :pswitch_13
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 4549
    aput v1, v0, v3

    .line 4551
    const/16 v5, 0x9

    aput v5, v0, v2

    const/4 v5, 0x3

    .line 4552
    const/16 v6, 0x8

    .line 4548
    aput v6, v0, v5

    .line 4557
    if-ne p1, v2, :cond_34

    .line 4560
    :goto_23
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0

    .line 4543
    :pswitch_2d
    if-ne p1, v2, :cond_32

    move v0, v1

    :goto_30
    move p1, v0

    goto :goto_13

    :cond_32
    move v0, v2

    .line 4544
    goto :goto_30

    :cond_34
    move v1, v3

    goto :goto_23

    .line 4534
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_13
        :pswitch_2d
        :pswitch_13
        :pswitch_2d
    .end packed-switch
.end method

.method private markFirstRunActivityShown()V
    .registers 4

    .prologue
    .line 4661
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4662
    const-string v1, "launcher.first_run_activity_displayed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4663
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4664
    return-void
.end method

.method private markIntroScreenDismissed()V
    .registers 4

    .prologue
    .line 4724
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4725
    const-string v1, "launcher.intro_screen_dismissed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4726
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4727
    return-void
.end method

.method private static final onClickWallpaperPicker_aroundBody16(Lcom/android/launcher3/Launcher;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;)V
    .registers 5

    .prologue
    .line 2850
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2851
    const/16 v1, 0xa

    .line 2850
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2853
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1d

    .line 2854
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onClickWallpaperPicker(Landroid/view/View;)V

    .line 2856
    :cond_1d
    return-void
.end method

.method private static final onClickWallpaperPicker_aroundBody17$advice(Lcom/android/launcher3/Launcher;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAspect;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 11

    .prologue
    .line 297
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 299
    :try_start_6
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_WALLPAPER_LIST_ACTIVITY:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/android/launcher3/Launcher;->ajc$get$REQUEST_PICK_WALLPAPER()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_18} :catch_26

    .line 304
    :goto_18
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mLauncherCallbacks(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherCallbacks;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 305
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mLauncherCallbacks(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherCallbacks;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/android/launcher3/LauncherCallbacks;->onClickWallpaperPicker(Landroid/view/View;)V

    .line 307
    :cond_25
    return-void

    .line 301
    :catch_26
    move-exception v1

    .line 302
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityNotFoundException - "

    invoke-static {v2, v3, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_18
.end method

.method private static final onLongClick_aroundBody26(Lcom/android/launcher3/Launcher;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3257
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3337
    :cond_9
    :goto_9
    return v2

    .line 3258
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3259
    invoke-static {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3260
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_9

    .line 3262
    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->CLEAN_VIEW:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_9

    .line 3266
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    if-ne p1, v0, :cond_2f

    .line 3267
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onLongClickAllAppsButton(Landroid/view/View;)V

    move v2, v3

    .line 3268
    goto :goto_9

    .line 3271
    :cond_2f
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->isLongClickFromKeyEnter:Z

    if-eqz v0, :cond_37

    .line 3272
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->isLongClickFromKeyEnter:Z

    move v2, v3

    .line 3273
    goto :goto_9

    .line 3276
    :cond_37
    instance-of v0, p1, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_61

    .line 3277
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3278
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3279
    invoke-static {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 3280
    invoke-static {p0}, Lcom/lge/launcher3/util/VibratorManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/VibratorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/util/VibratorManager;->vibrateIfSystemHapticFeedbackEnabled()V

    .line 3283
    :cond_5c
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->showOverviewMode(Z)V

    move v2, v3

    .line 3289
    goto :goto_9

    .line 3300
    :cond_61
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_fd

    .line 3301
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 3302
    new-instance v1, Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 3303
    iget-object v0, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 3304
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->resetAddInfo()V

    .line 3309
    :goto_79
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    .line 3310
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v5}, Lcom/android/launcher3/DragController;->isDragging()Z

    move-result v5

    if-nez v5, :cond_ad

    .line 3311
    if-nez v0, :cond_c5

    .line 3313
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 3314
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 3315
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_24:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, p0, v1, v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v5

    move-object v0, p0

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Launcher;->performHapticFeedback_aroundBody25$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/crosscutting/GlobalAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    .line 3316
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->startReordering(Landroid/view/View;)Z

    :cond_ad
    :goto_ad
    move v2, v3

    .line 3337
    goto/16 :goto_9

    .line 3318
    :cond_b0
    invoke-static {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 3319
    invoke-static {p0}, Lcom/lge/launcher3/util/VibratorManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/VibratorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/util/VibratorManager;->vibrateIfSystemHapticFeedbackEnabled()V

    .line 3322
    :cond_c1
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->showOverviewMode(Z)V

    goto :goto_ad

    .line 3325
    :cond_c5
    if-eqz v4, :cond_d8

    .line 3326
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 3327
    iget v5, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    .line 3328
    iget v6, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    .line 3326
    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/Hotseat;->getOrderInHotseat(II)I

    move-result v4

    .line 3325
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->isAllAppsButtonRank(I)Z

    move-result v4

    .line 3328
    if-eqz v4, :cond_d8

    move v2, v3

    .line 3329
    :cond_d8
    instance-of v0, v0, Lcom/android/launcher3/Folder;

    if-nez v0, :cond_ad

    if-nez v2, :cond_ad

    .line 3331
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->startDrag(Lcom/android/launcher3/CellLayout$CellInfo;)V

    .line 3332
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    :try_start_e5
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_e7} :catch_f4

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    nop

    .line 3333
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->enterSpringLoadedDragMode()V

    goto :goto_ad

    .line 3332
    :catch_f4
    move-exception v1

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    throw v1

    :cond_fd
    move-object v0, v6

    move-object v1, v6

    goto/16 :goto_79
.end method

.method private static final onLongClick_aroundBody27$advice(Lcom/android/launcher3/Launcher;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAspect;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 9

    .prologue
    .line 377
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 379
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 380
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Memory is full. so onLongClick() is canceled."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    .line 384
    :goto_17
    return v0

    :cond_18
    invoke-static {p0, p4, p2}, Lcom/android/launcher3/Launcher;->onLongClick_aroundBody26(Lcom/android/launcher3/Launcher;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    goto :goto_17
.end method

.method private onStartForResult(I)V
    .registers 3

    .prologue
    .line 2107
    if-ltz p1, :cond_6

    .line 2108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Z)V

    .line 2110
    :cond_6
    return-void
.end method

.method private static final performHapticFeedback_aroundBody24(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;IILorg/aspectj/lang/JoinPoint;)Z
    .registers 6

    .prologue
    .line 3314
    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/Workspace;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method private static final performHapticFeedback_aroundBody25$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/crosscutting/GlobalAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 9

    .prologue
    .line 50
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/VibratorManager;->isVibratorFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 52
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->performHapticFeedback_aroundBody24(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;IILorg/aspectj/lang/JoinPoint;)Z

    .line 54
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/Launcher$PendingAddArguments;
    .registers 9

    .prologue
    .line 909
    new-instance v0, Lcom/android/launcher3/Launcher$PendingAddArguments;

    invoke-direct {v0}, Lcom/android/launcher3/Launcher$PendingAddArguments;-><init>()V

    .line 910
    iput p1, v0, Lcom/android/launcher3/Launcher$PendingAddArguments;->requestCode:I

    .line 911
    iput-object p2, v0, Lcom/android/launcher3/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 912
    iget-wide v2, p4, Lcom/android/launcher3/ItemInfo;->container:J

    iput-wide v2, v0, Lcom/android/launcher3/Launcher$PendingAddArguments;->container:J

    .line 913
    iget-wide v2, p4, Lcom/android/launcher3/ItemInfo;->screenId:J

    iput-wide v2, v0, Lcom/android/launcher3/Launcher$PendingAddArguments;->screenId:J

    .line 914
    iget v1, p4, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v1, v0, Lcom/android/launcher3/Launcher$PendingAddArguments;->cellX:I

    .line 915
    iget v1, p4, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v1, v0, Lcom/android/launcher3/Launcher$PendingAddArguments;->cellY:I

    .line 916
    iput p3, v0, Lcom/android/launcher3/Launcher$PendingAddArguments;->appWidgetId:I

    .line 917
    return-object v0
.end method

.method private processShortcutFromDrop(Landroid/content/ComponentName;JJ[I)V
    .registers 11

    .prologue
    const/4 v2, 0x1

    .line 2340
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->resetAddInfo()V

    .line 2341
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iput-wide p2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 2342
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iput-wide p4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 2343
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/ItemInfo;->dropPos:[I

    .line 2345
    if-eqz p6, :cond_20

    .line 2346
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    const/4 v1, 0x0

    aget v1, p6, v1

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 2347
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    aget v1, p6, v2

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 2350
    :cond_20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2351
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2352
    invoke-static {p0, v0, v2}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 2353
    return-void
.end method

.method private reinflateQSBIfNecessary()V
    .registers 3

    .prologue
    .line 3715
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    instance-of v0, v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-eqz v0, :cond_23

    .line 3716
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->isReinflateRequired()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3717
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->removeView(Landroid/view/View;)V

    .line 3718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    .line 3719
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOrCreateQsbBar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->setQsbSearchBar(Landroid/view/View;)V

    .line 3721
    :cond_23
    return-void
.end method

.method private resetAddInfo()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    .line 2266
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iput-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 2267
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iput-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 2268
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iput v2, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 2269
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iput v2, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2270
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iput v2, v1, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    iput v2, v0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 2271
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/ItemInfo;->dropPos:[I

    .line 2272
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/16 v2, -0x3e9

    const-wide/16 v6, -0x1

    .line 1300
    if-nez p1, :cond_8

    .line 1334
    :goto_7
    return-void

    .line 1304
    :cond_8
    const-string v0, "launcher.state"

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->intToState(I)Lcom/android/launcher3/Launcher$State;

    .line 1306
    const-string v0, "launcher.current_screen"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1308
    if-eq v0, v2, :cond_24

    .line 1309
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->setRestorePage(I)V

    .line 1312
    :cond_24
    const-string v0, "launcher.add_container"

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1313
    const-string v2, "launcher.add_screen"

    invoke-virtual {p1, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1315
    cmp-long v4, v0, v6

    if-eqz v4, :cond_82

    cmp-long v4, v2, v6

    if-lez v4, :cond_82

    .line 1316
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iput-wide v0, v4, Lcom/android/launcher3/ItemInfo;->container:J

    .line 1317
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iput-wide v2, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 1318
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    const-string v1, "launcher.add_cell_x"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 1319
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    const-string v1, "launcher.add_cell_y"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 1320
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    const-string v1, "launcher.add_span_x"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 1321
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    const-string v1, "launcher.add_span_y"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 1323
    const-string v0, "launcher.add_widget_info"

    .line 1322
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1324
    if-nez v0, :cond_8e

    .line 1325
    const/4 v0, 0x0

    .line 1324
    :goto_73
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 1327
    const-string v0, "launcher.add_widget_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetId:I

    .line 1328
    invoke-direct {p0, v5}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Z)V

    .line 1329
    iput-boolean v5, p0, Lcom/android/launcher3/Launcher;->mRestoring:Z

    .line 1333
    :cond_82
    const-string v0, "launcher.view_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1332
    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    goto/16 :goto_7

    .line 1325
    :cond_8e
    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    goto :goto_73
.end method

.method public static sendCleanViewActivatedIntent(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$sendCleanViewActivatedIntent(Landroid/app/Activity;)V

    return-void
.end method

.method public static sendCleanViewDeactivatedIntent(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$sendCleanViewDeactivatedIntent(Landroid/app/Activity;)V

    return-void
.end method

.method private sendLoadingCompleteBroadcastIfNecessary()V
    .registers 4

    .prologue
    .line 4279
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "launcher.first_load_complete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 4281
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4282
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher3.action.FIRST_LOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4283
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4284
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4285
    const-string v1, "launcher.first_load_complete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4288
    :cond_2f
    return-void
.end method

.method private setWaitingForResult(Z)V
    .registers 4

    .prologue
    .line 2252
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    .line 2253
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mWaitingForResult:Z

    .line 2254
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eq v0, v1, :cond_f

    .line 2255
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onWorkspaceLockedChanged()V

    .line 2257
    :cond_f
    return-void
.end method

.method private setWorkspaceBackground(I)V
    .registers 5

    .prologue
    .line 3380
    packed-switch p1, :pswitch_data_24

    .line 3388
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3390
    :goto_c
    return-void

    .line 3382
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    .line 3385
    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    .line 3380
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_d
        :pswitch_1b
    .end packed-switch
.end method

.method private setWorkspaceLoading(Z)V
    .registers 4

    .prologue
    .line 2244
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    .line 2245
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 2246
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eq v0, v1, :cond_f

    .line 2247
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onWorkspaceLockedChanged()V

    .line 2249
    :cond_f
    return-void
.end method

.method private setupTransparentSystemBarsForLmp()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1708
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1709
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1710
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1711
    or-int/lit16 v2, v2, 0x700

    .line 1710
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1714
    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1716
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1717
    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1718
    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 1720
    :cond_25
    return-void
.end method

.method private shouldRunFirstRunActivity()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 4639
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v1

    if-nez v1, :cond_12

    .line 4640
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "launcher.first_run_activity_displayed"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_12

    .line 4639
    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private shouldShowIntroScreen()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 4692
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasDismissableIntroScreen()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4693
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "launcher.intro_screen_dismissed"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_12

    .line 4692
    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private shouldShowWeightWatcher()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3886
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 3887
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3888
    const-string v1, "debug.show_mem"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3890
    return v0
.end method

.method private showAppsOrWidgets(Lcom/android/launcher3/Launcher$State;ZZ)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 3533
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-eq v1, v2, :cond_14

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-eq v1, v2, :cond_14

    .line 3534
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-eq v1, v2, :cond_14

    .line 3558
    :cond_13
    :goto_13
    return v0

    .line 3537
    :cond_14
    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-eq p1, v1, :cond_1c

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne p1, v1, :cond_13

    .line 3541
    :cond_1c
    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-ne p1, v1, :cond_49

    .line 3542
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    invoke-virtual {v1, p2, p3}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToAllApps(ZZ)V

    .line 3548
    :goto_25
    :try_start_25
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_27} :catch_4f

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    nop

    .line 3551
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mUserPresent:Z

    .line 3552
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->updateAutoAdvanceState()V

    .line 3553
    new-array v0, v0, [Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    .line 3556
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3557
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3558
    const/4 v0, 0x1

    goto :goto_13

    .line 3544
    :cond_49
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWidgets(Z)V

    goto :goto_25

    .line 3548
    :catch_4f
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    throw v0
.end method

.method private showBrokenAppInstallDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    .prologue
    .line 2666
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2667
    const v1, 0x7f0f0057

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2668
    const v1, 0x7f0f0058

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2669
    const v1, 0x7f0f0056

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2670
    const v1, 0x7f0f0055

    .line 2671
    new-instance v2, Lcom/android/launcher3/Launcher$18;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/Launcher$18;-><init>(Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    .line 2670
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2677
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2678
    return-void
.end method

.method private static final showOutlinesTemporarily_aroundBody12(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V
    .registers 2

    .prologue
    .line 2506
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->showOutlinesTemporarily()V

    return-void
.end method

.method private static final showOutlinesTemporarily_aroundBody13$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;Lcom/lge/launcher3/nativejoin/LauncherAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4

    .prologue
    .line 370
    return-void
.end method

.method private shrinkAndFadeInFolderIcon(Lcom/android/launcher3/FolderIcon;)V
    .registers 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3156
    if-nez p1, :cond_7

    .line 3185
    :goto_6
    return-void

    .line 3157
    :cond_7
    const-string v0, "alpha"

    new-array v1, v7, [F

    aput v4, v1, v6

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 3158
    const-string v0, "scaleX"

    new-array v2, v7, [F

    aput v4, v2, v6

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 3159
    const-string v0, "scaleY"

    new-array v3, v7, [F

    aput v4, v3, v6

    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 3161
    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 3164
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    .line 3165
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->copyFolderIconToImage(Lcom/android/launcher3/FolderIcon;)V

    .line 3166
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v6

    .line 3167
    aput-object v2, v5, v7

    const/4 v1, 0x2

    aput-object v3, v5, v1

    .line 3166
    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3168
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3169
    new-instance v2, Lcom/android/launcher3/Launcher$21;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/Launcher$21;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/FolderIcon;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3184
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6
.end method

.method private startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .registers 15

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_19:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {p1, p2, p3}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$if$1$e4064402(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->aspectOf()Lcom/lge/launcher3/util/VdfDataPopupAspect;

    move-result-object v5

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v10, v4

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/Launcher;->startActivity_aroundBody21$advice(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/util/VdfDataPopupAspect;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    :goto_29
    return v0

    :cond_2a
    invoke-static {p0, p1, p2, p3, v4}, Lcom/android/launcher3/Launcher;->startActivity_aroundBody20(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    goto :goto_29
.end method

.method private static final startActivitySafely_aroundBody22(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 3064
    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v1, :cond_16

    invoke-static {p0, p2}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 3065
    const v1, 0x7f0f0020

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3074
    :goto_15
    return v0

    .line 3069
    :cond_16
    :try_start_16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_19} :catch_1b

    move-result v0

    goto :goto_15

    .line 3070
    :catch_1b
    move-exception v1

    .line 3071
    const v2, 0x7f0f001e

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3072
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to launch. tag="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private static final startActivitySafely_aroundBody23$advice(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAspect;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 18

    .prologue
    .line 188
    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 189
    const-string v0, "com.android.settings.Settings"

    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 190
    new-instance p7, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v0, "LGHome"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.android.settings: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/high16 v0, 0x10200000

    invoke-virtual {p7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    :cond_36
    invoke-interface/range {p10 .. p10}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 197
    const/4 v2, 0x0

    .line 198
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mIsSafeModeEnabled(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-static {v0, p7}, Lcom/android/launcher3/Utilities;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherAspect$com_android_launcher3_Utilities$isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 199
    const v1, 0x7f0f0020

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    const/4 v0, 0x0

    .line 215
    :goto_55
    return v0

    .line 203
    :cond_56
    :try_start_56
    invoke-virtual {v0, p6, p7, p8}, Lcom/android/launcher3/Launcher;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherAspect$com_android_launcher3_Launcher$startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_59
    .catch Landroid/content/ActivityNotFoundException; {:try_start_56 .. :try_end_59} :catch_5b

    move-result v0

    goto :goto_55

    .line 204
    :catch_5b
    move-exception v3

    .line 205
    invoke-virtual {p7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 206
    if-nez v1, :cond_70

    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_70

    .line 207
    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_70
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 210
    const/4 v6, 0x0

    .line 209
    invoke-virtual {v4, v5, v1, v6}, Lcom/lge/mdm/LGMDMManagerInternal;->checkStartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8a

    .line 211
    const v1, 0x7f0f001e

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    :cond_8a
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_LauncherAspect$com_lge_launcher3_nativejoin_LauncherAspect$TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unable to launch. tag="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " intent="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_55
.end method

.method private static final startActivity_aroundBody20(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 18

    .prologue
    .line 2975
    const/high16 v2, 0x10000000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2979
    if-eqz p1, :cond_da

    .line 2980
    :try_start_7
    const-string v2, "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_da

    .line 2979
    const/4 v2, 0x1

    move v3, v2

    .line 2981
    :goto_11
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v9

    .line 2982
    invoke-static {p0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v4

    .line 2984
    const/4 v2, 0x0

    .line 2985
    const-string v5, "profile"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16c

    .line 2986
    const-string v2, "profile"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2987
    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v2

    move-object v8, v2

    .line 2990
    :goto_2f
    const/4 v2, 0x0

    .line 2991
    if-eqz v3, :cond_ae

    .line 2992
    const/4 v3, 0x0

    .line 2993
    sget-object v2, Lcom/android/launcher3/Launcher;->sClipRevealMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_110

    .line 2995
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2996
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2997
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_166

    .line 2999
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3000
    if-eqz v2, :cond_166

    .line 3001
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3002
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v5, v4

    div-int/lit8 v6, v4, 0x2

    .line 3003
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 3004
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 3005
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I
    :try_end_66
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_66} :catch_12b

    move-result v2

    .line 3009
    :goto_67
    :try_start_67
    sget-object v7, Lcom/android/launcher3/Launcher;->sClipRevealMethod:Ljava/lang/reflect/Method;

    const/4 v10, 0x0

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    .line 3010
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v12

    const/4 v6, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v6

    const/4 v5, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v5

    const/4 v4, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v4

    .line 3009
    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityOptions;
    :try_end_92
    .catch Ljava/lang/IllegalAccessException; {:try_start_67 .. :try_end_92} :catch_de
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_67 .. :try_end_92} :catch_f8
    .catch Ljava/lang/SecurityException; {:try_start_67 .. :try_end_92} :catch_12b

    .line 3019
    :goto_92
    if-nez v2, :cond_112

    :try_start_94
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v3

    if-nez v3, :cond_112

    .line 3021
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3022
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 3021
    invoke-static {p1, v2, v3, v4, v5}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 3030
    :cond_a8
    :goto_a8
    if-eqz v2, :cond_124

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 3033
    :cond_ae
    :goto_ae
    if-eqz v8, :cond_ba

    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_159

    .line 3035
    :cond_ba
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    :try_end_bd
    .catch Ljava/lang/SecurityException; {:try_start_94 .. :try_end_bd} :catch_12b

    move-result-object v3

    .line 3040
    :try_start_be
    new-instance v4, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 3042
    invoke-virtual {p0, p2, v2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_d5
    .catchall {:try_start_be .. :try_end_d5} :catchall_126

    .line 3044
    :try_start_d5
    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 3051
    :goto_d8
    const/4 v2, 0x1

    .line 3059
    :goto_d9
    return v2

    .line 2979
    :cond_da
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_11

    .line 3011
    :catch_de
    move-exception v2

    .line 3012
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not call makeClipRevealAnimation: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    const/4 v2, 0x0

    sput-object v2, Lcom/android/launcher3/Launcher;->sClipRevealMethod:Ljava/lang/reflect/Method;

    move-object v2, v3

    goto :goto_92

    .line 3014
    :catch_f8
    move-exception v2

    .line 3015
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not call makeClipRevealAnimation: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    const/4 v2, 0x0

    sput-object v2, Lcom/android/launcher3/Launcher;->sClipRevealMethod:Ljava/lang/reflect/Method;

    :cond_110
    move-object v2, v3

    goto :goto_92

    .line 3023
    :cond_112
    if-nez v2, :cond_a8

    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpMR1()Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 3028
    const v2, 0x7f050001

    const/high16 v3, 0x7f050000

    .line 3027
    invoke-static {p0, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    goto :goto_a8

    .line 3030
    :cond_124
    const/4 v2, 0x0

    goto :goto_ae

    .line 3043
    :catchall_126
    move-exception v2

    .line 3044
    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 3045
    throw v2
    :try_end_12b
    .catch Ljava/lang/SecurityException; {:try_start_d5 .. :try_end_12b} :catch_12b

    .line 3052
    :catch_12b
    move-exception v2

    .line 3053
    const v3, 0x7f0f001e

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3054
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Launcher does not have the permission to launch . Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity. tag="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3057
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3054
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3059
    const/4 v2, 0x0

    goto :goto_d9

    .line 3048
    :cond_159
    :try_start_159
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 3049
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 3048
    invoke-virtual {v9, v3, v8, v4, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->startActivityForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_164
    .catch Ljava/lang/SecurityException; {:try_start_159 .. :try_end_164} :catch_12b

    goto/16 :goto_d8

    :cond_166
    move v2, v4

    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_67

    :cond_16c
    move-object v8, v2

    goto/16 :goto_2f
.end method

.method private static final startActivity_aroundBody21$advice(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/util/VdfDataPopupAspect;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 12

    .prologue
    .line 26
    invoke-interface {p10}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p7, p6, p8}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$inlineAccessMethod$com_lge_launcher3_util_VdfDataPopupAspect$com_lge_launcher3_util_VdfDataPopupAspect$startDataConnectionDialogActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 27
    invoke-static {p5, p7}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$inlineAccessFieldSet$com_lge_launcher3_util_VdfDataPopupAspect$com_lge_launcher3_util_VdfDataPopupAspect$mPendingIntent(Lcom/lge/launcher3/util/VdfDataPopupAspect;Landroid/content/Intent;)V

    .line 28
    const/4 v0, 0x1

    .line 30
    :goto_10
    return v0

    :cond_11
    invoke-static {p0, p6, p7, p8, p4}, Lcom/android/launcher3/Launcher;->startActivity_aroundBody20(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    goto :goto_10
.end method

.method private static final startAppShortcutOrInfoActivity_aroundBody14(Lcom/android/launcher3/Launcher;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;)V
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 2752
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2755
    instance-of v0, v1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_4b

    move-object v0, v1

    .line 2756
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 2757
    iget-object v2, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2758
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 2759
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2760
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v3, v7

    aget v6, v3, v9

    .line 2761
    aget v7, v3, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v3, v3, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v3, v8

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2760
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    .line 2770
    :goto_32
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v1

    .line 2771
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStats:Lcom/android/launcher3/Stats;

    invoke-virtual {v3, p1, v0, v2}, Lcom/android/launcher3/Stats;->recordLaunch(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ShortcutInfo;)V

    .line 2773
    if-eqz v1, :cond_4a

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_4a

    .line 2774
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    .line 2775
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 2777
    :cond_4a
    return-void

    .line 2763
    :cond_4b
    instance-of v0, v1, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_56

    .line 2764
    const/4 v2, 0x0

    move-object v0, v1

    .line 2765
    check-cast v0, Lcom/android/launcher3/AppInfo;

    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    goto :goto_32

    .line 2767
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input must be a Shortcut or AppInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final startAppShortcutOrInfoActivity_aroundBody15$advice(Lcom/android/launcher3/Launcher;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAspect;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 9

    .prologue
    .line 284
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 285
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 287
    invoke-static {v0, p4}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$checkActionCallSelfPermission(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 288
    if-eqz v1, :cond_13

    .line 289
    invoke-static {v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateScrollToCurrentPageInNormalState(Lcom/android/launcher3/Workspace;)V

    .line 292
    :cond_13
    invoke-static {p0, p4, p2}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity_aroundBody14(Lcom/android/launcher3/Launcher;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;)V

    .line 294
    :cond_16
    return-void
.end method

.method private static final startApplicationUninstallActivity_aroundBody18(Lcom/android/launcher3/Launcher;Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 2953
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_10

    .line 2956
    const v1, 0x7f0f003b

    .line 2957
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2970
    :goto_f
    return v0

    .line 2960
    :cond_10
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2961
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2962
    new-instance v2, Landroid/content/Intent;

    .line 2963
    const-string v3, "android.intent.action.DELETE"

    const-string v4, "package"

    invoke-static {v4, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2962
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2964
    const/high16 v0, 0x10800000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2966
    if-eqz p3, :cond_31

    .line 2967
    const-string v0, "android.intent.extra.USER"

    invoke-virtual {p3, v2, v0}, Lcom/android/launcher3/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2969
    :cond_31
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2970
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private static final startApplicationUninstallActivity_aroundBody19$advice(Lcom/android/launcher3/Launcher;Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAspect;Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 17

    .prologue
    .line 334
    invoke-interface/range {p10 .. p10}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 336
    invoke-static {v0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasDeviceOwner(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {v0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasProfileOwner(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 337
    :cond_12
    invoke-static {p0, p6, p7, p8, p4}, Lcom/android/launcher3/Launcher;->startApplicationUninstallActivity_aroundBody18(Lcom/android/launcher3/Launcher;Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    .line 362
    :goto_16
    return v0

    .line 340
    :cond_17
    and-int/lit8 v1, p7, 0x1

    if-nez v1, :cond_28

    .line 343
    const v1, 0x7f0f003b

    .line 344
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 345
    const/4 v0, 0x0

    goto :goto_16

    .line 347
    :cond_28
    invoke-virtual {p6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {p6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 349
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_DELETE_DIALOG:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "package"

    invoke-static {v5, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 350
    const v1, 0x10808000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    if-eqz p8, :cond_52

    .line 353
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {p8, v3, v1}, Lcom/android/launcher3/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 356
    :cond_52
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->ajc$get$mState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne v1, v2, :cond_66

    .line 357
    const-string v1, "startedBy"

    const-string v2, "Widgets"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    :goto_61
    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 362
    const/4 v0, 0x1

    goto :goto_16

    .line 359
    :cond_66
    const-string v1, "startedBy"

    const-string v2, "Workspace"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_61
.end method

.method private startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .registers 10

    .prologue
    .line 2168
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 2169
    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 2170
    if-nez v1, :cond_16

    .line 2171
    const-string v0, "Launcher"

    const-string v1, "No global search activity found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    :goto_15
    return-void

    .line 2174
    :cond_16
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2175
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2176
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2178
    if-nez p3, :cond_71

    .line 2179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2184
    :goto_2c
    const-string v3, "source"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 2185
    const-string v3, "source"

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    :cond_3d
    const-string v3, "app_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 2189
    const-string v0, "query"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2191
    :cond_4d
    if-eqz p2, :cond_54

    .line 2192
    const-string v0, "select_query"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2194
    :cond_54
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2196
    :try_start_57
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_5a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_15

    .line 2198
    :catch_5b
    move-exception v0

    const-string v0, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Global search activity not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 2181
    :cond_71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_2c
.end method

.method private toggleShowWeightWatcher()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3894
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 3895
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3896
    const-string v3, "debug.show_mem"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3898
    if-eqz v3, :cond_13

    move v0, v1

    .line 3900
    :cond_13
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3901
    const-string v3, "debug.show_mem"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3902
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3904
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWeightWatcher:Landroid/view/View;

    if-eqz v2, :cond_2a

    .line 3905
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWeightWatcher:Landroid/view/View;

    if-eqz v0, :cond_2b

    :goto_27
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3907
    :cond_2a
    return-void

    .line 3905
    :cond_2b
    const/16 v1, 0x8

    goto :goto_27
.end method

.method private tryAndUpdatePredictedApps()V
    .registers 3

    .prologue
    .line 3638
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_11

    .line 3639
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->getPredictedApps()Ljava/util/List;

    move-result-object v0

    .line 3640
    if-eqz v0, :cond_11

    .line 3641
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setPredictedApps(Ljava/util/List;)V

    .line 3644
    :cond_11
    return-void
.end method


# virtual methods
.method addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V
    .registers 11

    .prologue
    .line 2276
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;I)V

    .line 2277
    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;I)V
    .registers 15

    .prologue
    .line 2282
    iget-object v0, p4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_14

    .line 2283
    iput-object p4, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 2284
    iput p1, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetId:I

    .line 2287
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 2288
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    const/4 v5, 0x5

    move-object v1, p4

    move v2, p1

    move-object v3, p0

    .line 2287
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    .line 2304
    :goto_13
    return-void

    .line 2292
    :cond_14
    new-instance v8, Lcom/android/launcher3/Launcher$16;

    invoke-direct {v8, p0}, Lcom/android/launcher3/Launcher$16;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 2300
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 2302
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v8, p5, v2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_13
.end method

.method addFolder(Lcom/android/launcher3/CellLayout;JJII)Lcom/android/launcher3/FolderIcon;
    .registers 20

    .prologue
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_15:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static/range {p4 .. p5}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static/range {p6 .. p6}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static/range {p7 .. p7}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v11

    .line 2414
    :try_start_28
    new-instance v1, Lcom/android/launcher3/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher3/FolderInfo;-><init>()V

    .line 2415
    const v0, 0x7f0f001c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    .line 2418
    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 2420
    sget-object v0, Lcom/android/launcher3/Launcher;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, v1, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 2424
    const v3, 0x7f040014

    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, v1

    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/Launcher;->fromXml_aroundBody11$advice(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;Lcom/lge/launcher3/folder/FolderColorAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/FolderIcon;

    move-result-object v1

    .line 2425
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 2426
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v10

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    .line 2425
    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 2428
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 2429
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_79} :catch_8a

    .line 2430
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object v10, v11

    invoke-virtual/range {v2 .. v10}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$1$36fdc4a3(Lcom/android/launcher3/CellLayout;JJIILorg/aspectj/lang/JoinPoint;)V

    return-object v1

    :catch_8a
    move-exception v0

    move-object v9, v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$1$36fdc4a3(Lcom/android/launcher3/CellLayout;JJIILorg/aspectj/lang/JoinPoint;)V

    throw v9
.end method

.method public addOnResumeCallback(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3790
    return-void
.end method

.method public addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;JJ[III)V
    .registers 17

    .prologue
    .line 2314
    iget v0, p1, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_3a

    .line 2327
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown item type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2317
    :pswitch_1c
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 2318
    const/4 v0, 0x0

    aput p7, v7, v0

    .line 2319
    const/4 v0, 0x1

    aput p8, v7, v0

    move-object v1, p1

    .line 2320
    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;JJ[I[I)V

    .line 2329
    :goto_2f
    return-void

    .line 2324
    :pswitch_30
    iget-object v1, p1, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/Launcher;->processShortcutFromDrop(Landroid/content/ComponentName;JJ[I)V

    goto :goto_2f

    .line 2314
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_30
        :pswitch_5
        :pswitch_5
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public addToCustomContentPage(Landroid/view/View;Lcom/android/launcher3/Launcher$CustomContentCallbacks;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->addToCustomContentPage(Landroid/view/View;Lcom/android/launcher3/Launcher$CustomContentCallbacks;Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method public addWidgetInNewPage(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$addWidgetInNewPage(Lcom/android/launcher3/Launcher;Landroid/content/Intent;)V

    return-void
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 5

    .prologue
    .line 1828
    if-eqz p2, :cond_7

    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1835
    :cond_7
    :goto_7
    return-void

    .line 1829
    :cond_8
    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1830
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_7

    .line 1831
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 1833
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->updateAutoAdvanceState()V

    goto :goto_7
.end method

.method public ajc$privMethod$com_lge_launcher3_dragndrop_FileMannagerIconDropAspect$com_android_launcher3_Launcher$completeAddShortcut(Landroid/content/Intent;JJII)V
    .registers 8

    .prologue
    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/Launcher;->completeAddShortcut(Landroid/content/Intent;JJII)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$resetAddInfo()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->resetAddInfo()V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Launcher$showWorkspace(IZLjava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->showWorkspace(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_nativejoin_LauncherAspect$com_android_launcher3_Launcher$startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .registers 5

    .prologue
    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bindAddScreens(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3869
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 3870
    :goto_6
    if-lt v2, v3, :cond_17

    .line 3874
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v2, :cond_16

    .line 3875
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    .line 3876
    :goto_14
    if-lt v1, v2, :cond_2a

    .line 3883
    :cond_16
    return-void

    .line 3871
    :cond_17
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreenBeforeEmptyScreen(J)J

    .line 3870
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 3877
    :cond_2a
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 3878
    if-eqz v0, :cond_38

    .line 3879
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 3876
    :cond_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4350
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindAllApplicationsRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4351
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mTmpAppsList:Ljava/util/ArrayList;

    .line 4361
    :cond_b
    :goto_b
    return-void

    .line 4355
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_15

    .line 4356
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setApps(Ljava/util/List;)V

    .line 4358
    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_b

    .line 4359
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    goto :goto_b
.end method

.method public bindAllPackages(Lcom/android/launcher3/model/WidgetsModel;)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_32:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 4520
    :try_start_6
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindPackagesUpdatedRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4521
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_11} :catch_28

    .line 4529
    :cond_11
    :goto_11
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$12$149129d0(Lcom/android/launcher3/model/WidgetsModel;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 4525
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 4526
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->addWidgets(Lcom/android/launcher3/model/WidgetsModel;)V

    .line 4527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_27} :catch_28

    goto :goto_11

    .line 4529
    :catch_28
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$12$149129d0(Lcom/android/launcher3/model/WidgetsModel;Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public bindAppInfosRemoved(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4484
    new-instance v0, Lcom/android/launcher3/Launcher$37;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$37;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V

    .line 4489
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4497
    :cond_b
    :goto_b
    return-void

    .line 4494
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_b

    .line 4495
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->removeApps(Ljava/util/List;)V

    goto :goto_b
.end method

.method public bindAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .registers 16

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 4087
    invoke-static {}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$before$com_lge_launcher3_nativejoin_ConciergeAspect$3$c1fdeb49()V

    :try_start_9
    new-instance v0, Lcom/android/launcher3/Launcher$29;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$29;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 4092
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_11} :catch_ad

    move-result v0

    if-eqz v0, :cond_22

    .line 4202
    :goto_14
    invoke-static {}, Lcom/lge/launcher3/debug/EventLogger;->ajc$if$4$3fb90562()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/lge/launcher3/debug/EventLogger;->aspectOf()Lcom/lge/launcher3/debug/EventLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/EventLogger;->ajc$after$com_lge_launcher3_debug_EventLogger$4$73cbf6f6()V

    :cond_21
    return-void

    .line 4096
    :cond_22
    :try_start_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 4098
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bindAppWidget: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 4103
    iget-object v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-static {p0, v1, v3}, Lcom/android/launcher3/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 4105
    if-eqz v1, :cond_5a

    .line 4106
    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    if-eq v3, v4, :cond_4e

    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    if-ne v3, v4, :cond_5a

    .line 4107
    :cond_4e
    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getMinSpanX(Lcom/android/launcher3/Launcher;)I

    move-result v3

    iput v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 4108
    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getMinSpanY(Lcom/android/launcher3/Launcher;)I

    move-result v3

    iput v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 4113
    :cond_5a
    iget-boolean v3, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-nez v3, :cond_6e

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget v4, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    if-nez v3, :cond_6e

    .line 4114
    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 4117
    :cond_6e
    iget-boolean v3, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-nez v3, :cond_11e

    .line 4118
    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_11e

    .line 4119
    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_11e

    .line 4120
    if-nez v1, :cond_bc

    .line 4122
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing restored widget: id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4123
    const-string v2, " belongs to component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4124
    const-string v2, ", as the povider is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4126
    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_ab} :catch_ad

    goto/16 :goto_14

    .line 4202
    :catch_ad
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/debug/EventLogger;->ajc$if$4$3fb90562()Z

    move-result v1

    if-eqz v1, :cond_bb

    invoke-static {}, Lcom/lge/launcher3/debug/EventLogger;->aspectOf()Lcom/lge/launcher3/debug/EventLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/debug/EventLogger;->ajc$after$com_lge_launcher3_debug_EventLogger$4$73cbf6f6()V

    :cond_bb
    throw v0

    .line 4132
    :cond_bc
    :try_start_bc
    new-instance v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V

    .line 4133
    iget v4, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iput v4, v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 4134
    iget v4, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    iput v4, v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 4135
    iget v4, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    iput v4, v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 4136
    iget v4, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    iput v4, v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 4137
    const/4 v4, 0x0

    .line 4138
    invoke-static {p0, v3}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    .line 4140
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 4141
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v5, v3, v1, v4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v4

    .line 4145
    if-nez v4, :cond_116

    .line 4146
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 4148
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing restored widget: id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4149
    const-string v2, " belongs to component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4150
    const-string v2, ", as the launcher is unable to bing a new widget id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    goto/16 :goto_14

    .line 4156
    :cond_116
    iput v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 4164
    const/4 v3, 0x0

    iput v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 4166
    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    .line 4169
    :cond_11e
    if-eqz v1, :cond_1aa

    .line 4170
    iget-boolean v3, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-nez v3, :cond_1aa

    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v3, :cond_1aa

    .line 4171
    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 4173
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bindAppWidget: id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " belongs to component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4174
    iget-object v5, v1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4173
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v3, p0, v2, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object v11, v1

    .line 4187
    :goto_155
    iget-object v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 4188
    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher3/Launcher;)V

    .line 4190
    iget-object v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->container:J

    iget-wide v4, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->screenId:J

    iget v6, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    .line 4191
    iget v7, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v8, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v9, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    const/4 v10, 0x0

    .line 4190
    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 4192
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v1

    if-nez v1, :cond_17a

    .line 4193
    iget-object v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v1, v11}, Lcom/android/launcher3/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 4196
    :cond_17a
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 4199
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bound widget id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4199
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 4179
    :cond_1aa
    new-instance v1, Lcom/android/launcher3/PendingAppWidgetHostView;

    .line 4180
    iget-boolean v3, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    .line 4179
    invoke-direct {v1, p0, p1, v3}, Lcom/android/launcher3/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetInfo;Z)V

    .line 4181
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/PendingAppWidgetHostView;->updateIcon(Lcom/android/launcher3/IconCache;)V

    .line 4182
    iput-object v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 4183
    iget-object v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 4184
    iget-object v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p0}, Landroid/appwidget/AppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1c3
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_1c3} :catch_ad

    move-object v11, v2

    goto :goto_155
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3913
    new-instance v0, Lcom/android/launcher3/Launcher$24;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Launcher$24;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3918
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3944
    :cond_11
    :goto_11
    return-void

    .line 3923
    :cond_12
    if-eqz p1, :cond_17

    .line 3924
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 3929
    :cond_17
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 3931
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3930
    invoke-virtual {p0, p2, v6, v0, v6}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 3933
    :cond_26
    if-eqz p3, :cond_36

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 3935
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    .line 3934
    invoke-virtual {p0, p3, v6, v0, v1}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 3939
    :cond_36
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v6, v6}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(ZZ)V

    .line 3941
    if-eqz p4, :cond_11

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_11

    .line 3942
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p4}, Lcom/android/launcher3/allapps/AllAppsContainerView;->addApps(Ljava/util/List;)V

    goto :goto_11
.end method

.method public bindAppsMoved(Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V
    .registers 4
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
    .line 4500
    new-instance v0, Lcom/android/launcher3/Launcher$38;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/Launcher$38;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V

    .line 4505
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4510
    :goto_b
    return-void

    .line 4509
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/Workspace;->removeItemsByList(Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V

    goto :goto_b
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4369
    new-instance v0, Lcom/android/launcher3/Launcher$32;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$32;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V

    .line 4374
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4381
    :cond_b
    :goto_b
    return-void

    .line 4378
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_b

    .line 4379
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->updateApps(Ljava/util/List;)V

    goto :goto_b
.end method

.method public bindFolders(Lcom/android/launcher3/util/LongArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4070
    new-instance v0, Lcom/android/launcher3/Launcher$28;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$28;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/LongArrayMap;)V

    .line 4075
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4079
    :goto_b
    return-void

    .line 4078
    :cond_c
    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->clone()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Launcher;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    goto :goto_b
.end method

.method public bindItems(Ljava/util/ArrayList;IIZ)V
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 3953
    new-instance v4, Lcom/android/launcher3/Launcher$25;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/Launcher$25;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;IIZ)V

    .line 3958
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 4064
    :goto_17
    return-void

    .line 3963
    :cond_18
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v32

    .line 3964
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 3965
    if-eqz p4, :cond_87

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1, v4, v5}, Lcom/android/launcher3/Launcher;->canRunNewAppsAnimation_aroundBody29$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/nativejoin/LauncherAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v4

    if-eqz v4, :cond_87

    const/4 v4, 0x1

    move/from16 v29, v4

    .line 3966
    :goto_35
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 3967
    const-wide/16 v30, -0x1

    .line 3968
    :goto_3b
    move/from16 v0, p2

    move/from16 v1, p3

    if-lt v0, v1, :cond_8b

    .line 4035
    if-eqz v29, :cond_83

    .line 4037
    const-wide/16 v6, -0x1

    cmp-long v4, v30, v6

    if-lez v4, :cond_83

    .line 4038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    .line 4039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    .line 4040
    new-instance v8, Lcom/android/launcher3/Launcher$26;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v8, v0, v1, v2}, Lcom/android/launcher3/Launcher$26;-><init>(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V

    .line 4046
    cmp-long v6, v30, v6

    if-eqz v6, :cond_26c

    .line 4049
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v7, Lcom/android/launcher3/Launcher$27;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v4, v8}, Lcom/android/launcher3/Launcher$27;-><init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V

    .line 4057
    sget v4, Lcom/android/launcher3/Launcher;->NEW_APPS_PAGE_MOVE_DELAY:I

    int-to-long v8, v4

    .line 4049
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4063
    :cond_83
    :goto_83
    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->requestLayout()V

    goto :goto_17

    .line 3965
    :cond_87
    const/4 v4, 0x0

    move/from16 v29, v4

    goto :goto_35

    .line 3969
    :cond_8b
    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v28, v4

    check-cast v28, Lcom/android/launcher3/ItemInfo;

    .line 3971
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/lge/launcher3/util/UserUtils;->existUser(Landroid/content/Context;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v4

    if-nez v4, :cond_b7

    .line 3972
    const-string v4, "Launcher"

    const-string v6, "bindItems() : Skip to bind an item (%s) because it\'s userprofile doesn\'t exist."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v28, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v6, v30

    .line 3968
    :goto_b2
    add-int/lit8 p2, p2, 0x1

    move-wide/from16 v30, v6

    goto :goto_3b

    .line 3977
    :cond_b7
    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v4, v6, v8

    if-nez v4, :cond_ca

    .line 3978
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-nez v4, :cond_ca

    move-wide/from16 v6, v30

    .line 3979
    goto :goto_b2

    .line 3982
    :cond_ca
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_27c

    .line 4031
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid Item Type"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_d9
    move-object/from16 v4, v28

    .line 3985
    check-cast v4, Lcom/android/launcher3/ShortcutInfo;

    .line 3986
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v6

    .line 3991
    move-object/from16 v0, v28

    iget-wide v8, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v4, v8, v10

    if-nez v4, :cond_14d

    .line 3992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v0, v28

    iget-wide v8, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v4, v8, v9}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    .line 3994
    if-eqz v4, :cond_14d

    :try_start_fb
    move-object/from16 v0, v28

    iget v7, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    move-object/from16 v0, v28

    iget v8, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v7

    if-eqz v7, :cond_14d

    .line 3995
    move-object/from16 v0, v28

    iget v7, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    move-object/from16 v0, v28

    iget v8, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 3996
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 3997
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Collision while binding workspace item: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3998
    const-string v8, ". Collides with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3997
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3999
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v7

    if-eqz v7, :cond_148

    .line 4000
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_140
    .catch Ljava/lang/RuntimeException; {:try_start_fb .. :try_end_140} :catch_140

    .line 4005
    :catch_140
    move-exception v4

    .line 4007
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-wide/from16 v6, v30

    .line 4008
    goto/16 :goto_b2

    .line 4002
    :cond_148
    :try_start_148
    const-string v7, "Launcher"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14d
    .catch Ljava/lang/RuntimeException; {:try_start_148 .. :try_end_14d} :catch_140

    .line 4012
    :cond_14d
    move-object/from16 v0, v28

    iget-wide v7, v0, Lcom/android/launcher3/ItemInfo;->container:J

    move-object/from16 v0, v28

    iget-wide v9, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    move-object/from16 v0, v28

    iget v11, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 4013
    move-object/from16 v0, v28

    iget v12, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    const/4 v13, 0x1

    const/4 v14, 0x1

    sget-object v4, Lcom/android/launcher3/Launcher;->ajc$tjp_29:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/16 v16, 0x1

    invoke-static {v7, v8}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v9, v10}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v11}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static {v12}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static {v13}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-static {v14}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-static {v4, v0, v5, v15}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v15

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v16

    const/16 v26, 0x0

    move-object/from16 v4, p0

    move-object/from16 v17, v6

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v27, v15

    invoke-static/range {v4 .. v27}, Lcom/android/launcher3/Launcher;->addInScreenFromBind_aroundBody31$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;Landroid/view/View;JJIIIILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Landroid/view/View;JJIIIILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    .line 4014
    if-eqz v29, :cond_278

    .line 4016
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setAlpha(F)V

    .line 4017
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleX(F)V

    .line 4018
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleY(F)V

    .line 4019
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1}, Lcom/android/launcher3/Launcher;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4020
    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    goto/16 :goto_b2

    .line 4024
    :pswitch_1da
    const v7, 0x7f040014

    .line 4025
    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    move-object/from16 v10, v28

    .line 4026
    check-cast v10, Lcom/android/launcher3/FolderInfo;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p0

    invoke-static/range {v6 .. v13}, Lcom/android/launcher3/Launcher;->fromXml_aroundBody33$advice(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;Lcom/lge/launcher3/folder/FolderColorAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/FolderIcon;

    move-result-object v6

    .line 4027
    move-object/from16 v0, v28

    iget-wide v7, v0, Lcom/android/launcher3/ItemInfo;->container:J

    move-object/from16 v0, v28

    iget-wide v9, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    move-object/from16 v0, v28

    iget v11, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 4028
    move-object/from16 v0, v28

    iget v12, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    const/4 v13, 0x1

    const/4 v14, 0x1

    sget-object v4, Lcom/android/launcher3/Launcher;->ajc$tjp_30:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/16 v16, 0x1

    invoke-static {v7, v8}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v9, v10}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v11}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static {v12}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static {v13}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-static {v14}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-static {v4, v0, v5, v15}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v15

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceAspect;

    move-result-object v16

    const/16 v26, 0x0

    move-object/from16 v4, p0

    move-object/from16 v17, v6

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v27, v15

    invoke-static/range {v4 .. v27}, Lcom/android/launcher3/Launcher;->addInScreenFromBind_aroundBody35$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;Landroid/view/View;JJIIIILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/WorkspaceAspect;Landroid/view/View;JJIIIILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    move-wide/from16 v6, v30

    .line 4029
    goto/16 :goto_b2

    .line 4059
    :cond_26c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget v6, Lcom/android/launcher3/Launcher;->NEW_APPS_ANIMATION_DELAY:I

    int-to-long v6, v6

    invoke-virtual {v4, v8, v6, v7}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_83

    :cond_278
    move-wide/from16 v6, v30

    goto/16 :goto_b2

    .line 3982
    :pswitch_data_27c
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_d9
        :pswitch_1da
    .end packed-switch
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .registers 3
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
    .line 4435
    new-instance v0, Lcom/android/launcher3/Launcher$35;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$35;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/HashSet;)V

    .line 4440
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4445
    :goto_b
    return-void

    .line 4444
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->updateRestoreItems(Ljava/util/HashSet;)V

    goto :goto_b
.end method

.method public bindScreens(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3852
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 3855
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 3856
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreen()Z

    .line 3861
    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasCustomContentToLeft()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3862
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->createCustomContentContainer()V

    .line 3863
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->populateCustomContentContainer()V

    .line 3865
    :cond_1c
    return-void
.end method

.method public bindSearchablesChanged()V
    .registers 3

    .prologue
    .line 4322
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    if-nez v0, :cond_5

    .line 4330
    :goto_4
    return-void

    .line 4325
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_13

    .line 4326
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->removeView(Landroid/view/View;)V

    .line 4327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    .line 4329
    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOrCreateQsbBar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->setQsbSearchBar(Landroid/view/View;)V

    goto :goto_4
.end method

.method public bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4404
    new-instance v0, Lcom/android/launcher3/Launcher$34;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/Launcher$34;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 4409
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4426
    :cond_b
    :goto_b
    return-void

    .line 4413
    :cond_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 4414
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 4417
    :cond_17
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4418
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4419
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 4422
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1, p3}, Lcom/android/launcher3/Workspace;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 4424
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/DragController;->onAppsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto :goto_b

    .line 4419
    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 4420
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_26
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .registers 3
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
    .line 4385
    new-instance v0, Lcom/android/launcher3/Launcher$33;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$33;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V

    .line 4390
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4394
    :goto_b
    return-void

    .line 4393
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->widgetsRestored(Ljava/util/ArrayList;)V

    goto :goto_b
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4460
    new-instance v0, Lcom/android/launcher3/Launcher$36;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/Launcher$36;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 4466
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4480
    :goto_b
    return-void

    .line 4470
    :cond_c
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 4471
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/Workspace;->removeItemsByPackageName(Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 4474
    :cond_17
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 4475
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/Workspace;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 4479
    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/DragController;->onAppsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto :goto_b
.end method

.method protected changeWallpaperVisiblity(Z)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x100000

    .line 3393
    if-eqz p1, :cond_20

    move v0, v1

    .line 3394
    :goto_6
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v1

    .line 3396
    if-eq v0, v3, :cond_1a

    .line 3397
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3399
    :cond_1a
    if-eqz p1, :cond_22

    :goto_1c
    invoke-direct {p0, v2}, Lcom/android/launcher3/Launcher;->setWorkspaceBackground(I)V

    .line 3400
    return-void

    :cond_20
    move v0, v2

    .line 3393
    goto :goto_6

    .line 3399
    :cond_22
    const/4 v2, 0x2

    goto :goto_1c
.end method

.method public checkActionCallSelfPermission(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$checkActionCallSelfPermission(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public varargs closeFolder(Lcom/android/launcher3/Folder;[Z)V
    .registers 6

    .prologue
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_23:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 3239
    :try_start_6
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$before$com_lge_launcher3_nativejoin_LauncherAspect$22$7730e5ab(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher3/FolderInfo;->opened:Z

    .line 3241
    invoke-virtual {p1}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3242
    if-eqz v0, :cond_38

    .line 3243
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v2, p1, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 3244
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->shrinkAndFadeInFolderIcon(Lcom/android/launcher3/FolderIcon;)V

    .line 3245
    if-eqz v0, :cond_38

    .line 3246
    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 3249
    :cond_38
    invoke-virtual {p1, p2}, Lcom/android/launcher3/Folder;->animateClosed([Z)V

    .line 3250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 3253
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DragLayer;->sendAccessibilityEvent(I)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_48} :catch_57

    .line 3254
    :try_start_48
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$12$7730e5ab()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4f} :catch_60

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$6$9b79f988(Lcom/android/launcher3/Folder;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_57
    move-exception v0

    :try_start_58
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$12$7730e5ab()V

    throw v0
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_60} :catch_60

    :catch_60
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$6$9b79f988(Lcom/android/launcher3/Folder;Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public varargs closeFolder([Z)V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_22:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 3229
    :try_start_6
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$before$com_lge_launcher3_nativejoin_LauncherAspect$22$7730e5ab(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    .line 3230
    :goto_17
    if-eqz v0, :cond_25

    .line 3231
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3232
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->dismissEditingName()V

    .line 3234
    :cond_22
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->closeFolder(Lcom/android/launcher3/Folder;[Z)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_25} :catch_2f

    .line 3236
    :cond_25
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$12$7730e5ab()V

    return-void

    .line 3229
    :cond_2d
    const/4 v0, 0x0

    goto :goto_17

    .line 3236
    :catch_2f
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$12$7730e5ab()V

    throw v0
.end method

.method public closeSystemDialogs()V
    .registers 2

    .prologue
    .line 1901
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 1904
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Z)V

    .line 1905
    return-void
.end method

.method public completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V
    .registers 26

    .prologue
    sget-object v4, Lcom/android/launcher3/Launcher;->ajc$tjp_10:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p3}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p4 .. p5}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p6, v5, v6

    const/4 v6, 0x4

    aput-object p7, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v4, v0, v1, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v17

    .line 1595
    :try_start_28
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    .line 1596
    if-nez p7, :cond_3e

    .line 1598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 1597
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object p7

    .line 1601
    :cond_3e
    move-object/from16 v0, p7

    iget-boolean v4, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v4, :cond_46

    .line 1602
    const/16 p1, -0x64

    .line 1606
    :cond_46
    new-instance v5, Lcom/android/launcher3/LauncherAppWidgetInfo;

    move-object/from16 v0, p7

    iget-object v4, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move/from16 v0, p1

    invoke-direct {v5, v0, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1607
    iget v4, v13, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 1608
    iget v4, v13, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 1609
    iget v4, v13, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    iput v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 1610
    iget v4, v13, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    iput v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 1611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v4

    iput-object v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 1614
    iget v10, v13, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v11, v13, Lcom/android/launcher3/ItemInfo;->cellY:I

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    .line 1613
    invoke-static/range {v4 .. v11}, Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1616
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/Launcher;->mRestoring:Z

    if-nez v4, :cond_cd

    .line 1617
    if-nez p6, :cond_da

    .line 1619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p7

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    iput-object v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1625
    :goto_92
    iget-object v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1626
    iget-object v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 1627
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher3/Launcher;)V

    .line 1629
    invoke-static/range {p0 .. p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v4

    iget-object v6, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v6}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->setUninstallTypeForBadgeView(Landroid/view/View;)Z

    .line 1631
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v12, v13, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 1632
    iget v13, v13, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v14, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v15, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v16

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 1631
    invoke-virtual/range {v6 .. v16}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 1634
    iget-object v4, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1636
    :cond_cd
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->resetAddInfo()V
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_d0} :catch_df

    .line 1637
    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$4$398993e2(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 1623
    :cond_da
    :try_start_da
    move-object/from16 v0, p6

    iput-object v0, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_de} :catch_df

    goto :goto_92

    .line 1637
    :catch_df
    move-exception v4

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$4$398993e2(Lorg/aspectj/lang/JoinPoint;)V

    throw v4
.end method

.method completeTwoStageWidgetDrop(II)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 941
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 943
    const/4 v5, 0x0

    .line 946
    const/4 v0, -0x1

    if-ne p1, v0, :cond_36

    .line 947
    const/4 v5, 0x3

    .line 948
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 949
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 948
    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v6

    .line 951
    new-instance v4, Lcom/android/launcher3/Launcher$11;

    invoke-direct {v4, p0, p2, v6, p1}, Lcom/android/launcher3/Launcher$11;-><init>(Lcom/android/launcher3/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V

    .line 964
    :goto_1d
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 965
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    .line 966
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v3}, Lcom/android/launcher3/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/DragView;

    .line 967
    const/4 v7, 0x1

    .line 965
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 972
    :cond_35
    :goto_35
    return-void

    .line 960
    :cond_36
    if-nez p1, :cond_46

    .line 961
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 962
    const/4 v5, 0x4

    move-object v4, v6

    goto :goto_1d

    .line 968
    :cond_40
    if-eqz v4, :cond_35

    .line 970
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_35

    :cond_46
    move-object v4, v6

    goto :goto_1d
.end method

.method public createAppDragInfo(Landroid/content/Intent;)Lcom/android/launcher3/ItemInfo;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 4761
    const/4 v1, 0x0

    .line 4762
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4763
    const-string v0, "android.intent.extra.USER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 4764
    if-eqz v0, :cond_1a

    .line 4765
    invoke-static {v0}, Lcom/android/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    .line 4768
    :goto_15
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->createAppDragInfo(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/ItemInfo;

    move-result-object v0

    return-object v0

    :cond_1a
    move-object v0, v1

    goto :goto_15
.end method

.method public createAppDragInfo(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/ItemInfo;
    .registers 6

    .prologue
    .line 4773
    if-nez p2, :cond_6

    .line 4774
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object p2

    .line 4779
    :cond_6
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 4780
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v1

    .line 4781
    if-nez v1, :cond_12

    .line 4782
    const/4 v0, 0x0

    .line 4784
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/android/launcher3/AppInfo;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/IconCache;)V

    goto :goto_11
.end method

.method public createIconDrawable(Landroid/graphics/Bitmap;)Lcom/android/launcher3/FastBitmapDrawable;
    .registers 4

    .prologue
    .line 4816
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 4817
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 4818
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4819
    return-object v0
.end method

.method public createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .registers 6

    .prologue
    .line 1486
    invoke-virtual {p2}, Lcom/android/launcher3/ShortcutInfo;->hasPhotoIcon()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p2}, Lcom/android/launcher3/ShortcutInfo;->hasLargeIcon()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1487
    const v0, 0x7f040008

    .line 1491
    :goto_f
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 1492
    const/4 v2, 0x0

    .line 1491
    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 1493
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/IconCache;)V

    .line 1494
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 1495
    invoke-virtual {v0, p0}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1496
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/FocusIndicatorView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1498
    invoke-static {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->setUninstallTypeForBadgeView(Landroid/view/View;)Z

    .line 1499
    return-object v0

    .line 1489
    :cond_34
    const v0, 0x7f040007

    goto :goto_f
.end method

.method public createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .registers 4

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public createShortcutDragInfo(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;)Lcom/android/launcher3/ItemInfo;
    .registers 10

    .prologue
    .line 4790
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    .line 4791
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    .line 4790
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/ShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/android/launcher3/compat/UserHandleCompat;)V

    return-object v0
.end method

.method protected disableVoiceButtonProxy(Z)V
    .registers 2

    .prologue
    .line 3656
    return-void
.end method

.method public dismissIntroScreen()V
    .registers 5

    .prologue
    .line 4705
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->markIntroScreenDismissed()V

    .line 4706
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->showFirstRunActivity()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4709
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Launcher$40;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$40;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 4715
    const-wide/16 v2, 0x3e8

    .line 4709
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4720
    :goto_15
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->changeWallpaperVisiblity(Z)V

    .line 4721
    return-void

    .line 4717
    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->dismissOverlayView()V

    .line 4718
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->showFirstRunClings()V

    goto :goto_15
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2439
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_22

    .line 2440
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_34

    .line 2463
    :cond_e
    :goto_e
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_12
    :sswitch_12
    return v0

    .line 2444
    :sswitch_13
    const-string v1, "launcher_dump_state"

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2445
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->dumpState()V

    goto :goto_12

    .line 2450
    :sswitch_1f
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->isLongClickFromKeyEnter:Z

    goto :goto_e

    .line 2453
    :cond_22
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_e

    .line 2454
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_42

    goto :goto_e

    .line 2458
    :sswitch_30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->isLongClickFromKeyEnter:Z

    goto :goto_e

    .line 2440
    :sswitch_data_34
    .sparse-switch
        0x3 -> :sswitch_12
        0x19 -> :sswitch_13
        0x42 -> :sswitch_1f
    .end sparse-switch

    .line 2454
    :sswitch_data_42
    .sparse-switch
        0x3 -> :sswitch_12
        0x42 -> :sswitch_30
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    .prologue
    .line 3725
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 3726
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 3727
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3729
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-ne v2, v3, :cond_1c

    .line 3730
    const v2, 0x7f0f002c

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3744
    :goto_1b
    return v0

    .line 3731
    :cond_1c
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne v2, v3, :cond_2d

    .line 3732
    const v2, 0x7f0f0050

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 3733
    :cond_2d
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v2, :cond_5a

    .line 3734
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v2

    .line 3735
    if-eqz v2, :cond_50

    iget-object v3, v2, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    if-eqz v3, :cond_50

    .line 3736
    iget-object v3, v2, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/FolderPagedView;->getAccessibilityDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3737
    iget-object v2, v2, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/FolderPagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 3739
    :cond_50
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 3742
    :cond_5a
    const v2, 0x7f0f002d

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 4848
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4849
    sget-object v2, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    monitor-enter v2

    .line 4850
    :try_start_6
    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4851
    const-string v0, "Debug logs: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4852
    const/4 v0, 0x0

    move v1, v0

    :goto_12
    sget-object v0, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_25

    .line 4849
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_43

    .line 4856
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_24

    .line 4857
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4859
    :cond_24
    return-void

    .line 4853
    :cond_25
    :try_start_25
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4852
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 4849
    :catchall_43
    move-exception v0

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public dumpLogsToLocalData()V
    .registers 1

    .prologue
    .line 4950
    return-void
.end method

.method public dumpState()V
    .registers 4

    .prologue
    .line 4833
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BEGIN launcher3 dump state for launcher "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4834
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSavedState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWorkspaceLoading="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4836
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mRestoring="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWaitingForResult="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4838
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSavedInstanceState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sFolders.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/Launcher;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4840
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->dumpState()V

    .line 4843
    const-string v0, "Launcher"

    const-string v1, "END launcher3 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4844
    return-void
.end method

.method public enablePageAsFullSize(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$enablePageAsFullSize(Lcom/android/launcher3/Launcher;Z)V

    return-void
.end method

.method public enterCleanViewMode()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$enterCleanViewMode(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public enterSpringLoadedDragMode()V
    .registers 7

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_18

    .line 3577
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->CLEAN_VIEW:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_19

    .line 3586
    :cond_18
    :goto_18
    return-void

    .line 3581
    :cond_19
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$enablePageAsFullSize(Lcom/android/launcher3/Launcher;Z)V

    .line 3582
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    .line 3583
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 3584
    const/4 v5, 0x0

    .line 3582
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspace(Lcom/android/launcher3/Launcher$State;Lcom/android/launcher3/Workspace$State;IZLjava/lang/Runnable;)V

    .line 3585
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    :goto_31
    :try_start_31
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_33} :catch_40

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    nop

    .line 3586
    goto :goto_18

    .line 3585
    :cond_3d
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    goto :goto_31

    :catch_40
    move-exception v1

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    throw v1
.end method

.method public exitCleanViewMode()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$exitCleanViewMode(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method exitSpringLoadedDragMode()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3625
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_c

    .line 3626
    invoke-virtual {p0, v3, v2, v2, v2}, Lcom/android/launcher3/Launcher;->showAppsView(ZZZZ)V

    .line 3631
    :cond_b
    :goto_b
    return-void

    .line 3628
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_b

    .line 3629
    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/Launcher;->showWidgetsView(ZZ)V

    goto :goto_b
.end method

.method public exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V
    .registers 8

    .prologue
    .line 3590
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_d

    .line 3622
    :cond_c
    :goto_c
    return-void

    .line 3592
    :cond_d
    invoke-static {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3596
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/Launcher$23;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/launcher3/Launcher$23;-><init>(Lcom/android/launcher3/Launcher;ZLjava/lang/Runnable;)V

    .line 3621
    int-to-long v2, p2

    .line 3596
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c
.end method

.method public finishBindingItems()V
    .registers 6

    .prologue
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_31:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 4234
    :try_start_6
    new-instance v0, Lcom/android/launcher3/Launcher$30;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$30;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 4239
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_76

    move-result v0

    if-eqz v0, :cond_27

    .line 4276
    :cond_11
    :goto_11
    :try_start_11
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->aspectOf()Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$after$com_lge_launcher3_uninstallmode_UninstallModeAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_18} :catch_7f

    :try_start_18
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WallpaperBlurredImageAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_88

    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->aspectOf()Lcom/lge/launcher3/initialguide/InitialGuideAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->ajc$after$com_lge_launcher3_initialguide_InitialGuideAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 4242
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_45

    .line 4243
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_42

    .line 4244
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4246
    :cond_42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 4249
    :cond_45
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForRemainingPages()V

    .line 4251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 4252
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->sendLoadingCompleteBroadcastIfNecessary()V

    .line 4256
    sget-object v0, Lcom/android/launcher3/Launcher;->sPendingAddItem:Lcom/android/launcher3/Launcher$PendingAddArguments;

    if-eqz v0, :cond_68

    .line 4257
    sget-object v0, Lcom/android/launcher3/Launcher;->sPendingAddItem:Lcom/android/launcher3/Launcher$PendingAddArguments;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->completeAdd(Lcom/android/launcher3/Launcher$PendingAddArguments;)J

    move-result-wide v2

    .line 4262
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v4, Lcom/android/launcher3/Launcher$31;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/launcher3/Launcher$31;-><init>(Lcom/android/launcher3/Launcher;J)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 4268
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/Launcher;->sPendingAddItem:Lcom/android/launcher3/Launcher$PendingAddArguments;

    .line 4271
    :cond_68
    invoke-static {p0}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 4273
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_11

    .line 4274
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/launcher3/LauncherCallbacks;->finishBindingItems(Z)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_75} :catch_76

    goto :goto_11

    .line 4276
    :catch_76
    move-exception v0

    :try_start_77
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->aspectOf()Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$after$com_lge_launcher3_uninstallmode_UninstallModeAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_7f} :catch_7f

    :catch_7f
    move-exception v0

    :try_start_80
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WallpaperBlurredImageAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_88} :catch_88

    :catch_88
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->aspectOf()Lcom/lge/launcher3/initialguide/InitialGuideAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->ajc$after$com_lge_launcher3_initialguide_InitialGuideAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public getAllAppsButton()Landroid/view/View;
    .registers 2

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;
    .registers 2

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getAppsView()Lcom/android/launcher3/allapps/AllAppsContainerView;
    .registers 2

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    return-object v0
.end method

.method public getCellLayout(JJ)Lcom/android/launcher3/CellLayout;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 3349
    const-wide/16 v2, -0x65

    cmp-long v1, p1, v2

    if-nez v1, :cond_12

    .line 3350
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_11

    .line 3351
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 3359
    :cond_11
    :goto_11
    return-object v0

    .line 3356
    :cond_12
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_11

    .line 3357
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p3, p4}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    goto :goto_11
.end method

.method public getCurrentWorkspaceScreen()I
    .registers 2

    .prologue
    .line 3820
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_b

    .line 3821
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    .line 3823
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x2

    goto :goto_a
.end method

.method public getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .registers 2

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/DragController;
    .registers 2

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/DragLayer;
    .registers 2

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    return-object v0
.end method

.method public getDynamicGridPannelView()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$getDynamicGridPannelView(Lcom/android/launcher3/Launcher;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstRunActivity()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 4632
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_b

    .line 4633
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->getFirstRunActivity()Landroid/content/Intent;

    move-result-object v0

    .line 4635
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;
    .registers 2

    .prologue
    .line 2872
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_b

    .line 2873
    new-instance v0, Lcom/android/launcher3/Launcher$20;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$20;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    .line 2884
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getHotseat()Lcom/android/launcher3/Hotseat;
    .registers 2

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    return-object v0
.end method

.method public getInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method protected getIntroScreen()Landroid/view/View;
    .registers 2

    .prologue
    .line 4681
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_b

    .line 4682
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->getIntroScreen()Landroid/view/View;

    move-result-object v0

    .line 4684
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMinSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;)[I
    .registers 5

    .prologue
    .line 1584
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lcom/android/launcher3/LauncherModel;
    .registers 2

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public getOrCreateQsbBar()Landroid/view/View;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v9, 0x0

    .line 3659
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->providesSearch()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3660
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->getQsbBar()Landroid/view/View;

    move-result-object v0

    .line 3711
    :goto_15
    return-object v0

    .line 3663
    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    if-nez v0, :cond_bc

    .line 3664
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getSearchWidgetProvider(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 3665
    if-nez v3, :cond_22

    move-object v0, v2

    .line 3666
    goto :goto_15

    .line 3669
    :cond_22
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3670
    const-string v0, "appWidgetCategory"

    .line 3671
    const/4 v5, 0x4

    .line 3670
    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3674
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 3673
    invoke-virtual {p0, v0, v9}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3675
    const-string v0, "qsb_widget_id"

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3676
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    .line 3677
    iget-object v7, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 3678
    const-string v8, "qsb_widget_provider"

    invoke-interface {v5, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3677
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3678
    if-eqz v2, :cond_5f

    .line 3679
    if-eqz v6, :cond_5f

    .line 3680
    iget-object v2, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    .line 3682
    :cond_5f
    if-le v0, v1, :cond_66

    .line 3683
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 3688
    :cond_66
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 3690
    invoke-static {p0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v2

    .line 3691
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 3692
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    move v0, v1

    .line 3696
    :cond_7c
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3697
    const-string v5, "qsb_widget_id"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3698
    const-string v5, "qsb_widget_provider"

    iget-object v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3699
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3702
    :cond_95
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->setQsbWidgetId(I)V

    .line 3703
    if-eq v0, v1, :cond_bc

    .line 3704
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v0, v3}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    .line 3705
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 3706
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 3707
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->addView(Landroid/view/View;)V

    .line 3708
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->setQsbSearchBar(Landroid/view/View;)V

    .line 3711
    :cond_bc
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    goto/16 :goto_15
.end method

.method public getOverviewPanel()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSearchBar()Lcom/android/launcher3/SearchDropTargetBar;
    .registers 2

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    return-object v0
.end method

.method protected getSearchBarBounds()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 4318
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile;->getSearchBarBounds(Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method protected getSharedPrefs()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;)[I
    .registers 5

    .prologue
    .line 1580
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/launcher3/Launcher$State;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethod$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_Launcher$getState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    return-object v0
.end method

.method public getStats()Lcom/android/launcher3/Stats;
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStats:Lcom/android/launcher3/Stats;

    return-object v0
.end method

.method public getTopOffsetForCustomContent()I
    .registers 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getViewIdForItem(Lcom/android/launcher3/ItemInfo;)I
    .registers 6

    .prologue
    .line 708
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->id:J

    long-to-int v1, v0

    .line 709
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 710
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 714
    :goto_1f
    return v0

    .line 712
    :cond_20
    invoke-static {}, Lcom/android/launcher3/Launcher;->generateViewId()I

    move-result v0

    .line 713
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f
.end method

.method public getWidgetsButton()Landroid/view/View;
    .registers 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsButton:Landroid/view/View;

    return-object v0
.end method

.method public getWidgetsView()Lcom/android/launcher3/widget/WidgetsContainerView;
    .registers 4

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_13:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/launcher3/Launcher;->getWidgetsView_aroundBody7$advice(Lcom/android/launcher3/Launcher;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspace()Lcom/android/launcher3/Workspace;
    .registers 2

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    return-object v0
.end method

.method protected hasCustomContentToLeft()Z
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_b

    .line 635
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->hasCustomContentToLeft()Z

    move-result v0

    .line 637
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected hasDismissableIntroScreen()Z
    .registers 2

    .prologue
    .line 4671
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_b

    .line 4672
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->hasDismissableIntroScreen()Z

    move-result v0

    .line 4674
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected hasFirstRunActivity()Z
    .registers 2

    .prologue
    .line 4622
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_b

    .line 4623
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->hasFirstRunActivity()Z

    move-result v0

    .line 4625
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected hasRunFirstRunActivity()Z
    .registers 4

    .prologue
    .line 4644
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "launcher.first_run_activity_displayed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected hasSettings()Z
    .registers 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_b

    .line 1194
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->hasSettings()Z

    move-result v0

    .line 1198
    :goto_a
    return v0

    :cond_b
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRotationAllowedForDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    goto :goto_a

    :cond_13
    const/4 v0, 0x1

    goto :goto_a
.end method

.method hideWorkspaceSearchAndHotseat()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4751
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setAlpha(F)V

    .line 4752
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setAlpha(F)V

    .line 4753
    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPageIndicators:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPageIndicators:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4754
    :cond_1c
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 4755
    :cond_26
    return-void
.end method

.method public invalidateHasCustomContentToLeft()V
    .registers 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 671
    :cond_10
    :goto_10
    return-void

    .line 661
    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasCustomContentToLeft()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 663
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->createCustomContentContainer()V

    .line 664
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->populateCustomContentContainer()V

    .line 665
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_10

    .line 666
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$enablePageAsFullSize(Lcom/android/launcher3/Launcher;Z)V

    goto :goto_10

    .line 668
    :cond_36
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasCustomContentToLeft()Z

    move-result v0

    if-nez v0, :cond_10

    .line 669
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->removeCustomContentPage()V

    goto :goto_10
.end method

.method public isAllAppsButtonRank(I)Z
    .registers 3

    .prologue
    .line 4291
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_b

    .line 4292
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v0

    .line 4294
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isAllAppsVisible()Z
    .registers 2

    .prologue
    .line 3368
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    return v0
.end method

.method public isAppsViewVisible()Z
    .registers 3

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public isCleanViewState()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isCleanViewState(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    return v0
.end method

.method public isDraggingEnabled()Z
    .registers 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isLoadingWorkspace()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isDynamicGridOverViewVisible()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isDynamicGridOverViewVisible(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    return v0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 3342
    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_14

    .line 3341
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected isLauncherPreinstalled()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 4589
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v1, :cond_c

    .line 4590
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->isLauncherPreinstalled()Z

    move-result v0

    .line 4602
    :cond_b
    :goto_b
    return v0

    .line 4592
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4594
    :try_start_10
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 4595
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1f} :catch_25

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    .line 4596
    const/4 v0, 0x1

    goto :goto_b

    .line 4600
    :catch_25
    move-exception v1

    .line 4601
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_b
.end method

.method public isOnCustomContent()Z
    .registers 2

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v0

    return v0
.end method

.method public isSafeMode()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isSafeMode(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    return v0
.end method

.method public isWidgetsViewVisible()Z
    .registers 3

    .prologue
    .line 3376
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public isWorkspaceLoading()Z
    .registers 2

    .prologue
    .line 2240
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .registers 2

    .prologue
    .line 2236
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResult:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isWorkspaceState()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isWorkspaceState(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    return v0
.end method

.method lockAllApps()V
    .registers 1

    .prologue
    .line 3648
    return-void
.end method

.method public lockScreenOrientation()V
    .registers 3

    .prologue
    .line 4564
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-eqz v0, :cond_1b

    .line 4565
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1c

    .line 4566
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4567
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 4566
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->mapConfigurationOriActivityInfoOri(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    .line 4572
    :cond_1b
    :goto_1b
    return-void

    .line 4569
    :cond_1c
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    goto :goto_1b
.end method

.method protected moveToCustomContentScreen(Z)V
    .registers 3

    .prologue
    .line 2308
    const/4 v0, 0x0

    new-array v0, v0, [Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    .line 2309
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->moveToCustomContentScreen(Z)V

    .line 2310
    return-void
.end method

.method protected moveWorkspaceToDefaultScreen()V
    .registers 3

    .prologue
    .line 4802
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->moveToDefaultScreen(Z)V

    .line 4803
    return-void
.end method

.method public moveWorkspaceToDefaultScreenWithAnimation()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$moveWorkspaceToDefaultScreenWithAnimation(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 892
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 893
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_10

    .line 894
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherCallbacks;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_10} :catch_34

    .line 896
    :cond_10
    invoke-static {p1, p2, p3}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$if$2$e4064402(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->aspectOf()Lcom/lge/launcher3/util/VdfDataPopupAspect;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p3, v2, v7

    invoke-static {v1, p0, p0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$after$com_lge_launcher3_util_VdfDataPopupAspect$2$bd420fb4(IILandroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V

    :cond_33
    return-void

    :catch_34
    move-exception v0

    invoke-static {p1, p2, p3}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$if$2$e4064402(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-static {}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->aspectOf()Lcom/lge/launcher3/util/VdfDataPopupAspect;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/Launcher;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p3, v3, v7

    invoke-static {v2, p0, p0, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$after$com_lge_launcher3_util_VdfDataPopupAspect$2$bd420fb4(IILandroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V

    :cond_58
    throw v0
.end method

.method public onAppWidgetHostReset()V
    .registers 2

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    if-eqz v0, :cond_9

    .line 2516
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    .line 2518
    :cond_9
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    .prologue
    .line 1675
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1678
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1679
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1680
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1686
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1687
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 1688
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setupTransparentSystemBarsForLmp()V

    .line 1689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    .line 1690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    .line 1691
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_34

    .line 1692
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onAttachedToWindow()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_3c

    .line 1694
    :cond_34
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$5$f9fbe031()V

    return-void

    :catch_3c
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$5$f9fbe031()V

    throw v0
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2468
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->handleBackPressed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2508
    :cond_d
    :goto_d
    return-void

    .line 2472
    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2473
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/DragController;->cancelDrag()V

    goto :goto_d

    .line 2477
    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2478
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)V

    goto :goto_d

    .line 2479
    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWidgetsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2481
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    check-cast v0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-virtual {v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->closeGroupWidgetPopup()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2485
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->showOverviewMode(Z)V

    goto :goto_d

    .line 2486
    :cond_3a
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isDynamicGridOverViewVisible(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2487
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->showOverviewMode(Z)V

    goto :goto_d

    .line 2488
    :cond_44
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 2489
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)V

    goto :goto_d

    .line 2490
    :cond_50
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 2491
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    .line 2492
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2493
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->dismissEditingName()V

    goto :goto_d

    .line 2495
    :cond_68
    const/4 v0, 0x0

    new-array v0, v0, [Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    goto :goto_d

    .line 2497
    :cond_6f
    invoke-static {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2498
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)V

    goto :goto_d

    .line 2500
    :cond_7d
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->CLEAN_VIEW:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_86

    .line 2501
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$exitCleanViewMode(Lcom/android/launcher3/Launcher;)V

    .line 2503
    :cond_86
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->exitWidgetResizeMode()V

    .line 2506
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->showOutlinesTemporarily_aroundBody13$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;Lcom/lge/launcher3/nativejoin/LauncherAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V

    goto/16 :goto_d
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 2528
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2583
    :cond_7
    :goto_7
    return-void

    .line 2531
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2535
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isCleanViewState(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2539
    instance-of v0, p1, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_26

    .line 2540
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2541
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)V

    goto :goto_7

    .line 2546
    :cond_26
    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_45

    .line 2547
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2548
    invoke-static {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2549
    :cond_3c
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(IZ)V

    .line 2553
    :cond_45
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2554
    instance-of v0, v1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_92

    .line 2555
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_ICONCHANGE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_8d

    move-object v0, p1

    .line 2556
    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->isIconChangeBadgeVisible()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 2557
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v2, :cond_8d

    .line 2558
    invoke-static {}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getInstance()Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->cancel()V

    .line 2559
    invoke-static {}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getInstance()Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getTextView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 2560
    invoke-static {}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getInstance()Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->getTextView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->updateIconChangeBadge(Z)V

    .line 2562
    :cond_81
    invoke-static {p0}, Lcom/lge/launcher3/iconchange/IconChangeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/iconchange/IconChangeManager;

    move-result-object v2

    move-object v0, v1

    .line 2563
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 2562
    invoke-virtual {v2, p0, v0, p1}, Lcom/lge/launcher3/iconchange/IconChangeManager;->startIconChangeActivity(Landroid/app/Activity;Lcom/android/launcher3/ShortcutInfo;Landroid/view/View;)V

    goto/16 :goto_7

    .line 2566
    :cond_8d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickAppShortcut(Landroid/view/View;)V

    goto/16 :goto_7

    .line 2568
    :cond_92
    instance-of v0, v1, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_9f

    .line 2569
    instance-of v0, p1, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_7

    .line 2570
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    goto/16 :goto_7

    .line 2572
    :cond_9f
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    if-ne p1, v0, :cond_a8

    .line 2573
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto/16 :goto_7

    .line 2574
    :cond_a8
    instance-of v0, v1, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_b1

    .line 2575
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    goto/16 :goto_7

    .line 2576
    :cond_b1
    instance-of v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_7

    .line 2577
    instance-of v0, p1, Lcom/android/launcher3/PendingAppWidgetHostView;

    if-eqz v0, :cond_c0

    .line 2578
    check-cast p1, Lcom/android/launcher3/PendingAppWidgetHostView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickPendingWidget(Lcom/android/launcher3/PendingAppWidgetHostView;)V

    goto/16 :goto_7

    .line 2580
    :cond_c0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickLauncherAppWidget(Landroid/view/View;)V

    goto/16 :goto_7
.end method

.method protected onClickAddWidgetButton(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2834
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_11

    .line 2835
    const v0, 0x7f0f0021

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2842
    :cond_10
    :goto_10
    return-void

    .line 2837
    :cond_11
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/Launcher;->showWidgetsView(ZZ)V

    .line 2838
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_10

    .line 2839
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onClickAddWidgetButton(Landroid/view/View;)V

    goto :goto_10
.end method

.method protected onClickAllAppsButton(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2650
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2651
    invoke-virtual {p0, v2, v1, v2, v1}, Lcom/android/launcher3/Launcher;->showAppsView(ZZZZ)V

    .line 2654
    :cond_b
    return-void
.end method

.method protected onClickAppShortcut(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 2688
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2689
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-nez v1, :cond_10

    .line 2690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input must be a Shortcut"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2693
    :cond_10
    invoke-static {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->checkAndShowUninstallPopup(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2749
    :cond_1a
    :goto_1a
    return-void

    .line 2698
    :cond_1b
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 2700
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    if-eqz v1, :cond_42

    .line 2701
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_42

    .line 2702
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_42

    .line 2705
    const v1, 0x7f0f001f

    .line 2706
    iget v0, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a2

    .line 2707
    const v0, 0x7f0f0020

    .line 2709
    :goto_39
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1a

    .line 2714
    :cond_42
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2717
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 2718
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2720
    const-class v2, Lcom/android/launcher3/MemoryDumpActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2721
    invoke-static {p0}, Lcom/android/launcher3/MemoryDumpActivity;->startDump(Landroid/content/Context;)V

    goto :goto_1a

    .line 2723
    :cond_62
    const-class v2, Lcom/android/launcher3/ToggleWeightWatcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 2724
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->toggleShowWeightWatcher()V

    goto :goto_1a

    .line 2730
    :cond_72
    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_94

    .line 2731
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 2732
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v1

    if-nez v1, :cond_94

    .line 2734
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2735
    new-instance v1, Lcom/android/launcher3/Launcher$19;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/Launcher$19;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    .line 2733
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->showBrokenAppInstallDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1a

    .line 2744
    :cond_94
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    .line 2746
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1a

    .line 2747
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onClickAppShortcut(Landroid/view/View;)V

    goto/16 :goto_1a

    :cond_a2
    move v0, v1

    goto :goto_39
.end method

.method protected onClickFolderIcon(Landroid/view/View;)V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2786
    instance-of v0, p1, Lcom/android/launcher3/FolderIcon;

    if-nez v0, :cond_e

    .line 2787
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input must be a FolderIcon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v0, p1

    .line 2790
    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 2791
    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->getFolderInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v1

    .line 2792
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher3/Folder;

    move-result-object v2

    .line 2796
    iget-boolean v3, v1, Lcom/android/launcher3/FolderInfo;->opened:Z

    if-eqz v3, :cond_57

    if-nez v2, :cond_57

    .line 2797
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2798
    iget-wide v6, v1, Lcom/android/launcher3/FolderInfo;->screenId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/launcher3/FolderInfo;->cellX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/launcher3/FolderInfo;->cellY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2797
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    iput-boolean v8, v1, Lcom/android/launcher3/FolderInfo;->opened:Z

    .line 2802
    :cond_57
    iget-boolean v1, v1, Lcom/android/launcher3/FolderInfo;->opened:Z

    if-nez v1, :cond_79

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->getFolder()Lcom/android/launcher3/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Folder;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_79

    .line 2804
    new-array v1, v9, [Z

    aput-boolean v8, v1, v8

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    .line 2806
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->openFolder(Lcom/android/launcher3/FolderIcon;)V

    .line 2823
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_78

    .line 2824
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onClickFolderIcon(Landroid/view/View;)V

    .line 2826
    :cond_78
    return-void

    .line 2810
    :cond_79
    if-eqz v2, :cond_6f

    .line 2811
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v1

    .line 2813
    new-array v3, v9, [Z

    aput-boolean v8, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/Launcher;->closeFolder(Lcom/android/launcher3/Folder;[Z)V

    .line 2814
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v1, v2, :cond_6f

    .line 2816
    new-array v1, v9, [Z

    aput-boolean v8, v1, v8

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    .line 2818
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->openFolder(Lcom/android/launcher3/FolderIcon;)V

    goto :goto_6f
.end method

.method public onClickLauncherAppWidget(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2632
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_10

    .line 2633
    const v0, 0x7f0f0021

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2640
    :cond_f
    :goto_f
    return-void

    .line 2637
    :cond_10
    invoke-static {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->checkAndShowUninstallPopup(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_f
.end method

.method public onClickPendingWidget(Lcom/android/launcher3/PendingAppWidgetHostView;)V
    .registers 8

    .prologue
    .line 2594
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_10

    .line 2595
    const v0, 0x7f0f0021

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2626
    :cond_f
    :goto_f
    return-void

    .line 2599
    :cond_10
    invoke-virtual {p1}, Lcom/android/launcher3/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 2600
    invoke-virtual {p1}, Lcom/android/launcher3/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2601
    iget v0, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 2602
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 2603
    if-eqz v1, :cond_f

    .line 2604
    invoke-static {p0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 2606
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/ItemInfo;->copyFrom(Lcom/android/launcher3/ItemInfo;)V

    .line 2607
    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetId:I

    .line 2609
    invoke-static {p0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    .line 2610
    iget v2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    const/16 v5, 0xc

    move-object v3, p0

    .line 2609
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    goto :goto_f

    .line 2612
    :cond_43
    iget v0, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    if-gez v0, :cond_56

    .line 2614
    iget-object v0, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2616
    new-instance v1, Lcom/android/launcher3/Launcher$17;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/launcher3/Launcher$17;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/PendingAppWidgetHostView;Ljava/lang/String;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 2615
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->showBrokenAppInstallDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_f

    .line 2623
    :cond_56
    iget-object v0, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2624
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method protected onClickSettingsButton(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_a

    .line 2865
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onClickSettingsButton(Landroid/view/View;)V

    .line 2869
    :goto_9
    return-void

    .line 2867
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher3/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method protected onClickWallpaperPicker(Landroid/view/View;)V
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_17:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/Launcher;->onClickWallpaperPicker_aroundBody17$advice(Lcom/android/launcher3/Launcher;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAspect;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 439
    invoke-static {}, Lcom/lge/launcher3/badge/appnotifier/AppNotifier;->aspectOf()Lcom/lge/launcher3/badge/appnotifier/AppNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifier;->ajc$before$com_lge_launcher3_badge_appnotifier_AppNotifier$1$119b79fc()V

    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V

    :try_start_14
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$before$com_lge_launcher3_nativejoin_LauncherAspect$3$119b79fc(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 440
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    .line 442
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_2f

    .line 443
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->preOnCreate()V

    .line 446
    :cond_2f
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 450
    const/4 v3, 0x2

    if-ne v0, v3, :cond_14d

    .line 451
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    .line 449
    :goto_45
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 454
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 455
    const/4 v3, 0x0

    .line 454
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 456
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    .line 457
    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/Launcher;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v3, p0, p0, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_65} :catch_15e

    move-result-object v3

    :try_start_66
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_68} :catch_155

    nop

    :try_start_69
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$1$5fa1dc82(Lorg/aspectj/lang/JoinPoint;)V

    nop

    .line 458
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 460
    new-instance v0, Lcom/android/launcher3/DragController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/DragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    .line 461
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 462
    new-instance v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;

    invoke-direct {v0, p0, p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherStateTransitionAnimation$Callbacks;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    .line 464
    new-instance v0, Lcom/android/launcher3/Stats;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Stats;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mStats:Lcom/android/launcher3/Stats;

    .line 466
    invoke-static {p0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 468
    new-instance v0, Lcom/android/launcher3/LauncherAppWidgetHost;

    const/16 v2, 0x400

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/LauncherAppWidgetHost;-><init>(Lcom/android/launcher3/Launcher;I)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 469
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 481
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setContentView(I)V

    .line 483
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_b4} :catch_15e

    move-result-object v0

    :try_start_b5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->setupViews()V
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_b8} :catch_179

    nop

    :try_start_b9
    invoke-static {}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$after$com_lge_launcher3_nativejoin_ConciergeAspect$4$ce606144(Lorg/aspectj/lang/JoinPoint;)V

    nop

    .line 484
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->layout(Lcom/android/launcher3/Launcher;)V

    .line 486
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->lockAllApps()V

    .line 488
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 489
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 495
    invoke-static {}, Lcom/lge/launcher3/DDTChangeWatcher;->getInstance()Lcom/lge/launcher3/DDTChangeWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/DDTChangeWatcher;->checkDDTChangedOnCreate(Landroid/content/Context;)Z

    .line 497
    invoke-static {}, Lcom/lge/launcher3/DDTChangeWatcher;->getInstance()Lcom/lge/launcher3/DDTChangeWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/DDTChangeWatcher;->isDDTChanged()Z

    move-result v0

    if-nez v0, :cond_f0

    .line 498
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRestoring:Z

    if-nez v0, :cond_f0

    .line 506
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getRestorePage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherModel;->startLoader(I)V

    .line 512
    :cond_f0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 513
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 515
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRotationAllowedForDevice(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 521
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-nez v0, :cond_122

    .line 522
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/launcher3/Utilities;->isAllowRotationPrefEnabled(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 527
    :cond_122
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->setOrientation()V

    .line 529
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_12e

    .line 530
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onCreate(Landroid/os/Bundle;)V

    .line 533
    :cond_12e
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->shouldShowIntroScreen()Z

    move-result v0

    if-eqz v0, :cond_182

    .line 534
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->showIntroScreen()V
    :try_end_137
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_137} :catch_15e

    .line 539
    :goto_137
    :try_start_137
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$4$119b79fc(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_13e
    .catch Ljava/lang/Throwable; {:try_start_137 .. :try_end_13e} :catch_167

    :try_start_13e
    invoke-static {}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->aspectOf()Lcom/lge/launcher3/liveicon/LiveIconAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$2$119b79fc()V
    :try_end_145
    .catch Ljava/lang/Throwable; {:try_start_13e .. :try_end_145} :catch_170

    invoke-static {}, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->aspectOf()Lcom/lge/launcher3/debug/LGDebugModeViewAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->ajc$after$com_lge_launcher3_debug_LGDebugModeViewAspect$2$3e137309(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 452
    :cond_14d
    :try_start_14d
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    goto/16 :goto_45

    .line 457
    :catch_155
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$1$5fa1dc82(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_15e
    .catch Ljava/lang/Throwable; {:try_start_14d .. :try_end_15e} :catch_15e

    .line 539
    :catch_15e
    move-exception v0

    :try_start_15f
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$4$119b79fc(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_167
    .catch Ljava/lang/Throwable; {:try_start_15f .. :try_end_167} :catch_167

    :catch_167
    move-exception v0

    :try_start_168
    invoke-static {}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->aspectOf()Lcom/lge/launcher3/liveicon/LiveIconAspect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$2$119b79fc()V

    throw v0
    :try_end_170
    .catch Ljava/lang/Throwable; {:try_start_168 .. :try_end_170} :catch_170

    :catch_170
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->aspectOf()Lcom/lge/launcher3/debug/LGDebugModeViewAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->ajc$after$com_lge_launcher3_debug_LGDebugModeViewAspect$2$3e137309(Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 483
    :catch_179
    move-exception v2

    :try_start_17a
    invoke-static {}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$after$com_lge_launcher3_nativejoin_ConciergeAspect$4$ce606144(Lorg/aspectj/lang/JoinPoint;)V

    throw v2

    .line 536
    :cond_182
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->showFirstRunActivity()Z
    :try_end_185
    .catch Ljava/lang/Throwable; {:try_start_17a .. :try_end_185} :catch_15e

    goto :goto_137
.end method

.method public onDeleteAppWidgetIds([I)V
    .registers 6

    .prologue
    .line 4955
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-lt v0, v1, :cond_5

    .line 4958
    return-void

    .line 4955
    :cond_5
    aget v2, p1, v0

    .line 4956
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 4955
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_14:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 2037
    invoke-static {}, Lcom/lge/launcher3/badge/appnotifier/AppNotifier;->aspectOf()Lcom/lge/launcher3/badge/appnotifier/AppNotifier;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifier;->ajc$before$com_lge_launcher3_badge_appnotifier_AppNotifier$2$7495cb5c(Lorg/aspectj/lang/JoinPoint;)V

    :try_start_d
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->aspectOf()Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$before$com_lge_launcher3_uninstallmode_UninstallModeAspect$3$37780436(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_14} :catch_11f

    :try_start_14
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2039
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->CLEAN_VIEW:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v2, :cond_20

    .line 2040
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$exitCleanViewMode(Lcom/android/launcher3/Launcher;)V

    .line 2044
    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2045
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2046
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2049
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 2053
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2054
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 2055
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_48} :catch_e0

    .line 2059
    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-static {}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$before$com_lge_launcher3_nativejoin_ConciergeAspect$8$7f769170()V

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->stopListening()V
    :try_end_54
    .catch Ljava/lang/NullPointerException; {:try_start_48 .. :try_end_54} :catch_d6
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_54} :catch_e0

    .line 2063
    :goto_54
    const/4 v0, 0x0

    :try_start_55
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 2065
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2067
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 2069
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2071
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->clearAllResizeFrames()V

    .line 2072
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2073
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->removeAllWorkspaceScreens()V

    .line 2074
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 2075
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    .line 2077
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->onDestroyActivity()V

    .line 2079
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_8f

    .line 2080
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onDestroy()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_8f} :catch_e0

    .line 2082
    :cond_8f
    :try_start_8f
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$5$7495cb5c(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_96} :catch_e9

    :try_start_96
    invoke-static {}, Lcom/lge/launcher3/folder/FolderAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/folder/FolderAspect;->ajc$after$com_lge_launcher3_folder_FolderAspect$3$37780436()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_9d} :catch_f2

    :try_start_9d
    invoke-static {}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->aspectOf()Lcom/lge/launcher3/liveicon/LiveIconAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$5$7495cb5c()V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a4} :catch_fb

    :try_start_a4
    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->aspectOf()Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$5$37780436()V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_ab} :catch_104

    :try_start_ab
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->aspectOf()Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$5$37780436(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_b2} :catch_10d

    :try_start_b2
    invoke-static {}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->aspectOf()Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->ajc$after$com_lge_launcher3_WorkspaceStateTransitionWatcherAspect$2$37780436(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_b9} :catch_116

    :try_start_b9
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$2$37780436(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_c0} :catch_11f

    :try_start_c0
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$2$398a2c76()V
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c7} :catch_128

    :try_start_c7
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$2$37780436(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_ce} :catch_131

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WallpaperBlurredImageAspect$2$37780436(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 2060
    :catch_d6
    move-exception v0

    .line 2061
    :try_start_d7
    const-string v2, "Launcher"

    const-string v3, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_de} :catch_e0

    goto/16 :goto_54

    .line 2082
    :catch_e0
    move-exception v0

    :try_start_e1
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$5$7495cb5c(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_e9} :catch_e9

    :catch_e9
    move-exception v0

    :try_start_ea
    invoke-static {}, Lcom/lge/launcher3/folder/FolderAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderAspect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/folder/FolderAspect;->ajc$after$com_lge_launcher3_folder_FolderAspect$3$37780436()V

    throw v0
    :try_end_f2
    .catch Ljava/lang/Throwable; {:try_start_ea .. :try_end_f2} :catch_f2

    :catch_f2
    move-exception v0

    :try_start_f3
    invoke-static {}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->aspectOf()Lcom/lge/launcher3/liveicon/LiveIconAspect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$5$7495cb5c()V

    throw v0
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_f3 .. :try_end_fb} :catch_fb

    :catch_fb
    move-exception v0

    :try_start_fc
    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->aspectOf()Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$5$37780436()V

    throw v0
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_104} :catch_104

    :catch_104
    move-exception v0

    :try_start_105
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->aspectOf()Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$5$37780436(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_10d
    .catch Ljava/lang/Throwable; {:try_start_105 .. :try_end_10d} :catch_10d

    :catch_10d
    move-exception v0

    :try_start_10e
    invoke-static {}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->aspectOf()Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->ajc$after$com_lge_launcher3_WorkspaceStateTransitionWatcherAspect$2$37780436(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_116
    .catch Ljava/lang/Throwable; {:try_start_10e .. :try_end_116} :catch_116

    :catch_116
    move-exception v0

    :try_start_117
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$2$37780436(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_11f
    .catch Ljava/lang/Throwable; {:try_start_117 .. :try_end_11f} :catch_11f

    :catch_11f
    move-exception v0

    :try_start_120
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$2$398a2c76()V

    throw v0
    :try_end_128
    .catch Ljava/lang/Throwable; {:try_start_120 .. :try_end_128} :catch_128

    :catch_128
    move-exception v0

    :try_start_129
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$2$37780436(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_131
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_131} :catch_131

    :catch_131
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WallpaperBlurredImageAspect$2$37780436(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 1724
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 1725
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    .line 1727
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    if-eqz v0, :cond_12

    .line 1728
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    .line 1731
    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->updateAutoAdvanceState()V

    .line 1732
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1e

    .line 1733
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onDetachedFromWindow()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_26

    .line 1735
    :cond_1e
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$6$e0ee9b14()V

    return-void

    :catch_26
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$6$e0ee9b14()V

    throw v0
.end method

.method public onDragStarted(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 2888
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isOnCustomContent()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2891
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->moveWorkspaceToDefaultScreen()V

    .line 2894
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_12

    .line 2895
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onDragStarted(Landroid/view/View;)V

    .line 2897
    :cond_12
    return-void
.end method

.method protected onInteractionBegin()V
    .registers 2

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_9

    .line 2920
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onInteractionBegin()V

    .line 2922
    :cond_9
    return-void
.end method

.method protected onInteractionEnd()V
    .registers 2

    .prologue
    .line 2904
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_9

    .line 2905
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onInteractionEnd()V

    .line 2907
    :cond_9
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    sget-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p0, p0, v2, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    .line 1242
    :try_start_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 1243
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1244
    if-lez v2, :cond_4c

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_4c

    move v2, v0

    .line 1245
    :goto_1c
    if-nez v1, :cond_4e

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->acceptFilter()Z

    move-result v4

    if-eqz v4, :cond_4e

    if-eqz v2, :cond_4e

    .line 1246
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v4, v5, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 1248
    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4e

    .line 1255
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onSearchRequested()Z
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_43} :catch_5a

    move-result v0

    .line 1264
    :cond_44
    :goto_44
    invoke-static {}, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->aspectOf()Lcom/lge/launcher3/debug/LGDebugModeViewAspect;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v3}, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->ajc$after$com_lge_launcher3_debug_LGDebugModeViewAspect$1$5026dc28(ILandroid/view/KeyEvent;Lorg/aspectj/lang/JoinPoint;)V

    return v0

    .line 1244
    :cond_4c
    const/4 v2, 0x0

    goto :goto_1c

    .line 1260
    :cond_4e
    const/16 v2, 0x52

    if-ne p1, v2, :cond_58

    :try_start_52
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_5a

    move-result v2

    if-nez v2, :cond_44

    :cond_58
    move v0, v1

    .line 1264
    goto :goto_44

    :catch_5a
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->aspectOf()Lcom/lge/launcher3/debug/LGDebugModeViewAspect;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v3}, Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->ajc$after$com_lge_launcher3_debug_LGDebugModeViewAspect$1$5026dc28(ILandroid/view/KeyEvent;Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public onLauncherProviderChange()V
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_9

    .line 620
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onLauncherProviderChange()V

    .line 622
    :cond_9
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_25:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/Launcher;->onLongClick_aroundBody27$advice(Lcom/android/launcher3/Launcher;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAspect;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method protected onLongClickAllAppsButton(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2658
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2659
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/launcher3/Launcher;->showAppsView(ZZZZ)V

    .line 2662
    :cond_b
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 9

    .prologue
    const/high16 v4, 0x400000

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1913
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1916
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1918
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->closeSystemDialogs()V

    .line 1920
    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 1921
    and-int/2addr v1, v4

    .line 1922
    if-eq v1, v4, :cond_27

    move v1, v0

    .line 1924
    :goto_22
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-nez v3, :cond_29

    .line 1981
    :cond_26
    :goto_26
    return-void

    :cond_27
    move v1, v2

    .line 1920
    goto :goto_22

    .line 1928
    :cond_29
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v4

    .line 1930
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->exitWidgetResizeMode()V

    .line 1932
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v3, :cond_b3

    .line 1933
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/LauncherCallbacks;->shouldMoveToDefaultScreenOnHomeIntent()Z

    move-result v3

    .line 1934
    :goto_3e
    if-eqz v1, :cond_57

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v6, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v5, v6, :cond_57

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->isTouchActive()Z

    move-result v5

    if-nez v5, :cond_57

    .line 1935
    if-nez v4, :cond_57

    if-eqz v3, :cond_57

    .line 1936
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/Workspace;->moveToDefaultScreen(Z)V

    .line 1939
    :cond_57
    new-array v3, v2, [Z

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    .line 1941
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v4, Lcom/android/launcher3/Launcher$State;->CLEAN_VIEW:Lcom/android/launcher3/Launcher$State;

    if-ne v3, v4, :cond_65

    .line 1942
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$exitCleanViewMode(Lcom/android/launcher3/Launcher;)V

    .line 1946
    :cond_65
    if-eqz v1, :cond_b5

    .line 1947
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)V

    .line 1952
    :goto_6a
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    .line 1953
    if-eqz v3, :cond_89

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 1955
    const-string v0, "input_method"

    .line 1954
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1956
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1960
    :cond_89
    if-nez v1, :cond_94

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_94

    .line 1961
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->scrollToTop()V

    .line 1965
    :cond_94
    if-nez v1, :cond_9f

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    if-eqz v0, :cond_9f

    .line 1966
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsContainerView;->scrollToTop()V

    .line 1969
    :cond_9f
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_a8

    .line 1970
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onHomeIntent()V

    .line 1978
    :cond_a8
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_26

    .line 1979
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onNewIntent(Landroid/content/Intent;)V

    goto/16 :goto_26

    :cond_b3
    move v3, v0

    .line 1933
    goto :goto_3e

    .line 1949
    :cond_b5
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    goto :goto_6a
.end method

.method public onPageBoundSynchronously(I)V
    .registers 4

    .prologue
    .line 4225
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4226
    return-void
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 4807
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_9

    .line 4808
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/LauncherCallbacks;->onPageSwitch(Landroid/view/View;I)V

    .line 4810
    :cond_9
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 1105
    invoke-static {}, Lcom/android/launcher3/InstallShortcutReceiver;->enableInstallQueue()V

    .line 1107
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 1109
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/DragController;->cancelDrag()V

    .line 1110
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/DragController;->resetLastGestureUpTime()V

    .line 1114
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1115
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onHide()V

    .line 1118
    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_2d

    .line 1119
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onPause()V

    .line 1121
    :cond_2d
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 554
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 555
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_c

    .line 556
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onPostCreate(Landroid/os/Bundle;)V

    .line 558
    :cond_c
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 2208
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2209
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, v2}, Lcom/android/launcher3/Launcher;->isOnCustomContent_aroundBody9$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/nativejoin/LauncherAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 2211
    new-array v1, v0, [Z

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    .line 2213
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->exitWidgetResizeMode()V

    .line 2214
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v1

    if-nez v1, :cond_30

    .line 2216
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->showOverviewMode(Z)V

    .line 2221
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v1, :cond_2f

    .line 2222
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2225
    :cond_2f
    return v0

    .line 2218
    :cond_30
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)V

    goto :goto_25
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_9

    .line 902
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherCallbacks;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 905
    :cond_9
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 1986
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1987
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1993
    :goto_f
    return-void

    .line 1987
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1988
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_9

    .line 1990
    :catch_20
    move-exception v0

    .line 1991
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher3/Launcher;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    .line 996
    :try_start_8
    invoke-static {}, Lcom/lge/launcher3/debug/EventLogger;->aspectOf()Lcom/lge/launcher3/debug/EventLogger;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/lge/launcher3/debug/EventLogger;->ajc$before$com_lge_launcher3_debug_EventLogger$3$911698ed(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_119

    .line 1002
    :try_start_f
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v2, :cond_18

    .line 1003
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/LauncherCallbacks;->preOnResume()V

    .line 1006
    :cond_18
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1009
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v4, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v2, v4, :cond_f1

    .line 1010
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)V

    .line 1021
    :cond_25
    :goto_25
    sget-object v2, Lcom/android/launcher3/Launcher$State;->NONE:Lcom/android/launcher3/Launcher$State;

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    .line 1024
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v4, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v2, v4, :cond_30

    move v0, v1

    :cond_30
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setWorkspaceBackground(I)V

    .line 1027
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 1028
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRestoring:Z

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v0, :cond_59

    .line 1029
    :cond_3e
    invoke-static {}, Lcom/lge/launcher3/DDTChangeWatcher;->getInstance()Lcom/lge/launcher3/DDTChangeWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/DDTChangeWatcher;->isDDTChanged()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1030
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 1031
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    const/16 v2, -0x3e9

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherModel;->startLoader(I)V

    .line 1033
    :cond_53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRestoring:Z

    .line 1034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    .line 1037
    :cond_59
    invoke-static {}, Lcom/lge/launcher3/DDTChangeWatcher;->getInstance()Lcom/lge/launcher3/DDTChangeWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/DDTChangeWatcher;->clearDDTChanged()V

    .line 1039
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_76

    move v2, v1

    .line 1047
    :goto_69
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_133

    .line 1050
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1056
    :cond_76
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8b

    .line 1057
    :goto_7e
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_143

    .line 1060
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1065
    :cond_8b
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_95

    .line 1067
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 1074
    :cond_95
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->reinflateWidgetsIfNecessary()V

    .line 1075
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->reinflateQSBIfNecessary()V

    .line 1081
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    if-eqz v0, :cond_b9

    .line 1085
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1086
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onShow(Z)V

    .line 1089
    :cond_b9
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->updateInteraction(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V

    .line 1090
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->onResume()V

    .line 1092
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_d2

    .line 1094
    invoke-static {p0}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 1097
    :cond_d2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_db

    .line 1098
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onResume()V
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_db} :catch_107

    .line 1100
    :cond_db
    :try_start_db
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$6$625fa02f(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_e2} :catch_110

    :try_start_e2
    invoke-static {}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->aspectOf()Lcom/lge/launcher3/liveicon/LiveIconAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$3$911698ed()V
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_e9} :catch_119

    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->aspectOf()Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$4$fca092b8(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 1011
    :cond_f1
    :try_start_f1
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v4, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-ne v2, v4, :cond_126

    .line 1012
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_122

    move v2, v0

    .line 1016
    :goto_fc
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1017
    if-eqz v2, :cond_124

    move v2, v1

    :goto_101
    const/4 v6, 0x0

    .line 1016
    invoke-virtual {p0, v4, v5, v2, v6}, Lcom/android/launcher3/Launcher;->showAppsView(ZZZZ)V
    :try_end_105
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_105} :catch_107

    goto/16 :goto_25

    .line 1100
    :catch_107
    move-exception v0

    :try_start_108
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$6$625fa02f(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_110} :catch_110

    :catch_110
    move-exception v0

    :try_start_111
    invoke-static {}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->aspectOf()Lcom/lge/launcher3/liveicon/LiveIconAspect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$3$911698ed()V

    throw v0
    :try_end_119
    .catch Ljava/lang/Throwable; {:try_start_111 .. :try_end_119} :catch_119

    :catch_119
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->aspectOf()Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/launcher3/screeneffect/ScreenEffectAspect;->ajc$after$com_lge_launcher3_screeneffect_ScreenEffectAspect$4$fca092b8(Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    :cond_122
    move v2, v1

    .line 1012
    goto :goto_fc

    :cond_124
    move v2, v0

    .line 1017
    goto :goto_101

    .line 1018
    :cond_126
    :try_start_126
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v4, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne v2, v4, :cond_25

    .line 1019
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/Launcher;->showWidgetsView(ZZ)V

    goto/16 :goto_25

    .line 1048
    :cond_133
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1047
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_69

    .line 1058
    :cond_143
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_14e
    .catch Ljava/lang/Throwable; {:try_start_126 .. :try_end_14e} :catch_107

    .line 1057
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_7e
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1216
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 1220
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const-wide/16 v2, -0x1

    .line 1997
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_15

    .line 1998
    const-string v0, "launcher.current_screen"

    .line 1999
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPageOffsetFromCustomContent()I

    move-result v1

    .line 1998
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2001
    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2003
    const-string v0, "launcher.state"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2006
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mSuppressCloseFolder:Z

    if-nez v0, :cond_90

    .line 2014
    :goto_27
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7f

    .line 2015
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_7f

    .line 2016
    const-string v0, "launcher.add_container"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2017
    const-string v0, "launcher.add_screen"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2018
    const-string v0, "launcher.add_cell_x"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2019
    const-string v0, "launcher.add_cell_y"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2020
    const-string v0, "launcher.add_span_x"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2021
    const-string v0, "launcher.add_span_y"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2022
    const-string v0, "launcher.add_widget_info"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2023
    const-string v0, "launcher.add_widget_id"

    iget v1, p0, Lcom/android/launcher3/Launcher;->mPendingAddWidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2028
    :cond_7f
    const-string v0, "launcher.view_ids"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2030
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_8f

    .line 2031
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2033
    :cond_8f
    return-void

    .line 2011
    :cond_90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mSuppressCloseFolder:Z

    goto :goto_27
.end method

.method public onScreenOff()V
    .registers 3

    .prologue
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_11:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 1699
    :try_start_6
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$23$19154e45(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_15

    invoke-static {}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->aspectOf()Lcom/lge/launcher3/liveicon/LiveIconAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$4$19154e45()V

    return-void

    :catch_15
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->aspectOf()Lcom/lge/launcher3/liveicon/LiveIconAspect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$after$com_lge_launcher3_liveicon_LiveIconAspect$4$19154e45()V

    throw v0
.end method

.method public onSearchRequested()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2230
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2232
    return v1
.end method

.method public onSettingsChanged(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 543
    const-string v0, "pref_allowRotation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 544
    iput-boolean p2, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 545
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mUpdateOrientationRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 546
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mUpdateOrientationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 549
    :cond_18
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 986
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 987
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 989
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_10

    .line 990
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onStart()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_18

    .line 992
    :cond_10
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$3$57cefcc9()V

    return-void

    :catch_18
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$3$57cefcc9()V

    throw v0
.end method

.method public onStateTransitionHideSearchBar()V
    .registers 3

    .prologue
    .line 3421
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v0, :cond_a

    .line 3422
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 3424
    :cond_a
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 976
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 977
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 979
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_10

    .line 980
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onStop()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_18

    .line 982
    :cond_10
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$4$c7103b03()V

    return-void

    :catch_18
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$4$c7103b03()V

    throw v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 2587
    const/4 v0, 0x0

    return v0
.end method

.method public onTrimMemory(I)V
    .registers 3

    .prologue
    .line 3404
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 3405
    const/16 v0, 0x14

    if-lt p1, v0, :cond_a

    .line 3408
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 3413
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_13

    .line 3414
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onTrimMemory(I)V

    .line 3416
    :cond_13
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .prologue
    .line 1226
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1227
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    .line 1229
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_e

    .line 1230
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onWindowFocusChanged(Z)V

    .line 1232
    :cond_e
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_12:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 1738
    if-nez p1, :cond_33

    const/4 v0, 0x1

    :goto_d
    :try_start_d
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    .line 1739
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->updateAutoAdvanceState()V

    .line 1743
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    if-eqz v0, :cond_2b

    .line 1744
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_28

    .line 1745
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1749
    new-instance v2, Lcom/android/launcher3/Launcher$15;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Launcher$15;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1774
    :cond_28
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->clearTypedText()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2b} :catch_35

    .line 1776
    :cond_2b
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$2$c0e7b202(ILorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 1738
    :cond_33
    const/4 v0, 0x0

    goto :goto_d

    .line 1776
    :catch_35
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$2$c0e7b202(ILorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method protected onWorkspaceLockedChanged()V
    .registers 2

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_9

    .line 2261
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onWorkspaceLockedChanged()V

    .line 2263
    :cond_9
    return-void
.end method

.method public openFolder(Lcom/android/launcher3/FolderIcon;)V
    .registers 7

    .prologue
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_21:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 3195
    :try_start_6
    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getFolder()Lcom/android/launcher3/Folder;

    move-result-object v2

    .line 3196
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    .line 3197
    :goto_14
    if-eqz v0, :cond_22

    if-eq v0, v2, :cond_22

    .line 3199
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-boolean v4, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    .line 3202
    :cond_22
    iget-object v0, v2, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    .line 3203
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/launcher3/FolderInfo;->opened:Z

    .line 3206
    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 3210
    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_6b

    .line 3211
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DragLayer;->addView(Landroid/view/View;)V

    .line 3212
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 3217
    :goto_40
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->lockScreenOrientation()V

    .line 3218
    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->animateOpen()V

    .line 3219
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->growAndFadeOutFolderIcon(Lcom/android/launcher3/FolderIcon;)V

    .line 3223
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Folder;->sendAccessibilityEvent(I)V

    .line 3224
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    const/16 v3, 0x800

    invoke-virtual {v0, v3}, Lcom/android/launcher3/DragLayer;->sendAccessibilityEvent(I)V

    .line 3225
    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->setFocusOnFirstChild()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_5a} :catch_94

    .line 3226
    :try_start_5a
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$11$39a4f627()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_61} :catch_9d

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$5$ef40765c(Lcom/android/launcher3/FolderIcon;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 3196
    :cond_69
    const/4 v0, 0x0

    goto :goto_14

    .line 3214
    :cond_6b
    :try_start_6b
    const-string v0, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Opening folder ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") which already has a parent ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3215
    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3214
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_93} :catch_94

    goto :goto_40

    .line 3226
    :catch_94
    move-exception v0

    :try_start_95
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$11$39a4f627()V

    throw v0
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_9d} :catch_9d

    :catch_9d
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$5$ef40765c(Lcom/android/launcher3/FolderIcon;Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method protected overrideWallpaperDimensions()Z
    .registers 2

    .prologue
    .line 4611
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_b

    .line 4612
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->overrideWallpaperDimensions()Z

    move-result v0

    .line 4614
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method protected populateCustomContentContainer()V
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_9

    .line 647
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->populateCustomContentContainer()V

    .line 649
    :cond_9
    return-void
.end method

.method public removeAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .registers 3

    .prologue
    .line 1845
    iget-object v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 1846
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1847
    return-void
.end method

.method removeFolder(Lcom/android/launcher3/FolderInfo;)V
    .registers 6

    .prologue
    .line 2434
    sget-object v0, Lcom/android/launcher3/Launcher;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, p1, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 2435
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1839
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->updateAutoAdvanceState()V

    .line 1842
    :cond_10
    return-void
.end method

.method public removeWorkspaceEmptyScreen()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$interMethod$com_lge_launcher3_nativejoin_LauncherAspect$com_android_launcher3_Launcher$removeWorkspaceEmptyScreen(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 4826
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4827
    return-void
.end method

.method sendAdvanceMessage(J)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1779
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1780
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1781
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/Launcher;->mAutoAdvanceSentTime:J

    .line 1783
    return-void
.end method

.method public setAllAppsButton(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    .line 1457
    return-void
.end method

.method public setLauncherCallbacks(Lcom/android/launcher3/LauncherCallbacks;)Z
    .registers 4

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    .line 573
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    new-instance v1, Lcom/android/launcher3/Launcher$7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$7;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherCallbacks;->setLauncherSearchCallback(Ljava/lang/Object;)V

    .line 614
    const/4 v0, 0x1

    return v0
.end method

.method public setLauncherOverlay(Lcom/android/launcher3/Launcher$LauncherOverlay;)V
    .registers 3

    .prologue
    .line 565
    if-eqz p1, :cond_a

    .line 566
    new-instance v0, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-interface {p1, v0}, Lcom/android/launcher3/Launcher$LauncherOverlay;->setOverlayCallbacks(Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;)V

    .line 568
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->setLauncherOverlay(Lcom/android/launcher3/Launcher$LauncherOverlay;)V

    .line 569
    return-void
.end method

.method public setLoadOnResume()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3807
    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v1, :cond_8

    .line 3809
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    .line 3812
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method setOrientation()V
    .registers 2

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-eqz v0, :cond_9

    .line 409
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 414
    :goto_8
    return-void

    .line 412
    :cond_9
    const/4 v0, 0x5

    .line 411
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    goto :goto_8
.end method

.method public setState(Lcom/android/launcher3/Launcher$State;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$setState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher$State;)V

    return-void
.end method

.method public setWorkspaceBG(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$setWorkspaceBG(Lcom/android/launcher3/Launcher;Z)V

    return-void
.end method

.method protected setupViews()V
    .registers 12

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    .line 1340
    :try_start_9
    iget-object v10, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    .line 1342
    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    .line 1343
    const v0, 0x7f0e0052

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FocusIndicatorView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/FocusIndicatorView;

    .line 1344
    const v0, 0x7f0e0051

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    .line 1345
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    const v1, 0x7f0e0012

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 1346
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->setPageSwitchListener(Lcom/android/launcher3/PagedView$PageSwitchListener;)V

    .line 1347
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    const v1, 0x7f0e0053

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPageIndicators:Landroid/view/View;

    .line 1349
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    .line 1350
    const/16 v1, 0x700

    .line 1349
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1353
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Launcher;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, p0, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_5e} :catch_1de

    move-result-object v1

    :try_start_5f
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_61} :catch_1d5

    nop

    :try_start_62
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$16$b4b1e481(Lorg/aspectj/lang/JoinPoint;)V

    nop

    .line 1356
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0, p0, v10}, Lcom/android/launcher3/DragLayer;->setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;)V

    .line 1359
    const v0, 0x7f0e0054

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Hotseat;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 1360
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_83

    .line 1361
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Hotseat;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1364
    :cond_83
    const v0, 0x7f0e0055

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    .line 1365
    const v0, 0x7f0e00b3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsButton:Landroid/view/View;

    .line 1366
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsButton:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/Launcher$12;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$12;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1374
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1376
    const v0, 0x7f0e00b5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1377
    new-instance v1, Lcom/android/launcher3/Launcher$13;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$13;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1385
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1387
    const v0, 0x7f0e00b7

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1388
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasSettings()Z

    move-result v1

    if-eqz v1, :cond_1f0

    .line 1389
    new-instance v1, Lcom/android/launcher3/Launcher$14;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$14;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1397
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1402
    :goto_dc
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1405
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 1406
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1407
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setupViews() - mDragController = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/Workspace;->setup(Lcom/android/launcher3/DragController;)V

    .line 1409
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v10, v0}, Lcom/android/launcher3/DragController;->addDragListener(Lcom/android/launcher3/DragController$DragListener;)V

    .line 1413
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    const v1, 0x7f0e0057

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1412
    check-cast v0, Lcom/android/launcher3/SearchDropTargetBar;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    .line 1416
    const v0, 0x7f0e0018

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AllAppsContainerView;

    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/Launcher;->mAppsView_aroundBody1$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AllAppsContainerView;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    .line 1417
    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->mWidgetsView_aroundBody3$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/WidgetsContainerView;Lcom/lge/launcher3/nativejoin/LauncherAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 1418
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_160

    .line 1419
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1f7

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->getAllAppsSearchBarController()Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    move-result-object v0

    if-eqz v0, :cond_1f7

    .line 1420
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/LauncherCallbacks;->getAllAppsSearchBarController()Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setSearchBarController(Lcom/android/launcher3/allapps/AllAppsSearchBarController;)V

    .line 1427
    :cond_160
    :goto_160
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v10, v0}, Lcom/android/launcher3/DragController;->setDragScoller(Lcom/android/launcher3/DragScroller;)V

    .line 1428
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v10, v0}, Lcom/android/launcher3/DragController;->setScrollView(Landroid/view/View;)V

    .line 1429
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v10, v0}, Lcom/android/launcher3/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 1430
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v10, v0}, Lcom/android/launcher3/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 1431
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v0, :cond_186

    .line 1432
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {v0, p0, v10}, Lcom/android/launcher3/SearchDropTargetBar;->setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;)V

    .line 1433
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOrCreateQsbBar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->setQsbSearchBar(Landroid/view/View;)V

    .line 1436
    :cond_186
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 1437
    const-string v0, "Launcher"

    const-string v1, "adding WeightWatcher"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    new-instance v0, Lcom/android/launcher3/WeightWatcher;

    invoke-direct {v0, p0}, Lcom/android/launcher3/WeightWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWeightWatcher:Landroid/view/View;

    .line 1439
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWeightWatcher:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1440
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWeightWatcher:Landroid/view/View;

    .line 1441
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1442
    const/4 v3, -0x1

    .line 1443
    const/4 v4, -0x2

    .line 1444
    const/16 v5, 0x50

    .line 1441
    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1440
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1447
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->shouldShowWeightWatcher()Z

    move-result v0

    .line 1448
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWeightWatcher:Landroid/view/View;

    if-eqz v0, :cond_204

    move v0, v7

    :goto_1c3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_1c6
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_1c6} :catch_1de

    .line 1450
    :cond_1c6
    :try_start_1c6
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$1$b65b1a93(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_1cd
    .catch Ljava/lang/Throwable; {:try_start_1c6 .. :try_end_1cd} :catch_1e7

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$1$b65b1a93(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 1353
    :catch_1d5
    move-exception v0

    :try_start_1d6
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$16$b4b1e481(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_1de
    .catch Ljava/lang/Throwable; {:try_start_1d6 .. :try_end_1de} :catch_1de

    .line 1450
    :catch_1de
    move-exception v0

    :try_start_1df
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$1$b65b1a93(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_1e7
    .catch Ljava/lang/Throwable; {:try_start_1df .. :try_end_1e7} :catch_1e7

    :catch_1e7
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$1$b65b1a93(Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 1399
    :cond_1f0
    const/16 v1, 0x8

    :try_start_1f2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_dc

    .line 1422
    :cond_1f7
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->newDefaultAppSearchController()Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setSearchBarController(Lcom/android/launcher3/allapps/AllAppsSearchBarController;)V
    :try_end_202
    .catch Ljava/lang/Throwable; {:try_start_1f2 .. :try_end_202} :catch_1de

    goto/16 :goto_160

    :cond_204
    move v0, v8

    .line 1448
    goto :goto_1c3
.end method

.method showAppsView(ZZZZ)V
    .registers 6

    .prologue
    .line 3498
    if-eqz p2, :cond_7

    .line 3499
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->scrollToTop()V

    .line 3501
    :cond_7
    if-eqz p3, :cond_c

    .line 3502
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->tryAndUpdatePredictedApps()V

    .line 3504
    :cond_c
    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    invoke-direct {p0, v0, p1, p4}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(Lcom/android/launcher3/Launcher$State;ZZ)Z

    .line 3505
    return-void
.end method

.method public showFirstRunActivity()Z
    .registers 2

    .prologue
    .line 4648
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->shouldRunFirstRunActivity()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4649
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasFirstRunActivity()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4650
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getFirstRunActivity()Landroid/content/Intent;

    move-result-object v0

    .line 4651
    if-eqz v0, :cond_1a

    .line 4652
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 4653
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->markFirstRunActivityShown()V

    .line 4654
    const/4 v0, 0x1

    .line 4657
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method showFirstRunClings()V
    .registers 3

    .prologue
    .line 4733
    new-instance v0, Lcom/android/launcher3/LauncherClings;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherClings;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 4734
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherClings;->shouldShowFirstRunOrMigrationClings()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4735
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->canMigrateFromOldLauncherDb(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4736
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherClings;->showMigrationCling()V

    .line 4741
    :cond_16
    :goto_16
    return-void

    .line 4738
    :cond_17
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherClings;->showLongPressCling(Z)V

    goto :goto_16
.end method

.method protected showIntroScreen()V
    .registers 3

    .prologue
    .line 4697
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getIntroScreen()Landroid/view/View;

    move-result-object v0

    .line 4698
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->changeWallpaperVisiblity(Z)V

    .line 4699
    if-eqz v0, :cond_f

    .line 4700
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/DragLayer;->showOverlayView(Landroid/view/View;)V

    .line 4702
    :cond_f
    return-void
.end method

.method public showOutOfSpaceMessage(Z)V
    .registers 2

    .prologue
    .line 1854
    return-void
.end method

.method showOverviewMode(Z)V
    .registers 9

    .prologue
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_27:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v6

    .line 3479
    :try_start_a
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$before$com_lge_launcher3_nativejoin_LauncherAspect$9$3220629d(Lorg/aspectj/lang/JoinPoint;)V

    invoke-static {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_18} :catch_58

    move-result v0

    if-eqz v0, :cond_23

    .line 3491
    :goto_1b
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$10$3220629d(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 3483
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setVisibility(I)V

    .line 3484
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3485
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$enablePageAsFullSize(Lcom/android/launcher3/Launcher;Z)V

    .line 3487
    :cond_35
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    .line 3488
    const/4 v3, -0x1

    .line 3489
    const/4 v5, 0x0

    move v4, p1

    .line 3487
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspace(Lcom/android/launcher3/Launcher$State;Lcom/android/launcher3/Workspace$State;IZLjava/lang/Runnable;)V

    .line 3490
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_43} :catch_58

    :try_start_43
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_45} :catch_4f

    nop

    :try_start_46
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    nop

    .line 3491
    goto :goto_1b

    .line 3490
    :catch_4f
    move-exception v1

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    throw v1
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_58} :catch_58

    .line 3491
    :catch_58
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$10$3220629d(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method protected showWidgetsView(ZZ)V
    .registers 6

    .prologue
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_28:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 3512
    if-eqz p2, :cond_15

    .line 3513
    :try_start_10
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsContainerView;->scrollToTop()V

    .line 3515
    :cond_15
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(Lcom/android/launcher3/Launcher$State;ZZ)Z

    .line 3517
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    new-instance v2, Lcom/android/launcher3/Launcher$22;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Launcher$22;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetsContainerView;->post(Ljava/lang/Runnable;)Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_25} :catch_2d

    .line 3523
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$17$adaa56a3(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_2d
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$after$com_lge_launcher3_nativejoin_LauncherAspect$17$adaa56a3(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method protected showWorkspace(IZ)V
    .registers 4

    .prologue
    .line 3436
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/Launcher;->showWorkspace(IZLjava/lang/Runnable;)V

    .line 3437
    return-void
.end method

.method protected showWorkspace(IZLjava/lang/Runnable;)V
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_26:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    .line 3440
    :try_start_1a
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_89

    .line 3441
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_89

    move v0, v7

    .line 3442
    :goto_2b
    if-eqz v0, :cond_6e

    .line 3443
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3444
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$enablePageAsFullSize(Lcom/android/launcher3/Launcher;Z)V

    .line 3446
    :cond_39
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_8b

    move v8, v6

    .line 3447
    :goto_40
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setVisibility(I)V

    .line 3448
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspace(Lcom/android/launcher3/Launcher$State;Lcom/android/launcher3/Workspace$State;IZLjava/lang/Runnable;)V

    .line 3453
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v0, :cond_60

    .line 3454
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz p2, :cond_8d

    if-eqz v8, :cond_8d

    move v0, v6

    :goto_5d
    invoke-virtual {v1, v0}, Lcom/android/launcher3/SearchDropTargetBar;->showSearchBar(Z)V

    .line 3458
    :cond_60
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v0, :cond_69

    .line 3459
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3461
    :cond_69
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->clearAccessibilityFocus()V

    .line 3465
    :cond_6e
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_70} :catch_98

    :try_start_70
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_72} :catch_8f

    nop

    :try_start_73
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    nop

    .line 3468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mUserPresent:Z

    .line 3469
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->updateAutoAdvanceState()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_81} :catch_98

    .line 3476
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->aspectOf()Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$after$com_lge_launcher3_uninstallmode_UninstallModeAspect$2$b1c5ccab(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :cond_89
    move v0, v6

    .line 3440
    goto :goto_2b

    :cond_8b
    move v8, v7

    .line 3446
    goto :goto_40

    :cond_8d
    move v0, v7

    .line 3454
    goto :goto_5d

    .line 3465
    :catch_8f
    move-exception v1

    :try_start_90
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    throw v1
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_98} :catch_98

    .line 3476
    :catch_98
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->aspectOf()Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$after$com_lge_launcher3_uninstallmode_UninstallModeAspect$2$b1c5ccab(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public showWorkspace(Z)V
    .registers 4

    .prologue
    .line 3427
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(IZLjava/lang/Runnable;)V

    .line 3428
    return-void
.end method

.method public showWorkspace(ZLjava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 3431
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/Launcher;->showWorkspace(IZLjava/lang/Runnable;)V

    .line 3433
    return-void
.end method

.method showWorkspaceSearchAndHotseat()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4744
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setAlpha(F)V

    .line 4745
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setAlpha(F)V

    .line 4746
    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPageIndicators:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPageIndicators:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4747
    :cond_1d
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->showSearchBar(Z)V

    .line 4748
    :cond_27
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 3

    .prologue
    .line 2090
    invoke-direct {p0, p2}, Lcom/android/launcher3/Launcher;->onStartForResult(I)V

    .line 2091
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2092
    return-void
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .registers 15

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_20:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v5

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v10, v4

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/Launcher;->startActivitySafely_aroundBody23$advice(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAspect;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method startAppShortcutOrInfoActivity(Landroid/view/View;)V
    .registers 9

    .prologue
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_16:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    .line 2752
    invoke-static {}, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->aspectOf()Lcom/lge/launcher3/util/CPUBoostServiceAspect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/util/CPUBoostServiceAspect;->ajc$before$com_lge_launcher3_util_CPUBoostServiceAspect$2$6f1e7bf6(Landroid/view/View;)V

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity_aroundBody15$advice(Lcom/android/launcher3/Launcher;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAspect;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 6

    .prologue
    const v2, 0x7f0f001e

    const/4 v1, 0x0

    .line 2939
    :try_start_4
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 2940
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_b} :catch_c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_b} :catch_1c

    .line 2948
    :goto_b
    return-void

    .line 2942
    :catch_c
    move-exception v0

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2943
    const-string v0, "Launcher"

    const-string v1, "Launcher does not have permission to launch settings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2945
    :catch_1c
    move-exception v0

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2946
    const-string v0, "Launcher"

    const-string v1, "Unable to launch settings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public startApplicationUninstallActivity(Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 15

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Launcher;->ajc$tjp_18:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAspect;

    move-result-object v5

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    move-object v10, v4

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/Launcher;->startApplicationUninstallActivity_aroundBody19$advice(Lcom/android/launcher3/Launcher;Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAspect;Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method public startBinding()V
    .registers 2

    .prologue
    .line 3833
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 3838
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3841
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->clearDropTargets()V

    .line 3842
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->removeAllWorkspaceScreens()V

    .line 3844
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3845
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_21

    .line 3846
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->resetLayout()V

    .line 3848
    :cond_21
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/DragSource;)V
    .registers 5

    .prologue
    .line 4796
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4797
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->onExternalDragStartedWithItem(Landroid/view/View;)V

    .line 4798
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/Workspace;->beginExternalDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;)V

    .line 4799
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 9

    .prologue
    .line 2097
    invoke-direct {p0, p2}, Lcom/android/launcher3/Launcher;->onStartForResult(I)V

    .line 2099
    :try_start_3
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_6} :catch_7

    .line 2104
    return-void

    .line 2102
    :catch_7
    move-exception v0

    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 7

    .prologue
    .line 2120
    if-nez p1, :cond_6

    .line 2122
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 2124
    :cond_6
    if-nez p3, :cond_14

    .line 2125
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2126
    const-string v0, "source"

    const-string v1, "launcher-search"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    :cond_14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2129
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v1, :cond_23

    .line 2130
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->getSearchBarBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2133
    :cond_23
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)Z

    move-result v0

    .line 2135
    if-eqz v0, :cond_2c

    .line 2136
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->clearTypedText()V

    .line 2140
    :cond_2c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)V

    .line 2141
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)Z
    .registers 6

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->providesSearch()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2153
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherCallbacks;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)Z

    move-result v0

    .line 2159
    :goto_12
    return v0

    .line 2157
    :cond_13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    .line 2159
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public startWorkspaceStateChangeAnimation(Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;)Landroid/animation/Animator;
    .registers 13
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
    .line 3567
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v6

    .line 3568
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->setStateWithAnimation(Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v0

    .line 3570
    invoke-virtual {p0, v6, p1}, Lcom/android/launcher3/Launcher;->updateInteraction(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V

    .line 3571
    return-object v0
.end method

.method unlockAllApps()V
    .registers 1

    .prologue
    .line 3652
    return-void
.end method

.method public unlockScreenOrientation(Z)V
    .registers 6

    .prologue
    .line 4575
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-eqz v0, :cond_a

    .line 4576
    if-eqz p1, :cond_b

    .line 4577
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    .line 4586
    :cond_a
    :goto_a
    return-void

    .line 4579
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/Launcher$39;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$39;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 4583
    const-wide/16 v2, 0x1f4

    .line 4579
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a
.end method

.method updateAutoAdvanceState()V
    .registers 13

    .prologue
    const-wide/16 v4, 0x4e20

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1786
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mUserPresent:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v1

    .line 1787
    :goto_15
    iget-boolean v3, p0, Lcom/android/launcher3/Launcher;->mAutoAdvanceRunning:Z

    if-eq v0, v3, :cond_29

    .line 1788
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAutoAdvanceRunning:Z

    .line 1789
    if-eqz v0, :cond_2f

    .line 1790
    iget-wide v0, p0, Lcom/android/launcher3/Launcher;->mAutoAdvanceTimeLeft:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    move-wide v0, v4

    .line 1791
    :goto_26
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->sendAdvanceMessage(J)V

    .line 1801
    :cond_29
    :goto_29
    return-void

    :cond_2a
    move v0, v2

    .line 1786
    goto :goto_15

    .line 1790
    :cond_2c
    iget-wide v0, p0, Lcom/android/launcher3/Launcher;->mAutoAdvanceTimeLeft:J

    goto :goto_26

    .line 1793
    :cond_2f
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 1794
    const-wide/16 v6, 0x0

    .line 1795
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/launcher3/Launcher;->mAutoAdvanceSentTime:J

    sub-long/2addr v8, v10

    sub-long/2addr v4, v8

    .line 1794
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/launcher3/Launcher;->mAutoAdvanceTimeLeft:J

    .line 1797
    :cond_47
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1798
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_29
.end method

.method public updateInteraction(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2928
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq p1, v0, :cond_11

    move v0, v1

    .line 2929
    :goto_7
    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq p2, v3, :cond_13

    .line 2930
    :goto_b
    if-eqz v1, :cond_15

    .line 2931
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onInteractionBegin()V

    .line 2935
    :cond_10
    :goto_10
    return-void

    :cond_11
    move v0, v2

    .line 2928
    goto :goto_7

    :cond_13
    move v1, v2

    .line 2929
    goto :goto_b

    .line 2932
    :cond_15
    if-eqz v0, :cond_10

    .line 2933
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onInteractionEnd()V

    goto :goto_10
.end method

.method public updateOverlayBounds(Landroid/graphics/Rect;)V
    .registers 3

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setSearchBarBounds(Landroid/graphics/Rect;)V

    .line 629
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->setSearchBarBounds(Landroid/graphics/Rect;)V

    .line 630
    return-void
.end method

.method public useVerticalBarLayout()Z
    .registers 2

    .prologue
    .line 4314
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    return v0
.end method

.method protected waitUntilResume(Ljava/lang/Runnable;)Z
    .registers 3

    .prologue
    .line 3785
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    return v0
.end method

.method waitUntilResume(Ljava/lang/Runnable;Z)Z
    .registers 5

    .prologue
    .line 3771
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->DYNAMIC_GRID_OVERVIEW:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_1b

    .line 3773
    :cond_a
    if-eqz p2, :cond_14

    .line 3774
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3777
    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3778
    const/4 v0, 0x1

    .line 3780
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
