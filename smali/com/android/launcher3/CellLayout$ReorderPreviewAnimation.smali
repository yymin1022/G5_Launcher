.class Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderPreviewAnimation"
.end annotation


# static fields
.field private static final HINT_DURATION:I = 0x15e

.field public static final MODE_HINT:I = 0x0

.field public static final MODE_PREVIEW:I = 0x1

.field private static final PREVIEW_DURATION:I = 0x12c


# instance fields
.field a:Landroid/animation/Animator;

.field child:Landroid/view/View;

.field finalDeltaX:F

.field finalDeltaY:F

.field finalScale:F

.field initDeltaX:F

.field initDeltaY:F

.field initScale:F

.field mode:I

.field repeating:Z

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;IIIIIII)V
    .registers 20

    .prologue
    .line 2106
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    .line 2105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    .line 2107
    iget-object v5, p1, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    move-object v0, p1

    move v1, p4

    move v2, p5

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2108
    iget-object v0, p1, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 2109
    iget-object v0, p1, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 2110
    iget-object v5, p1, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    move-object v0, p1

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2111
    iget-object v0, p1, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 2112
    iget-object v1, p1, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 2113
    sub-int v2, v0, v6

    .line 2114
    sub-int/2addr v1, v7

    .line 2115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    .line 2116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    .line 2117
    if-nez p3, :cond_7b

    const/4 v0, -0x1

    .line 2118
    :goto_42
    if-ne v2, v1, :cond_46

    if-eqz v2, :cond_55

    .line 2120
    :cond_46
    if-nez v1, :cond_7d

    .line 2121
    neg-int v0, v0

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    .line 2132
    :cond_55
    :goto_55
    iput p3, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    .line 2133
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 2134
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    .line 2135
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalScale:F

    .line 2136
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 2137
    iput-object p2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    .line 2138
    return-void

    .line 2117
    :cond_7b
    const/4 v0, 0x1

    goto :goto_42

    .line 2122
    :cond_7d
    if-nez v2, :cond_8d

    .line 2123
    neg-int v0, v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    goto :goto_55

    .line 2125
    :cond_8d
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    .line 2126
    neg-int v3, v0

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 2127
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v8, p1, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-int v2, v2

    int-to-float v2, v2

    .line 2126
    iput v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    .line 2128
    neg-int v0, v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 2129
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p1, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-float v0, v0

    .line 2128
    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    goto :goto_55
.end method

.method static synthetic access$0(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)Lcom/android/launcher3/CellLayout;
    .registers 2

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method private cancel()V
    .registers 2

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_9

    .line 2188
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2190
    :cond_9
    return-void
.end method


# virtual methods
.method animate()V
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2141
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2142
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    .line 2143
    invoke-direct {v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->cancel()V

    .line 2144
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    iget v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_36

    iget v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_36

    .line 2146
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->completeAnimationImmediately()V

    .line 2184
    :cond_35
    :goto_35
    return-void

    .line 2150
    :cond_36
    iget v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_35

    .line 2153
    :cond_42
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    new-array v1, v3, [F

    fill-array-data v1, :array_8c

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2154
    iput-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    .line 2155
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2156
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2157
    iget v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    if-nez v0, :cond_89

    const/16 v0, 0x15e

    :goto_5c
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2158
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2159
    new-instance v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;-><init>(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2173
    new-instance v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;-><init>(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2182
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2183
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_35

    .line 2157
    :cond_89
    const/16 v0, 0x12c

    goto :goto_5c

    .line 2153
    :array_8c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method completeAnimationImmediately()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2193
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_c

    .line 2194
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2197
    :cond_c
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 2198
    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    .line 2199
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    .line 2200
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 2201
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    .line 2202
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v4, "translationX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 2203
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2199
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2205
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2206
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2207
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2208
    return-void
.end method
