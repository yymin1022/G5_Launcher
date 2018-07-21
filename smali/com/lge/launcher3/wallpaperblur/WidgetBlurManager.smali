.class public Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;
.super Ljava/lang/Object;
.source "WidgetBlurManager.java"

# interfaces
.implements Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;


# instance fields
.field private mIsAlreadyBlurViewRemoved:Z

.field private mIsResizedFrameEnabled:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const-class v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->TAG:Ljava/lang/String;

    .line 36
    sput-object v1, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sContext:Landroid/content/Context;

    .line 37
    sput-object v1, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 40
    iput-boolean v1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mIsResizedFrameEnabled:Z

    .line 42
    iput-boolean v1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mIsAlreadyBlurViewRemoved:Z

    .line 66
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->TAG:Ljava/lang/String;

    const-string v1, "Create a new WidgetBlurManager instance."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sput-object p1, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;)V
    .registers 1

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableBlurViewInCurrentPageAndUpdateAll()V

    return-void
.end method

.method private addBlurViewAndColorViewAll()V
    .registers 3

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mIsAlreadyBlurViewRemoved:Z

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getAllBlurLayoutList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    .line 118
    return-void

    .line 110
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    .line 111
    if-eqz v0, :cond_c

    .line 115
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->addBlurView()V

    .line 116
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->addColorView()V

    goto :goto_c
.end method

.method private enableBlurViewInCurrentPageAndUpdateAll()V
    .registers 2

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mIsResizedFrameEnabled:Z

    if-eqz v0, :cond_5

    .line 549
    :goto_4
    return-void

    .line 547
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableBlurViewInCurrentPage(Z)V

    .line 548
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->updateBlurViewAll()V

    goto :goto_4
.end method

