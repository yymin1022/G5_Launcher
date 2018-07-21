.class Lcom/lge/lgewidgetlib/extview/WidgetAnimator;
.super Landroid/animation/ValueAnimator;
.source "WidgetAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;,
        Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;
    }
.end annotation


# static fields
.field private static final ANI_DURATION:I = 0x12c

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ExtViewEffect"


# instance fields
.field private mExpandingViews:[Landroid/view/View;

.field private mExtendedWidgetHeight:I

.field private mExtendedWidgetTopMargin:I

.field private mIsCanceled:Z

.field private mIsReverse:Z

.field private mNormalWidgetHeight:I

.field private mNormalWidgetTopMargin:I

.field private mUpdateListener:Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;

.field private mWidgetAnimationListener:Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;

.field private mWidgetContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;[Landroid/view/View;IILcom/lge/lgewidgetlib/extview/ExtViewEventListener;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mIsReverse:Z

    .line 23
    iput-boolean v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mIsCanceled:Z

    .line 30
    const-string v0, "ExtViewEffect"

    const-string v1, "WidgetMoveAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iput-object p1, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mWidgetContainer:Landroid/view/View;

    .line 33
    iput-object p2, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mExpandingViews:[Landroid/view/View;

    .line 34
    iput p4, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mExtendedWidgetTopMargin:I

    .line 36
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->reset()V

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mNormalWidgetHeight:I

    .line 38
    iput p3, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mExtendedWidgetHeight:I

    .line 39
    new-instance v0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;

    invoke-direct {v0, p0, v2}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;-><init>(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;)V

    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mUpdateListener:Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;

    .line 40
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mUpdateListener:Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;

    invoke-virtual {p0, v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 41
    new-instance v0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;

    invoke-direct {v0, p0, v2}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;-><init>(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;)V

    invoke-virtual {p0, v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 42
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 44
    iput-object p5, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mWidgetAnimationListener:Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Landroid/view/View;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mWidgetContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Z
    .registers 2

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mIsReverse:Z

    return v0
.end method

.method static synthetic access$2(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mExtendedWidgetTopMargin:I

    return v0
.end method

.method static synthetic access$3(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->expandView()V

    return-void
.end method

.method static synthetic access$4(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mWidgetAnimationListener:Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;Z)V
    .registers 2

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mIsCanceled:Z

    return-void
.end method

.method static synthetic access$6(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Z
    .registers 2

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mIsCanceled:Z

    return v0
.end method

.method private expandView()V
    .registers 7

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mWidgetContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mExtendedWidgetHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mWidgetContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 79
    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mExpandingViews:[Landroid/view/View;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_13
    if-lt v0, v2, :cond_16

    .line 83
    return-void

    .line 79
    :cond_16
    aget-object v3, v1, v0

    .line 80
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mExtendedWidgetHeight:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method private restoreView()V
    .registers 6

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mWidgetContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mNormalWidgetHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mWidgetContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 88
    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mExpandingViews:[Landroid/view/View;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_13
    if-lt v0, v2, :cond_16

    .line 91
    return-void

    .line 88
    :cond_16
    aget-object v3, v1, v0

    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mNormalWidgetHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method


# virtual methods
.method public isNeedToBeMoved()Z
    .registers 3

    .prologue
    .line 54
    iget v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mExtendedWidgetTopMargin:I

    iget v1, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mNormalWidgetTopMargin:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mWidgetContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mNormalWidgetTopMargin:I

    .line 50
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v0, v1, v2

    const/4 v0, 0x1

    iget v2, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mExtendedWidgetTopMargin:I

    aput v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->setIntValues([I)V

    .line 51
    return-void
.end method

.method public reverse()V
    .registers 3

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mIsReverse:Z

    .line 61
    invoke-direct {p0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->restoreView()V

    .line 62
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->isNeedToBeMoved()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    invoke-super {p0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 74
    :goto_f
    return-void

    .line 65
    :cond_10
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mWidgetContainer:Landroid/view/View;

    new-instance v1, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$1;

    invoke-direct {v1, p0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$1;-><init>(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public start()V
    .registers 3

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mIsReverse:Z

    .line 97
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->isNeedToBeMoved()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 98
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 110
    :goto_c
    return-void

    .line 100
    :cond_d
    invoke-direct {p0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->expandView()V

    .line 101
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->mWidgetContainer:Landroid/view/View;

    new-instance v1, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$2;

    invoke-direct {v1, p0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$2;-><init>(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method
