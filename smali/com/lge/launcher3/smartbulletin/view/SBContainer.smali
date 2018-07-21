.class public Lcom/lge/launcher3/smartbulletin/view/SBContainer;
.super Landroid/widget/FrameLayout;
.source "SBContainer.java"

# interfaces
.implements Lcom/android/launcher3/Launcher$CustomContentCallbacks;
.implements Lcom/lge/launcher3/smartbulletin/view/SBCollapsableView;
.implements Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$ISBNotiPanel;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;,
        Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;
    }
.end annotation


# static fields
.field private static final SCROLL_THRESHOLD:F = 0.001f

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBackgroundWallpaper:Landroid/widget/ImageView;

.field private mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

.field private mCollapseAniDuration:I

.field private mCurRatio:F

.field private mGestures:Landroid/view/GestureDetector;

.field private mHeaderActionbarHeight:I

.field private mLastUpdateTime:J

.field private mNoProviderView:Landroid/view/View;

.field private mNotiManager:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

.field private mObserver:Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;

.field private mPostUpdateByNoti:Z

.field private mProviderTitleHeight:I

.field private mRequestReceiver:Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSendLogFlag:Z

.field private mSendLogPauseRunable:Ljava/lang/Runnable;

.field private mSendLogResumeRunable:Ljava/lang/Runnable;

.field private mStatusbarHeight:I