.method private getAllBlurLayoutList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    if-nez p1, :cond_7

    .line 357
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 360
    :cond_7
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 361
    if-nez v0, :cond_e

    .line 369
    :cond_d
    return-object p1

    .line 365
    :cond_e
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    .line 366
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_d

    .line 367
    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getBlurLayoutList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method private getBlurLayoutList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    if-nez p1, :cond_7

    .line 379
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 382
    :cond_7
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 383
    if-nez v0, :cond_e

    .line 392
    :cond_d
    :goto_d
    return-object p1

    .line 387
    :cond_e
    invoke-virtual {v0, p2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 388
    if-eqz v0, :cond_d

    .line 392
    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getBlurLayoutList(Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_d
.end method

.method private getBlurLayoutList(Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;",
            ">;",
            "Lcom/android/launcher3/CellLayout;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    if-nez p1, :cond_47

    .line 403
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    :goto_7
    if-nez p2, :cond_b

    move-object v0, v1

    .line 435
    :goto_a
    return-object v0

    .line 410
    :cond_b
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 411
    if-nez v3, :cond_13

    move-object v0, v1

    .line 412
    goto :goto_a

    .line 415
    :cond_13
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v4

    .line 416
    const/4 v0, 0x0

    move v2, v0

    :goto_19
    if-lt v2, v4, :cond_1d

    move-object v0, v1

    .line 435
    goto :goto_a

    .line 417
    :cond_1d
    invoke-virtual {v3, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_2b

    instance-of v5, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-nez v5, :cond_2f

    .line 416
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    .line 423
    :cond_2f
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 424
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetInfoItds$com_android_launcher3_LauncherAppWidgetInfo$getHostView(Lcom/android/launcher3/LauncherAppWidgetInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 425
    if-eqz v0, :cond_2b

    .line 429
    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interMethodDispatch1$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$hasWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 433
    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interMethodDispatch1$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$getWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_47
    move-object v1, p1

    goto :goto_7
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;
    .registers 3

    .prologue
    .line 50
    if-nez p0, :cond_b

    .line 51
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->TAG:Ljava/lang/String;

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    .line 59
    :goto_a
    return-object v0

    .line 55
    :cond_b
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    if-nez v0, :cond_1a

    .line 56
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    .line 59
    :cond_1a
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    goto :goto_a
.end method

.method private isWorkspaceScrolling()Z
    .registers 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 443
    if-nez v0, :cond_8

    .line 444
    const/4 v0, 0x0

    .line 446
    :goto_7
    return v0

    :cond_8
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isScrolling(Lcom/android/launcher3/PagedView;)Z

    move-result v0

    goto :goto_7
.end method

.method private removeBlurViewAll()V
    .registers 3

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mIsAlreadyBlurViewRemoved:Z

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getAllBlurLayoutList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    .line 144
    return-void

    .line 138
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    .line 139
    if-eqz v0, :cond_c

    .line 142
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->removeBlurView()V

    goto :goto_c
.end method

.method private removeBlurViewAndColorViewAll()V
    .registers 3

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getAllBlurLayoutList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 131
    return-void

    .line 123
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    .line 124
    if-eqz v0, :cond_9

    .line 128
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->removeBlurView()V

    .line 129
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->removeColorView()V

    goto :goto_9
.end method

.method private updateColorViewAll(I)V
    .registers 4

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getAllBlurLayoutList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 349
    return-void

    .line 343
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    .line 344
    if-eqz v0, :cond_9

    .line 347
    invoke-virtual {v0, p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->updateColorView(I)V

    goto :goto_9
.end method


# virtual methods
.method public destroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 637
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->TAG:Ljava/lang/String;

    const-string v1, "Destroy WidgetBlurManager instance."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->removeOnWallpaperChangeListener(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;)V

    .line 641
    iput-boolean v3, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mIsAlreadyBlurViewRemoved:Z

    .line 642
    iput-boolean v3, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mIsResizedFrameEnabled:Z

    .line 644
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->destroy()V

    .line 646
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 647
    sput-object v2, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    .line 648
    sput-object v2, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sContext:Landroid/content/Context;

    .line 649
    return-void
.end method

.method public determineToRemovBlurView()V
    .registers 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 103
    :cond_6
    :goto_6
    return-void

    .line 92
    :cond_7
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mIsAlreadyBlurViewRemoved:Z

    if-nez v0, :cond_6

    .line 97
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->removeBlurViewAll()V

    .line 99
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getCommonColor()I

    move-result v0

    .line 101
    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->updateColorViewAll(I)V

    goto :goto_6
.end method

.method public enableBlurView(Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableBlurView(Landroid/view/View;ZZ)V

    .line 152
    return-void
.end method

.method public enableBlurView(Landroid/view/View;ZZ)V
    .registers 5

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 178
    :cond_c
    :goto_c
    return-void

    .line 168
    :cond_d
    if-eqz p1, :cond_13

    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-eqz v0, :cond_c

    .line 172
    :cond_13
    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 173
    invoke-static {p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interMethodDispatch1$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$hasWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 177
    invoke-static {p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interMethodDispatch1$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$getWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->enableBlurView(ZZ)V

    goto :goto_c
.end method

.method public enableBlurViewAll(Z)V
    .registers 4

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 273
    :cond_c
    return-void

    .line 267
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getAllBlurLayoutList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    .line 268
    if-eqz v0, :cond_16

    .line 271
    invoke-virtual {v0, p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->enableBlurView(Z)V

    goto :goto_16
.end method

.method public enableBlurViewIfAddedInCurrentPage(Landroid/view/View;Z)V
    .registers 7

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 253
    :cond_c
    :goto_c
    return-void

    .line 227
    :cond_d
    if-eqz p1, :cond_c

    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-eqz v0, :cond_c

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_c

    instance-of v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v1, :cond_c

    .line 236
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 237
    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 238
    invoke-static {p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interMethodDispatch1$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$hasWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 242
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_c

    .line 247
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    .line 248
    iget-wide v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->screenId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 252
    invoke-static {p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interMethodDispatch1$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$getWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->enableBlurView(Z)V

    goto :goto_c
.end method

.method public enableBlurViewInCurrentPage(Z)V
    .registers 4

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 212
    :cond_c
    return-void

    .line 192
    :cond_d
    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isWorkspaceScrolling()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mIsResizedFrameEnabled:Z

    if-nez v0, :cond_c

    .line 201
    :cond_19
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getCurrentPage()I

    move-result v0

    .line 202
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 206
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getBlurLayoutList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    .line 207
    if-eqz v0, :cond_29

    .line 210
    invoke-virtual {v0, p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->enableBlurView(Z)V

    goto :goto_29
.end method

.method public enableResizedFrame(Z)V
    .registers 3

    .prologue
    .line 558
    iput-boolean p1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mIsResizedFrameEnabled:Z

    .line 560
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 568
    :cond_e
    :goto_e
    return-void

    .line 564
    :cond_f
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mIsResizedFrameEnabled:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableBlurViewInCurrentPage(Z)V

    .line 565
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mIsResizedFrameEnabled:Z

    if-nez v0, :cond_e

    .line 566
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->updateBlurViewInCurrentPage()V

    goto :goto_e

    .line 564
    :cond_1f
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getWorkspace()Lcom/android/launcher3/Workspace;
    .registers 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getWorkspaceStateAnimationListener(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)Landroid/animation/Animator$AnimatorListener;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v0, :cond_11

    move v0, v1

    .line 457
    :goto_7
    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p1, v3, :cond_13

    .line 464
    :goto_b
    new-instance v2, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;-><init>(Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;ZZ)V

    .line 533
    return-object v2

    :cond_11
    move v0, v2

    .line 456
    goto :goto_7

    :cond_13
    move v1, v2

    .line 457
    goto :goto_b
.end method

.method public isDisabled()Z
    .registers 2

    .prologue
    .line 624
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_WIDGET_BLUR:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isLiveWallpaperMode()Z
    .registers 2

    .prologue
    .line 631
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isLiveWallpaperMode()Z

    move-result v0

    return v0
.end method

.method public onWallpaperBlurredImageChanged(I)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 587
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->TAG:Ljava/lang/String;

    const-string v1, "onWallpaperBlurredImageChanged() : adpativeColor = %s(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 588
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 587
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 603
    :cond_28
    :goto_28
    return-void

    .line 594
    :cond_29
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->addBlurViewAndColorViewAll()V

    .line 596
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getToState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_3d

    .line 597
    invoke-virtual {p0, v5}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableBlurViewInCurrentPage(Z)V

    .line 602
    :cond_3d
    invoke-direct {p0, p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->updateColorViewAll(I)V

    goto :goto_28
.end method

.method public onWallpaperChanged()V
    .registers 3

    .prologue
    .line 574
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->TAG:Ljava/lang/String;

    const-string v1, "Receive onWallpaperChanged()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 581
    :cond_13
    :goto_13
    return-void

    .line 580
    :cond_14
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->removeBlurViewAndColorViewAll()V

    goto :goto_13
.end method

.method public setLauncher(Lcom/android/launcher3/Launcher;)V
    .registers 4

    .prologue
    .line 75
    if-nez p1, :cond_3

    .line 82
    :goto_2
    return-void

    .line 78
    :cond_3
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 80
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->setLauncher(Lcom/android/launcher3/Launcher;)V

    .line 81
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->addOnWallpaperChangeListener(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;)V

    goto :goto_2
.end method

.method public updateBlurView(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 298
    :cond_c
    :goto_c
    return-void

    .line 287
    :cond_d
    if-eqz p1, :cond_13

    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-eqz v0, :cond_c

    .line 291
    :cond_13
    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 292
    invoke-static {p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interMethodDispatch1$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$hasWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 296
    invoke-static {p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interMethodDispatch1$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$getWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->updateBlurView()V

    goto :goto_c
.end method

.method public updateBlurViewAll()V
    .registers 3

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 337
    :cond_c
    return-void

    .line 331
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getAllBlurLayoutList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    .line 332
    if-eqz v0, :cond_16

    .line 335
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->updateBlurView()V

    goto :goto_16
.end method

.method public updateBlurViewInCurrentPage()V
    .registers 3

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 318
    :cond_c
    return-void

    .line 311
    :cond_d
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getCurrentPage()I

    move-result v0

    .line 312
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getBlurLayoutList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    .line 313
    if-eqz v0, :cond_1a

    .line 316
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->updateBlurView()V

    goto :goto_1a
.end method
