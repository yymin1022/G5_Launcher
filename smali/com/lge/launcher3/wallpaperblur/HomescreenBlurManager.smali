.class public Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;
.super Ljava/lang/Object;
.source "HomescreenBlurManager.java"

# interfaces
.implements Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;,
        Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$wallpaperblur$HomescreenBlurManager$BackgroundType:[I

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;


# instance fields
.field private mBackgroundViewInBottomRootView:Landroid/widget/ImageView;

.field private mBackgroundViewInTopDragLayer:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mFadeInOutAnimatorController:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$wallpaperblur$HomescreenBlurManager$BackgroundType()[I
    .registers 3

    .prologue
    .line 31
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->$SWITCH_TABLE$com$lge$launcher3$wallpaperblur$HomescreenBlurManager$BackgroundType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->values()[Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->BOTTOM_ROOTVIEW:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->TOP_DRAGLAYER:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->$SWITCH_TABLE$com$lge$launcher3$wallpaperblur$HomescreenBlurManager$BackgroundType:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->sInstance:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 60
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mBackgroundViewInTopDragLayer:Landroid/widget/ImageView;

    .line 61
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mBackgroundViewInBottomRootView:Landroid/widget/ImageView;

    .line 63
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mFadeInOutAnimatorController:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    .line 87
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->TAG:Ljava/lang/String;

    const-string v1, "Create a new HomescreenBlurManager instance."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;-><init>(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;)V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mFadeInOutAnimatorController:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;
    .registers 3

    .prologue
    .line 71
    if-nez p0, :cond_b

    .line 72
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->TAG:Ljava/lang/String;

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    .line 80
    :goto_a
    return-object v0

    .line 76
    :cond_b
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->sInstance:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    if-nez v0, :cond_1a

    .line 77
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->sInstance:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    .line 80
    :cond_1a
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->sInstance:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    goto :goto_a
.end method

.method private startFadeInOutAnimation(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;I)V
    .registers 10

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->$SWITCH_TABLE$com$lge$launcher3$wallpaperblur$HomescreenBlurManager$BackgroundType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    .line 181
    :goto_e
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->TAG:Ljava/lang/String;

    .line 182
    const-string v2, "startFadeInOutAnimation() : backgoundType(%s), type(%s), duration(%d), backgoundView(%s), isLiveWallpaperMode(%s)"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 183
    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->isLiveWallpaperMode()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 181
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    if-nez v0, :cond_40

    .line 190
    :goto_39
    return-void

    .line 170
    :pswitch_3a
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mBackgroundViewInTopDragLayer:Landroid/widget/ImageView;

    goto :goto_e

    .line 174
    :pswitch_3d
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mBackgroundViewInBottomRootView:Landroid/widget/ImageView;

    goto :goto_e

    .line 189
    :cond_40
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mFadeInOutAnimatorController:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->start(Landroid/widget/ImageView;Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;I)V

    goto :goto_39

    .line 168
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_3d
    .end packed-switch
.end method


# virtual methods
.method public clearBackground()V
    .registers 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    :goto_6
    return-void

    .line 156
    :cond_7
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->TAG:Ljava/lang/String;

    const-string v1, "clearBackground()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mFadeInOutAnimatorController:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->clear()V

    goto :goto_6
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 464
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->TAG:Ljava/lang/String;

    const-string v1, "Destroy HomescreenBlurManager instance."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->removeOnWallpaperChangeListener(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;)V

    .line 468
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mFadeInOutAnimatorController:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    if-eqz v0, :cond_1c

    .line 469
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mFadeInOutAnimatorController:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->clear()V

    .line 470
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mFadeInOutAnimatorController:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    .line 473
    :cond_1c
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mBackgroundViewInBottomRootView:Landroid/widget/ImageView;

    .line 474
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mBackgroundViewInTopDragLayer:Landroid/widget/ImageView;

    .line 476
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 477
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mContext:Landroid/content/Context;

    .line 479
    sput-object v2, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->sInstance:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    .line 480
    return-void
.end method

.method public getWorkspaceStateAnimationListener(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;I)Landroid/animation/Animator$AnimatorListener;
    .registers 5

    .prologue
    .line 204
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;-><init>(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;Lcom/android/launcher3/Workspace$State;I)V

    .line 242
    return-object v0
.end method

.method public hideBackground(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;I)V
    .registers 4

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 147
    :cond_6
    :goto_6
    return-void

    .line 142
    :cond_7
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->isSupportLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    :cond_13
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->FADE_OUT:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    invoke-direct {p0, p1, v0, p2}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->startFadeInOutAnimation(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;I)V

    goto :goto_6
.end method

.method public isDisabled()Z
    .registers 2

    .prologue
    .line 425
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_HOMESCREEN_BLUR:Lcom/lge/launcher3/util/LGHomeFeature$Config;

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
    .line 432
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 433
    const/4 v0, 0x0

    .line 436
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isLiveWallpaperMode()Z

    move-result v0

    goto :goto_5
.end method

.method public onWallpaperBlurredImageChanged(I)V
    .registers 7

    .prologue
    .line 449
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->TAG:Ljava/lang/String;

    const-string v1, "onWallpaperBlurredImageChanged(adpativeColor = %s(%d))"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 450
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 449
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 459
    :cond_28
    :goto_28
    return-void

    .line 456
    :cond_29
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mFadeInOutAnimatorController:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    if-eqz v0, :cond_28

    .line 457
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mFadeInOutAnimatorController:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->updateBackgroundViewContents()V

    goto :goto_28
.end method

.method public onWallpaperChanged()V
    .registers 1

    .prologue
    .line 443
    return-void
.end method

.method public setLauncher(Lcom/android/launcher3/Launcher;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 98
    if-nez p1, :cond_4

    .line 115
    :goto_3
    return-void

    .line 101
    :cond_4
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 103
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->setLauncher(Lcom/android/launcher3/Launcher;)V

    .line 104
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->addOnWallpaperChangeListener(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 107
    const v1, 0x7f0e005b

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 106
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mBackgroundViewInTopDragLayer:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mBackgroundViewInTopDragLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 109
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mBackgroundViewInTopDragLayer:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 111
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 112
    const v1, 0x7f0e0050

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 111
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mBackgroundViewInBottomRootView:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mBackgroundViewInBottomRootView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 114
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mBackgroundViewInBottomRootView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3
.end method

.method public showBackground(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;I)V
    .registers 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 131
    :cond_6
    :goto_6
    return-void

    .line 126
    :cond_7
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->isSupportLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 130
    :cond_13
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->FADE_IN:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    invoke-direct {p0, p1, v0, p2}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->startFadeInOutAnimation(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;I)V

    goto :goto_6
.end method

.method public updateBackgroundViewContents()V
    .registers 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 253
    :goto_6
    return-void

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->mFadeInOutAnimatorController:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->updateBackgroundViewContents()V

    goto :goto_6
.end method
