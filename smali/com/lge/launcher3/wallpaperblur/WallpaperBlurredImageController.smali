.class public Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;
.super Ljava/lang/Object;
.source "WallpaperBlurredImageController.java"

# interfaces
.implements Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$IAdaptiveColorEngineListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;


# instance fields
.field private mAdaptiveColorEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

.field private mContext:Landroid/content/Context;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLiveWallpaperCommonColor:I

.field private final mLock:Ljava/lang/Object;

.field private mOnWallpaperChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticWallpaperCommonColor:I

.field private final mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperInfoManager:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->sInstance:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 52
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mAdaptiveColorEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    .line 54
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperInfoManager:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    .line 56
    iput v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mStaticWallpaperCommonColor:I

    .line 57
    iput v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLiveWallpaperCommonColor:I

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLock:Ljava/lang/Object;

    .line 477
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$1;-><init>(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->TAG:Ljava/lang/String;

    const-string v1, "Create a new WallpaperBlurredImageController instance."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperInfoManager:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    .line 101
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->setupCommonColor()V

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mAdaptiveColorEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    if-nez v0, :cond_5b

    .line 108
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->getInstance()Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mAdaptiveColorEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    .line 109
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mAdaptiveColorEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->init(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mAdaptiveColorEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->addListener(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$IAdaptiveColorEngineListener;)V

    .line 112
    :cond_5b
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)Z
    .registers 2

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)V
    .registers 1

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->notifyWallpaperChange()V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperInfoManager:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mAdaptiveColorEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;
    .registers 3

    .prologue
    .line 69
    if-nez p0, :cond_b

    .line 70
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->TAG:Ljava/lang/String;

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    .line 78
    :goto_a
    return-object v0

    .line 74
    :cond_b
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->sInstance:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    if-nez v0, :cond_1a

    .line 75
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->sInstance:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    .line 78
    :cond_1a
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->sInstance:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    goto :goto_a
.end method

