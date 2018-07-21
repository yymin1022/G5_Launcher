.class public Lcom/lge/launcher3/screeneffect/ScreenEffectManager;
.super Ljava/lang/Object;
.source "ScreenEffectManager.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$DrawState:[I

.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScreenEffectType:[I

.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mIsEnabledToSwitchInterpolator:Z

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mNativeDefaultScrollInterpolator:Landroid/view/animation/Interpolator;

.field private mOverscrollScreenEffect:Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;

.field private mScrollerListener:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;

.field private mSelectedScreenEffect:Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

.field private mSelectedScreenEffectType:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

.field private mStateTransitionListener:Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;

.field private mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$DrawState()[I
    .registers 3

    .prologue
    .line 40
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$DrawState:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->values()[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->NORMAL_SCREEN_EFFECT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->OVERSCROLL_SCREEN_EFFECT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->SKIP:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->VIEW_SELF:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$DrawState:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScreenEffectType()[I
    .registers 3

    .prologue
    .line 40
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScreenEffectType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->values()[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->BREEZE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->CAROUSEL:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->PANORAMA:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->SLIDE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScreenEffectType:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I
    .registers 3

    .prologue
    .line 40
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->values()[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40

    :goto_27
    :try_start_27
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e

    :goto_30
    :try_start_30
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c

    :goto_39
    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

    goto :goto_4

    :catch_3c
    move-exception v1

    goto :goto_39

    :catch_3e
    move-exception v1

    goto :goto_30

    :catch_40
    move-exception v1

    goto :goto_27

    :catch_42
    move-exception v1

    goto :goto_1e

    :catch_44
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->sInstance:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    .line 47
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    .line 49
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mSelectedScreenEffect:Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    .line 50
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mSelectedScreenEffectType:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    .line 51
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mOverscrollScreenEffect:Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;

    .line 53
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mStateTransitionListener:Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;

    .line 54
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 55
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mScrollerListener:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mIsEnabled:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mIsEnabledToSwitchInterpolator:Z

    .line 60
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mNativeDefaultScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 84
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->TAG:Ljava/lang/String;

    const-string v1, "Create a new ScreenEffectManager instance."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    .line 90
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->updateSelectedScreenEffectType()V

    .line 91
    return-void
.end method

.method static synthetic access$10(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mIsEnabledToSwitchInterpolator:Z

    return v0
.end method

.method static synthetic access$11(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;Z)V
    .registers 2

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mIsEnabledToSwitchInterpolator:Z

    return-void
.end method

.method static synthetic access$12(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;Z)V
    .registers 2

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mNativeDefaultScrollInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;Z)V
    .registers 2

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->enableLayoutTransitionListener(Z)V

    return-void
.end method

.method static synthetic access$7(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;Z)V
    .registers 2

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->enableScrollerListener(Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mSelectedScreenEffect:Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mOverscrollScreenEffect:Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;

    return-object v0
.end method

.method private changeScreenEffectType(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;)V
    .registers 4

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mSelectedScreenEffectType:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    .line 121
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScreenEffectType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 136
    new-instance v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectSlide;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectSlide;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mSelectedScreenEffect:Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    .line 140
    :goto_18
    new-instance v0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectSpring;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mOverscrollScreenEffect:Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;

    .line 141
    return-void

    .line 123
    :pswitch_22
    new-instance v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBreeze;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mSelectedScreenEffect:Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    goto :goto_18

    .line 127
    :pswitch_2c
    new-instance v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectPanorama;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectPanorama;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mSelectedScreenEffect:Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    goto :goto_18

    .line 131
    :pswitch_36
    new-instance v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mSelectedScreenEffect:Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    goto :goto_18

    .line 121
    :pswitch_data_40
    .packed-switch 0x2
        :pswitch_22
        :pswitch_2c
        :pswitch_36
    .end packed-switch
.end method

.method private enableLayoutTransitionListener(Z)V
    .registers 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 298
    if-nez v0, :cond_9

    .line 311
    :goto_8
    return-void

    .line 302
    :cond_9
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    if-nez v1, :cond_13

    .line 303
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getLayoutTransitionListener()Landroid/animation/LayoutTransition$TransitionListener;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 306
    :cond_13
    if-eqz p1, :cond_1b

    .line 307
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    goto :goto_8

    .line 309
    :cond_1b
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    goto :goto_8
.end method

.method private enableScrollerListener(Z)V
    .registers 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mScrollerListener:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;

    if-nez v0, :cond_a

    .line 344
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getScrollerListener()Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mScrollerListener:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;

    .line 347
    :cond_a
    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcher;->getInstance()Lcom/lge/launcher3/LauncherScrollerWatcher;

    move-result-object v0

    .line 348
    if-eqz p1, :cond_16

    .line 349
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mScrollerListener:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/LauncherScrollerWatcher;->addListener(Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;)Z

    .line 353
    :goto_15
    return-void

    .line 351
    :cond_16
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mScrollerListener:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/LauncherScrollerWatcher;->removeListener(Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;)Z

    goto :goto_15
.end method

.method private enableStateTransitionListener(Z)V
    .registers 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mStateTransitionListener:Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;

    if-nez v0, :cond_a

    .line 235
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getStateTransitionListener()Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mStateTransitionListener:Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;

    .line 239
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    move-result-object v0

    .line 240
    if-eqz p1, :cond_18

    .line 241
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mStateTransitionListener:Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->addListener(Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;)Z

    .line 245
    :goto_17
    return-void

    .line 243
    :cond_18
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mStateTransitionListener:Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->removeListener(Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;)Z

    goto :goto_17
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/screeneffect/ScreenEffectManager;
    .registers 3

    .prologue
    .line 68
    if-nez p0, :cond_b

    .line 69
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->TAG:Ljava/lang/String;

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    .line 77
    :goto_a
    return-object v0

    .line 73
    :cond_b
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->sInstance:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    if-nez v0, :cond_1a

    .line 74
    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->sInstance:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    .line 77
    :cond_1a
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->sInstance:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    goto :goto_a
.end method

.method private getLayoutTransitionListener()Landroid/animation/LayoutTransition$TransitionListener;
    .registers 2

    .prologue
    .line 317
    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$2;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$2;-><init>(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)V

    return-object v0
.end method

.method private getScreenEffectForChild(Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
    .registers 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->hasCustomScreenEffect()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 207
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getCustomScreenEffect()Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object p1

    .line 227
    :cond_e
    :goto_e
    return-object p1

    .line 210
    :cond_f
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    iget-object v1, v1, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 212
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_34

    .line 227
    :goto_21
    if-eqz v0, :cond_e

    move-object p1, v0

    goto :goto_e

    .line 214
    :pswitch_25
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getCustomScreenEffectForNextChild()Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    goto :goto_21

    .line 218
    :pswitch_2c
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getCustomScreenEffectForPrevChild()Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    goto :goto_21

    .line 212
    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method

.method private getScrollerListener()Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;
    .registers 2

    .prologue
    .line 359
    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;-><init>(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)V

    return-object v0
.end method

.method private getStateTransitionListener()Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;
    .registers 2

    .prologue
    .line 251
    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;-><init>(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)V

    return-object v0
.end method

.method private isOvershootInterpolator(Landroid/view/animation/Interpolator;)Z
    .registers 3

    .prologue
    .line 487
    if-eqz p1, :cond_8

    instance-of v0, p1, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private overScrollInfluenceCurve(F)F
    .registers 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 524
    sub-float v0, p1, v2

    .line 525
    mul-float v1, v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private removeAllListeners()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 548
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mStateTransitionListener:Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;

    if-eqz v0, :cond_b

    .line 549
    invoke-direct {p0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->enableStateTransitionListener(Z)V

    .line 550
    iput-object v2, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mStateTransitionListener:Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;

    .line 553
    :cond_b
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    if-eqz v0, :cond_14

    .line 554
    invoke-direct {p0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->enableLayoutTransitionListener(Z)V

    .line 555
    iput-object v2, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 558
    :cond_14
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mScrollerListener:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;

    if-eqz v0, :cond_1d

    .line 559
    invoke-direct {p0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->enableScrollerListener(Z)V

    .line 560
    iput-object v2, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mScrollerListener:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;

    .line 562
    :cond_1d
    return-void
.end method

.method private setEnabled(Z)V
    .registers 2

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mIsEnabled:Z

    .line 154
    return-void
.end method

.method public static showChildBounds(Landroid/graphics/Canvas;Landroid/view/View;IIZ)V
    .registers 5

    .prologue
    .line 536
    if-nez p4, :cond_2

    .line 543
    :cond_2
    return-void
.end method


# virtual methods
.method public adjustMinSnapVelocity(Landroid/view/animation/Interpolator;I)I
    .registers 5

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->isOvershootInterpolator(Landroid/view/animation/Interpolator;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 427
    :goto_6
    return p2

    .line 426
    :cond_7
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    .line 427
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int p2, v0

    goto :goto_6
.end method

.method public adjustSnapDuration(Landroid/view/animation/Interpolator;I)I
    .registers 4

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->isOvershootInterpolator(Landroid/view/animation/Interpolator;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 440
    :goto_6
    return p2

    :cond_7
    const/16 v0, 0x12c

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_6
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 567
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->TAG:Ljava/lang/String;

    const-string v1, "Destroy ScreenEffectManager instance."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->removeAllListeners()V

    .line 571
    iput-object v2, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mNativeDefaultScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 573
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    if-eqz v0, :cond_18

    .line 574
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->destroy()V

    .line 575
    iput-object v2, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    .line 578
    :cond_18
    iput-object v2, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mSelectedScreenEffect:Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    .line 579
    iput-object v2, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mOverscrollScreenEffect:Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;

    .line 580
    iput-object v2, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    .line 582
    sput-object v2, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->sInstance:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    .line 583
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-boolean v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mIsEnabled:Z

    if-nez v1, :cond_6

    .line 198
    :cond_5
    :goto_5
    return v0

    .line 167
    :cond_6
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    invoke-virtual {v1, p2}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->updateInfo(Landroid/view/View;)Z

    move-result v1

    .line 168
    if-eqz v1, :cond_5

    .line 172
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mSelectedScreenEffect:Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    invoke-direct {p0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getScreenEffectForChild(Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->isOverscrollHandledBySelf()Z

    move-result v2

    .line 174
    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    invoke-virtual {v3, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getDrawState(Z)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    move-result-object v2

    .line 175
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$DrawState()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_46

    .line 196
    :goto_2b
    :pswitch_2b
    const v1, -0xffff01

    const/4 v2, 0x5

    invoke-static {p1, p2, v1, v2, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->showChildBounds(Landroid/graphics/Canvas;Landroid/view/View;IIZ)V

    goto :goto_5

    .line 177
    :pswitch_33
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    invoke-virtual {v1, p1, p3, p4, v0}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->drawChild(Landroid/graphics/Canvas;JLcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Z

    move-result v0

    goto :goto_2b

    .line 181
    :pswitch_3a
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mOverscrollScreenEffect:Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;

    .line 182
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    .line 181
    invoke-virtual {v0, p1, p3, p4, v1}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;->drawChild(Landroid/graphics/Canvas;JLcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Z

    move-result v0

    goto :goto_2b

    .line 186
    :pswitch_43
    const/4 v0, 0x1

    .line 187
    goto :goto_2b

    .line 175
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_33
        :pswitch_3a
        :pswitch_2b
        :pswitch_43
    .end packed-switch
.end method

.method public enableToSwitchInterpolator()V
    .registers 2

    .prologue
    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mIsEnabledToSwitchInterpolator:Z

    .line 447
    return-void
.end method

.method public getDampedOverscrollAmount(F)I
    .registers 6

    .prologue
    .line 502
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getViewportWidth()I

    move-result v1

    .line 504
    int-to-float v0, v1

    div-float v0, p1, v0

    .line 505
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/MathFunctionUtils;->equals(FF)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 506
    float-to-int v0, p1

    .line 516
    :goto_11
    return v0

    .line 509
    :cond_12
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->overScrollInfluenceCurve(F)F

    move-result v0

    mul-float/2addr v0, v2

    .line 512
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_30

    .line 513
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    .line 516
    :cond_30
    const v2, 0x3e0f5c29    # 0.14f

    mul-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_11
.end method

.method public getOverscrollSnapAnimationDuration()I
    .registers 2

    .prologue
    .line 494
    const/16 v0, 0xc8

    return v0
.end method

.method public getSlideScreenEffect()Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
    .registers 3

    .prologue
    .line 147
    new-instance v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectSlide;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectSlide;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setNativieDefaultScrollInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .prologue
    .line 413
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mNativeDefaultScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 414
    return-void
.end method

.method public setTargetView(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 97
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    iput-object p1, v0, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->mParent:Landroid/view/ViewGroup;

    .line 99
    invoke-direct {p0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->enableStateTransitionListener(Z)V

    .line 100
    invoke-direct {p0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->enableLayoutTransitionListener(Z)V

    .line 101
    invoke-direct {p0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->enableScrollerListener(Z)V

    .line 102
    return-void
.end method

.method public updateInterpolatorTension(Landroid/view/animation/Interpolator;II)V
    .registers 8

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 455
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->isOvershootInterpolator(Landroid/view/animation/Interpolator;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 480
    :goto_8
    return-void

    .line 459
    :cond_9
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    .line 460
    mul-float v1, v3, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 461
    mul-float/2addr v0, v3

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 464
    if-ge p2, v1, :cond_23

    .line 465
    const/4 v0, 0x0

    .line 472
    :goto_1d
    check-cast p1, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;

    invoke-virtual {p1, v0}, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;->computeTension(F)V

    goto :goto_8

    .line 466
    :cond_23
    if-gt v0, p2, :cond_28

    .line 467
    const/high16 v0, 0x3f800000    # 1.0f

    .line 468
    goto :goto_1d

    .line 469
    :cond_28
    int-to-float v2, p2

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-static {v2, v1, v0}, Lcom/lge/launcher3/util/MathFunctionUtils;->normalize(FFF)F

    move-result v0

    goto :goto_1d
.end method

.method public updateSelectedScreenEffectType()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getSelectedScreenEffectType(Landroid/content/Context;)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->mSelectedScreenEffectType:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    if-ne v1, v0, :cond_b

    .line 113
    :goto_a
    return-void

    .line 112
    :cond_b
    invoke-direct {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->changeScreenEffectType(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;)V

    goto :goto_a
.end method