.field private mTimeTickReceiver:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mObserver:Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;

    .line 54
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mScrollView:Landroid/widget/ScrollView;

    .line 55
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    .line 56
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mBackgroundWallpaper:Landroid/widget/ImageView;

    .line 57
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mTimeTickReceiver:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;

    .line 58
    iput v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mHeaderActionbarHeight:I

    .line 59
    iput v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mStatusbarHeight:I

    .line 60
    const/16 v0, 0x12c

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCollapseAniDuration:I

    .line 61
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mRequestReceiver:Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;

    .line 62
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 63
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNoProviderView:Landroid/view/View;

    .line 64
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNotiManager:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    .line 65
    iput v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mProviderTitleHeight:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCurRatio:F

    .line 67
    iput-boolean v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mPostUpdateByNoti:Z

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mLastUpdateTime:J

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mSendLogFlag:Z

    .line 495
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer$1;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mSendLogPauseRunable:Ljava/lang/Runnable;

    .line 502
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$2;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer$2;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mSendLogResumeRunable:Ljava/lang/Runnable;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mObserver:Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;

    .line 54
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mScrollView:Landroid/widget/ScrollView;

    .line 55
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    .line 56
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mBackgroundWallpaper:Landroid/widget/ImageView;

    .line 57
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mTimeTickReceiver:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;

    .line 58
    iput v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mHeaderActionbarHeight:I

    .line 59
    iput v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mStatusbarHeight:I

    .line 60
    const/16 v0, 0x12c

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCollapseAniDuration:I

    .line 61
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mRequestReceiver:Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;

    .line 62
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 63
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNoProviderView:Landroid/view/View;

    .line 64
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNotiManager:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    .line 65
    iput v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mProviderTitleHeight:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCurRatio:F

    .line 67
    iput-boolean v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mPostUpdateByNoti:Z

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mLastUpdateTime:J

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mSendLogFlag:Z

    .line 495
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer$1;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mSendLogPauseRunable:Ljava/lang/Runnable;

    .line 502
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$2;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer$2;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mSendLogResumeRunable:Ljava/lang/Runnable;

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/smartbulletin/view/SBContainer;II)Landroid/view/View;
    .registers 4

    .prologue
    .line 425
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getChildRect(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/smartbulletin/view/SBContainer;Landroid/animation/AnimatorSet;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$3(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Landroid/animation/AnimatorSet;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)I
    .registers 2

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getChildCountInCategoryLayout()I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Landroid/view/View;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNoProviderView:Landroid/view/View;

    return-object v0
.end method

.method private addListener()V
    .registers 3

    .prologue
    .line 128
    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/lge/launcher3/smartbulletin/view/SBContainer$3;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer$3;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->setSettingsButtonColor(Landroid/view/View;)V

    .line 139
    new-instance v1, Lcom/lge/launcher3/smartbulletin/view/SBContainer$4;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer$4;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 154
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNoProviderView:Landroid/view/View;

    new-instance v1, Lcom/lge/launcher3/smartbulletin/view/SBContainer$5;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer$5;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void
.end method

.method private getAnimatorScrollY(I)Landroid/animation/Animator;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 518
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mScrollView:Landroid/widget/ScrollView;

    const-string v1, "scrollY"

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v3, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 519
    iget v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCollapseAniDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 520
    return-object v0
.end method

.method private getChildCountInCategoryLayout()I
    .registers 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    if-nez v0, :cond_6

    .line 512
    const/4 v0, 0x0

    .line 514
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v0

    goto :goto_5
.end method

.method private getChildRect(II)Landroid/view/View;
    .registers 10

    .prologue
    .line 426
    const/4 v1, 0x0

    .line 427
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getChildCountInCategoryLayout()I

    move-result v3

    .line 428
    const/4 v0, 0x0

    move v2, v0

    :goto_7
    if-lt v2, v3, :cond_a

    .line 439
    return-object v1

    .line 429
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 430
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 431
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 432
    invoke-static {}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->getState()Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    move-result-object v5

    sget-object v6, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->OPEN:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    if-ne v5, v6, :cond_27

    .line 433
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mProviderTitleHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 435
    :cond_27
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 428
    :goto_2d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_7

    :cond_32
    move-object v0, v1

    goto :goto_2d
.end method

.method private orderProviders()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 542
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mPostUpdateByNoti:Z

    if-nez v0, :cond_a

    .line 556
    :cond_9
    :goto_9
    return-void

    .line 546
    :cond_a
    invoke-static {}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->getState()Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    move-result-object v0

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->COLLAPSE:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    if-ne v0, v1, :cond_15

    .line 547
    invoke-virtual {p0, v4}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->expandProvider(Z)V

    .line 550
    :cond_15
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    iget-wide v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mLastUpdateTime:J

    invoke-virtual {v0, v2, v3}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->orderProvidersByNoti(J)Z

    move-result v0

    .line 551
    if-eqz v0, :cond_24

    .line 552
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 554
    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mLastUpdateTime:J

    .line 555
    iput-boolean v4, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mPostUpdateByNoti:Z

    goto :goto_9
.end method

.method private sendRandomNotiIntent()V
    .registers 1

    .prologue
    .line 384
    return-void
.end method

.method private setSettingsButtonColor(Landroid/view/View;)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 573
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ce

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 575
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 576
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 577
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 578
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 579
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 580
    invoke-virtual {v3, v1, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 581
    invoke-virtual {v3, v0, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 582
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 583
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 584
    return-void
.end method


# virtual methods
.method public collapseProvider()V
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->processCollapse()Ljava/util/ArrayList;

    move-result-object v0

    .line 250
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getAnimatorScrollY(I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 254
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 255
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 257
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->resetScrollAnimation()V

    .line 258
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->COLLAPSE:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->onChangeState(Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;)V

    .line 259
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 343
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mGestures:Landroid/view/GestureDetector;

    if-nez v1, :cond_16

    .line 344
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;

    invoke-direct {v3, p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mGestures:Landroid/view/GestureDetector;

    .line 347
    :cond_16
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mGestures:Landroid/view/GestureDetector;

    if-eqz v1, :cond_65

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 349
    invoke-static {}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->getState()Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    move-result-object v2

    sget-object v3, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->COLLAPSE:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    if-ne v2, v3, :cond_5d

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 352
    iget v4, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mHeaderActionbarHeight:I

    iget v5, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mStatusbarHeight:I

    add-int/2addr v4, v5

    .line 353
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getRight()I

    move-result v6

    invoke-direct {v5, v7, v7, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 354
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 355
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 375
    :cond_4a
    :goto_4a
    return v0

    .line 357
    :cond_4b
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mGestures:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 358
    if-nez v2, :cond_4a

    .line 361
    if-eqz v1, :cond_4a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4a

    .line 364
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_4a

    .line 368
    :cond_5d
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mGestures:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 369
    if-nez v1, :cond_4a

    .line 375
    :cond_65
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_4a
.end method

.method public expandProvider(Z)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x64

    .line 227
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->processExpand()Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getAnimatorScrollY(I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 231
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 232
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    if-nez p1, :cond_35

    .line 234
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 235
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$6;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer$6;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    :cond_35
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 244
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->resetScrollAnimation()V

    .line 245
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->OPEN:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->onChangeState(Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;)V

    .line 246
    return-void
.end method

.method public getAnimatorscrollToComponent(Ljava/lang/String;)Landroid/animation/Animator;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    if-eqz v0, :cond_9

    if-nez p1, :cond_12

    .line 445
    :cond_9
    new-array v0, v5, [I

    aput v1, v0, v1

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 471
    :goto_11
    return-object v0

    .line 450
    :cond_12
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getChildCountInCategoryLayout()I

    move-result v4

    .line 451
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    move v2, v1

    .line 452
    :goto_1f
    if-lt v2, v4, :cond_52

    :cond_21
    move v0, v3

    .line 462
    :goto_22
    if-eq v0, v3, :cond_71

    .line 463
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 467
    :goto_2e
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getLastRealBottom()I

    move-result v2

    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 466
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 468
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mScrollView:Landroid/widget/ScrollView;

    const-string v3, "scrollY"

    new-array v4, v5, [I

    aput v0, v4, v1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 469
    iget v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCollapseAniDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_11

    .line 453
    :cond_52
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 455
    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v2

    .line 457
    goto :goto_22

    .line 452
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_71
    move v0, v1

    goto :goto_2e
.end method

.method public isScrollingAllowed()Z
    .registers 2

    .prologue
    .line 569
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 190
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow() "

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 192
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mTimeTickReceiver:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;

    if-eqz v0, :cond_17

    .line 193
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mTimeTickReceiver:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;->registerTimeTickReceiver(Landroid/content/Context;)V

    .line 195
    :cond_17
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mRequestReceiver:Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;

    if-eqz v0, :cond_2a

    .line 196
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mRequestReceiver:Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mRequestReceiver:Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    :cond_2a
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->OPEN:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->onChangeState(Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;)V

    .line 200
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNotiManager:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    if-eqz v0, :cond_3c

    .line 201
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNotiManager:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->registerNotiReceiver(Landroid/content/Context;)V

    .line 203
    :cond_3c
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 204
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 208
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow() "

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 212
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mObserver:Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->onDestroy(Landroid/content/Context;)V

    .line 213
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mTimeTickReceiver:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;

    if-eqz v0, :cond_20

    .line 214
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mTimeTickReceiver:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;->unregisterTimeTickReceiver(Landroid/content/Context;)V

    .line 216
    :cond_20
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mRequestReceiver:Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;

    if-eqz v0, :cond_2d

    .line 217
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mRequestReceiver:Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    :cond_2d
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->OPEN:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->onChangeState(Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;)V

    .line 220
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNotiManager:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    if-eqz v0, :cond_3f

    .line 221
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNotiManager:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->unregisterNotiReceiver(Landroid/content/Context;)V

    .line 223
    :cond_3f
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 224
    return-void
.end method

.method protected onFinishInflate()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->TAG:Ljava/lang/String;

    const-string v1, "onFinishInflate() "

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 91
    const v0, 0x7f0e00cc

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    .line 93
    const v0, 0x7f0e00ce

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mBackgroundWallpaper:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f0e00d0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mScrollView:Landroid/widget/ScrollView;

    .line 96
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 97
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 99
    const v0, 0x7f0e00d1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNoProviderView:Landroid/view/View;

    .line 101
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    const v1, 0x7f0900dd

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mHeaderActionbarHeight:I

    .line 103
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    const v1, 0x7f0900dc

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mStatusbarHeight:I

    .line 106
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mObserver:Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;

    .line 108
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNoProviderView:Landroid/view/View;

    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    .line 109
    iget-object v4, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mBackgroundWallpaper:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;Landroid/widget/ImageView;)V

    .line 108
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mTimeTickReceiver:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;

    .line 110
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBCollapsableView;)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mRequestReceiver:Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;

    .line 111
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    const v1, 0x7f0900e3

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mProviderTitleHeight:I

    .line 114
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->addListener()V

    .line 116
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getChildCountInCategoryLayout()I

    move-result v0

    if-ne v0, v6, :cond_b9

    .line 117
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v0, v5}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 118
    const v1, 0x7f0e00da

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 121
    :cond_b9
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNotiManager:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    .line 122
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNotiManager:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->setSBNotiInterface(Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$ISBNotiPanel;)V

    .line 123
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->updateNotiCountView()V

    .line 124
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sendEnabled(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public onHide()V
    .registers 1

    .prologue
    .line 565
    return-void
.end method

.method public onScrollChanged()V
    .registers 4

    .prologue
    .line 535
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 537
    :cond_12
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->onCategoryScrollChange(II)V

    .line 539
    :cond_1d
    return-void
.end method

.method public onScrollProgressChanged(F)V
    .registers 3

    .prologue
    .line 477
    iput p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCurRatio:F

    .line 479
    const v0, 0x3a83126f    # 0.001f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_19

    .line 480
    iget-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mSendLogFlag:Z

    if-eqz v0, :cond_15

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mSendLogFlag:Z

    .line 482
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mSendLogPauseRunable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->post(Ljava/lang/Runnable;)Z

    .line 484
    :cond_15
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->orderProviders()V

    .line 491
    :cond_18
    :goto_18
    return-void

    .line 485
    :cond_19
    const v0, 0x3f7fbe77    # 0.999f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_18

    .line 486
    iget-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mSendLogFlag:Z

    if-nez v0, :cond_18

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mSendLogFlag:Z

    .line 488
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mSendLogResumeRunable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->post(Ljava/lang/Runnable;)Z

    goto :goto_18
.end method

.method public onShow(Z)V
    .registers 2

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->orderProviders()V

    .line 561
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 175
    if-eqz p1, :cond_21

    .line 176
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mTimeTickReceiver:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;

    if-eqz v0, :cond_e

    .line 177
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mTimeTickReceiver:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;->updateHeaderContent()V

    .line 179
    :cond_e
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 180
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 181
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sendResumed(Landroid/content/Context;)V

    .line 186
    :cond_20
    :goto_20
    return-void

    .line 184
    :cond_21
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sendPaused(Landroid/content/Context;)V

    goto :goto_20
.end method

.method public startSettingActivity(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_SBSETTING:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v1, p1}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    const-string v1, "startedBy"

    const-string v2, "SmartBulletin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mPostUpdateByNoti:Z

    .line 170
    return-void
.end method

.method public updateNotiCountView()V
    .registers 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mNotiManager:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->updateProviderLayout(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;)V

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mPostUpdateByNoti:Z

    .line 527
    iget v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->mCurRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    .line 531
    :goto_11
    return-void

    .line 530
    :cond_12
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->orderProviders()V

    goto :goto_11
.end method