.method private getWallpaperOffsetForChildOfWorkspace(Landroid/view/View;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getWallpaperOffsetInterpolator()Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    move-result-object v1

    .line 201
    if-nez v1, :cond_8

    .line 216
    :cond_7
    :goto_7
    return v0

    .line 204
    :cond_8
    invoke-static {v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$getMaxOffset(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)F

    move-result v2

    .line 206
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    .line 207
    :goto_16
    if-eqz v1, :cond_7

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 212
    invoke-static {v1, v0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$indexOfChildExcludingEmptyAndCustom(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;)I

    move-result v0

    .line 213
    invoke-static {v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getNumScreensExcludingEmptyAndCustom(Lcom/android/launcher3/Workspace;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 214
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 216
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperInfoManager:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getRealWallpaperMaxOffsetX()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_7

    .line 206
    :cond_3a
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private getWallpaperOffsetInCenter()I
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperInfoManager:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getRealWallpaperMaxOffsetX()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getWallpaperOffsetInterpolator()Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 517
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    .line 518
    :goto_b
    if-nez v1, :cond_10

    .line 521
    :goto_d
    return-object v0

    :cond_e
    move-object v1, v0

    .line 517
    goto :goto_b

    .line 521
    :cond_10
    invoke-static {v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$getWallpaperOffset(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    move-result-object v0

    goto :goto_d
.end method

.method private isDisabled()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 393
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 394
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, v0

    .line 395
    :goto_1b
    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isLiveWallpaperMode()Z

    move-result v2

    if-nez v2, :cond_26

    :goto_23
    return v0

    :cond_24
    move v2, v1

    .line 393
    goto :goto_1b

    :cond_26
    move v0, v1

    .line 395
    goto :goto_23
.end method

.method private isValidSize(Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 301
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_14

    .line 307
    :cond_13
    :goto_13
    return v0

    .line 304
    :cond_14
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_13

    .line 307
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private notifyWallpaperBlurredImageChange(I)V
    .registers 4

    .prologue
    .line 463
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 473
    :cond_4
    return-void

    .line 467
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;

    .line 468
    if-eqz v0, :cond_b

    .line 471
    invoke-interface {v0, p1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;->onWallpaperBlurredImageChanged(I)V

    goto :goto_b
.end method

.method private notifyWallpaperChange()V
    .registers 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 457
    :cond_4
    return-void

    .line 451
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;

    .line 452
    if-eqz v0, :cond_b

    .line 455
    invoke-interface {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;->onWallpaperChanged()V

    goto :goto_b
.end method

.method private setupCommonColor()V
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    .line 353
    const-string v1, "wallpaperCommonColor"

    .line 352
    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_32

    .line 355
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 354
    :goto_11
    iput v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mStaticWallpaperCommonColor:I

    .line 358
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 359
    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 358
    div-float/2addr v0, v1

    .line 360
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 361
    const v1, -0x777778

    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLiveWallpaperCommonColor:I

    .line 362
    return-void

    .line 355
    :cond_32
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private toRealSize(I)I
    .registers 4

    .prologue
    .line 345
    int-to-float v0, p1

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperInfoManager:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperScaledRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private updateStaticWallpaperCommonColor(I)V
    .registers 5

    .prologue
    .line 375
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mStaticWallpaperCommonColor:I

    if-ne v0, p1, :cond_5

    .line 387
    :goto_4
    return-void

    .line 379
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_15

    .line 380
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->TAG:Ljava/lang/String;

    const-string v1, "Memory is full. so updateStaticWallpaperCommonColor is canceled."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 384
    :cond_15
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    .line 385
    const-string v1, "wallpaperCommonColor"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$updateItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iput p1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mStaticWallpaperCommonColor:I

    goto :goto_4
.end method


# virtual methods
.method public addOnWallpaperChangeListener(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;)V
    .registers 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    .line 428
    :cond_b
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 432
    :goto_13
    return-void

    .line 431
    :cond_14
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    .line 528
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 527
    if-lez v0, :cond_18

    const/4 v0, 0x1

    .line 529
    :goto_e
    if-eqz v0, :cond_1a

    .line 530
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->TAG:Ljava/lang/String;

    const-string v1, "Cancel to destroy WallpaperBlurredImageController instance.because there is some activity to use it."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :goto_17
    return-void

    .line 527
    :cond_18
    const/4 v0, 0x0

    goto :goto_e

    .line 535
    :cond_1a
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->TAG:Ljava/lang/String;

    const-string v1, "Destroy WallpaperBlurredImageController instance."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 539
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    .line 540
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 541
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    .line 544
    :cond_33
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_36
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mAdaptiveColorEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    if-eqz v0, :cond_42

    .line 546
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mAdaptiveColorEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->clear()V

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mAdaptiveColorEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    .line 550
    :cond_42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperInfoManager:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    .line 544
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_4d

    .line 553
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 554
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    .line 556
    sput-object v2, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->sInstance:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    goto :goto_17

    .line 544
    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public getBlurredImage(IIII)Landroid/graphics/Bitmap;
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 337
    :goto_7
    return-object v0

    .line 322
    :cond_8
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperInfoManager:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperStartOffsetX()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->toRealSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 323
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperInfoManager:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    invoke-virtual {v2}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperStartOffsetY()I

    move-result v2

    invoke-direct {p0, p2}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->toRealSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 324
    invoke-direct {p0, p3}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->toRealSize(I)I

    move-result v3

    .line 325
    invoke-direct {p0, p4}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->toRealSize(I)I

    move-result v4

    .line 330
    :try_start_26
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->getInstance()Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->getBlurImage(IIII)Landroid/graphics/Bitmap;
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_2d} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_2d} :catch_2f

    move-result-object v0

    goto :goto_7

    :catch_2f
    move-exception v1

    goto :goto_7

    .line 331
    :catch_31
    move-exception v1

    goto :goto_7
.end method

.method public getBlurredImageForChildOfWorkspace(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 192
    :cond_7
    :goto_7
    return-object v0

    .line 175
    :cond_8
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->hasBlurredImage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 179
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 180
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    .line 181
    invoke-static {v2, p1, v1}, Lcom/lge/launcher3/util/ViewPosition;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 183
    invoke-direct {p0, v2, v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isValidSize(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 187
    invoke-direct {p0, p1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getWallpaperOffsetForChildOfWorkspace(Landroid/view/View;)I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    .line 188
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 189
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 190
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 192
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getBlurredImage(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method public getBlurredImageForCurrentWorkspace()Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 246
    :cond_7
    :goto_7
    return-object v0

    .line 228
    :cond_8
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->hasBlurredImage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 232
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getWallpaperOffsetForCurrentWorkspace()I

    move-result v2

    .line 233
    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 235
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 237
    iget-object v4, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lge/launcher3/util/TalkBackUtils;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 238
    iget-object v4, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lge/launcher3/util/WindowUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v4

    .line 239
    iget-object v5, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lge/launcher3/util/OrientationUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 240
    sub-int/2addr v0, v4

    .line 246
    :cond_3a
    :goto_3a
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getBlurredImage(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7

    .line 242
    :cond_3f
    sub-int/2addr v1, v4

    goto :goto_3a
.end method

.method public getBlurredImageForFullscreenInCenter()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 270
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 285
    :cond_7
    :goto_7
    return-object v0

    .line 274
    :cond_8
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->hasBlurredImage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 278
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 280
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getWallpaperOffsetInCenter()I

    move-result v1

    .line 281
    const/4 v2, 0x0

    .line 282
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 283
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 285
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getBlurredImage(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method public getCommonColor()I
    .registers 2

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isLiveWallpaperMode()Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mStaticWallpaperCommonColor:I

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLiveWallpaperCommonColor:I

    goto :goto_8
.end method

.method public getWallpaperOffsetForCurrentWorkspace()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 263
    :cond_7
    :goto_7
    return v0

    .line 257
    :cond_8
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getWallpaperOffsetInterpolator()Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_7

    .line 261
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperInfoManager:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getRealWallpaperMaxOffsetX()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_7
.end method

.method public hasBlurredImage()Z
    .registers 2

    .prologue
    .line 409
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->getInstance()Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->hasBlurredImage()Z

    move-result v0

    return v0
.end method

.method public isLiveWallpaperMode()Z
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mWallpaperInfoManager:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->isLiveWallpaperMode()Z

    move-result v0

    return v0
.end method

.method public loadWallpaperBlurredImage()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 119
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->TAG:Ljava/lang/String;

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_b
    :goto_b
    return-void

    .line 123
    :cond_c
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 127
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$2;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$2;-><init>(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)V

    .line 163
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_b
.end method

.method public onAdaptiveColorChanged(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;)V
    .registers 8

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 511
    :goto_6
    return-void

    .line 504
    :cond_7
    invoke-virtual {p1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->getColor()I

    move-result v0

    .line 506
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->TAG:Ljava/lang/String;

    const-string v2, "onAdaptiveColorChanged(adpativeColor = %s(%d))"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 507
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 506
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->updateStaticWallpaperCommonColor(I)V

    .line 510
    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->notifyWallpaperBlurredImageChange(I)V

    goto :goto_6
.end method

.method public removeOnWallpaperChangeListener(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;)V
    .registers 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 442
    :goto_4
    return-void

    .line 441
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mOnWallpaperChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public setLauncher(Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 85
    if-nez p1, :cond_3

    .line 89
    :goto_2
    return-void

    .line 88
    :cond_3
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->mLauncher:Lcom/android/launcher3/Launcher;

    goto :goto_2
.end method
