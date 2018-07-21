.class public Lcom/android/launcher3/FocusIndicatorView;
.super Landroid/view/View;
.source "FocusIndicatorView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x96L

.field static final DEFAULT_LAYOUT_SIZE:I = 0x64

.field private static final MIN_VISIBLE_ALPHA:F = 0.2f


# instance fields
.field private mCurrentAnimation:Landroid/animation/ObjectAnimator;

.field private final mIndicatorPos:[I

.field private mInitiated:Z

.field private mLastFocusedView:Landroid/view/View;

.field private mPendingCall:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetState:Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;

.field private final mTargetViewPos:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/FocusIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x2

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mIndicatorPos:[I

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mTargetViewPos:[I

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FocusIndicatorView;->setAlpha(F)V

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher3/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FocusIndicatorView;->setBackgroundColor(I)V

    .line 56
    return-void
.end method

.method private applyState(Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;)V
    .registers 3

    .prologue
    .line 139
    iget v0, p1, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->x:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FocusIndicatorView;->setTranslationX(F)V

    .line 140
    iget v0, p1, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->y:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FocusIndicatorView;->setTranslationY(F)V

    .line 141
    iget v0, p1, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->scaleX:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FocusIndicatorView;->setScaleX(F)V

    .line 142
    iget v0, p1, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->scaleY:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FocusIndicatorView;->setScaleY(F)V

    .line 143
    return-void
.end method

.method private static computeLocationRelativeToParent(Landroid/view/View;Landroid/view/View;[I)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 158
    aput v3, p2, v6

    aput v3, p2, v3

    .line 159
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/FocusIndicatorView;->computeLocationRelativeToParentHelper(Landroid/view/View;Landroid/view/View;[I)V

    .line 163
    aget v0, p2, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v1

    sub-float v1, v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p2, v3

    .line 164
    aget v0, p2, v6

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v1

    sub-float v1, v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p2, v6

    .line 165
    return-void
.end method

.method private static computeLocationRelativeToParentHelper(Landroid/view/View;Landroid/view/View;[I)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 170
    aget v1, p2, v4

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p2, v4

    .line 171
    const/4 v1, 0x1

    aget v2, p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p2, v1

    .line 172
    instance-of v1, v0, Lcom/android/launcher3/PagedView;

    if-eqz v1, :cond_2f

    move-object v1, v0

    .line 173
    check-cast v1, Lcom/android/launcher3/PagedView;

    .line 174
    aget v2, p2, v4

    invoke-virtual {v1, p0}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    sub-int v1, v2, v1

    aput v1, p2, v4

    .line 177
    :cond_2f
    if-eq v0, p1, :cond_34

    .line 178
    invoke-static {v0, p1, p2}, Lcom/android/launcher3/FocusIndicatorView;->computeLocationRelativeToParentHelper(Landroid/view/View;Landroid/view/View;[I)V

    .line 180
    :cond_34
    return-void
.end method

.method private endCurrentAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_c

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 130
    iput-object v1, p0, Lcom/android/launcher3/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 132
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mTargetState:Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;

    if-eqz v0, :cond_17

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mTargetState:Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;

    invoke-direct {p0, v0}, Lcom/android/launcher3/FocusIndicatorView;->applyState(Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;)V

    .line 134
    iput-object v1, p0, Lcom/android/launcher3/FocusIndicatorView;->mTargetState:Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;

    .line 136
    :cond_17
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    if-eqz v0, :cond_17

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/FocusIndicatorView;->onFocusChange(Landroid/view/View;Z)V

    .line 150
    :cond_17
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 72
    iput-object v2, p0, Lcom/android/launcher3/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    .line 73
    iget-boolean v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mInitiated:Z

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher3/FocusIndicatorView;->getWidth()I

    move-result v0

    if-nez v0, :cond_21

    .line 76
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher3/FocusIndicatorView;->invalidate()V

    .line 125
    :cond_20
    :goto_20
    return-void

    .line 81
    :cond_21
    iget-boolean v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mInitiated:Z

    if-nez v0, :cond_32

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/FocusIndicatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/FocusIndicatorView;->mIndicatorPos:[I

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/FocusIndicatorView;->computeLocationRelativeToParent(Landroid/view/View;Landroid/view/View;[I)V

    .line 84
    iput-boolean v5, p0, Lcom/android/launcher3/FocusIndicatorView;->mInitiated:Z

    .line 87
    :cond_32
    if-eqz p2, :cond_123

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/FocusIndicatorView;->getWidth()I

    move-result v1

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher3/FocusIndicatorView;->getHeight()I

    move-result v2

    .line 91
    invoke-direct {p0}, Lcom/android/launcher3/FocusIndicatorView;->endCurrentAnimation()V

    .line 92
    new-instance v3, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;

    invoke-direct {v3}, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    int-to-float v4, v1

    div-float/2addr v0, v4

    iput v0, v3, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->scaleX:F

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    int-to-float v4, v2

    div-float/2addr v0, v4

    iput v0, v3, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->scaleY:F

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher3/FocusIndicatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/FocusIndicatorView;->mTargetViewPos:[I

    invoke-static {p1, v0, v4}, Lcom/android/launcher3/FocusIndicatorView;->computeLocationRelativeToParent(Landroid/view/View;Landroid/view/View;[I)V

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mTargetViewPos:[I

    aget v0, v0, v6

    iget-object v4, p0, Lcom/android/launcher3/FocusIndicatorView;->mIndicatorPos:[I

    aget v4, v4, v6

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, v3, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->scaleX:F

    sub-float v4, v7, v4

    int-to-float v1, v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v8

    sub-float/2addr v0, v1

    iput v0, v3, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->x:F

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mTargetViewPos:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/android/launcher3/FocusIndicatorView;->mIndicatorPos:[I

    aget v1, v1, v5

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v3, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->scaleY:F

    sub-float v1, v7, v1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v8

    sub-float/2addr v0, v1

    iput v0, v3, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->y:F

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/FocusIndicatorView;->getAlpha()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10b

    .line 101
    iput-object v3, p0, Lcom/android/launcher3/FocusIndicatorView;->mTargetState:Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;

    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 103
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    aput v7, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v6

    .line 104
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v5, [F

    iget-object v3, p0, Lcom/android/launcher3/FocusIndicatorView;->mTargetState:Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;

    iget v3, v3, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->x:F

    aput v3, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    .line 105
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v5, [F

    iget-object v4, p0, Lcom/android/launcher3/FocusIndicatorView;->mTargetState:Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;

    iget v4, v4, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->y:F

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 106
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v5, [F

    iget-object v4, p0, Lcom/android/launcher3/FocusIndicatorView;->mTargetState:Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;

    iget v4, v4, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->scaleX:F

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 107
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v5, [F

    iget-object v4, p0, Lcom/android/launcher3/FocusIndicatorView;->mTargetState:Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;

    iget v4, v4, Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;->scaleY:F

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    .line 102
    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 113
    :goto_f8
    iput-object p1, p0, Lcom/android/launcher3/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    .line 122
    :cond_fa
    :goto_fa
    iget-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_20

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_20

    .line 109
    :cond_10b
    invoke-direct {p0, v3}, Lcom/android/launcher3/FocusIndicatorView;->applyState(Lcom/android/launcher3/FocusIndicatorView$ViewAnimState;)V

    .line 110
    new-array v0, v5, [Landroid/animation/PropertyValuesHolder;

    .line 111
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    aput v7, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v6

    .line 110
    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    goto :goto_f8

    .line 115
    :cond_123
    iget-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    if-ne v0, p1, :cond_fa

    .line 116
    iput-object v2, p0, Lcom/android/launcher3/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    .line 117
    invoke-direct {p0}, Lcom/android/launcher3/FocusIndicatorView;->endCurrentAnimation()V

    .line 118
    new-array v0, v5, [Landroid/animation/PropertyValuesHolder;

    .line 119
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    const/4 v3, 0x0

    aput v3, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v6

    .line 118
    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    goto :goto_fa
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/FocusIndicatorView;->invalidate()V

    .line 68
    :cond_14
    return-void
.end method
